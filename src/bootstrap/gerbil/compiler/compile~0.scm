(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1734215271)
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
        (letrec ((_%hash-e147873%_
                  (lambda (_%id147875%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id147875%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e147873%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp149260 (list gxc#::void::t))
            (__tmp149259 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp149260
         '()
         __tmp149259
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args147869%_
        (apply make-instance gxc#::collect-bindings::t _%$args147869%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp149261
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
        (__make-promise __tmp149261)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx147861%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self147864%_
                (let ((__obj149235
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj149235))
               (__tmp149262
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147864%_ _%stx147861%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149262
           gxc#current-compile-method
           _%self147864%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp149264 (list gxc#::void::t))
            (__tmp149263 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp149264
         '(modules)
         __tmp149263
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args147858%_
        (apply make-instance gxc#::lift-modules::t _%$args147858%_)))
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
      (let ((__tmp149265
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
        (__make-promise __tmp149265)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords147832%_ _%modules147829147833%_ _%stx147835%_)
        (let ((_%modules147838%_
               (if (eq? _%modules147829147833%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules147829147833%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self147840%_
                  (let ((__obj149237
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149237
                       _%modules147838%_
                       '1
                       '#f
                       '#f))
                    __obj149237))
                 (__tmp149266
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147840%_ _%stx147835%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149266
             gxc#current-compile-method
             _%self147840%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords147847%_ . _%args147848%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords147847%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147847%_
                  'modules:
                  absent-value))
               _%args147848%_)))
    (define gxc#apply-lift-modules
      (lambda _%args147830147854%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args147830147854%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp149268 (list)) (__tmp149267 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp149268
         '()
         __tmp149267
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args147825%_
        (apply make-instance gxc#::find-runtime-code::t _%$args147825%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp149269
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
        (__make-promise __tmp149269)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx147817%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self147820%_
                (let ((__obj149239
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj149239))
               (__tmp149270
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147820%_ _%stx147817%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149270
           gxc#current-compile-method
           _%self147820%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp149272 (list gxc#::false::t))
            (__tmp149271 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp149272
         '()
         __tmp149271
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args147814%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args147814%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp149273
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
        (__make-promise __tmp149273)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx147806%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self147809%_
                (let ((__obj149241
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj149241))
               (__tmp149274
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147809%_ _%stx147806%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149274
           gxc#current-compile-method
           _%self147809%_))))
    (define gxc#::count-values::t
      (let ((__tmp149276 (list gxc#::false-expression::t))
            (__tmp149275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp149276
         '()
         __tmp149275
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args147803%_
        (apply make-instance gxc#::count-values::t _%$args147803%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp149277
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
        (__make-promise __tmp149277)))
    (define gxc#apply-count-values
      (lambda (_%stx147795%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self147798%_
                (let ((__obj149243
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj149243))
               (__tmp149278
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147798%_ _%stx147795%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149278
           gxc#current-compile-method
           _%self147798%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp149279 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp149279
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args147792%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args147792%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp149280
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
        (__make-promise __tmp149280)))
    (define gxc#::generate-loader::t
      (let ((__tmp149282 (list gxc#::generate-runtime-empty::t))
            (__tmp149281 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp149282
         '()
         __tmp149281
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args147788%_
        (apply make-instance gxc#::generate-loader::t _%$args147788%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp149283
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
        (__make-promise __tmp149283)))
    (define gxc#apply-generate-loader
      (lambda (_%stx147780%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self147783%_
                (let ((__obj149246
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj149246))
               (__tmp149284
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147783%_ _%stx147780%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149284
           gxc#current-compile-method
           _%self147783%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp149285 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp149285
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args147777%_
        (apply make-instance gxc#::generate-runtime::t _%$args147777%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp149286
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
        (__make-promise __tmp149286)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx147769%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self147772%_
                (let ((__obj149248
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj149248))
               (__tmp149287
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147772%_ _%stx147769%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149287
           gxc#current-compile-method
           _%self147772%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp149289 (list gxc#::generate-runtime::t))
            (__tmp149288 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp149289
         '()
         __tmp149288
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args147766%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args147766%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp149290
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
        (__make-promise __tmp149290)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx147758%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self147761%_
                (let ((__obj149250
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj149250))
               (__tmp149291
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147761%_ _%stx147758%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149291
           gxc#current-compile-method
           _%self147761%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp149292 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp149292
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args147755%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args147755%_)))
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
      (let ((__tmp149293
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
        (__make-promise __tmp149293)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords147729%_ _%table147726147730%_ _%stx147732%_)
        (let ((_%table147735%_
               (if (eq? _%table147726147730%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table147726147730%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self147737%_
                  (let ((__obj149252
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149252
                       _%table147735%_
                       '1
                       '#f
                       '#f))
                    __obj149252))
                 (__tmp149294
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147737%_ _%stx147732%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149294
             gxc#current-compile-method
             _%self147737%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords147744%_ . _%args147745%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords147744%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147744%_
                  'table:
                  absent-value))
               _%args147745%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args147727147751%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args147727147751%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp149296 (list gxc#::void-expression::t))
            (__tmp149295 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp149296
         '(state)
         __tmp149295
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args147722%_
        (apply make-instance gxc#::generate-meta::t _%$args147722%_)))
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
      (let ((__tmp149297
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
        (__make-promise __tmp149297)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords147696%_ _%state147693147697%_ _%stx147699%_)
        (let ((_%state147702%_
               (if (eq? _%state147693147697%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147693147697%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self147704%_
                  (let ((__obj149254
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149254
                       _%state147702%_
                       '1
                       '#f
                       '#f))
                    __obj149254))
                 (__tmp149298
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147704%_ _%stx147699%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149298
             gxc#current-compile-method
             _%self147704%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords147711%_ . _%args147712%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords147711%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147711%_
                  'state:
                  absent-value))
               _%args147712%_)))
    (define gxc#apply-generate-meta
      (lambda _%args147694147718%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args147694147718%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp149300 (list)) (__tmp149299 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp149300
         '(state)
         __tmp149299
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args147689%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args147689%_)))
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
      (let ((__tmp149301
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
        (__make-promise __tmp149301)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords147663%_ _%state147660147664%_ _%stx147666%_)
        (let ((_%state147669%_
               (if (eq? _%state147660147664%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147660147664%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self147671%_
                  (let ((__obj149256
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149256
                       _%state147669%_
                       '1
                       '#f
                       '#f))
                    __obj149256))
                 (__tmp149302
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147671%_ _%stx147666%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149302
             gxc#current-compile-method
             _%self147671%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords147678%_ . _%args147679%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords147678%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147678%_
                  'state:
                  absent-value))
               _%args147679%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args147661147685%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args147661147685%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self147589%_ _%stx147590%_)
        (let* ((_%g147592147609%_
                (lambda (_%g147593147606%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147593147606%_))))
               (_%g147591147656%_
                (lambda (_%g147593147612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147593147612%_))
                      (let ((_%e147596147614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147593147612%_))))
                        (let ((_%hd147597147617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147596147614%_)))
                              (_%tl147598147619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147596147614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147598147619%_))
                              (let ((_%e147599147622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147598147619%_))))
                                (let ((_%hd147600147625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147599147622%_)))
                                      (_%tl147601147627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147599147622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147601147627%_))
                                      (let ((_%e147602147630%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147601147627%_))))
                                        (let ((_%hd147603147633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147602147630%_)))
                                              (_%tl147604147635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147602147630%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147604147635%_))
                                              ((lambda (_%L147638%_
                                                        _%L147639%_)
                                                 (let ((__tmp149303
                                                        (lambda (_%bind147654%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind147654%_))
                      (gxc#add-module-binding! _%bind147654%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp149303
                                                    _%L147639%_)))
                                               _%hd147603147633%_
                                               _%hd147600147625%_)
                                              (_%g147592147609%_
                                               _%g147593147612%_))))
                                      (_%g147592147609%_ _%g147593147612%_))))
                              (_%g147592147609%_ _%g147593147612%_))))
                      (_%g147592147609%_ _%g147593147612%_)))))
          (_%g147591147656%_ _%stx147590%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self147521%_ _%stx147522%_)
        (let* ((_%g147524147541%_
                (lambda (_%g147525147538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147525147538%_))))
               (_%g147523147586%_
                (lambda (_%g147525147544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147525147544%_))
                      (let ((_%e147528147546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147525147544%_))))
                        (let ((_%hd147529147549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147528147546%_)))
                              (_%tl147530147551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147528147546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147530147551%_))
                              (let ((_%e147531147554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147530147551%_))))
                                (let ((_%hd147532147557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147531147554%_)))
                                      (_%tl147533147559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147531147554%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147533147559%_))
                                      (let ((_%e147534147562%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147533147559%_))))
                                        (let ((_%hd147535147565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147534147562%_)))
                                              (_%tl147536147567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147534147562%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147536147567%_))
                                              ((lambda (_%L147570%_
                                                        _%L147571%_)
                                                 (gxc#add-module-binding!
                                                  _%L147571%_
                                                  '#t))
                                               _%hd147535147565%_
                                               _%hd147532147557%_)
                                              (_%g147524147541%_
                                               _%g147525147544%_))))
                                      (_%g147524147541%_ _%g147525147544%_))))
                              (_%g147524147541%_ _%g147525147544%_))))
                      (_%g147524147541%_ _%g147525147544%_)))))
          (_%g147523147586%_ _%stx147522%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self147463%_ _%stx147464%_)
        (let* ((_%g147466147480%_
                (lambda (_%g147467147477%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147467147477%_))))
               (_%g147465147518%_
                (lambda (_%g147467147483%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147467147483%_))
                      (let ((_%e147470147485%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147467147483%_))))
                        (let ((_%hd147471147488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147470147485%_)))
                              (_%tl147472147490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147470147485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147472147490%_))
                              (let ((_%e147473147493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147472147490%_))))
                                (let ((_%hd147474147496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147473147493%_)))
                                      (_%tl147475147498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147473147493%_))))
                                  ((lambda (_%L147501%_ _%L147502%_)
                                     (let ((_%ctx147515%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L147502%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self147463%_
                                           'modules))
                                        (cons _%ctx147515%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self147463%_
                                                        'modules)))))
                                       (let ((__tmp149304
                                              (lambda ()
                                                (let ((__tmp149305
                                                       (##structure-ref
                                                        _%ctx147515%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147463%_
                                                   __tmp149305)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp149304
                                          gx#current-expander-context
                                          _%ctx147515%_))))
                                   _%tl147475147498%_
                                   _%hd147474147496%_)))
                              (_%g147466147480%_ _%g147467147483%_))))
                      (_%g147466147480%_ _%g147467147483%_)))))
          (_%g147465147518%_ _%stx147464%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls147416147418%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls147416147418%_
              (let ((_%decls147421%_ _%decls147416147418%_))
                (let _%lp147423%_ ((_%rest147425%_ _%decls147421%_))
                  (let* ((_%rest147426147434%_ _%rest147425%_)
                         (_%else147428147442%_ (lambda () '#f))
                         (_%K147430147451%_
                          (lambda (_%decls147445%_ _%decl147446%_)
                            (if (equal? _%decl147446%_ '(not safe))
                                '#t
                                (if (equal? _%decl147446%_ '(safe))
                                    '#f
                                    (_%lp147423%_ _%decls147445%_))))))
                    (if (pair? _%rest147426147434%_)
                        (let ((_%hd147431147454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147426147434%_)))
                              (_%tl147432147456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147426147434%_))))
                          (let* ((_%decl147459%_ _%hd147431147454%_)
                                 (_%decls147461%_ _%tl147432147456%_))
                            (_%K147430147451%_
                             _%decls147461%_
                             _%decl147459%_)))
                        (_%else147428147442%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id147410%_ _%syntax?147411%_)
        (let ((_%eid147413%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id147410%_))
                '1
                gx#binding::t
                '#f))
              (_%ht147414%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid147413%_))
              '#!void
              (let ((__tmp149306
                     (let ((__tmp149307
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid147413%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp149307 _%syntax?147411%_))))
                (declare (not safe))
                (hash-put! _%ht147414%_ _%eid147413%_ __tmp149306))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id147408%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id147408%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key147363%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key147363%_))
            _%key147363%_
            (if (uninterned-symbol? _%key147363%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key147363%_))
                (let* ((_%key147367147374%_ _%key147363%_)
                       (_%E147369147378%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key147367147374%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K147370147396%_
                        (lambda (_%mark147381%_ _%eid147382%_)
                          (let ((_%$e147384%_
                                 (##structure-ref
                                  _%mark147381%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e147384%_
                                ((lambda (_%ht147387%_)
                                   (let ((_%$e147389%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht147387%_
                                             _%eid147382%_))))
                                     (if _%$e147389%_
                                         ((lambda (_%id147392%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id147392%_))
                                                _%id147392%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id147392%_))))
                                          _%$e147389%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid147382%_))))
                                 _%$e147384%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid147382%_))))))
                  (if (pair? _%key147367147374%_)
                      (let ((_%hd147371147399%_
                             (let ()
                               (declare (not safe))
                               (##car _%key147367147374%_)))
                            (_%tl147372147401%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key147367147374%_))))
                        (let* ((_%eid147404%_ _%hd147371147399%_)
                               (_%mark147406%_ _%tl147372147401%_))
                          (_%K147370147396%_ _%mark147406%_ _%eid147404%_)))
                      (_%E147369147378%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self147360%_ _%stx147361%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self147207%_ _%stx147208%_)
        (letrec ((_%simplify147210%_
                  (lambda (_%body147258%_)
                    (let _%lp147260%_ ((_%rest147262%_ _%body147258%_)
                                       (_%r147263%_ '()))
                      (let* ((_%rest147264147272%_ _%rest147262%_)
                             (_%else147266147280%_
                              (lambda () (reverse _%r147263%_)))
                             (_%K147268147348%_
                              (lambda (_%rest147283%_ _%hd147284%_)
                                (let* ((_%hd147285147301%_ _%hd147284%_)
                                       (_%else147289147309%_
                                        (lambda ()
                                          (_%lp147260%_
                                           _%rest147283%_
                                           (cons _%hd147284%_ _%r147263%_)))))
                                  (let ((_%K147297147338%_
                                         (lambda (_%exprs147336%_)
                                           (_%lp147260%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest147283%_
                                               _%exprs147336%_))
                                            _%r147263%_)))
                                        (_%K147292147322%_
                                         (lambda ()
                                           (if (null? _%rest147283%_)
                                               (_%lp147260%_
                                                _%rest147283%_
                                                (cons _%hd147284%_
                                                      _%r147263%_))
                                               (_%lp147260%_
                                                _%rest147283%_
                                                _%r147263%_))))
                                        (_%K147291147314%_
                                         (lambda ()
                                           (if (null? _%rest147283%_)
                                               (_%lp147260%_
                                                _%rest147283%_
                                                (cons _%hd147284%_
                                                      _%r147263%_))
                                               (_%lp147260%_
                                                _%rest147283%_
                                                _%r147263%_)))))
                                    (let ((_%try-match147288147317%_
                                           (lambda ()
                                             (if (symbol? _%hd147285147301%_)
                                                 (_%K147291147314%_)
                                                 (_%else147289147309%_)))))
                                      (if (pair? _%hd147285147301%_)
                                          (let ((_%tl147299147343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd147285147301%_)))
                                                (_%hd147298147341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd147285147301%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd147298147341%_
                                                         'begin))
                                                (let ((_%exprs147346%_
                                                       _%tl147299147343%_))
                                                  (_%K147297147338%_
                                                   _%exprs147346%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd147298147341%_
                                                             'quote))
                                                    (if (pair? _%tl147299147343%_)
                                                        (let ((_%tl147296147330%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl147299147343%_))))
                  (if (null? _%tl147296147330%_)
                      (_%K147292147322%_)
                      (_%try-match147288147317%_)))
                (_%try-match147288147317%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match147288147317%_))))
                                          (_%try-match147288147317%_))))))))
                        (if (pair? _%rest147264147272%_)
                            (let ((_%hd147269147351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest147264147272%_)))
                                  (_%tl147270147353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest147264147272%_))))
                              (let* ((_%hd147356%_ _%hd147269147351%_)
                                     (_%rest147358%_ _%tl147270147353%_))
                                (_%K147268147348%_
                                 _%rest147358%_
                                 _%hd147356%_)))
                            (_%else147266147280%_)))))))
          (let* ((_%g147212147222%_
                  (lambda (_%g147213147219%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147213147219%_))))
                 (_%g147211147255%_
                  (lambda (_%g147213147225%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147213147225%_))
                        (let ((_%e147215147227%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147213147225%_))))
                          (let ((_%hd147216147230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147215147227%_)))
                                (_%tl147217147232%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147215147227%_))))
                            ((lambda (_%L147235%_)
                               (let* ((_%body147250%_
                                       (map (lambda (_%g147245147247%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self147207%_
                                                 _%g147245147247%_)))
                                            _%L147235%_))
                                      (_%body147252%_
                                       (_%simplify147210%_ _%body147250%_)))
                                 (if (let ((__tmp149308
                                            (length _%body147252%_)))
                                       (declare (not safe))
                                       (##fx= __tmp149308 '1))
                                     (car _%body147252%_)
                                     (cons 'begin _%body147252%_))))
                             _%tl147217147232%_)))
                        (_%g147212147222%_ _%g147213147225%_)))))
            (_%g147211147255%_ _%stx147208%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self147168%_ _%stx147169%_)
        (let* ((_%g147171147181%_
                (lambda (_%g147172147178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147172147178%_))))
               (_%g147170147204%_
                (lambda (_%g147172147184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147172147184%_))
                      (let ((_%e147174147186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147172147184%_))))
                        (let ((_%hd147175147189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147174147186%_)))
                              (_%tl147176147191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147174147186%_))))
                          ((lambda (_%L147194%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L147194%_))))
                           _%tl147176147191%_)))
                      (_%g147171147181%_ _%g147172147184%_)))))
          (_%g147170147204%_ _%stx147169%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self146932%_ _%stx146933%_)
        (let* ((_%__stx147898147899%_ _%stx146933%_)
               (_%g146937146989%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147898147899%_)))))
          (let ((_%__kont147900147901%_
                 (lambda (_%L147150%_ _%L147151%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self146932%_ _%L147150%_))))
                (_%__kont147902147903%_
                 (lambda (_%L147098%_ _%L147099%_ _%L147100%_)
                   (if (let ((__tmp149309
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L147100%_))))
                         (declare (not safe))
                         (##memq __tmp149309 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self146932%_ _%L147098%_)))))
                (_%__kont147906147907%_
                 (lambda (_%L147018%_ _%L147019%_)
                   (let ((_%decls147034%_ (map gx#syntax->datum _%L147019%_)))
                     (let ((__tmp149312
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls147034%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146932%_
                                                   _%L147018%_))
                                                '())))))
                           (__tmp149310
                            (let ((__tmp149311
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp149311 _%decls147034%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp149312
                        gxc#current-compile-decls
                        __tmp149310))))))
            (let* ((_%__match147953147954%_
                    (lambda (_%e146953147042%_
                             _%hd146954147045%_
                             _%tl146955147047%_
                             _%e146956147050%_
                             _%hd146957147053%_
                             _%tl146958147055%_
                             _%e146959147058%_
                             _%hd146960147061%_
                             _%tl146961147063%_
                             _%__splice147904147905%_
                             _%target146962147066%_
                             _%tl146964147068%_)
                      (letrec ((_%loop146965147071%_
                                (lambda (_%hd146963147074%_
                                         _%param146969147076%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146963147074%_))
                                      (let ((_%e146966147079%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146963147074%_))))
                                        (let ((_%lp-tl146968147084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146966147079%_)))
                                              (_%lp-hd146967147082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146966147079%_))))
                                          (_%loop146965147071%_
                                           _%lp-tl146968147084%_
                                           (cons _%lp-hd146967147082%_
                                                 _%param146969147076%_))))
                                      (let ((_%param146970147087%_
                                             (reverse _%param146969147076%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146958147055%_))
                                            (let ((_%e146971147090%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146958147055%_))))
                                              (let ((_%tl146973147095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146971147090%_)))
                                                    (_%hd146972147093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146971147090%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146973147095%_))
                                                    (let ((_%L147098%_
                                                           _%hd146972147093%_)
                                                          (_%L147099%_
                                                           _%param146970147087%_)
                                                          (_%L147100%_
                                                           _%hd146960147061%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L147100%_))
                       (not (let ((__tmp149313
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L147100%_))))
                              (declare (not safe))
                              (##memq __tmp149313 gxc#gambit-annotations))))
                  (_%__kont147902147903%_ _%L147098%_ _%L147099%_ _%L147100%_)
                  (_%__kont147906147907%_
                   _%hd146972147093%_
                   _%hd146957147053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146937146989%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146937146989%_))))))))
                        (_%loop146965147071%_ _%target146962147066%_ '()))))
                   (_%__match147927147928%_
                    (lambda (_%e146941147126%_
                             _%hd146942147129%_
                             _%tl146943147131%_
                             _%e146944147134%_
                             _%hd146945147137%_
                             _%tl146946147139%_
                             _%e146947147142%_
                             _%hd146948147145%_
                             _%tl146949147147%_)
                      (let ((_%L147150%_ _%hd146948147145%_)
                            (_%L147151%_ _%hd146945147137%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L147151%_))
                            (_%__kont147900147901%_ _%L147150%_ _%L147151%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd146945147137%_))
                                (let ((_%e146959147058%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd146945147137%_))))
                                  (let ((_%tl146961147063%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146959147058%_)))
                                        (_%hd146960147061%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146959147058%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl146961147063%_))
                                        (let ((_%__splice147904147905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl146961147063%_
                                                  '0))))
                                          (let ((_%tl146964147068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147904147905%_
                                                    '1)))
                                                (_%target146962147066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147904147905%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146964147068%_))
                                                (_%__match147953147954%_
                                                 _%e146941147126%_
                                                 _%hd146942147129%_
                                                 _%tl146943147131%_
                                                 _%e146944147134%_
                                                 _%hd146945147137%_
                                                 _%tl146946147139%_
                                                 _%e146959147058%_
                                                 _%hd146960147061%_
                                                 _%tl146961147063%_
                                                 _%__splice147904147905%_
                                                 _%target146962147066%_
                                                 _%tl146964147068%_)
                                                (_%__kont147906147907%_
                                                 _%hd146948147145%_
                                                 _%hd146945147137%_))))
                                        (_%__kont147906147907%_
                                         _%hd146948147145%_
                                         _%hd146945147137%_))))
                                (_%__kont147906147907%_
                                 _%hd146948147145%_
                                 _%hd146945147137%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147898147899%_))
                  (let ((_%e146941147126%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147898147899%_))))
                    (let ((_%tl146943147131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146941147126%_)))
                          (_%hd146942147129%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146941147126%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146943147131%_))
                          (let ((_%e146944147134%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146943147131%_))))
                            (let ((_%tl146946147139%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146944147134%_)))
                                  (_%hd146945147137%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146944147134%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146946147139%_))
                                  (let ((_%e146947147142%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146946147139%_))))
                                    (let ((_%tl146949147147%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146947147142%_)))
                                          (_%hd146948147145%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146947147142%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146949147147%_))
                                          (_%__match147927147928%_
                                           _%e146941147126%_
                                           _%hd146942147129%_
                                           _%tl146943147131%_
                                           _%e146944147134%_
                                           _%hd146945147137%_
                                           _%tl146946147139%_
                                           _%e146947147142%_
                                           _%hd146948147145%_
                                           _%tl146949147147%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146945147137%_))
                                              (let ((_%e146959147058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146945147137%_))))
                                                (let ((_%tl146961147063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146959147058%_)))
                                                      (_%hd146960147061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146959147058%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl146961147063%_))
                                                      (let ((_%__splice147904147905%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl146961147063%_ '0))))
                (let ((_%tl146964147068%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147904147905%_ '1)))
                      (_%target146962147066%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147904147905%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146964147068%_))
                      (_%__match147953147954%_
                       _%e146941147126%_
                       _%hd146942147129%_
                       _%tl146943147131%_
                       _%e146944147134%_
                       _%hd146945147137%_
                       _%tl146946147139%_
                       _%e146959147058%_
                       _%hd146960147061%_
                       _%tl146961147063%_
                       _%__splice147904147905%_
                       _%target146962147066%_
                       _%tl146964147068%_)
                      (let () (declare (not safe)) (_%g146937146989%_)))))
              (let () (declare (not safe)) (_%g146937146989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146937146989%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146945147137%_))
                                      (let ((_%e146959147058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146945147137%_))))
                                        (let ((_%tl146961147063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146959147058%_)))
                                              (_%hd146960147061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146959147058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl146961147063%_))
                                              (let ((_%__splice147904147905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl146961147063%_
                                                        '0))))
                                                (let ((_%tl146964147068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147904147905%_
                                                          '1)))
                                                      (_%target146962147066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147904147905%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146964147068%_))
                                                      (_%__match147953147954%_
                                                       _%e146941147126%_
                                                       _%hd146942147129%_
                                                       _%tl146943147131%_
                                                       _%e146944147134%_
                                                       _%hd146945147137%_
                                                       _%tl146946147139%_
                                                       _%e146959147058%_
                                                       _%hd146960147061%_
                                                       _%tl146961147063%_
                                                       _%__splice147904147905%_
                                                       _%target146962147066%_
                                                       _%tl146964147068%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g146937146989%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146937146989%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146937146989%_))))))
                          (let () (declare (not safe)) (_%g146937146989%_)))))
                  (let () (declare (not safe)) (_%g146937146989%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self146891%_ _%stx146892%_)
        (let* ((_%g146894146904%_
                (lambda (_%g146895146901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146895146901%_))))
               (_%g146893146929%_
                (lambda (_%g146895146907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146895146907%_))
                      (let ((_%e146897146909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146895146907%_))))
                        (let ((_%hd146898146912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146897146909%_)))
                              (_%tl146899146914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146897146909%_))))
                          ((lambda (_%L146917%_)
                             (let ((_%decls146927%_
                                    (map gx#syntax->datum _%L146917%_)))
                               (let ((__tmp149314
                                      (let ((__tmp149315
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp149315
                                         _%decls146927%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp149314))
                               (cons 'declare _%decls146927%_)))
                           _%tl146899146914%_)))
                      (_%g146894146904%_ _%g146895146907%_)))))
          (_%g146893146929%_ _%stx146892%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self146637%_ _%stx146638%_)
        (let* ((_%g146640146657%_
                (lambda (_%g146641146654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146641146654%_))))
               (_%g146639146888%_
                (lambda (_%g146641146660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146641146660%_))
                      (let ((_%e146644146662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146641146660%_))))
                        (let ((_%hd146645146665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146644146662%_)))
                              (_%tl146646146667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146644146662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146646146667%_))
                              (let ((_%e146647146670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146646146667%_))))
                                (let ((_%hd146648146673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146647146670%_)))
                                      (_%tl146649146675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146647146670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146649146675%_))
                                      (let ((_%e146650146678%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146649146675%_))))
                                        (let ((_%hd146651146681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146650146678%_)))
                                              (_%tl146652146683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146650146678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146652146683%_))
                                              ((lambda (_%L146686%_
                                                        _%L146687%_)
                                                 (let* ((_%__stx148006148007%_
                                                         _%L146687%_)
                                                        (_%g146704146718%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx148006148007%_)))))
                                                   (let ((_%__kont148008148009%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self146637%_
                                                               _%L146686%_))))
                                                         (_%__kont148010148011%_
                                                          (lambda (_%L146850%_)
                                                            (let ((_%eid146859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L146850%_))))
                      (let ((_%lambda-expr146860146862%_
                             (gxc#apply-find-lambda-expression _%L146686%_)))
                        (if _%lambda-expr146860146862%_
                            (let* ((_%lambda-expr146865%_
                                    _%lambda-expr146860146862%_)
                                   (__tmp149316
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149316
                               _%lambda-expr146865%_
                               _%eid146859%_))
                            '#f))
                      (cons 'define
                            (cons _%eid146859%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self146637%_
                                           _%L146686%_))
                                        '()))))))
                 (_%__kont148012148013%_
                  (lambda ()
                    (let* ((_%tmp146725%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body146834%_
                            (let _%lp146727%_ ((_%rest146729%_ _%L146687%_)
                                               (_%k146730%_ '0)
                                               (_%r146731%_ '()))
                              (let* ((_%__stx147976147977%_ _%rest146729%_)
                                     (_%g146736146753%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx147976147977%_)))))
                                (let ((_%__kont147978147979%_
                                       (lambda (_%L146821%_)
                                         (_%lp146727%_
                                          _%L146821%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146730%_ '1))
                                          _%r146731%_)))
                                      (_%__kont147980147981%_
                                       (lambda (_%L146794%_ _%L146795%_)
                                         (_%lp146727%_
                                          _%L146794%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146730%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L146795%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp146725%_
                           _%k146730%_
                           _%L146794%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r146731%_))))
                                      (_%__kont147982147983%_
                                       (lambda (_%L146765%_)
                                         (let ((__tmp149317
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L146765%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp146725%_
                                 _%k146730%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp149317
                                            _%r146731%_))))
                                      (_%__kont147984147985%_
                                       (lambda () (reverse _%r146731%_))))
                                  (let ((_%g146734146781%_
                                         (lambda ()
                                           (let ((_%L146765%_
                                                  _%__stx147976147977%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L146765%_))
                                                 (_%__kont147982147983%_
                                                  _%L146765%_)
                                                 (_%__kont147984147985%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147976147977%_))
                                        (let ((_%e146739146810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147976147977%_))))
                                          (let ((_%tl146741146815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146739146810%_)))
                                                (_%hd146740146813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146739146810%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd146740146813%_))
                                                (let ((_%e146742146818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146740146813%_))))
                                                  (if (equal? _%e146742146818%_
                                                              '#f)
                                                      (_%__kont147978147979%_
                                                       _%tl146741146815%_)
                                                      (_%__kont147980147981%_
                                                       _%tl146741146815%_
                                                       _%hd146740146813%_)))
                                                (_%__kont147980147981%_
                                                 _%tl146741146815%_
                                                 _%hd146740146813%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146734146781%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp146725%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self146637%_
                                                       _%L146686%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp146725%_
                                         _%L146687%_
                                         _%L146686%_)
                                        _%body146834%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx148006148007%_))
                                                         (let ((_%e146706146872%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx148006148007%_))))
                   (let ((_%tl146708146877%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e146706146872%_)))
                         (_%hd146707146875%_
                          (let ()
                            (declare (not safe))
                            (##car _%e146706146872%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd146707146875%_))
                         (let ((_%e146709146880%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd146707146875%_))))
                           (if (equal? _%e146709146880%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146708146877%_))
                                   (_%__kont148008148009%_)
                                   (_%__kont148012148013%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146708146877%_))
                                   (_%__kont148010148011%_ _%hd146707146875%_)
                                   (_%__kont148012148013%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl146708146877%_))
                             (_%__kont148010148011%_ _%hd146707146875%_)
                             (_%__kont148012148013%_)))))
                 (_%__kont148012148013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146651146681%_
                                               _%hd146648146673%_)
                                              (_%g146640146657%_
                                               _%g146641146660%_))))
                                      (_%g146640146657%_ _%g146641146660%_))))
                              (_%g146640146657%_ _%g146641146660%_))))
                      (_%g146640146657%_ _%g146641146660%_)))))
          (_%g146639146888%_ _%stx146638%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals146612%_ _%hd146613%_ _%expr146614%_)
        (let ((_%$e146616%_ (gxc#apply-count-values _%expr146614%_)))
          (if _%$e146616%_
              ((lambda (_%count146619%_)
                 (let ((_%len146621%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd146613%_)))
                       (_%cmp146622%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd146613%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len146621%_ '0))
                           (_%cmp146622%_ _%count146619%_ _%len146621%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr146614%_
                          _%hd146613%_)))))
               _%$e146616%_)
              (let* ((_%len146628%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd146613%_)))
                     (_%cmp146630%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd146613%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg146632%_
                      (let ((__tmp149319
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd146613%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp149318 (number->string _%len146628%_)))
                        (declare (not safe))
                        (##string-append __tmp149319 __tmp149318 '" values")))
                     (_%count146634%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd146613%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len146628%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count146634%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals146612%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp146630%_
                                (cons _%count146634%_
                                      (cons _%len146628%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp146630%_
                                                        (cons _%count146634%_
                                                              (cons _%len146628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg146632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count146634%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var146607%_)
        (letrec ((_%generate-inline146609%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var146607%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var146607%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146609%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146609%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var146600%_ _%i146601%_ _%rest146602%_)
        (letrec ((_%generate-inline146604%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i146601%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest146602%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var146600%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var146600%_
                                                      (cons '0 '())))
                                          (cons _%var146600%_ '()))))
                        (cons '##values-ref
                              (cons _%var146600%_ (cons _%i146601%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146604%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146604%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var146594%_ _%i146595%_)
        (if (let () (declare (not safe)) (##fx= _%i146595%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var146594%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var146594%_ '()))
                                  (cons (cons 'list (cons _%var146594%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var146594%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var146594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var146594%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i146595%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var146594%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var146594%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var146594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var146594%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var146594%_ '()))
                                (cons _%i146595%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var146594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i146595%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self146526%_ _%stx146527%_)
        (let* ((_%g146529146546%_
                (lambda (_%g146530146543%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146530146543%_))))
               (_%g146528146591%_
                (lambda (_%g146530146549%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146530146549%_))
                      (let ((_%e146533146551%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146530146549%_))))
                        (let ((_%hd146534146554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146533146551%_)))
                              (_%tl146535146556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146533146551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146535146556%_))
                              (let ((_%e146536146559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146535146556%_))))
                                (let ((_%hd146537146562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146536146559%_)))
                                      (_%tl146538146564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146536146559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146538146564%_))
                                      (let ((_%e146539146567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146538146564%_))))
                                        (let ((_%hd146540146570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146539146567%_)))
                                              (_%tl146541146572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146539146567%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146541146572%_))
                                              ((lambda (_%L146575%_
                                                        _%L146576%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self146526%_
                                                  _%L146576%_
                                                  _%L146575%_))
                                               _%hd146540146570%_
                                               _%hd146537146562%_)
                                              (_%g146529146546%_
                                               _%g146530146549%_))))
                                      (_%g146529146546%_ _%g146530146549%_))))
                              (_%g146529146546%_ _%g146530146549%_))))
                      (_%g146529146546%_ _%g146530146549%_)))))
          (_%g146528146591%_ _%stx146527%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self146485%_ _%hd146486%_ _%body146487%_)
        (let* ((_%hd146489%_ (gxc#generate-runtime-lambda-head _%hd146486%_))
               (_%body146491%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self146485%_ _%body146487%_)))
               (_%body146523%_
                (let* ((_%body146492146500%_ _%body146491%_)
                       (_%else146494146508%_
                        (lambda () (cons _%body146491%_ '())))
                       (_%K146496146513%_
                        (lambda (_%exprs146511%_) _%exprs146511%_)))
                  (if (pair? _%body146492146500%_)
                      (let ((_%hd146497146516%_
                             (let ()
                               (declare (not safe))
                               (##car _%body146492146500%_)))
                            (_%tl146498146518%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body146492146500%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd146497146516%_ 'begin))
                            (let ((_%exprs146521%_ _%tl146498146518%_))
                              (_%K146496146513%_ _%exprs146521%_))
                            (_%else146494146508%_)))
                      (_%else146494146508%_)))))
          (cons 'lambda (cons _%hd146489%_ _%body146523%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd146483%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd146483%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self145022%_ _%stx145023%_)
        (letrec ((_%dispatch-case?145025%_
                  (lambda (_%hd145713%_ _%body145714%_)
                    (let* ((_%form145716%_
                            (cons _%hd145713%_ (cons _%body145714%_ '())))
                           (_%__stx148038148039%_ _%form145716%_)
                           (_%g145721145878%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148038148039%_)))))
                      (let ((_%__kont148040148041%_
                             (lambda (_%L146403%_ _%L146404%_ _%L146405%_)
                               '#t))
                            (_%__kont148046148047%_
                             (lambda (_%L146191%_
                                      _%L146192%_
                                      _%L146193%_
                                      _%L146194%_
                                      _%L146195%_
                                      _%L146196%_)
                               '#t))
                            (_%__kont148052148053%_
                             (lambda (_%L145986%_
                                      _%L145987%_
                                      _%L145988%_
                                      _%L145989%_)
                               '#t))
                            (_%__kont148054148055%_ (lambda () '#f)))
                        (let* ((_%__match148179148180%_
                                (lambda (_%e145838145890%_
                                         _%hd145839145893%_
                                         _%tl145840145895%_
                                         _%e145841145898%_
                                         _%hd145842145901%_
                                         _%tl145843145903%_
                                         _%e145844145906%_
                                         _%hd145845145909%_
                                         _%tl145846145911%_
                                         _%e145847145914%_
                                         _%hd145848145917%_
                                         _%tl145849145919%_
                                         _%e145850145922%_
                                         _%hd145851145925%_
                                         _%tl145852145927%_
                                         _%e145853145930%_
                                         _%hd145854145933%_
                                         _%tl145855145935%_
                                         _%e145856145938%_
                                         _%hd145857145941%_
                                         _%tl145858145943%_
                                         _%e145859145946%_
                                         _%hd145860145949%_
                                         _%tl145861145951%_
                                         _%e145862145954%_
                                         _%hd145863145957%_
                                         _%tl145864145959%_
                                         _%e145865145962%_
                                         _%hd145866145965%_
                                         _%tl145867145967%_
                                         _%e145868145970%_
                                         _%hd145869145973%_
                                         _%tl145870145975%_
                                         _%e145871145978%_
                                         _%hd145872145981%_
                                         _%tl145873145983%_)
                                  (let ((_%L145986%_ _%hd145872145981%_)
                                        (_%L145987%_ _%hd145863145957%_)
                                        (_%L145988%_ _%hd145854145933%_)
                                        (_%L145989%_ _%hd145839145893%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L145989%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L145988%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L145989%_
                                                _%L145986%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L145987%_
                                                     _%L145989%_))))
                                        (_%__kont148052148053%_
                                         _%L145986%_
                                         _%L145987%_
                                         _%L145988%_
                                         _%L145989%_)
                                        (_%__kont148054148055%_)))))
                               (_%__match148151148152%_
                                (lambda (_%e145838145890%_
                                         _%hd145839145893%_
                                         _%tl145840145895%_
                                         _%e145841145898%_
                                         _%hd145842145901%_
                                         _%tl145843145903%_
                                         _%e145844145906%_
                                         _%hd145845145909%_
                                         _%tl145846145911%_
                                         _%e145847145914%_
                                         _%hd145848145917%_
                                         _%tl145849145919%_
                                         _%e145850145922%_
                                         _%hd145851145925%_
                                         _%tl145852145927%_
                                         _%e145853145930%_
                                         _%hd145854145933%_
                                         _%tl145855145935%_
                                         _%e145856145938%_
                                         _%hd145857145941%_
                                         _%tl145858145943%_
                                         _%e145859145946%_
                                         _%hd145860145949%_
                                         _%tl145861145951%_
                                         _%e145862145954%_
                                         _%hd145863145957%_
                                         _%tl145864145959%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145858145943%_))
                                      (let ((_%e145865145962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145858145943%_))))
                                        (let ((_%tl145867145967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145865145962%_)))
                                              (_%hd145866145965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145865145962%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145866145965%_))
                                              (let ((_%e145868145970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145866145965%_))))
                                                (let ((_%tl145870145975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145868145970%_)))
                                                      (_%hd145869145973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145868145970%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd145869145973%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd145869145973%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145870145975%_))
                      (let ((_%e145871145978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145870145975%_))))
                        (let ((_%tl145873145983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145871145978%_)))
                              (_%hd145872145981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145871145978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145873145983%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl145867145967%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145843145903%_))
                                      (_%__match148179148180%_
                                       _%e145838145890%_
                                       _%hd145839145893%_
                                       _%tl145840145895%_
                                       _%e145841145898%_
                                       _%hd145842145901%_
                                       _%tl145843145903%_
                                       _%e145844145906%_
                                       _%hd145845145909%_
                                       _%tl145846145911%_
                                       _%e145847145914%_
                                       _%hd145848145917%_
                                       _%tl145849145919%_
                                       _%e145850145922%_
                                       _%hd145851145925%_
                                       _%tl145852145927%_
                                       _%e145853145930%_
                                       _%hd145854145933%_
                                       _%tl145855145935%_
                                       _%e145856145938%_
                                       _%hd145857145941%_
                                       _%tl145858145943%_
                                       _%e145859145946%_
                                       _%hd145860145949%_
                                       _%tl145861145951%_
                                       _%e145862145954%_
                                       _%hd145863145957%_
                                       _%tl145864145959%_
                                       _%e145865145962%_
                                       _%hd145866145965%_
                                       _%tl145867145967%_
                                       _%e145868145970%_
                                       _%hd145869145973%_
                                       _%tl145870145975%_
                                       _%e145871145978%_
                                       _%hd145872145981%_
                                       _%tl145873145983%_)
                                      (_%__kont148054148055%_))
                                  (_%__kont148054148055%_))
                              (_%__kont148054148055%_))))
                      (_%__kont148054148055%_))
                  (_%__kont148054148055%_))
              (_%__kont148054148055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148054148055%_))))
                                      (_%__kont148054148055%_))))
                               (_%__match148081148082%_
                                (lambda (_%e145774146031%_
                                         _%hd145775146034%_
                                         _%tl145776146036%_
                                         _%__splice148048148049%_
                                         _%target145777146039%_
                                         _%tl145779146041%_)
                                  (letrec ((_%loop145780146044%_
                                            (lambda (_%hd145778146047%_
                                                     _%arg145784146049%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145778146047%_))
                                                  (let ((_%e145781146052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145778146047%_))))
                                                    (let ((_%lp-tl145783146057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145781146052%_)))
                                                          (_%lp-hd145782146055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145781146052%_))))
                                                      (_%loop145780146044%_
                                                       _%lp-tl145783146057%_
                                                       (cons _%lp-hd145782146055%_
                                                             _%arg145784146049%_))))
                                                  (let ((_%arg145785146060%_
                                                         (reverse _%arg145784146049%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145776146036%_))
                                                        (let ((_%e145786146063%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145776146036%_))))
                  (let ((_%tl145788146068%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145786146063%_)))
                        (_%hd145787146066%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145786146063%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145787146066%_))
                        (let ((_%e145789146071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145787146066%_))))
                          (let ((_%tl145791146076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145789146071%_)))
                                (_%hd145790146074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145789146071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145790146074%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145790146074%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145791146076%_))
                                        (let ((_%e145792146079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145791146076%_))))
                                          (let ((_%tl145794146084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145792146079%_)))
                                                (_%hd145793146082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145792146079%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145793146082%_))
                                                (let ((_%e145795146087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145793146082%_))))
                                                  (let ((_%tl145797146092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145795146087%_)))
                                                        (_%hd145796146090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145795146087%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145796146090%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145796146090%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145797146092%_))
                        (let ((_%e145798146095%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145797146092%_))))
                          (let ((_%tl145800146100%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145798146095%_)))
                                (_%hd145799146098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145798146095%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145800146100%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145794146084%_))
                                    (let ((_%e145801146103%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145794146084%_))))
                                      (let ((_%tl145803146108%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145801146103%_)))
                                            (_%hd145802146106%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145801146103%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145802146106%_))
                                            (let ((_%e145804146111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145802146106%_))))
                                              (let ((_%tl145806146116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145804146111%_)))
                                                    (_%hd145805146114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145804146111%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145805146114%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145805146114%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145806146116%_))
                                                            (let ((_%e145807146119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145806146116%_))))
                      (let ((_%tl145809146124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145807146119%_)))
                            (_%hd145808146122%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145807146119%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145809146124%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145803146108%_))
                                (if (let ((__tmp149320
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl145803146108%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp149320 '1))
                                    (let ((_%__splice148050148051%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145803146108%_
                                              '1))))
                                      (let ((_%tl145812146129%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148050148051%_
                                                '1)))
                                            (_%target145810146127%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148050148051%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145812146129%_))
                                            (let ((_%e145819146132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145812146129%_))))
                                              (let ((_%tl145821146137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145819146132%_)))
                                                    (_%hd145820146135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145819146132%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd145820146135%_))
                                                    (let ((_%e145822146140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd145820146135%_))))
                                                      (let ((_%tl145824146145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e145822146140%_)))
                    (_%hd145823146143%_
                     (let () (declare (not safe)) (##car _%e145822146140%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd145823146143%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd145823146143%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl145824146145%_))
                            (let ((_%e145825146148%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl145824146145%_))))
                              (let ((_%tl145827146153%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145825146148%_)))
                                    (_%hd145826146151%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145825146148%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl145827146153%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145821146137%_))
                                        (letrec ((_%loop145813146156%_
                                                  (lambda (_%hd145811146159%_
                                                           _%xarg145817146161%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145811146159%_))
                                                        (let ((_%e145814146164%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145811146159%_))))
                  (let ((_%lp-tl145816146169%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145814146164%_)))
                        (_%lp-hd145815146167%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145814146164%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145815146167%_))
                        (let ((_%e145828146172%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145815146167%_))))
                          (let ((_%tl145830146177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145828146172%_)))
                                (_%hd145829146175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145828146172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145829146175%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd145829146175%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145830146177%_))
                                        (let ((_%e145831146180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145830146177%_))))
                                          (let ((_%tl145833146185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145831146180%_)))
                                                (_%hd145832146183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145831146180%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145833146185%_))
                                                (_%loop145813146156%_
                                                 _%lp-tl145816146169%_
                                                 (cons _%hd145832146183%_
                                                       _%xarg145817146161%_))
                                                (_%__match148151148152%_
                                                 _%e145774146031%_
                                                 _%hd145775146034%_
                                                 _%tl145776146036%_
                                                 _%e145786146063%_
                                                 _%hd145787146066%_
                                                 _%tl145788146068%_
                                                 _%e145789146071%_
                                                 _%hd145790146074%_
                                                 _%tl145791146076%_
                                                 _%e145792146079%_
                                                 _%hd145793146082%_
                                                 _%tl145794146084%_
                                                 _%e145795146087%_
                                                 _%hd145796146090%_
                                                 _%tl145797146092%_
                                                 _%e145798146095%_
                                                 _%hd145799146098%_
                                                 _%tl145800146100%_
                                                 _%e145801146103%_
                                                 _%hd145802146106%_
                                                 _%tl145803146108%_
                                                 _%e145804146111%_
                                                 _%hd145805146114%_
                                                 _%tl145806146116%_
                                                 _%e145807146119%_
                                                 _%hd145808146122%_
                                                 _%tl145809146124%_))))
                                        (_%__match148151148152%_
                                         _%e145774146031%_
                                         _%hd145775146034%_
                                         _%tl145776146036%_
                                         _%e145786146063%_
                                         _%hd145787146066%_
                                         _%tl145788146068%_
                                         _%e145789146071%_
                                         _%hd145790146074%_
                                         _%tl145791146076%_
                                         _%e145792146079%_
                                         _%hd145793146082%_
                                         _%tl145794146084%_
                                         _%e145795146087%_
                                         _%hd145796146090%_
                                         _%tl145797146092%_
                                         _%e145798146095%_
                                         _%hd145799146098%_
                                         _%tl145800146100%_
                                         _%e145801146103%_
                                         _%hd145802146106%_
                                         _%tl145803146108%_
                                         _%e145804146111%_
                                         _%hd145805146114%_
                                         _%tl145806146116%_
                                         _%e145807146119%_
                                         _%hd145808146122%_
                                         _%tl145809146124%_))
                                    (_%__match148151148152%_
                                     _%e145774146031%_
                                     _%hd145775146034%_
                                     _%tl145776146036%_
                                     _%e145786146063%_
                                     _%hd145787146066%_
                                     _%tl145788146068%_
                                     _%e145789146071%_
                                     _%hd145790146074%_
                                     _%tl145791146076%_
                                     _%e145792146079%_
                                     _%hd145793146082%_
                                     _%tl145794146084%_
                                     _%e145795146087%_
                                     _%hd145796146090%_
                                     _%tl145797146092%_
                                     _%e145798146095%_
                                     _%hd145799146098%_
                                     _%tl145800146100%_
                                     _%e145801146103%_
                                     _%hd145802146106%_
                                     _%tl145803146108%_
                                     _%e145804146111%_
                                     _%hd145805146114%_
                                     _%tl145806146116%_
                                     _%e145807146119%_
                                     _%hd145808146122%_
                                     _%tl145809146124%_))
                                (_%__match148151148152%_
                                 _%e145774146031%_
                                 _%hd145775146034%_
                                 _%tl145776146036%_
                                 _%e145786146063%_
                                 _%hd145787146066%_
                                 _%tl145788146068%_
                                 _%e145789146071%_
                                 _%hd145790146074%_
                                 _%tl145791146076%_
                                 _%e145792146079%_
                                 _%hd145793146082%_
                                 _%tl145794146084%_
                                 _%e145795146087%_
                                 _%hd145796146090%_
                                 _%tl145797146092%_
                                 _%e145798146095%_
                                 _%hd145799146098%_
                                 _%tl145800146100%_
                                 _%e145801146103%_
                                 _%hd145802146106%_
                                 _%tl145803146108%_
                                 _%e145804146111%_
                                 _%hd145805146114%_
                                 _%tl145806146116%_
                                 _%e145807146119%_
                                 _%hd145808146122%_
                                 _%tl145809146124%_))))
                        (_%__match148151148152%_
                         _%e145774146031%_
                         _%hd145775146034%_
                         _%tl145776146036%_
                         _%e145786146063%_
                         _%hd145787146066%_
                         _%tl145788146068%_
                         _%e145789146071%_
                         _%hd145790146074%_
                         _%tl145791146076%_
                         _%e145792146079%_
                         _%hd145793146082%_
                         _%tl145794146084%_
                         _%e145795146087%_
                         _%hd145796146090%_
                         _%tl145797146092%_
                         _%e145798146095%_
                         _%hd145799146098%_
                         _%tl145800146100%_
                         _%e145801146103%_
                         _%hd145802146106%_
                         _%tl145803146108%_
                         _%e145804146111%_
                         _%hd145805146114%_
                         _%tl145806146116%_
                         _%e145807146119%_
                         _%hd145808146122%_
                         _%tl145809146124%_))))
                (let ((_%xarg145818146188%_ (reverse _%xarg145817146161%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145788146068%_))
                      (let ((_%L146191%_ _%hd145826146151%_)
                            (_%L146192%_ _%xarg145818146188%_)
                            (_%L146193%_ _%hd145808146122%_)
                            (_%L146194%_ _%hd145799146098%_)
                            (_%L146195%_ _%tl145779146041%_)
                            (_%L146196%_ _%arg145785146060%_))
                        (if (and (let ((__tmp149321
                                        (let ((__tmp149322
                                               (lambda (_%g146239146242%_
                                                        _%g146240146244%_)
                                                 (cons _%g146239146242%_
                                                       _%g146240146244%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149322
                                           '()
                                           _%L146196%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp149321))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L146195%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L146194%_
                                    'apply))
                                 (let ((__tmp149325
                                        (length (let ((__tmp149326
                                                       (lambda (_%g146246146249%_
                                                                _%g146247146251%_)
                                                         (cons _%g146246146249%_
                                                               _%g146247146251%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149326
                                                   '()
                                                   _%L146196%_))))
                                       (__tmp149323
                                        (length (let ((__tmp149324
                                                       (lambda (_%g146253146256%_
                                                                _%g146254146258%_)
                                                         (cons _%g146253146256%_
                                                               _%g146254146258%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149324
                                                   '()
                                                   _%L146192%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp149325 __tmp149323))
                                 (let ((__tmp149329
                                        (let ((__tmp149330
                                               (lambda (_%g146260146263%_
                                                        _%g146261146265%_)
                                                 (cons _%g146260146263%_
                                                       _%g146261146265%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149330
                                           '()
                                           _%L146196%_)))
                                       (__tmp149327
                                        (let ((__tmp149328
                                               (lambda (_%g146267146270%_
                                                        _%g146268146272%_)
                                                 (cons _%g146267146270%_
                                                       _%g146268146272%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149328
                                           '()
                                           _%L146192%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp149329
                                    __tmp149327))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L146195%_
                                    _%L146191%_))
                                 (not (let ((__tmp149334
                                             (lambda (_%g146274146276%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g146274146276%_
                                                  _%L146193%_))))
                                            (__tmp149331
                                             (let ((__tmp149333
                                                    (lambda (_%g146278146281%_
                                                             _%g146279146283%_)
                                                      (cons _%g146278146281%_
                                                            _%g146279146283%_)))
                                                   (__tmp149332
                                                    (cons _%L146195%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149333
                                                __tmp149332
                                                _%L146196%_))))
                                        (declare (not safe))
                                        (__find __tmp149334 __tmp149331))))
                            (_%__kont148046148047%_
                             _%L146191%_
                             _%L146192%_
                             _%L146193%_
                             _%L146194%_
                             _%L146195%_
                             _%L146196%_)
                            (_%__match148151148152%_
                             _%e145774146031%_
                             _%hd145775146034%_
                             _%tl145776146036%_
                             _%e145786146063%_
                             _%hd145787146066%_
                             _%tl145788146068%_
                             _%e145789146071%_
                             _%hd145790146074%_
                             _%tl145791146076%_
                             _%e145792146079%_
                             _%hd145793146082%_
                             _%tl145794146084%_
                             _%e145795146087%_
                             _%hd145796146090%_
                             _%tl145797146092%_
                             _%e145798146095%_
                             _%hd145799146098%_
                             _%tl145800146100%_
                             _%e145801146103%_
                             _%hd145802146106%_
                             _%tl145803146108%_
                             _%e145804146111%_
                             _%hd145805146114%_
                             _%tl145806146116%_
                             _%e145807146119%_
                             _%hd145808146122%_
                             _%tl145809146124%_)))
                      (_%__match148151148152%_
                       _%e145774146031%_
                       _%hd145775146034%_
                       _%tl145776146036%_
                       _%e145786146063%_
                       _%hd145787146066%_
                       _%tl145788146068%_
                       _%e145789146071%_
                       _%hd145790146074%_
                       _%tl145791146076%_
                       _%e145792146079%_
                       _%hd145793146082%_
                       _%tl145794146084%_
                       _%e145795146087%_
                       _%hd145796146090%_
                       _%tl145797146092%_
                       _%e145798146095%_
                       _%hd145799146098%_
                       _%tl145800146100%_
                       _%e145801146103%_
                       _%hd145802146106%_
                       _%tl145803146108%_
                       _%e145804146111%_
                       _%hd145805146114%_
                       _%tl145806146116%_
                       _%e145807146119%_
                       _%hd145808146122%_
                       _%tl145809146124%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145813146156%_
                                           _%target145810146127%_
                                           '()))
                                        (_%__match148151148152%_
                                         _%e145774146031%_
                                         _%hd145775146034%_
                                         _%tl145776146036%_
                                         _%e145786146063%_
                                         _%hd145787146066%_
                                         _%tl145788146068%_
                                         _%e145789146071%_
                                         _%hd145790146074%_
                                         _%tl145791146076%_
                                         _%e145792146079%_
                                         _%hd145793146082%_
                                         _%tl145794146084%_
                                         _%e145795146087%_
                                         _%hd145796146090%_
                                         _%tl145797146092%_
                                         _%e145798146095%_
                                         _%hd145799146098%_
                                         _%tl145800146100%_
                                         _%e145801146103%_
                                         _%hd145802146106%_
                                         _%tl145803146108%_
                                         _%e145804146111%_
                                         _%hd145805146114%_
                                         _%tl145806146116%_
                                         _%e145807146119%_
                                         _%hd145808146122%_
                                         _%tl145809146124%_))
                                    (_%__match148151148152%_
                                     _%e145774146031%_
                                     _%hd145775146034%_
                                     _%tl145776146036%_
                                     _%e145786146063%_
                                     _%hd145787146066%_
                                     _%tl145788146068%_
                                     _%e145789146071%_
                                     _%hd145790146074%_
                                     _%tl145791146076%_
                                     _%e145792146079%_
                                     _%hd145793146082%_
                                     _%tl145794146084%_
                                     _%e145795146087%_
                                     _%hd145796146090%_
                                     _%tl145797146092%_
                                     _%e145798146095%_
                                     _%hd145799146098%_
                                     _%tl145800146100%_
                                     _%e145801146103%_
                                     _%hd145802146106%_
                                     _%tl145803146108%_
                                     _%e145804146111%_
                                     _%hd145805146114%_
                                     _%tl145806146116%_
                                     _%e145807146119%_
                                     _%hd145808146122%_
                                     _%tl145809146124%_))))
                            (_%__match148151148152%_
                             _%e145774146031%_
                             _%hd145775146034%_
                             _%tl145776146036%_
                             _%e145786146063%_
                             _%hd145787146066%_
                             _%tl145788146068%_
                             _%e145789146071%_
                             _%hd145790146074%_
                             _%tl145791146076%_
                             _%e145792146079%_
                             _%hd145793146082%_
                             _%tl145794146084%_
                             _%e145795146087%_
                             _%hd145796146090%_
                             _%tl145797146092%_
                             _%e145798146095%_
                             _%hd145799146098%_
                             _%tl145800146100%_
                             _%e145801146103%_
                             _%hd145802146106%_
                             _%tl145803146108%_
                             _%e145804146111%_
                             _%hd145805146114%_
                             _%tl145806146116%_
                             _%e145807146119%_
                             _%hd145808146122%_
                             _%tl145809146124%_))
                        (_%__match148151148152%_
                         _%e145774146031%_
                         _%hd145775146034%_
                         _%tl145776146036%_
                         _%e145786146063%_
                         _%hd145787146066%_
                         _%tl145788146068%_
                         _%e145789146071%_
                         _%hd145790146074%_
                         _%tl145791146076%_
                         _%e145792146079%_
                         _%hd145793146082%_
                         _%tl145794146084%_
                         _%e145795146087%_
                         _%hd145796146090%_
                         _%tl145797146092%_
                         _%e145798146095%_
                         _%hd145799146098%_
                         _%tl145800146100%_
                         _%e145801146103%_
                         _%hd145802146106%_
                         _%tl145803146108%_
                         _%e145804146111%_
                         _%hd145805146114%_
                         _%tl145806146116%_
                         _%e145807146119%_
                         _%hd145808146122%_
                         _%tl145809146124%_))
                    (_%__match148151148152%_
                     _%e145774146031%_
                     _%hd145775146034%_
                     _%tl145776146036%_
                     _%e145786146063%_
                     _%hd145787146066%_
                     _%tl145788146068%_
                     _%e145789146071%_
                     _%hd145790146074%_
                     _%tl145791146076%_
                     _%e145792146079%_
                     _%hd145793146082%_
                     _%tl145794146084%_
                     _%e145795146087%_
                     _%hd145796146090%_
                     _%tl145797146092%_
                     _%e145798146095%_
                     _%hd145799146098%_
                     _%tl145800146100%_
                     _%e145801146103%_
                     _%hd145802146106%_
                     _%tl145803146108%_
                     _%e145804146111%_
                     _%hd145805146114%_
                     _%tl145806146116%_
                     _%e145807146119%_
                     _%hd145808146122%_
                     _%tl145809146124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match148151148152%_
                                                     _%e145774146031%_
                                                     _%hd145775146034%_
                                                     _%tl145776146036%_
                                                     _%e145786146063%_
                                                     _%hd145787146066%_
                                                     _%tl145788146068%_
                                                     _%e145789146071%_
                                                     _%hd145790146074%_
                                                     _%tl145791146076%_
                                                     _%e145792146079%_
                                                     _%hd145793146082%_
                                                     _%tl145794146084%_
                                                     _%e145795146087%_
                                                     _%hd145796146090%_
                                                     _%tl145797146092%_
                                                     _%e145798146095%_
                                                     _%hd145799146098%_
                                                     _%tl145800146100%_
                                                     _%e145801146103%_
                                                     _%hd145802146106%_
                                                     _%tl145803146108%_
                                                     _%e145804146111%_
                                                     _%hd145805146114%_
                                                     _%tl145806146116%_
                                                     _%e145807146119%_
                                                     _%hd145808146122%_
                                                     _%tl145809146124%_))))
                                            (_%__match148151148152%_
                                             _%e145774146031%_
                                             _%hd145775146034%_
                                             _%tl145776146036%_
                                             _%e145786146063%_
                                             _%hd145787146066%_
                                             _%tl145788146068%_
                                             _%e145789146071%_
                                             _%hd145790146074%_
                                             _%tl145791146076%_
                                             _%e145792146079%_
                                             _%hd145793146082%_
                                             _%tl145794146084%_
                                             _%e145795146087%_
                                             _%hd145796146090%_
                                             _%tl145797146092%_
                                             _%e145798146095%_
                                             _%hd145799146098%_
                                             _%tl145800146100%_
                                             _%e145801146103%_
                                             _%hd145802146106%_
                                             _%tl145803146108%_
                                             _%e145804146111%_
                                             _%hd145805146114%_
                                             _%tl145806146116%_
                                             _%e145807146119%_
                                             _%hd145808146122%_
                                             _%tl145809146124%_))))
                                    (_%__match148151148152%_
                                     _%e145774146031%_
                                     _%hd145775146034%_
                                     _%tl145776146036%_
                                     _%e145786146063%_
                                     _%hd145787146066%_
                                     _%tl145788146068%_
                                     _%e145789146071%_
                                     _%hd145790146074%_
                                     _%tl145791146076%_
                                     _%e145792146079%_
                                     _%hd145793146082%_
                                     _%tl145794146084%_
                                     _%e145795146087%_
                                     _%hd145796146090%_
                                     _%tl145797146092%_
                                     _%e145798146095%_
                                     _%hd145799146098%_
                                     _%tl145800146100%_
                                     _%e145801146103%_
                                     _%hd145802146106%_
                                     _%tl145803146108%_
                                     _%e145804146111%_
                                     _%hd145805146114%_
                                     _%tl145806146116%_
                                     _%e145807146119%_
                                     _%hd145808146122%_
                                     _%tl145809146124%_))
                                (_%__match148151148152%_
                                 _%e145774146031%_
                                 _%hd145775146034%_
                                 _%tl145776146036%_
                                 _%e145786146063%_
                                 _%hd145787146066%_
                                 _%tl145788146068%_
                                 _%e145789146071%_
                                 _%hd145790146074%_
                                 _%tl145791146076%_
                                 _%e145792146079%_
                                 _%hd145793146082%_
                                 _%tl145794146084%_
                                 _%e145795146087%_
                                 _%hd145796146090%_
                                 _%tl145797146092%_
                                 _%e145798146095%_
                                 _%hd145799146098%_
                                 _%tl145800146100%_
                                 _%e145801146103%_
                                 _%hd145802146106%_
                                 _%tl145803146108%_
                                 _%e145804146111%_
                                 _%hd145805146114%_
                                 _%tl145806146116%_
                                 _%e145807146119%_
                                 _%hd145808146122%_
                                 _%tl145809146124%_))
                            (_%__kont148054148055%_))))
                    (_%__kont148054148055%_))
                (_%__kont148054148055%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148054148055%_))))
                                            (_%__kont148054148055%_))))
                                    (_%__kont148054148055%_))
                                (_%__kont148054148055%_))))
                        (_%__kont148054148055%_))
                    (_%__kont148054148055%_))
                (_%__kont148054148055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148054148055%_))))
                                        (_%__kont148054148055%_))
                                    (_%__kont148054148055%_))
                                (_%__kont148054148055%_))))
                        (_%__kont148054148055%_))))
                (_%__kont148054148055%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145780146044%_
                                     _%target145777146039%_
                                     '()))))
                               (_%__match148069148070%_
                                (lambda (_%e145726146291%_
                                         _%hd145727146294%_
                                         _%tl145728146296%_
                                         _%__splice148042148043%_
                                         _%target145729146299%_
                                         _%tl145731146301%_)
                                  (letrec ((_%loop145732146304%_
                                            (lambda (_%hd145730146307%_
                                                     _%arg145736146309%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145730146307%_))
                                                  (let ((_%e145733146312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145730146307%_))))
                                                    (let ((_%lp-tl145735146317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145733146312%_)))
                                                          (_%lp-hd145734146315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145733146312%_))))
                                                      (_%loop145732146304%_
                                                       _%lp-tl145735146317%_
                                                       (cons _%lp-hd145734146315%_
                                                             _%arg145736146309%_))))
                                                  (let ((_%arg145737146320%_
                                                         (reverse _%arg145736146309%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145728146296%_))
                                                        (let ((_%e145738146323%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145728146296%_))))
                  (let ((_%tl145740146328%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145738146323%_)))
                        (_%hd145739146326%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145738146323%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145739146326%_))
                        (let ((_%e145741146331%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145739146326%_))))
                          (let ((_%tl145743146336%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145741146331%_)))
                                (_%hd145742146334%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145741146331%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145742146334%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145742146334%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145743146336%_))
                                        (let ((_%e145744146339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145743146336%_))))
                                          (let ((_%tl145746146344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145744146339%_)))
                                                (_%hd145745146342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145744146339%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145745146342%_))
                                                (let ((_%e145747146347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145745146342%_))))
                                                  (let ((_%tl145749146352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145747146347%_)))
                                                        (_%hd145748146350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145747146347%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145748146350%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145748146350%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145749146352%_))
                        (let ((_%e145750146355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145749146352%_))))
                          (let ((_%tl145752146360%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145750146355%_)))
                                (_%hd145751146358%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145750146355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145752146360%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145746146344%_))
                                    (let ((_%__splice148044148045%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145746146344%_
                                              '0))))
                                      (let ((_%tl145755146365%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148044148045%_
                                                '1)))
                                            (_%target145753146363%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148044148045%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145755146365%_))
                                            (letrec ((_%loop145756146368%_
                                                      (lambda (_%hd145754146371%_
                                                               _%xarg145760146373%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145754146371%_))
                                                            (let ((_%e145757146376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145754146371%_))))
                      (let ((_%lp-tl145759146381%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145757146376%_)))
                            (_%lp-hd145758146379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145757146376%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145758146379%_))
                            (let ((_%e145762146384%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145758146379%_))))
                              (let ((_%tl145764146389%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145762146384%_)))
                                    (_%hd145763146387%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145762146384%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145763146387%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145763146387%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145764146389%_))
                                            (let ((_%e145765146392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145764146389%_))))
                                              (let ((_%tl145767146397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145765146392%_)))
                                                    (_%hd145766146395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145765146392%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145767146397%_))
                                                    (_%loop145756146368%_
                                                     _%lp-tl145759146381%_
                                                     (cons _%hd145766146395%_
                                                           _%xarg145760146373%_))
                                                    (_%__match148081148082%_
                                                     _%e145726146291%_
                                                     _%hd145727146294%_
                                                     _%tl145728146296%_
                                                     _%__splice148042148043%_
                                                     _%target145729146299%_
                                                     _%tl145731146301%_))))
                                            (_%__match148081148082%_
                                             _%e145726146291%_
                                             _%hd145727146294%_
                                             _%tl145728146296%_
                                             _%__splice148042148043%_
                                             _%target145729146299%_
                                             _%tl145731146301%_))
                                        (_%__match148081148082%_
                                         _%e145726146291%_
                                         _%hd145727146294%_
                                         _%tl145728146296%_
                                         _%__splice148042148043%_
                                         _%target145729146299%_
                                         _%tl145731146301%_))
                                    (_%__match148081148082%_
                                     _%e145726146291%_
                                     _%hd145727146294%_
                                     _%tl145728146296%_
                                     _%__splice148042148043%_
                                     _%target145729146299%_
                                     _%tl145731146301%_))))
                            (_%__match148081148082%_
                             _%e145726146291%_
                             _%hd145727146294%_
                             _%tl145728146296%_
                             _%__splice148042148043%_
                             _%target145729146299%_
                             _%tl145731146301%_))))
                    (let ((_%xarg145761146400%_
                           (reverse _%xarg145760146373%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145740146328%_))
                          (let ((_%L146403%_ _%xarg145761146400%_)
                                (_%L146404%_ _%hd145751146358%_)
                                (_%L146405%_ _%arg145737146320%_))
                            (if (and (let ((__tmp149335
                                            (let ((__tmp149336
                                                   (lambda (_%g146433146436%_
                                                            _%g146434146438%_)
                                                     (cons _%g146433146436%_
                                                           _%g146434146438%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149336
                                               '()
                                               _%L146405%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp149335))
                                     (let ((__tmp149339
                                            (length (let ((__tmp149340
                                                           (lambda (_%g146440146443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146441146445%_)
                     (cons _%g146440146443%_ _%g146441146445%_))))
              (declare (not safe))
              (__foldr1 __tmp149340 '() _%L146405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp149337
                                            (length (let ((__tmp149338
                                                           (lambda (_%g146447146450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146448146452%_)
                     (cons _%g146447146450%_ _%g146448146452%_))))
              (declare (not safe))
              (__foldr1 __tmp149338 '() _%L146403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149339 __tmp149337))
                                     (let ((__tmp149343
                                            (let ((__tmp149344
                                                   (lambda (_%g146454146457%_
                                                            _%g146455146459%_)
                                                     (cons _%g146454146457%_
                                                           _%g146455146459%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149344
                                               '()
                                               _%L146405%_)))
                                           (__tmp149341
                                            (let ((__tmp149342
                                                   (lambda (_%g146461146464%_
                                                            _%g146462146466%_)
                                                     (cons _%g146461146464%_
                                                           _%g146462146466%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149342
                                               '()
                                               _%L146403%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp149343
                                        __tmp149341))
                                     (not (let ((__tmp149347
                                                 (lambda (_%g146468146470%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g146468146470%_
                                                      _%L146404%_))))
                                                (__tmp149345
                                                 (let ((__tmp149346
                                                        (lambda (_%g146472146475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g146473146477%_)
                  (cons _%g146472146475%_ _%g146473146477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp149346
                                                    '()
                                                    _%L146405%_))))
                                            (declare (not safe))
                                            (__find __tmp149347 __tmp149345))))
                                (_%__kont148040148041%_
                                 _%L146403%_
                                 _%L146404%_
                                 _%L146405%_)
                                (_%__match148081148082%_
                                 _%e145726146291%_
                                 _%hd145727146294%_
                                 _%tl145728146296%_
                                 _%__splice148042148043%_
                                 _%target145729146299%_
                                 _%tl145731146301%_)))
                          (_%__match148081148082%_
                           _%e145726146291%_
                           _%hd145727146294%_
                           _%tl145728146296%_
                           _%__splice148042148043%_
                           _%target145729146299%_
                           _%tl145731146301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145756146368%_
                                               _%target145753146363%_
                                               '()))
                                            (_%__match148081148082%_
                                             _%e145726146291%_
                                             _%hd145727146294%_
                                             _%tl145728146296%_
                                             _%__splice148042148043%_
                                             _%target145729146299%_
                                             _%tl145731146301%_))))
                                    (_%__match148081148082%_
                                     _%e145726146291%_
                                     _%hd145727146294%_
                                     _%tl145728146296%_
                                     _%__splice148042148043%_
                                     _%target145729146299%_
                                     _%tl145731146301%_))
                                (_%__match148081148082%_
                                 _%e145726146291%_
                                 _%hd145727146294%_
                                 _%tl145728146296%_
                                 _%__splice148042148043%_
                                 _%target145729146299%_
                                 _%tl145731146301%_))))
                        (_%__match148081148082%_
                         _%e145726146291%_
                         _%hd145727146294%_
                         _%tl145728146296%_
                         _%__splice148042148043%_
                         _%target145729146299%_
                         _%tl145731146301%_))
                    (_%__match148081148082%_
                     _%e145726146291%_
                     _%hd145727146294%_
                     _%tl145728146296%_
                     _%__splice148042148043%_
                     _%target145729146299%_
                     _%tl145731146301%_))
                (_%__match148081148082%_
                 _%e145726146291%_
                 _%hd145727146294%_
                 _%tl145728146296%_
                 _%__splice148042148043%_
                 _%target145729146299%_
                 _%tl145731146301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148081148082%_
                                                 _%e145726146291%_
                                                 _%hd145727146294%_
                                                 _%tl145728146296%_
                                                 _%__splice148042148043%_
                                                 _%target145729146299%_
                                                 _%tl145731146301%_))))
                                        (_%__match148081148082%_
                                         _%e145726146291%_
                                         _%hd145727146294%_
                                         _%tl145728146296%_
                                         _%__splice148042148043%_
                                         _%target145729146299%_
                                         _%tl145731146301%_))
                                    (_%__match148081148082%_
                                     _%e145726146291%_
                                     _%hd145727146294%_
                                     _%tl145728146296%_
                                     _%__splice148042148043%_
                                     _%target145729146299%_
                                     _%tl145731146301%_))
                                (_%__match148081148082%_
                                 _%e145726146291%_
                                 _%hd145727146294%_
                                 _%tl145728146296%_
                                 _%__splice148042148043%_
                                 _%target145729146299%_
                                 _%tl145731146301%_))))
                        (_%__match148081148082%_
                         _%e145726146291%_
                         _%hd145727146294%_
                         _%tl145728146296%_
                         _%__splice148042148043%_
                         _%target145729146299%_
                         _%tl145731146301%_))))
                (_%__match148081148082%_
                 _%e145726146291%_
                 _%hd145727146294%_
                 _%tl145728146296%_
                 _%__splice148042148043%_
                 _%target145729146299%_
                 _%tl145731146301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145732146304%_
                                     _%target145729146299%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148038148039%_))
                              (let ((_%e145726146291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148038148039%_))))
                                (let ((_%tl145728146296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145726146291%_)))
                                      (_%hd145727146294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145726146291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145727146294%_))
                                      (let ((_%__splice148042148043%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145727146294%_
                                                '0))))
                                        (let ((_%tl145731146301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148042148043%_
                                                  '1)))
                                              (_%target145729146299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148042148043%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145731146301%_))
                                              (_%__match148069148070%_
                                               _%e145726146291%_
                                               _%hd145727146294%_
                                               _%tl145728146296%_
                                               _%__splice148042148043%_
                                               _%target145729146299%_
                                               _%tl145731146301%_)
                                              (_%__match148081148082%_
                                               _%e145726146291%_
                                               _%hd145727146294%_
                                               _%tl145728146296%_
                                               _%__splice148042148043%_
                                               _%target145729146299%_
                                               _%tl145731146301%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145728146296%_))
                                          (let ((_%e145841145898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145728146296%_))))
                                            (let ((_%tl145843145903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145841145898%_)))
                                                  (_%hd145842145901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145841145898%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145842145901%_))
                                                  (let ((_%e145844145906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145842145901%_))))
                                                    (let ((_%tl145846145911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145844145906%_)))
                                                          (_%hd145845145909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145844145906%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145845145909%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145845145909%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145846145911%_))
                          (let ((_%e145847145914%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145846145911%_))))
                            (let ((_%tl145849145919%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145847145914%_)))
                                  (_%hd145848145917%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145847145914%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145848145917%_))
                                  (let ((_%e145850145922%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145848145917%_))))
                                    (let ((_%tl145852145927%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145850145922%_)))
                                          (_%hd145851145925%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145850145922%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145851145925%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145851145925%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145852145927%_))
                                                  (let ((_%e145853145930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145852145927%_))))
                                                    (let ((_%tl145855145935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145853145930%_)))
                                                          (_%hd145854145933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145853145930%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145855145935%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145849145919%_))
                      (let ((_%e145856145938%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145849145919%_))))
                        (let ((_%tl145858145943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145856145938%_)))
                              (_%hd145857145941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145856145938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145857145941%_))
                              (let ((_%e145859145946%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145857145941%_))))
                                (let ((_%tl145861145951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145859145946%_)))
                                      (_%hd145860145949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145859145946%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145860145949%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145860145949%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145861145951%_))
                                              (let ((_%e145862145954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145861145951%_))))
                                                (let ((_%tl145864145959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145862145954%_)))
                                                      (_%hd145863145957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145862145954%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145864145959%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145858145943%_))
                                                          (let ((_%e145865145962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145858145943%_))))
                    (let ((_%tl145867145967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145865145962%_)))
                          (_%hd145866145965%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145865145962%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd145866145965%_))
                          (let ((_%e145868145970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd145866145965%_))))
                            (let ((_%tl145870145975%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145868145970%_)))
                                  (_%hd145869145973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145868145970%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd145869145973%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd145869145973%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145870145975%_))
                                          (let ((_%e145871145978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145870145975%_))))
                                            (let ((_%tl145873145983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145871145978%_)))
                                                  (_%hd145872145981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145871145978%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145873145983%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145867145967%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145843145903%_))
                                                          (_%__match148179148180%_
                                                           _%e145726146291%_
                                                           _%hd145727146294%_
                                                           _%tl145728146296%_
                                                           _%e145841145898%_
                                                           _%hd145842145901%_
                                                           _%tl145843145903%_
                                                           _%e145844145906%_
                                                           _%hd145845145909%_
                                                           _%tl145846145911%_
                                                           _%e145847145914%_
                                                           _%hd145848145917%_
                                                           _%tl145849145919%_
                                                           _%e145850145922%_
                                                           _%hd145851145925%_
                                                           _%tl145852145927%_
                                                           _%e145853145930%_
                                                           _%hd145854145933%_
                                                           _%tl145855145935%_
                                                           _%e145856145938%_
                                                           _%hd145857145941%_
                                                           _%tl145858145943%_
                                                           _%e145859145946%_
                                                           _%hd145860145949%_
                                                           _%tl145861145951%_
                                                           _%e145862145954%_
                                                           _%hd145863145957%_
                                                           _%tl145864145959%_
                                                           _%e145865145962%_
                                                           _%hd145866145965%_
                                                           _%tl145867145967%_
                                                           _%e145868145970%_
                                                           _%hd145869145973%_
                                                           _%tl145870145975%_
                                                           _%e145871145978%_
                                                           _%hd145872145981%_
                                                           _%tl145873145983%_)
                                                          (_%__kont148054148055%_))
                                                      (_%__kont148054148055%_))
                                                  (_%__kont148054148055%_))))
                                          (_%__kont148054148055%_))
                                      (_%__kont148054148055%_))
                                  (_%__kont148054148055%_))))
                          (_%__kont148054148055%_))))
                  (_%__kont148054148055%_))
              (_%__kont148054148055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148054148055%_))
                                          (_%__kont148054148055%_))
                                      (_%__kont148054148055%_))))
                              (_%__kont148054148055%_))))
                      (_%__kont148054148055%_))
                  (_%__kont148054148055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148054148055%_))
                                              (_%__kont148054148055%_))
                                          (_%__kont148054148055%_))))
                                  (_%__kont148054148055%_))))
                          (_%__kont148054148055%_))
                      (_%__kont148054148055%_))
                  (_%__kont148054148055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148054148055%_))))
                                          (_%__kont148054148055%_)))))
                              (_%__kont148054148055%_)))))))
                 (_%dispatch-case-e145026%_
                  (lambda (_%hd145177%_ _%body145178%_)
                    (let* ((_%form145180%_
                            (cons _%hd145177%_ (cons _%body145178%_ '())))
                           (_%__stx148182148183%_ _%form145180%_)
                           (_%g145184145308%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148182148183%_)))))
                      (let ((_%__kont148184148185%_
                             (lambda (_%L145679%_ _%L145680%_ _%L145681%_)
                               (let ((__tmp149348
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145680%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145022%_
                                  __tmp149348))))
                            (_%__kont148190148191%_
                             (lambda (_%L145527%_
                                      _%L145528%_
                                      _%L145529%_
                                      _%L145530%_)
                               (let ((__tmp149349
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145527%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145022%_
                                  __tmp149349))))
                            (_%__kont148194148195%_
                             (lambda (_%L145393%_ _%L145394%_ _%L145395%_)
                               (let ((__tmp149350
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145393%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145022%_
                                  __tmp149350)))))
                        (let* ((_%__match148291148292%_
                                (lambda (_%e145274145313%_
                                         _%hd145275145316%_
                                         _%tl145276145318%_
                                         _%e145277145321%_
                                         _%hd145278145324%_
                                         _%tl145279145326%_
                                         _%e145280145329%_
                                         _%hd145281145332%_
                                         _%tl145282145334%_
                                         _%e145283145337%_
                                         _%hd145284145340%_
                                         _%tl145285145342%_
                                         _%e145286145345%_
                                         _%hd145287145348%_
                                         _%tl145288145350%_
                                         _%e145289145353%_
                                         _%hd145290145356%_
                                         _%tl145291145358%_
                                         _%e145292145361%_
                                         _%hd145293145364%_
                                         _%tl145294145366%_
                                         _%e145295145369%_
                                         _%hd145296145372%_
                                         _%tl145297145374%_
                                         _%e145298145377%_
                                         _%hd145299145380%_
                                         _%tl145300145382%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145294145366%_))
                                      (let ((_%e145301145385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145294145366%_))))
                                        (let ((_%tl145303145390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145301145385%_)))
                                              (_%hd145302145388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145301145385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145303145390%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145279145326%_))
                                                  (_%__kont148194148195%_
                                                   _%hd145299145380%_
                                                   _%hd145290145356%_
                                                   _%hd145275145316%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145184145308%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145184145308%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145184145308%_)))))
                               (_%__match148221148222%_
                                (lambda (_%e145235145431%_
                                         _%hd145236145434%_
                                         _%tl145237145436%_
                                         _%__splice148192148193%_
                                         _%target145238145439%_
                                         _%tl145240145441%_)
                                  (letrec ((_%loop145241145444%_
                                            (lambda (_%hd145239145447%_
                                                     _%arg145245145449%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145239145447%_))
                                                  (let ((_%e145242145452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145239145447%_))))
                                                    (let ((_%lp-tl145244145457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145242145452%_)))
                                                          (_%lp-hd145243145455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145242145452%_))))
                                                      (_%loop145241145444%_
                                                       _%lp-tl145244145457%_
                                                       (cons _%lp-hd145243145455%_
                                                             _%arg145245145449%_))))
                                                  (let ((_%arg145246145460%_
                                                         (reverse _%arg145245145449%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145237145436%_))
                                                        (let ((_%e145247145463%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145237145436%_))))
                  (let ((_%tl145249145468%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145247145463%_)))
                        (_%hd145248145466%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145247145463%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145248145466%_))
                        (let ((_%e145250145471%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145248145466%_))))
                          (let ((_%tl145252145476%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145250145471%_)))
                                (_%hd145251145474%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145250145471%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145251145474%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145251145474%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145252145476%_))
                                        (let ((_%e145253145479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145252145476%_))))
                                          (let ((_%tl145255145484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145253145479%_)))
                                                (_%hd145254145482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145253145479%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145254145482%_))
                                                (let ((_%e145256145487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145254145482%_))))
                                                  (let ((_%tl145258145492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145256145487%_)))
                                                        (_%hd145257145490%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145256145487%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145257145490%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145257145490%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145258145492%_))
                        (let ((_%e145259145495%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145258145492%_))))
                          (let ((_%tl145261145500%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145259145495%_)))
                                (_%hd145260145498%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145259145495%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145261145500%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145255145484%_))
                                    (let ((_%e145262145503%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145255145484%_))))
                                      (let ((_%tl145264145508%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145262145503%_)))
                                            (_%hd145263145506%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145262145503%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145263145506%_))
                                            (let ((_%e145265145511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145263145506%_))))
                                              (let ((_%tl145267145516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145265145511%_)))
                                                    (_%hd145266145514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145265145511%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145266145514%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145266145514%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145267145516%_))
                                                            (let ((_%e145268145519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145267145516%_))))
                      (let ((_%tl145270145524%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145268145519%_)))
                            (_%hd145269145522%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145268145519%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145270145524%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145249145468%_))
                                (_%__kont148190148191%_
                                 _%hd145269145522%_
                                 _%hd145260145498%_
                                 _%tl145240145441%_
                                 _%arg145246145460%_)
                                (_%__match148291148292%_
                                 _%e145235145431%_
                                 _%hd145236145434%_
                                 _%tl145237145436%_
                                 _%e145247145463%_
                                 _%hd145248145466%_
                                 _%tl145249145468%_
                                 _%e145250145471%_
                                 _%hd145251145474%_
                                 _%tl145252145476%_
                                 _%e145253145479%_
                                 _%hd145254145482%_
                                 _%tl145255145484%_
                                 _%e145256145487%_
                                 _%hd145257145490%_
                                 _%tl145258145492%_
                                 _%e145259145495%_
                                 _%hd145260145498%_
                                 _%tl145261145500%_
                                 _%e145262145503%_
                                 _%hd145263145506%_
                                 _%tl145264145508%_
                                 _%e145265145511%_
                                 _%hd145266145514%_
                                 _%tl145267145516%_
                                 _%e145268145519%_
                                 _%hd145269145522%_
                                 _%tl145270145524%_))
                            (let ()
                              (declare (not safe))
                              (_%g145184145308%_)))))
                    (let () (declare (not safe)) (_%g145184145308%_)))
                (let () (declare (not safe)) (_%g145184145308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145184145308%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145184145308%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145184145308%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145184145308%_)))))
                        (let () (declare (not safe)) (_%g145184145308%_)))
                    (let () (declare (not safe)) (_%g145184145308%_)))
                (let () (declare (not safe)) (_%g145184145308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g145184145308%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g145184145308%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145184145308%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145184145308%_)))))
                        (let () (declare (not safe)) (_%g145184145308%_)))))
                (let () (declare (not safe)) (_%g145184145308%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145241145444%_
                                     _%target145238145439%_
                                     '()))))
                               (_%__match148209148210%_
                                (lambda (_%e145189145567%_
                                         _%hd145190145570%_
                                         _%tl145191145572%_
                                         _%__splice148186148187%_
                                         _%target145192145575%_
                                         _%tl145194145577%_)
                                  (letrec ((_%loop145195145580%_
                                            (lambda (_%hd145193145583%_
                                                     _%arg145199145585%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145193145583%_))
                                                  (let ((_%e145196145588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145193145583%_))))
                                                    (let ((_%lp-tl145198145593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145196145588%_)))
                                                          (_%lp-hd145197145591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145196145588%_))))
                                                      (_%loop145195145580%_
                                                       _%lp-tl145198145593%_
                                                       (cons _%lp-hd145197145591%_
                                                             _%arg145199145585%_))))
                                                  (let ((_%arg145200145596%_
                                                         (reverse _%arg145199145585%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145191145572%_))
                                                        (let ((_%e145201145599%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145191145572%_))))
                  (let ((_%tl145203145604%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145201145599%_)))
                        (_%hd145202145602%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145201145599%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145202145602%_))
                        (let ((_%e145204145607%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145202145602%_))))
                          (let ((_%tl145206145612%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145204145607%_)))
                                (_%hd145205145610%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145204145607%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145205145610%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145205145610%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145206145612%_))
                                        (let ((_%e145207145615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145206145612%_))))
                                          (let ((_%tl145209145620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145207145615%_)))
                                                (_%hd145208145618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145207145615%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145208145618%_))
                                                (let ((_%e145210145623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145208145618%_))))
                                                  (let ((_%tl145212145628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145210145623%_)))
                                                        (_%hd145211145626%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145210145623%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145211145626%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145211145626%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145212145628%_))
                        (let ((_%e145213145631%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145212145628%_))))
                          (let ((_%tl145215145636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145213145631%_)))
                                (_%hd145214145634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145213145631%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145215145636%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145209145620%_))
                                    (let ((_%__splice148188148189%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145209145620%_
                                              '0))))
                                      (let ((_%tl145218145641%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148188148189%_
                                                '1)))
                                            (_%target145216145639%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148188148189%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145218145641%_))
                                            (letrec ((_%loop145219145644%_
                                                      (lambda (_%hd145217145647%_
                                                               _%xarg145223145649%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145217145647%_))
                                                            (let ((_%e145220145652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145217145647%_))))
                      (let ((_%lp-tl145222145657%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145220145652%_)))
                            (_%lp-hd145221145655%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145220145652%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145221145655%_))
                            (let ((_%e145225145660%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145221145655%_))))
                              (let ((_%tl145227145665%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145225145660%_)))
                                    (_%hd145226145663%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145225145660%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145226145663%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145226145663%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145227145665%_))
                                            (let ((_%e145228145668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145227145665%_))))
                                              (let ((_%tl145230145673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145228145668%_)))
                                                    (_%hd145229145671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145228145668%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145230145673%_))
                                                    (_%loop145219145644%_
                                                     _%lp-tl145222145657%_
                                                     (cons _%hd145229145671%_
                                                           _%xarg145223145649%_))
                                                    (_%__match148221148222%_
                                                     _%e145189145567%_
                                                     _%hd145190145570%_
                                                     _%tl145191145572%_
                                                     _%__splice148186148187%_
                                                     _%target145192145575%_
                                                     _%tl145194145577%_))))
                                            (_%__match148221148222%_
                                             _%e145189145567%_
                                             _%hd145190145570%_
                                             _%tl145191145572%_
                                             _%__splice148186148187%_
                                             _%target145192145575%_
                                             _%tl145194145577%_))
                                        (_%__match148221148222%_
                                         _%e145189145567%_
                                         _%hd145190145570%_
                                         _%tl145191145572%_
                                         _%__splice148186148187%_
                                         _%target145192145575%_
                                         _%tl145194145577%_))
                                    (_%__match148221148222%_
                                     _%e145189145567%_
                                     _%hd145190145570%_
                                     _%tl145191145572%_
                                     _%__splice148186148187%_
                                     _%target145192145575%_
                                     _%tl145194145577%_))))
                            (_%__match148221148222%_
                             _%e145189145567%_
                             _%hd145190145570%_
                             _%tl145191145572%_
                             _%__splice148186148187%_
                             _%target145192145575%_
                             _%tl145194145577%_))))
                    (let ((_%xarg145224145676%_
                           (reverse _%xarg145223145649%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145203145604%_))
                          (_%__kont148184148185%_
                           _%xarg145224145676%_
                           _%hd145214145634%_
                           _%arg145200145596%_)
                          (_%__match148221148222%_
                           _%e145189145567%_
                           _%hd145190145570%_
                           _%tl145191145572%_
                           _%__splice148186148187%_
                           _%target145192145575%_
                           _%tl145194145577%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145219145644%_
                                               _%target145216145639%_
                                               '()))
                                            (_%__match148221148222%_
                                             _%e145189145567%_
                                             _%hd145190145570%_
                                             _%tl145191145572%_
                                             _%__splice148186148187%_
                                             _%target145192145575%_
                                             _%tl145194145577%_))))
                                    (_%__match148221148222%_
                                     _%e145189145567%_
                                     _%hd145190145570%_
                                     _%tl145191145572%_
                                     _%__splice148186148187%_
                                     _%target145192145575%_
                                     _%tl145194145577%_))
                                (_%__match148221148222%_
                                 _%e145189145567%_
                                 _%hd145190145570%_
                                 _%tl145191145572%_
                                 _%__splice148186148187%_
                                 _%target145192145575%_
                                 _%tl145194145577%_))))
                        (_%__match148221148222%_
                         _%e145189145567%_
                         _%hd145190145570%_
                         _%tl145191145572%_
                         _%__splice148186148187%_
                         _%target145192145575%_
                         _%tl145194145577%_))
                    (_%__match148221148222%_
                     _%e145189145567%_
                     _%hd145190145570%_
                     _%tl145191145572%_
                     _%__splice148186148187%_
                     _%target145192145575%_
                     _%tl145194145577%_))
                (_%__match148221148222%_
                 _%e145189145567%_
                 _%hd145190145570%_
                 _%tl145191145572%_
                 _%__splice148186148187%_
                 _%target145192145575%_
                 _%tl145194145577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148221148222%_
                                                 _%e145189145567%_
                                                 _%hd145190145570%_
                                                 _%tl145191145572%_
                                                 _%__splice148186148187%_
                                                 _%target145192145575%_
                                                 _%tl145194145577%_))))
                                        (_%__match148221148222%_
                                         _%e145189145567%_
                                         _%hd145190145570%_
                                         _%tl145191145572%_
                                         _%__splice148186148187%_
                                         _%target145192145575%_
                                         _%tl145194145577%_))
                                    (_%__match148221148222%_
                                     _%e145189145567%_
                                     _%hd145190145570%_
                                     _%tl145191145572%_
                                     _%__splice148186148187%_
                                     _%target145192145575%_
                                     _%tl145194145577%_))
                                (_%__match148221148222%_
                                 _%e145189145567%_
                                 _%hd145190145570%_
                                 _%tl145191145572%_
                                 _%__splice148186148187%_
                                 _%target145192145575%_
                                 _%tl145194145577%_))))
                        (_%__match148221148222%_
                         _%e145189145567%_
                         _%hd145190145570%_
                         _%tl145191145572%_
                         _%__splice148186148187%_
                         _%target145192145575%_
                         _%tl145194145577%_))))
                (_%__match148221148222%_
                 _%e145189145567%_
                 _%hd145190145570%_
                 _%tl145191145572%_
                 _%__splice148186148187%_
                 _%target145192145575%_
                 _%tl145194145577%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145195145580%_
                                     _%target145192145575%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148182148183%_))
                              (let ((_%e145189145567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148182148183%_))))
                                (let ((_%tl145191145572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145189145567%_)))
                                      (_%hd145190145570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145189145567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145190145570%_))
                                      (let ((_%__splice148186148187%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145190145570%_
                                                '0))))
                                        (let ((_%tl145194145577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148186148187%_
                                                  '1)))
                                              (_%target145192145575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148186148187%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145194145577%_))
                                              (_%__match148209148210%_
                                               _%e145189145567%_
                                               _%hd145190145570%_
                                               _%tl145191145572%_
                                               _%__splice148186148187%_
                                               _%target145192145575%_
                                               _%tl145194145577%_)
                                              (_%__match148221148222%_
                                               _%e145189145567%_
                                               _%hd145190145570%_
                                               _%tl145191145572%_
                                               _%__splice148186148187%_
                                               _%target145192145575%_
                                               _%tl145194145577%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145191145572%_))
                                          (let ((_%e145277145321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145191145572%_))))
                                            (let ((_%tl145279145326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145277145321%_)))
                                                  (_%hd145278145324%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145277145321%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145278145324%_))
                                                  (let ((_%e145280145329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145278145324%_))))
                                                    (let ((_%tl145282145334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145280145329%_)))
                                                          (_%hd145281145332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145280145329%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145281145332%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145281145332%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145282145334%_))
                          (let ((_%e145283145337%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145282145334%_))))
                            (let ((_%tl145285145342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145283145337%_)))
                                  (_%hd145284145340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145283145337%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145284145340%_))
                                  (let ((_%e145286145345%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145284145340%_))))
                                    (let ((_%tl145288145350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145286145345%_)))
                                          (_%hd145287145348%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145286145345%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145287145348%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145287145348%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145288145350%_))
                                                  (let ((_%e145289145353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145288145350%_))))
                                                    (let ((_%tl145291145358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145289145353%_)))
                                                          (_%hd145290145356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145289145353%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145291145358%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145285145342%_))
                      (let ((_%e145292145361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145285145342%_))))
                        (let ((_%tl145294145366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145292145361%_)))
                              (_%hd145293145364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145292145361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145293145364%_))
                              (let ((_%e145295145369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145293145364%_))))
                                (let ((_%tl145297145374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145295145369%_)))
                                      (_%hd145296145372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145295145369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145296145372%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145296145372%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145297145374%_))
                                              (let ((_%e145298145377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145297145374%_))))
                                                (let ((_%tl145300145382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145298145377%_)))
                                                      (_%hd145299145380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145298145377%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145300145382%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145294145366%_))
                                                          (let ((_%e145301145385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145294145366%_))))
                    (let ((_%tl145303145390%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145301145385%_)))
                          (_%hd145302145388%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145301145385%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145303145390%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145279145326%_))
                              (_%__kont148194148195%_
                               _%hd145299145380%_
                               _%hd145290145356%_
                               _%hd145190145570%_)
                              (let ()
                                (declare (not safe))
                                (_%g145184145308%_)))
                          (let () (declare (not safe)) (_%g145184145308%_)))))
                  (let () (declare (not safe)) (_%g145184145308%_)))
              (let () (declare (not safe)) (_%g145184145308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145184145308%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145184145308%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145184145308%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g145184145308%_)))))
                      (let () (declare (not safe)) (_%g145184145308%_)))
                  (let () (declare (not safe)) (_%g145184145308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145184145308%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145184145308%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145184145308%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g145184145308%_)))))
                          (let () (declare (not safe)) (_%g145184145308%_)))
                      (let () (declare (not safe)) (_%g145184145308%_)))
                  (let () (declare (not safe)) (_%g145184145308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145184145308%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145184145308%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g145184145308%_))))))))
                 (_%generate1145027%_
                  (lambda (_%args145162%_
                           _%arglen145163%_
                           _%hd145164%_
                           _%body145165%_)
                    (let* ((_%len145167%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd145164%_)))
                           (_%condition145172%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd145164%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen145163%_
                                                (cons _%len145167%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen145163%_ (cons _%len145167%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len145167%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen145163%_
                                                    (cons _%len145167%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen145163%_ (cons _%len145167%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch145174%_
                            (if (_%dispatch-case?145025%_
                                 _%hd145164%_
                                 _%body145165%_)
                                (_%dispatch-case-e145026%_
                                 _%hd145164%_
                                 _%body145165%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self145022%_
                                 _%hd145164%_
                                 _%body145165%_))))
                      (cons _%condition145172%_
                            (cons (cons 'apply
                                        (cons _%dispatch145174%_
                                              (cons _%args145162%_ '())))
                                  '()))))))
          (let* ((_%g145029145057%_
                  (lambda (_%g145030145054%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145030145054%_))))
                 (_%g145028145159%_
                  (lambda (_%g145030145060%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145030145060%_))
                        (let ((_%e145033145062%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145030145060%_))))
                          (let ((_%hd145034145065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145033145062%_)))
                                (_%tl145035145067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145033145062%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145035145067%_))
                                (let ((_g149351_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl145035145067%_
                                          '0))))
                                  (begin
                                    (let ((_g149352_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149351_)
                                                 (##values-length _g149351_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149352_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149352_)))
                                    (let ((_%target145036145070%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149351_ 0)))
                                          (_%tl145038145072%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149351_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145038145072%_))
                                          (letrec ((_%loop145039145075%_
                                                    (lambda (_%hd145037145078%_
                                                             _%body145043145080%_
                                                             _%hd145044145082%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd145037145078%_))
                                                          (let ((_%e145040145085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd145037145078%_))))
                    (let ((_%lp-hd145041145088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145040145085%_)))
                          (_%lp-tl145042145090%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145040145085%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd145041145088%_))
                          (let ((_%e145047145093%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd145041145088%_))))
                            (let ((_%hd145048145096%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145047145093%_)))
                                  (_%tl145049145098%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145047145093%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145049145098%_))
                                  (let ((_%e145050145101%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145049145098%_))))
                                    (let ((_%hd145051145104%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145050145101%_)))
                                          (_%tl145052145106%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145050145101%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145052145106%_))
                                          (_%loop145039145075%_
                                           _%lp-tl145042145090%_
                                           (cons _%hd145051145104%_
                                                 _%body145043145080%_)
                                           (cons _%hd145048145096%_
                                                 _%hd145044145082%_))
                                          (_%g145029145057%_
                                           _%g145030145060%_))))
                                  (_%g145029145057%_ _%g145030145060%_))))
                          (_%g145029145057%_ _%g145030145060%_))))
                  (let ((_%body145045145109%_ (reverse _%body145043145080%_))
                        (_%hd145046145111%_ (reverse _%hd145044145082%_)))
                    ((lambda (_%L145114%_ _%L145115%_)
                       (let ((_%args145134%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen145135%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name145136%_
                              (let ((_%$e145131%_
                                     (let ((__tmp149353
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp149353 _%stx145023%_))))
                                (if _%$e145131%_
                                    _%$e145131%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args145134%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen145135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args145134%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args145134%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp149357
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name145136%_
                                                                (cons _%args145134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp149354
                                  (map (lambda (_%g145137145140%_
                                                _%g145138145142%_)
                                         (_%generate1145027%_
                                          _%args145134%_
                                          _%arglen145135%_
                                          _%g145137145140%_
                                          _%g145138145142%_))
                                       (let ((__tmp149355
                                              (lambda (_%g145144145147%_
                                                       _%g145145145149%_)
                                                (cons _%g145144145147%_
                                                      _%g145145145149%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149355
                                          '()
                                          _%L145115%_))
                                       (let ((__tmp149356
                                              (lambda (_%g145151145154%_
                                                       _%g145152145156%_)
                                                (cons _%g145151145154%_
                                                      _%g145152145156%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149356
                                          '()
                                          _%L145114%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp149357 __tmp149354)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body145045145109%_
                     _%hd145046145111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop145039145075%_
                                             _%target145036145070%_
                                             '()
                                             '()))
                                          (_%g145029145057%_
                                           _%g145030145060%_)))))
                                (_%g145029145057%_ _%g145030145060%_))))
                        (_%g145029145057%_ _%g145030145060%_)))))
            (_%g145028145159%_ _%stx145023%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self144259%_ _%stx144260%_ _%compiled-body?144261%_)
        (letrec ((_%generate-simple144263%_
                  (lambda (_%hd145007%_ _%body145008%_)
                    (_%coalesce-boolean144264%_
                     (_%simplify-let144265%_
                      (gxc#generate-runtime-simple-let
                       _%self144259%_
                       'let
                       _%hd145007%_
                       _%body145008%_
                       _%compiled-body?144261%_)))))
                 (_%coalesce-boolean144264%_
                  (lambda (_%code144868%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code144869144895%_ _%code144868%_)
                               (_%else144871144903%_
                                (lambda () _%code144868%_))
                               (_%K144873144940%_
                                (lambda (_%expr2144906%_
                                         _%expr1144907%_
                                         _%id144908%_)
                                  (let* ((_%expr2144909144917%_
                                          _%expr2144906%_)
                                         (_%else144911144925%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1144907%_
                                                        (cons _%expr2144906%_
                                                              '())))))
                                         (_%K144913144930%_
                                          (lambda (_%exprs144928%_)
                                            (cons 'or
                                                  (cons _%expr1144907%_
                                                        _%exprs144928%_)))))
                                    (if (pair? _%expr2144909144917%_)
                                        (let ((_%hd144914144933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2144909144917%_)))
                                              (_%tl144915144935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2144909144917%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144914144933%_ 'or))
                                              (let ((_%exprs144938%_
                                                     _%tl144915144935%_))
                                                (_%K144913144930%_
                                                 _%exprs144938%_))
                                              (_%else144911144925%_)))
                                        (_%else144911144925%_))))))
                          (if (pair? _%code144869144895%_)
                              (let ((_%hd144874144943%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code144869144895%_)))
                                    (_%tl144875144945%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code144869144895%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd144874144943%_ 'let))
                                    (if (pair? _%tl144875144945%_)
                                        (let ((_%hd144876144948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl144875144945%_)))
                                              (_%tl144877144950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl144875144945%_))))
                                          (if (pair? _%hd144876144948%_)
                                              (let ((_%hd144888144953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd144876144948%_)))
                                                    (_%tl144889144955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd144876144948%_))))
                                                (if (pair? _%hd144888144953%_)
                                                    (let ((_%hd144890144958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd144888144953%_)))
                                                          (_%tl144891144960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd144888144953%_))))
                                                      (let ((_%id144963%_
                                                             _%hd144890144958%_))
                                                        (if (pair? _%tl144891144960%_)
                                                            (let ((_%hd144892144965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl144891144960%_)))
                          (_%tl144893144967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144891144960%_))))
                      (let ((_%expr1144970%_ _%hd144892144965%_))
                        (if (null? _%tl144893144967%_)
                            (if (null? _%tl144889144955%_)
                                (if (pair? _%tl144877144950%_)
                                    (let ((_%hd144878144972%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl144877144950%_)))
                                          (_%tl144879144974%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl144877144950%_))))
                                      (if (pair? _%hd144878144972%_)
                                          (let ((_%hd144880144977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd144878144972%_)))
                                                (_%tl144881144979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd144878144972%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd144880144977%_
                                                         'if))
                                                (if (pair? _%tl144881144979%_)
                                                    (let ((_%hd144882144982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl144881144979%_)))
                                                          (_%tl144883144984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl144881144979%_))))
                                                      (if ((lambda (_%g144986144988%_)
                                                             (eq? _%g144986144988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id144963%_))
                   _%hd144882144982%_)
                  (if (pair? _%tl144883144984%_)
                      (let ((_%hd144884144991%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl144883144984%_)))
                            (_%tl144885144993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl144883144984%_))))
                        (if ((lambda (_%g144995144997%_)
                               (eq? _%g144995144997%_ _%id144963%_))
                             _%hd144884144991%_)
                            (if (pair? _%tl144885144993%_)
                                (let ((_%hd144886145000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144885144993%_)))
                                      (_%tl144887145002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144885144993%_))))
                                  (let ((_%expr2145005%_ _%hd144886145000%_))
                                    (if (null? _%tl144887145002%_)
                                        (if (null? _%tl144879144974%_)
                                            (_%K144873144940%_
                                             _%expr2145005%_
                                             _%expr1144970%_
                                             _%id144963%_)
                                            (_%else144871144903%_))
                                        (_%else144871144903%_))))
                                (_%else144871144903%_))
                            (_%else144871144903%_)))
                      (_%else144871144903%_))
                  (_%else144871144903%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144871144903%_))
                                                (_%else144871144903%_)))
                                          (_%else144871144903%_)))
                                    (_%else144871144903%_))
                                (_%else144871144903%_))
                            (_%else144871144903%_))))
                    (_%else144871144903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144871144903%_)))
                                              (_%else144871144903%_)))
                                        (_%else144871144903%_))
                                    (_%else144871144903%_)))
                              (_%else144871144903%_)))
                        _%code144868%_)))
                 (_%simplify-let144265%_
                  (lambda (_%code144567%_)
                    (let* ((_%code144568144640%_ _%code144567%_)
                           (_%else144573144648%_ (lambda () _%code144567%_)))
                      (let ((_%K144632144848%_
                             (lambda (_%expr144846%_) _%expr144846%_))
                            (_%K144615144794%_
                             (lambda (_%body144790%_
                                      _%expr144791%_
                                      _%id144792%_)
                               (cons 'let
                                     (cons (cons (cons _%id144792%_
                                                       (cons _%expr144791%_
                                                             '()))
                                                 '())
                                           _%body144790%_))))
                            (_%K144592144718%_
                             (lambda (_%body144712%_
                                      _%expr2144713%_
                                      _%id2144714%_
                                      _%expr1144715%_
                                      _%id1144716%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144716%_
                                                       (cons _%expr1144715%_
                                                             '()))
                                                 (cons (cons _%id2144714%_
                                                             (cons _%expr2144713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body144712%_))))
                            (_%K144575144657%_
                             (lambda (_%body144652%_
                                      _%bind144653%_
                                      _%expr1144654%_
                                      _%id1144655%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144655%_
                                                       (cons _%expr1144654%_
                                                             '()))
                                                 _%bind144653%_)
                                           _%body144652%_)))))
                        (if (pair? _%code144568144640%_)
                            (let ((_%tl144634144853%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code144568144640%_)))
                                  (_%hd144633144851%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code144568144640%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd144633144851%_ 'let))
                                  (if (pair? _%tl144634144853%_)
                                      (let ((_%tl144636144858%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl144634144853%_)))
                                            (_%hd144635144856%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl144634144853%_))))
                                        (if (null? _%hd144635144856%_)
                                            (if (pair? _%tl144636144858%_)
                                                (let ((_%tl144638144863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl144636144858%_)))
                                                      (_%hd144637144861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl144636144858%_))))
                                                  (if (null? _%tl144638144863%_)
                                                      (let ((_%expr144866%_
                                                             _%hd144637144861%_))
                                                        (_%K144632144848%_
                                                         _%expr144866%_))
                                                      (_%else144573144648%_)))
                                                (_%else144573144648%_))
                                            (if (pair? _%hd144635144856%_)
                                                (let ((_%tl144627144809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd144635144856%_)))
                                                      (_%hd144626144807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd144635144856%_))))
                                                  (if (pair? _%hd144626144807%_)
                                                      (let ((_%tl144629144814%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd144626144807%_)))
                    (_%hd144628144812%_
                     (let () (declare (not safe)) (##car _%hd144626144807%_))))
                (if (pair? _%tl144629144814%_)
                    (let ((_%tl144631144821%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144629144814%_)))
                          (_%hd144630144819%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl144629144814%_))))
                      (if (null? _%tl144631144821%_)
                          (if (null? _%tl144627144809%_)
                              (if (pair? _%tl144636144858%_)
                                  (let ((_%tl144621144828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl144636144858%_)))
                                        (_%hd144620144826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl144636144858%_))))
                                    (if (pair? _%hd144620144826%_)
                                        (let ((_%tl144623144833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd144620144826%_)))
                                              (_%hd144622144831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd144620144826%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144622144831%_
                                                       'let))
                                              (if (pair? _%tl144623144833%_)
                                                  (let ((_%tl144625144838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144623144833%_)))
                                                        (_%hd144624144836%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144623144833%_))))
                                                    (if (null? _%hd144624144836%_)
                                                        (if (null? _%tl144621144828%_)
                                                            (let ((_%id144817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd144628144812%_)
                          (_%expr144824%_ _%hd144630144819%_)
                          (_%body144841%_ _%tl144625144838%_))
                      (_%K144615144794%_
                       _%body144841%_
                       _%expr144824%_
                       _%id144817%_))
                    (_%else144573144648%_))
                (if (pair? _%hd144624144836%_)
                    (let ((_%tl144604144767%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd144624144836%_)))
                          (_%hd144603144765%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd144624144836%_))))
                      (if (pair? _%hd144603144765%_)
                          (let ((_%tl144606144772%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144603144765%_)))
                                (_%hd144605144770%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144603144765%_))))
                            (if (pair? _%tl144606144772%_)
                                (let ((_%tl144608144779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144606144772%_)))
                                      (_%hd144607144777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144606144772%_))))
                                  (if (null? _%tl144608144779%_)
                                      (if (null? _%tl144604144767%_)
                                          (if (null? _%tl144621144828%_)
                                              (let ((_%id1144741%_
                                                     _%hd144628144812%_)
                                                    (_%expr1144748%_
                                                     _%hd144630144819%_)
                                                    (_%id2144775%_
                                                     _%hd144605144770%_)
                                                    (_%expr2144782%_
                                                     _%hd144607144777%_)
                                                    (_%body144784%_
                                                     _%tl144625144838%_))
                                                (_%K144592144718%_
                                                 _%body144784%_
                                                 _%expr2144782%_
                                                 _%id2144775%_
                                                 _%expr1144748%_
                                                 _%id1144741%_))
                                              (_%else144573144648%_))
                                          (_%else144573144648%_))
                                      (_%else144573144648%_)))
                                (_%else144573144648%_)))
                          (_%else144573144648%_)))
                    (_%else144573144648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144573144648%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd144622144831%_
                                                           'let*))
                                                  (if (pair? _%tl144623144833%_)
                                                      (let ((_%tl144585144701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl144623144833%_)))
                    (_%hd144584144699%_
                     (let () (declare (not safe)) (##car _%tl144623144833%_))))
                (if (null? _%tl144621144828%_)
                    (let ((_%id1144680%_ _%hd144628144812%_)
                          (_%expr1144687%_ _%hd144630144819%_)
                          (_%bind144704%_ _%hd144584144699%_)
                          (_%body144706%_ _%tl144585144701%_))
                      (_%K144575144657%_
                       _%body144706%_
                       _%bind144704%_
                       _%expr1144687%_
                       _%id1144680%_))
                    (_%else144573144648%_)))
              (_%else144573144648%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144573144648%_))))
                                        (_%else144573144648%_)))
                                  (_%else144573144648%_))
                              (_%else144573144648%_))
                          (_%else144573144648%_)))
                    (_%else144573144648%_)))
              (_%else144573144648%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144573144648%_))))
                                      (_%else144573144648%_))
                                  (_%else144573144648%_)))
                            (_%else144573144648%_))))))
                 (_%generate-values144266%_
                  (lambda (_%hd144380%_ _%body144381%_)
                    (let _%lp144383%_ ((_%rest144385%_ _%hd144380%_)
                                       (_%bind144386%_ '())
                                       (_%check144387%_ '())
                                       (_%post144388%_ '()))
                      (let* ((_%__stx148511148512%_ _%rest144385%_)
                             (_%g144391144402%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148511148512%_)))))
                        (let ((_%__kont148513148514%_
                               (lambda (_%L144429%_ _%L144430%_)
                                 (let* ((_%__stx148467148468%_ _%L144430%_)
                                        (_%g144445144470%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148467148468%_)))))
                                   (let ((_%__kont148469148470%_
                                          (lambda (_%L144543%_ _%L144544%_)
                                            (let ((_%eid144558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144544%_)))
                                                  (_%expr144559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144259%_
                                                      _%L144543%_))))
                                              (_%lp144383%_
                                               _%L144429%_
                                               (cons (cons _%eid144558%_
                                                           (cons _%expr144559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144386%_)
                                               _%check144387%_
                                               _%post144388%_))))
                                         (_%__kont148471148472%_
                                          (lambda (_%L144491%_ _%L144492%_)
                                            (let* ((_%vals144505%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144507%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144505%_
                                                     _%L144492%_
                                                     _%L144491%_))
                                                   (_%refs144509%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144505%_
                                                     _%L144492%_))
                                                   (_%expr144511%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144259%_
                                                       _%L144491%_))))
                                              (_%lp144383%_
                                               _%L144429%_
                                               (cons (cons _%vals144505%_
                                                           (cons _%expr144511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144386%_)
                                               (cons _%check-values144507%_
                                                     _%check144387%_)
                                               (cons _%refs144509%_
                                                     _%post144388%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148467148468%_))
                                         (let ((_%e144449144519%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148467148468%_))))
                                           (let ((_%tl144451144524%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144449144519%_)))
                                                 (_%hd144450144522%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144449144519%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144450144522%_))
                                                 (let ((_%e144452144527%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144450144522%_))))
                                                   (let ((_%tl144454144532%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144452144527%_)))
                                                         (_%hd144453144530%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144452144527%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144454144532%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144451144524%_))
                     (let ((_%e144455144535%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144451144524%_))))
                       (let ((_%tl144457144540%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144455144535%_)))
                             (_%hd144456144538%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144455144535%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144457144540%_))
                             (_%__kont148469148470%_
                              _%hd144456144538%_
                              _%hd144453144530%_)
                             (let ()
                               (declare (not safe))
                               (_%g144445144470%_)))))
                     (let () (declare (not safe)) (_%g144445144470%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144451144524%_))
                     (let ((_%e144463144483%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144451144524%_))))
                       (let ((_%tl144465144488%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144463144483%_)))
                             (_%hd144464144486%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144463144483%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144465144488%_))
                             (_%__kont148471148472%_
                              _%hd144464144486%_
                              _%hd144450144522%_)
                             (let ()
                               (declare (not safe))
                               (_%g144445144470%_)))))
                     (let () (declare (not safe)) (_%g144445144470%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144451144524%_))
                                                     (let ((_%e144463144483%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144451144524%_))))
                                                       (let ((_%tl144465144488%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144463144483%_)))
                     (_%hd144464144486%_
                      (let () (declare (not safe)) (##car _%e144463144483%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144465144488%_))
                     (_%__kont148471148472%_
                      _%hd144464144486%_
                      _%hd144450144522%_)
                     (let () (declare (not safe)) (_%g144445144470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144445144470%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144445144470%_)))))))
                              (_%__kont148515148516%_
                               (lambda ()
                                 (let* ((_%body144409%_
                                         (if _%compiled-body?144261%_
                                             _%body144381%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144259%_
                                                _%body144381%_))))
                                        (_%body144411%_
                                         (_%generate-values-post144267%_
                                          _%post144388%_
                                          _%body144409%_))
                                        (_%body144413%_
                                         (_%generate-values-check144268%_
                                          _%check144387%_
                                          _%body144411%_)))
                                   (cons 'let
                                         (cons (reverse _%bind144386%_)
                                               (cons _%body144413%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148511148512%_))
                              (let ((_%e144395144421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148511148512%_))))
                                (let ((_%tl144397144426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144395144421%_)))
                                      (_%hd144396144424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144395144421%_))))
                                  (_%__kont148513148514%_
                                   _%tl144397144426%_
                                   _%hd144396144424%_)))
                              (_%__kont148515148516%_)))))))
                 (_%generate-values-post144267%_
                  (lambda (_%post144339%_ _%body144340%_)
                    (let _%lp144342%_ ((_%rest144344%_ _%post144339%_)
                                       (_%body144345%_ _%body144340%_))
                      (let* ((_%rest144346144354%_ _%rest144344%_)
                             (_%else144348144362%_ (lambda () _%body144345%_))
                             (_%K144350144368%_
                              (lambda (_%rest144365%_ _%bind144366%_)
                                (_%lp144342%_
                                 _%rest144365%_
                                 (cons 'let
                                       (cons _%bind144366%_
                                             (cons _%body144345%_ '())))))))
                        (if (pair? _%rest144346144354%_)
                            (let ((_%hd144351144371%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144346144354%_)))
                                  (_%tl144352144373%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144346144354%_))))
                              (let* ((_%bind144376%_ _%hd144351144371%_)
                                     (_%rest144378%_ _%tl144352144373%_))
                                (_%K144350144368%_
                                 _%rest144378%_
                                 _%bind144376%_)))
                            (_%else144348144362%_))))))
                 (_%generate-values-check144268%_
                  (lambda (_%check144336%_ _%body144337%_)
                    (cons 'begin
                          (let ((__tmp149359 (cons _%body144337%_ '()))
                                (__tmp149358 (reverse _%check144336%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149359 __tmp149358))))))
          (let* ((_%g144270144287%_
                  (lambda (_%g144271144284%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144271144284%_))))
                 (_%g144269144333%_
                  (lambda (_%g144271144290%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144271144290%_))
                        (let ((_%e144274144292%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144271144290%_))))
                          (let ((_%hd144275144295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144274144292%_)))
                                (_%tl144276144297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144274144292%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144276144297%_))
                                (let ((_%e144277144300%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144276144297%_))))
                                  (let ((_%hd144278144303%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144277144300%_)))
                                        (_%tl144279144305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144277144300%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144279144305%_))
                                        (let ((_%e144280144308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144279144305%_))))
                                          (let ((_%hd144281144311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144280144308%_)))
                                                (_%tl144282144313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144280144308%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144282144313%_))
                                                ((lambda (_%L144316%_
                                                          _%L144317%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144317%_)
                                                       (_%generate-simple144263%_
                                                        _%L144317%_
                                                        _%L144316%_)
                                                       (_%generate-values144266%_
                                                        _%L144317%_
                                                        _%L144316%_)))
                                                 _%hd144281144311%_
                                                 _%hd144278144303%_)
                                                (_%g144270144287%_
                                                 _%g144271144290%_))))
                                        (_%g144270144287%_
                                         _%g144271144290%_))))
                                (_%g144270144287%_ _%g144271144290%_))))
                        (_%g144270144287%_ _%g144271144290%_)))))
            (_%g144269144333%_ _%stx144260%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self145013%_ _%stx145014%_)
        (let ((_%compiled-body?145016%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self145013%_
           _%stx145014%_
           _%compiled-body?145016%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g149361_
        (let ((_g149360_ (let () (declare (not safe)) (##length _g149361_))))
          (cond ((let () (declare (not safe)) (##fx= _g149360_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g149361_))
                ((let () (declare (not safe)) (##fx= _g149360_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g149361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g149361_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals144153%_ _%hd144154%_)
        (let _%lp144156%_ ((_%rest144158%_ _%hd144154%_)
                           (_%k144159%_ '0)
                           (_%r144160%_ '()))
          (let* ((_%__stx148525148526%_ _%rest144158%_)
                 (_%g144165144182%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx148525148526%_)))))
            (let ((_%__kont148527148528%_
                   (lambda (_%L144245%_)
                     (_%lp144156%_
                      _%L144245%_
                      (let () (declare (not safe)) (##fx+ _%k144159%_ '1))
                      _%r144160%_)))
                  (_%__kont148529148530%_
                   (lambda (_%L144218%_ _%L144219%_)
                     (_%lp144156%_
                      _%L144218%_
                      (let () (declare (not safe)) (##fx+ _%k144159%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L144219%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals144153%_
                                         _%k144159%_
                                         _%L144218%_)
                                        '()))
                            _%r144160%_))))
                  (_%__kont148531148532%_
                   (lambda (_%L144194%_)
                     (let ((__tmp149362
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L144194%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals144153%_
                                               _%k144159%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp149362 _%r144160%_))))
                  (_%__kont148533148534%_ (lambda () (reverse _%r144160%_))))
              (let ((_%g144163144205%_
                     (lambda ()
                       (let ((_%L144194%_ _%__stx148525148526%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L144194%_))
                             (_%__kont148531148532%_ _%L144194%_)
                             (_%__kont148533148534%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx148525148526%_))
                    (let ((_%e144168144234%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx148525148526%_))))
                      (let ((_%tl144170144239%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144168144234%_)))
                            (_%hd144169144237%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144168144234%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd144169144237%_))
                            (let ((_%e144171144242%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd144169144237%_))))
                              (if (equal? _%e144171144242%_ '#f)
                                  (_%__kont148527148528%_ _%tl144170144239%_)
                                  (_%__kont148529148530%_
                                   _%tl144170144239%_
                                   _%hd144169144237%_)))
                            (_%__kont148529148530%_
                             _%tl144170144239%_
                             _%hd144169144237%_))))
                    (let () (declare (not safe)) (_%g144163144205%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self143832%_ _%stx143833%_ _%compiled-body?143834%_)
        (letrec ((_%generate-simple143836%_
                  (lambda (_%hd144138%_ _%body144139%_)
                    (gxc#generate-runtime-simple-let
                     _%self143832%_
                     'letrec
                     _%hd144138%_
                     _%body144139%_
                     _%compiled-body?143834%_)))
                 (_%generate-values143837%_
                  (lambda (_%hd143917%_ _%body143918%_)
                    (let _%lp143920%_ ((_%rest143922%_ _%hd143917%_)
                                       (_%bind143923%_ '())
                                       (_%check143924%_ '())
                                       (_%post143925%_ '()))
                      (let* ((_%__stx148599148600%_ _%rest143922%_)
                             (_%g143928143939%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148599148600%_)))))
                        (let ((_%__kont148601148602%_
                               (lambda (_%L143966%_ _%L143967%_)
                                 (let* ((_%__stx148555148556%_ _%L143967%_)
                                        (_%g143982144007%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148555148556%_)))))
                                   (let ((_%__kont148557148558%_
                                          (lambda (_%L144114%_ _%L144115%_)
                                            (let ((_%eid144129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144115%_)))
                                                  (_%expr144130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143832%_
                                                      _%L144114%_))))
                                              (_%lp143920%_
                                               _%L143966%_
                                               (cons (cons _%eid144129%_
                                                           (cons _%expr144130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143923%_)
                                               _%check143924%_
                                               _%post143925%_))))
                                         (_%__kont148559148560%_
                                          (lambda (_%L144028%_ _%L144029%_)
                                            (let* ((_%vals144042%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144044%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144042%_
                                                     _%L144029%_
                                                     _%L144028%_))
                                                   (_%refs144046%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144042%_
                                                     _%L144029%_))
                                                   (_%expr144048%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143832%_
                                                       _%L144028%_))))
                                              (_%lp143920%_
                                               _%L143966%_
                                               (let ((__tmp149364
                                                      (cons (cons _%vals144042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr144048%_ '()))
                    _%bind143923%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149363
                                                      (map (lambda (_%e144050144052%_)
                                                             (let* ((_%g144054144063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e144050144052%_)
                            (_%E144056144067%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g144054144063%_
                                        '([eid _])))
                               '#!void))
                            (_%K144057144072%_
                             (lambda (_%eid144070%_)
                               (cons _%eid144070%_ (cons '#!void '())))))
                       (if (pair? _%g144054144063%_)
                           (let ((_%hd144058144075%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g144054144063%_)))
                                 (_%tl144059144077%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g144054144063%_))))
                             (let ((_%eid144080%_ _%hd144058144075%_))
                               (if (pair? _%tl144059144077%_)
                                   (let ((_%tl144061144082%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl144059144077%_))))
                                     (if (null? _%tl144061144082%_)
                                         (_%K144057144072%_ _%eid144080%_)
                                         (_%E144056144067%_)))
                                   (_%E144056144067%_))))
                           (_%E144056144067%_))))
                   _%refs144046%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp149364
                                                  __tmp149363))
                                               (cons _%check-values144044%_
                                                     _%check143924%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs144046%_
                                                  _%post143925%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148555148556%_))
                                         (let ((_%e143986144090%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148555148556%_))))
                                           (let ((_%tl143988144095%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143986144090%_)))
                                                 (_%hd143987144093%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143986144090%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd143987144093%_))
                                                 (let ((_%e143989144098%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd143987144093%_))))
                                                   (let ((_%tl143991144103%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e143989144098%_)))
                                                         (_%hd143990144101%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e143989144098%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl143991144103%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143988144095%_))
                     (let ((_%e143992144106%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143988144095%_))))
                       (let ((_%tl143994144111%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143992144106%_)))
                             (_%hd143993144109%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143992144106%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143994144111%_))
                             (_%__kont148557148558%_
                              _%hd143993144109%_
                              _%hd143990144101%_)
                             (let ()
                               (declare (not safe))
                               (_%g143982144007%_)))))
                     (let () (declare (not safe)) (_%g143982144007%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl143988144095%_))
                     (let ((_%e144000144020%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143988144095%_))))
                       (let ((_%tl144002144025%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144000144020%_)))
                             (_%hd144001144023%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144000144020%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144002144025%_))
                             (_%__kont148559148560%_
                              _%hd144001144023%_
                              _%hd143987144093%_)
                             (let ()
                               (declare (not safe))
                               (_%g143982144007%_)))))
                     (let () (declare (not safe)) (_%g143982144007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl143988144095%_))
                                                     (let ((_%e144000144020%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl143988144095%_))))
                                                       (let ((_%tl144002144025%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144000144020%_)))
                     (_%hd144001144023%_
                      (let () (declare (not safe)) (##car _%e144000144020%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144002144025%_))
                     (_%__kont148559148560%_
                      _%hd144001144023%_
                      _%hd143987144093%_)
                     (let () (declare (not safe)) (_%g143982144007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g143982144007%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g143982144007%_)))))))
                              (_%__kont148603148604%_
                               (lambda ()
                                 (let* ((_%body143946%_
                                         (if _%compiled-body?143834%_
                                             _%body143918%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self143832%_
                                                _%body143918%_))))
                                        (_%body143948%_
                                         (_%generate-values-post143839%_
                                          _%post143925%_
                                          _%body143946%_))
                                        (_%body143950%_
                                         (_%generate-values-check143838%_
                                          _%check143924%_
                                          _%body143948%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind143923%_)
                                               (cons _%body143950%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148599148600%_))
                              (let ((_%e143932143958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148599148600%_))))
                                (let ((_%tl143934143963%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143932143958%_)))
                                      (_%hd143933143961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143932143958%_))))
                                  (_%__kont148601148602%_
                                   _%tl143934143963%_
                                   _%hd143933143961%_)))
                              (_%__kont148603148604%_)))))))
                 (_%generate-values-check143838%_
                  (lambda (_%check143914%_ _%body143915%_)
                    (cons 'begin
                          (let ((__tmp149366 (cons _%body143915%_ '()))
                                (__tmp149365 (reverse _%check143914%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149366 __tmp149365)))))
                 (_%generate-values-post143839%_
                  (lambda (_%post143907%_ _%body143908%_)
                    (cons 'begin
                          (let ((__tmp149370 (cons _%body143908%_ '()))
                                (__tmp149367
                                 (let ((__tmp149369
                                        (lambda (_%g143909143911%_)
                                          (cons 'set! _%g143909143911%_)))
                                       (__tmp149368 (reverse _%post143907%_)))
                                   (declare (not safe))
                                   (##map __tmp149369 __tmp149368))))
                            (declare (not safe))
                            (__foldr1 cons __tmp149370 __tmp149367))))))
          (let* ((_%g143841143858%_
                  (lambda (_%g143842143855%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143842143855%_))))
                 (_%g143840143904%_
                  (lambda (_%g143842143861%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143842143861%_))
                        (let ((_%e143845143863%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143842143861%_))))
                          (let ((_%hd143846143866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143845143863%_)))
                                (_%tl143847143868%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143845143863%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143847143868%_))
                                (let ((_%e143848143871%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143847143868%_))))
                                  (let ((_%hd143849143874%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143848143871%_)))
                                        (_%tl143850143876%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143848143871%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143850143876%_))
                                        (let ((_%e143851143879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143850143876%_))))
                                          (let ((_%hd143852143882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143851143879%_)))
                                                (_%tl143853143884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143851143879%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143853143884%_))
                                                ((lambda (_%L143887%_
                                                          _%L143888%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143888%_)
                                                       (_%generate-simple143836%_
                                                        _%L143888%_
                                                        _%L143887%_)
                                                       (_%generate-values143837%_
                                                        _%L143888%_
                                                        _%L143887%_)))
                                                 _%hd143852143882%_
                                                 _%hd143849143874%_)
                                                (_%g143841143858%_
                                                 _%g143842143861%_))))
                                        (_%g143841143858%_
                                         _%g143842143861%_))))
                                (_%g143841143858%_ _%g143842143861%_))))
                        (_%g143841143858%_ _%g143842143861%_)))))
            (_%g143840143904%_ _%stx143833%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self144144%_ _%stx144145%_)
        (let ((_%compiled-body?144147%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self144144%_
           _%stx144145%_
           _%compiled-body?144147%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g149372_
        (let ((_g149371_ (let () (declare (not safe)) (##length _g149372_))))
          (cond ((let () (declare (not safe)) (##fx= _g149371_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g149372_))
                ((let () (declare (not safe)) (##fx= _g149371_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g149372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g149372_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self143413%_ _%stx143414%_)
        (letrec ((_%generate-values143416%_
                  (lambda (_%hd143659%_ _%body143660%_)
                    (let _%lp143662%_ ((_%rest143664%_ _%hd143659%_)
                                       (_%bind143665%_ '()))
                      (let* ((_%rest143666143674%_ _%rest143664%_)
                             (_%else143668143685%_
                              (lambda ()
                                (let ((_%bind143682%_ (reverse _%bind143665%_))
                                      (_%body143683%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self143413%_
                                          _%body143660%_))))
                                  (cons 'letrec*
                                        (cons _%bind143682%_
                                              (cons _%body143683%_ '()))))))
                             (_%K143670143819%_
                              (lambda (_%rest143688%_ _%hd-bind143689%_)
                                (let* ((_%__stx148613148614%_
                                        _%hd-bind143689%_)
                                       (_%g143692143717%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx148613148614%_)))))
                                  (let ((_%__kont148615148616%_
                                         (lambda (_%L143798%_ _%L143799%_)
                                           (let ((_%eid143813%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L143799%_)))
                                                 (_%expr143814%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self143413%_
                                                     _%L143798%_))))
                                             (_%lp143662%_
                                              _%rest143688%_
                                              (cons (cons _%eid143813%_
                                                          (cons _%expr143814%_
                                                                '()))
                                                    _%bind143665%_)))))
                                        (_%__kont148617148618%_
                                         (lambda (_%L143738%_ _%L143739%_)
                                           (let* ((_%vals143758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp143760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values143762%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp143760%_
                                                    _%L143739%_
                                                    _%L143738%_))
                                                  (_%refs143764%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals143758%_
                                                    _%L143739%_))
                                                  (_%expr143766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143413%_
                                                      _%L143738%_))))
                                             (_%lp143662%_
                                              _%rest143688%_
                                              (let ((__tmp149373
                                                     (cons (cons _%vals143758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp143760%_
                                                       (cons _%expr143766%_
                                                             '()))
                                                 '())
                                           (cons _%check-values143762%_
                                                 (cons _%tmp143760%_ '()))))
                               '()))
                   _%bind143665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp149373
                                                 _%refs143764%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148613148614%_))
                                        (let ((_%e143696143774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148613148614%_))))
                                          (let ((_%tl143698143779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143696143774%_)))
                                                (_%hd143697143777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143696143774%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143697143777%_))
                                                (let ((_%e143699143782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143697143777%_))))
                                                  (let ((_%tl143701143787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143699143782%_)))
                                                        (_%hd143700143785%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143699143782%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143701143787%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143698143779%_))
                                                            (let ((_%e143702143790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143698143779%_))))
                      (let ((_%tl143704143795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143702143790%_)))
                            (_%hd143703143793%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143702143790%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143704143795%_))
                            (_%__kont148615148616%_
                             _%hd143703143793%_
                             _%hd143700143785%_)
                            (let ()
                              (declare (not safe))
                              (_%g143692143717%_)))))
                    (let () (declare (not safe)) (_%g143692143717%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl143698143779%_))
                    (let ((_%e143710143730%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143698143779%_))))
                      (let ((_%tl143712143735%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143710143730%_)))
                            (_%hd143711143733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143710143730%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143712143735%_))
                            (_%__kont148617148618%_
                             _%hd143711143733%_
                             _%hd143697143777%_)
                            (let ()
                              (declare (not safe))
                              (_%g143692143717%_)))))
                    (let () (declare (not safe)) (_%g143692143717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143698143779%_))
                                                    (let ((_%e143710143730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143698143779%_))))
                                                      (let ((_%tl143712143735%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143710143730%_)))
                    (_%hd143711143733%_
                     (let () (declare (not safe)) (##car _%e143710143730%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143712143735%_))
                    (_%__kont148617148618%_
                     _%hd143711143733%_
                     _%hd143697143777%_)
                    (let () (declare (not safe)) (_%g143692143717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143692143717%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143692143717%_))))))))
                        (if (pair? _%rest143666143674%_)
                            (let ((_%hd143671143822%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143666143674%_)))
                                  (_%tl143672143824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143666143674%_))))
                              (let* ((_%hd-bind143827%_ _%hd143671143822%_)
                                     (_%rest143829%_ _%tl143672143824%_))
                                (_%K143670143819%_
                                 _%rest143829%_
                                 _%hd-bind143827%_)))
                            (_%else143668143685%_))))))
                 (_%generate-letrec?143417%_
                  (lambda (_%hd143549%_)
                    (let _%lp143551%_ ((_%rest143553%_ _%hd143549%_))
                      (let* ((_%rest143554143562%_ _%rest143553%_)
                             (_%else143556143570%_ (lambda () '#t))
                             (_%K143558143647%_
                              (lambda (_%rest143573%_ _%hd-bind143574%_)
                                (let* ((_%g143576143593%_
                                        (lambda (_%g143577143590%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g143577143590%_))))
                                       (_%g143575143644%_
                                        (lambda (_%g143577143596%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g143577143596%_))
                                              (let ((_%e143580143598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g143577143596%_))))
                                                (let ((_%hd143581143601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143580143598%_)))
                                                      (_%tl143582143603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143580143598%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd143581143601%_))
                                                      (let ((_%e143583143606%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd143581143601%_))))
                (let ((_%hd143584143609%_
                       (let () (declare (not safe)) (##car _%e143583143606%_)))
                      (_%tl143585143611%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e143583143606%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143585143611%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143582143603%_))
                          (let ((_%e143586143614%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143582143603%_))))
                            (let ((_%hd143587143617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143586143614%_)))
                                  (_%tl143588143619%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143586143614%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143588143619%_))
                                  ((lambda (_%L143622%_ _%L143623%_)
                                     (if (_%is-lambda-expr?143418%_
                                          _%L143622%_)
                                         (_%lp143551%_ _%rest143573%_)
                                         '#f))
                                   _%hd143587143617%_
                                   _%hd143584143609%_)
                                  (_%g143576143593%_ _%g143577143596%_))))
                          (_%g143576143593%_ _%g143577143596%_))
                      (_%g143576143593%_ _%g143577143596%_))))
              (_%g143576143593%_ _%g143577143596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g143576143593%_
                                               _%g143577143596%_)))))
                                  (_%g143575143644%_ _%hd-bind143574%_)))))
                        (if (pair? _%rest143554143562%_)
                            (let ((_%hd143559143650%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143554143562%_)))
                                  (_%tl143560143652%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143554143562%_))))
                              (let* ((_%hd-bind143655%_ _%hd143559143650%_)
                                     (_%rest143657%_ _%tl143560143652%_))
                                (_%K143558143647%_
                                 _%rest143657%_
                                 _%hd-bind143655%_)))
                            (_%else143556143570%_))))))
                 (_%is-lambda-expr?143418%_
                  (lambda (_%expr143486%_)
                    (let* ((_%__stx148657148658%_ _%expr143486%_)
                           (_%g143489143503%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148657148658%_)))))
                      (let ((_%__kont148659148660%_
                             (lambda (_%L143531%_ _%L143532%_) '#t))
                            (_%__kont148661148662%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx148657148658%_))
                            (let ((_%e143493143515%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx148657148658%_))))
                              (let ((_%tl143495143520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143493143515%_)))
                                    (_%hd143494143518%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143493143515%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143494143518%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd143494143518%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143495143520%_))
                                            (let ((_%e143496143523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143495143520%_))))
                                              (let ((_%tl143498143528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143496143523%_)))
                                                    (_%hd143497143526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143496143523%_))))
                                                (_%__kont148659148660%_
                                                 _%tl143498143528%_
                                                 _%hd143497143526%_)))
                                            (_%__kont148661148662%_))
                                        (_%__kont148661148662%_))
                                    (_%__kont148661148662%_))))
                            (_%__kont148661148662%_)))))))
          (let* ((_%g143420143437%_
                  (lambda (_%g143421143434%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143421143434%_))))
                 (_%g143419143483%_
                  (lambda (_%g143421143440%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143421143440%_))
                        (let ((_%e143424143442%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143421143440%_))))
                          (let ((_%hd143425143445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143424143442%_)))
                                (_%tl143426143447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143424143442%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143426143447%_))
                                (let ((_%e143427143450%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143426143447%_))))
                                  (let ((_%hd143428143453%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143427143450%_)))
                                        (_%tl143429143455%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143427143450%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143429143455%_))
                                        (let ((_%e143430143458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143429143455%_))))
                                          (let ((_%hd143431143461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143430143458%_)))
                                                (_%tl143432143463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143430143458%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143432143463%_))
                                                ((lambda (_%L143466%_
                                                          _%L143467%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143467%_)
                                                       (if (_%generate-letrec?143417%_
                                                            _%L143467%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143413%_
                                                            'letrec
                                                            _%L143467%_
                                                            _%L143466%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143413%_
                                                            'letrec*
                                                            _%L143467%_
                                                            _%L143466%_
                                                            '#f))
                                                       (_%generate-values143416%_
                                                        _%L143467%_
                                                        _%L143466%_)))
                                                 _%hd143431143461%_
                                                 _%hd143428143453%_)
                                                (_%g143420143437%_
                                                 _%g143421143440%_))))
                                        (_%g143420143437%_
                                         _%g143421143440%_))))
                                (_%g143420143437%_ _%g143421143440%_))))
                        (_%g143420143437%_ _%g143421143440%_)))))
            (_%g143419143483%_ _%stx143414%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd143350%_)
        (let _%lp143352%_ ((_%rest143354%_ _%hd143350%_))
          (let* ((_%rest143355143371%_ _%rest143354%_)
                 (_%else143358143379%_ (lambda () '#f)))
            (let ((_%K143361143392%_
                   (lambda (_%rest143390%_) (_%lp143352%_ _%rest143390%_)))
                  (_%K143360143384%_ (lambda () '#t)))
              (let ((_%try-match143357143387%_
                     (lambda ()
                       (if (null? _%rest143355143371%_)
                           (_%K143360143384%_)
                           (_%else143358143379%_)))))
                (if (pair? _%rest143355143371%_)
                    (let ((_%tl143363143397%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143355143371%_)))
                          (_%hd143362143395%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143355143371%_))))
                      (if (pair? _%hd143362143395%_)
                          (let ((_%tl143365143402%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd143362143395%_)))
                                (_%hd143364143400%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd143362143395%_))))
                            (if (pair? _%hd143364143400%_)
                                (let ((_%tl143369143405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143364143400%_))))
                                  (if (null? _%tl143369143405%_)
                                      (if (pair? _%tl143365143402%_)
                                          (let ((_%tl143367143408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl143365143402%_))))
                                            (if (null? _%tl143367143408%_)
                                                (let ((_%rest143411%_
                                                       _%tl143363143397%_))
                                                  (_%lp143352%_
                                                   _%rest143411%_))
                                                (_%else143358143379%_)))
                                          (_%else143358143379%_))
                                      (_%else143358143379%_)))
                                (_%else143358143379%_)))
                          (_%else143358143379%_)))
                    (_%try-match143357143387%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self143261%_
               _%form143262%_
               _%hd143263%_
               _%body143264%_
               _%compiled-body?143265%_)
        (letrec ((_%generate1143267%_
                  (lambda (_%bind143306%_)
                    (let* ((_%bind143307143318%_ _%bind143306%_)
                           (_%E143309143322%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind143307143318%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K143310143328%_
                            (lambda (_%expr143325%_ _%id143326%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id143326%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self143261%_
                                             _%expr143325%_))
                                          '())))))
                      (if (pair? _%bind143307143318%_)
                          (let ((_%hd143311143331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind143307143318%_)))
                                (_%tl143312143333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind143307143318%_))))
                            (if (pair? _%hd143311143331%_)
                                (let ((_%hd143315143336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd143311143331%_)))
                                      (_%tl143316143338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143311143331%_))))
                                  (let ((_%id143341%_ _%hd143315143336%_))
                                    (if (null? _%tl143316143338%_)
                                        (if (pair? _%tl143312143333%_)
                                            (let ((_%hd143313143343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143312143333%_)))
                                                  (_%tl143314143345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143312143333%_))))
                                              (let ((_%expr143348%_
                                                     _%hd143313143343%_))
                                                (if (null? _%tl143314143345%_)
                                                    (_%K143310143328%_
                                                     _%expr143348%_
                                                     _%id143341%_)
                                                    (_%E143309143322%_))))
                                            (_%E143309143322%_))
                                        (_%E143309143322%_))))
                                (_%E143309143322%_)))
                          (_%E143309143322%_))))))
          (let* ((_%bind143269%_ (map _%generate1143267%_ _%hd143263%_))
                 (_%body143271%_
                  (if _%compiled-body?143265%_
                      _%body143264%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self143261%_ _%body143264%_))))
                 (_%body143303%_
                  (let* ((_%body143272143280%_ _%body143271%_)
                         (_%else143274143288%_
                          (lambda () (cons _%body143271%_ '())))
                         (_%K143276143293%_
                          (lambda (_%exprs143291%_) _%exprs143291%_)))
                    (if (pair? _%body143272143280%_)
                        (let ((_%hd143277143296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body143272143280%_)))
                              (_%tl143278143298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body143272143280%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd143277143296%_ 'begin))
                              (let ((_%exprs143301%_ _%tl143278143298%_))
                                (_%K143276143293%_ _%exprs143301%_))
                              (_%else143274143288%_)))
                        (_%else143274143288%_)))))
            (cons _%form143262%_ (cons _%bind143269%_ _%body143303%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self143161%_ _%stx143162%_)
        (letrec ((_%generate1143164%_
                  (lambda (_%datum143216%_)
                    (if (or (null? _%datum143216%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum143216%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum143216%_))
                            (eof-object? _%datum143216%_))
                        _%datum143216%_
                        (if (uninterned-symbol? _%datum143216%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum143216%_
                               '#t))
                            (if (pair? _%datum143216%_)
                                (cons (_%generate1143164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum143216%_)))
                                      (_%generate1143164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum143216%_))))
                                (if (box? _%datum143216%_)
                                    (box (_%generate1143164%_
                                          (unbox _%datum143216%_)))
                                    (if (vector? _%datum143216%_)
                                        (vector-map
                                         _%generate1143164%_
                                         _%datum143216%_)
                                        (if (or (s8vector? _%datum143216%_)
                                                (u8vector? _%datum143216%_)
                                                (s16vector? _%datum143216%_)
                                                (u16vector? _%datum143216%_)
                                                (s32vector? _%datum143216%_)
                                                (u32vector? _%datum143216%_)
                                                (s64vector? _%datum143216%_)
                                                (u64vector? _%datum143216%_)
                                                (f32vector? _%datum143216%_)
                                                (f64vector? _%datum143216%_))
                                            _%datum143216%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx143162%_)))))))))))
          (let* ((_%g143166143179%_
                  (lambda (_%g143167143176%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143167143176%_))))
                 (_%g143165143213%_
                  (lambda (_%g143167143182%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143167143182%_))
                        (let ((_%e143169143184%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143167143182%_))))
                          (let ((_%hd143170143187%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143169143184%_)))
                                (_%tl143171143189%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143169143184%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143171143189%_))
                                (let ((_%e143172143192%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143171143189%_))))
                                  (let ((_%hd143173143195%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143172143192%_)))
                                        (_%tl143174143197%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143172143192%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143174143197%_))
                                        ((lambda (_%L143200%_)
                                           (cons 'quote
                                                 (cons (_%generate1143164%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L143200%_)))
                                                       '())))
                                         _%hd143173143195%_)
                                        (_%g143166143179%_
                                         _%g143167143182%_))))
                                (_%g143166143179%_ _%g143167143182%_))))
                        (_%g143166143179%_ _%g143167143182%_)))))
            (_%g143165143213%_ _%stx143162%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self142602%_ _%stx142603%_)
        (letrec ((_%compile-call142605%_
                  (lambda (_%rator142894%_ _%rands142895%_)
                    (let ((_%rator142901%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self142602%_
                              _%rator142894%_)))
                          (_%rands142902%_
                           (map (lambda (_%g142896142898%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self142602%_
                                     _%g142896142898%_)))
                                _%rands142895%_)))
                      (let* ((_%__stx148704148705%_ _%rator142901%_)
                             (_%g142905142957%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148704148705%_)))))
                        (let ((_%__kont148706148707%_
                               (lambda (_%L143081%_
                                        _%L143082%_
                                        _%L143083%_
                                        _%L143084%_)
                                 (if (let ((__tmp149376
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands142902%_)))
                                           (__tmp149374
                                            (length (let ((__tmp149375
                                                           (lambda (_%g143120143123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143121143125%_)
                     (cons _%g143120143123%_ _%g143121143125%_))))
              (declare (not safe))
              (__foldr1 __tmp149375 '() _%L143083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149376 __tmp149374))
                                     (let* ((_%id143128%_ _%L143084%_)
                                            (_%args143137%_
                                             (let ((__tmp149377
                                                    (lambda (_%g143129143132%_
                                                             _%g143130143134%_)
                                                      (cons _%g143129143132%_
                                                            _%g143130143134%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149377
                                                '()
                                                _%L143083%_)))
                                            (_%body143146%_
                                             (let ((__tmp149378
                                                    (lambda (_%g143138143141%_
                                                             _%g143139143143%_)
                                                      (cons _%g143138143141%_
                                                            _%g143139143143%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149378
                                                '()
                                                _%L143082%_)))
                                            (_%init143148%_
                                             (map list
                                                  _%args143137%_
                                                  _%rands142902%_)))
                                       (cons 'let
                                             (cons _%id143128%_
                                                   (cons _%init143148%_
                                                         _%body143146%_))))
                                     (let ((__tmp149379
                                            (let ((__tmp149380
                                                   (lambda (_%g143150143153%_
                                                            _%g143151143155%_)
                                                     (cons _%g143150143153%_
                                                           _%g143151143155%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149380
                                               '()
                                               _%L143083%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx142603%_
                                        __tmp149379
                                        _%rands142902%_)))))
                              (_%__kont148712148713%_
                               (lambda ()
                                 (cons _%rator142901%_ _%rands142902%_))))
                          (let ((_%__match148771148772%_
                                 (lambda (_%e142911142969%_
                                          _%hd142912142972%_
                                          _%tl142913142974%_
                                          _%e142914142977%_
                                          _%hd142915142980%_
                                          _%tl142916142982%_
                                          _%e142917142985%_
                                          _%hd142918142988%_
                                          _%tl142919142990%_
                                          _%e142920142993%_
                                          _%hd142921142996%_
                                          _%tl142922142998%_
                                          _%e142923143001%_
                                          _%hd142924143004%_
                                          _%tl142925143006%_
                                          _%e142926143009%_
                                          _%hd142927143012%_
                                          _%tl142928143014%_
                                          _%e142929143017%_
                                          _%hd142930143020%_
                                          _%tl142931143022%_
                                          _%__splice148708148709%_
                                          _%target142932143025%_
                                          _%tl142934143027%_)
                                   (letrec ((_%loop142935143030%_
                                             (lambda (_%hd142933143033%_
                                                      _%arg142939143035%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd142933143033%_))
                                                   (let ((_%e142936143038%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd142933143033%_))))
                                                     (let ((_%lp-tl142938143043%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e142936143038%_)))
                                                           (_%lp-hd142937143041%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e142936143038%_))))
                                                       (_%loop142935143030%_
                                                        _%lp-tl142938143043%_
                                                        (cons _%lp-hd142937143041%_
                                                              _%arg142939143035%_))))
                                                   (let ((_%arg142940143046%_
                                                          (reverse _%arg142939143035%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl142931143022%_))
                                                         (let ((_%__splice148710148711%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl142931143022%_ '0))))
                   (let ((_%tl142943143051%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148710148711%_ '1)))
                         (_%target142941143049%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148710148711%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142943143051%_))
                         (letrec ((_%loop142944143054%_
                                   (lambda (_%hd142942143057%_
                                            _%body142948143059%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd142942143057%_))
                                         (let ((_%e142945143062%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd142942143057%_))))
                                           (let ((_%lp-tl142947143067%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142945143062%_)))
                                                 (_%lp-hd142946143065%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142945143062%_))))
                                             (_%loop142944143054%_
                                              _%lp-tl142947143067%_
                                              (cons _%lp-hd142946143065%_
                                                    _%body142948143059%_))))
                                         (let ((_%body142949143070%_
                                                (reverse _%body142948143059%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl142925143006%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl142919142990%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl142916142982%_))
                                                       (let ((_%e142950143073%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl142916142982%_))))
                 (let ((_%tl142952143078%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e142950143073%_)))
                       (_%hd142951143076%_
                        (let ()
                          (declare (not safe))
                          (##car _%e142950143073%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl142952143078%_))
                       (let ((_%L143081%_ _%hd142951143076%_)
                             (_%L143082%_ _%body142949143070%_)
                             (_%L143083%_ _%arg142940143046%_)
                             (_%L143084%_ _%hd142921142996%_))
                         (if (eq? _%L143084%_ _%L143081%_)
                             (_%__kont148706148707%_
                              _%L143081%_
                              _%L143082%_
                              _%L143083%_
                              _%L143084%_)
                             (_%__kont148712148713%_)))
                       (_%__kont148712148713%_))))
               (_%__kont148712148713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148712148713%_))
                                               (_%__kont148712148713%_)))))))
                           (_%loop142944143054%_ _%target142941143049%_ '()))
                         (_%__kont148712148713%_))))
                 (_%__kont148712148713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop142935143030%_
                                      _%target142932143025%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148704148705%_))
                                (let ((_%e142911142969%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148704148705%_))))
                                  (let ((_%tl142913142974%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142911142969%_)))
                                        (_%hd142912142972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142911142969%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142912142972%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd142912142972%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142913142974%_))
                                                (let ((_%e142914142977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142913142974%_))))
                                                  (let ((_%tl142916142982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142914142977%_)))
                                                        (_%hd142915142980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142914142977%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142915142980%_))
                                                        (let ((_%e142917142985%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142915142980%_))))
                  (let ((_%tl142919142990%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142917142985%_)))
                        (_%hd142918142988%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142917142985%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142918142988%_))
                        (let ((_%e142920142993%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142918142988%_))))
                          (let ((_%tl142922142998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142920142993%_)))
                                (_%hd142921142996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142920142993%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142922142998%_))
                                (let ((_%e142923143001%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142922142998%_))))
                                  (let ((_%tl142925143006%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142923143001%_)))
                                        (_%hd142924143004%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142923143001%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd142924143004%_))
                                        (let ((_%e142926143009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd142924143004%_))))
                                          (let ((_%tl142928143014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142926143009%_)))
                                                (_%hd142927143012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142926143009%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd142927143012%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd142927143012%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142928143014%_))
                                                        (let ((_%e142929143017%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142928143014%_))))
                  (let ((_%tl142931143022%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142929143017%_)))
                        (_%hd142930143020%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142929143017%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd142930143020%_))
                        (let ((_%__splice148708148709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd142930143020%_
                                  '0))))
                          (let ((_%tl142934143027%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice148708148709%_ '1)))
                                (_%target142932143025%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice148708148709%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142934143027%_))
                                (_%__match148771148772%_
                                 _%e142911142969%_
                                 _%hd142912142972%_
                                 _%tl142913142974%_
                                 _%e142914142977%_
                                 _%hd142915142980%_
                                 _%tl142916142982%_
                                 _%e142917142985%_
                                 _%hd142918142988%_
                                 _%tl142919142990%_
                                 _%e142920142993%_
                                 _%hd142921142996%_
                                 _%tl142922142998%_
                                 _%e142923143001%_
                                 _%hd142924143004%_
                                 _%tl142925143006%_
                                 _%e142926143009%_
                                 _%hd142927143012%_
                                 _%tl142928143014%_
                                 _%e142929143017%_
                                 _%hd142930143020%_
                                 _%tl142931143022%_
                                 _%__splice148708148709%_
                                 _%target142932143025%_
                                 _%tl142934143027%_)
                                (_%__kont148712148713%_))))
                        (_%__kont148712148713%_))))
                (_%__kont148712148713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148712148713%_))
                                                (_%__kont148712148713%_))))
                                        (_%__kont148712148713%_))))
                                (_%__kont148712148713%_))))
                        (_%__kont148712148713%_))))
                (_%__kont148712148713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148712148713%_))
                                            (_%__kont148712148713%_))
                                        (_%__kont148712148713%_))))
                                (_%__kont148712148713%_)))))))))
          (let* ((_%g142607142630%_
                  (lambda (_%g142608142627%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142608142627%_))))
                 (_%g142606142891%_
                  (lambda (_%g142608142633%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142608142633%_))
                        (let ((_%e142611142635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142608142633%_))))
                          (let ((_%hd142612142638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142611142635%_)))
                                (_%tl142613142640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142611142635%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142613142640%_))
                                (let ((_%e142614142643%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142613142640%_))))
                                  (let ((_%hd142615142646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142614142643%_)))
                                        (_%tl142616142648%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142614142643%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142616142648%_))
                                        (let ((_g149381_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142616142648%_
                                                  '0))))
                                          (begin
                                            (let ((_g149382_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g149381_)
                                                         (##values-length
                                                          _g149381_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g149382_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g149382_)))
                                            (let ((_%target142617142651%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g149381_
                                                      0)))
                                                  (_%tl142619142653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g149381_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142619142653%_))
                                                  (letrec ((_%loop142620142656%_
                                                            (lambda (_%hd142618142659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand142624142661%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142618142659%_))
                          (let ((_%e142621142664%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142618142659%_))))
                            (let ((_%lp-hd142622142667%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142621142664%_)))
                                  (_%lp-tl142623142669%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142621142664%_))))
                              (_%loop142620142656%_
                               _%lp-tl142623142669%_
                               (cons _%lp-hd142622142667%_
                                     _%rand142624142661%_))))
                          (let ((_%rand142625142672%_
                                 (reverse _%rand142624142661%_)))
                            ((lambda (_%L142675%_ _%L142676%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call142605%_
                                    _%L142676%_
                                    (let ((__tmp149383
                                           (lambda (_%g142693142696%_
                                                    _%g142694142698%_)
                                             (cons _%g142693142696%_
                                                   _%g142694142698%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp149383 '() _%L142675%_)))
                                   (let* ((_%__stx148820148821%_ _%L142676%_)
                                          (_%g142702142714%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx148820148821%_)))))
                                     (let ((_%__kont148822148823%_
                                            (lambda ()
                                              (let ((_%f142751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self142602%_
                                                        _%L142676%_))))
                                                (if (and (let ((__tmp149384
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f142751%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp149384))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f142751%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp142753%_ ((_%rest142756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp149386
                                                (lambda (_%g142873142876%_
                                                         _%g142874142878%_)
                                                  (cons _%g142873142876%_
                                                        _%g142874142878%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp149386
                                            '()
                                            _%L142675%_))))
                               (_%bind142758%_ '())
                               (_%args142759%_ '()))
              (let* ((_%rest142760142768%_ _%rest142756%_)
                     (_%else142762142776%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind142758%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f142751%_
                                                      _%args142759%_)
                                                '()))))))
                     (_%K142764142862%_
                      (lambda (_%rest142779%_ _%e142780%_)
                        (let* ((_%__stx148774148775%_ _%e142780%_)
                               (_%g142785142803%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx148774148775%_)))))
                          (let ((_%__kont148776148777%_
                                 (lambda ()
                                   (_%lp142753%_
                                    _%rest142779%_
                                    _%bind142758%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142780%_))
                                          _%args142759%_))))
                                (_%__kont148778148779%_
                                 (lambda ()
                                   (_%lp142753%_
                                    _%rest142779%_
                                    _%bind142758%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142780%_))
                                          _%args142759%_))))
                                (_%__kont148780148781%_
                                 (lambda ()
                                   (let ((_%tmp142810%_
                                          (let ((__tmp149385
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp149385))))
                                     (_%lp142753%_
                                      _%rest142779%_
                                      (cons (cons _%tmp142810%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e142780%_))
                                                        '()))
                                            _%bind142758%_)
                                      (cons _%tmp142810%_ _%args142759%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148774148775%_))
                                (let ((_%e142787142841%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148774148775%_))))
                                  (let ((_%tl142789142846%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142787142841%_)))
                                        (_%hd142788142844%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142787142841%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142788142844%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd142788142844%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142789142846%_))
                                                (let ((_%e142790142849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142789142846%_))))
                                                  (let ((_%tl142792142854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142790142849%_)))
                                                        (_%hd142791142852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142790142849%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142792142854%_))
                                                        (_%__kont148776148777%_)
                                                        (_%__kont148780148781%_))))
                                                (_%__kont148780148781%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd142788142844%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl142789142846%_))
                                                    (let ((_%e142796142826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl142789142846%_))))
                                                      (let ((_%tl142798142831%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142796142826%_)))
                    (_%hd142797142829%_
                     (let () (declare (not safe)) (##car _%e142796142826%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl142798142831%_))
                    (_%__kont148778148779%_)
                    (_%__kont148780148781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148780148781%_))
                                                (_%__kont148780148781%_)))
                                        (_%__kont148780148781%_))))
                                (_%__kont148780148781%_)))))))
                (if (pair? _%rest142760142768%_)
                    (let ((_%hd142765142865%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142760142768%_)))
                          (_%tl142766142867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142760142768%_))))
                      (let* ((_%e142870%_ _%hd142765142865%_)
                             (_%rest142872%_ _%tl142766142867%_))
                        (_%K142764142862%_ _%rest142872%_ _%e142870%_)))
                    (_%else142762142776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call142605%_
                                                     _%L142676%_
                                                     (let ((__tmp149387
                                                            (lambda (_%g142880142883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g142881142885%_)
                      (cons _%g142880142883%_ _%g142881142885%_))))
               (declare (not safe))
               (__foldr1 __tmp149387 '() _%L142675%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont148824148825%_
                                            (lambda ()
                                              (_%compile-call142605%_
                                               _%L142676%_
                                               (let ((__tmp149388
                                                      (lambda (_%g142720142723%_
                                                               _%g142721142725%_)
                                                        (cons _%g142720142723%_
                                                              _%g142721142725%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp149388
                                                  '()
                                                  _%L142675%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx148820148821%_))
                                           (let ((_%e142704142733%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx148820148821%_))))
                                             (let ((_%tl142706142738%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e142704142733%_)))
                                                   (_%hd142705142736%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e142704142733%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd142705142736%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd142705142736%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl142706142738%_))
                                                           (let ((_%e142707142741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl142706142738%_))))
                     (let ((_%tl142709142746%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e142707142741%_)))
                           (_%hd142708142744%_
                            (let ()
                              (declare (not safe))
                              (##car _%e142707142741%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl142709142746%_))
                           (_%__kont148822148823%_)
                           (_%__kont148824148825%_))))
                   (_%__kont148824148825%_))
               (_%__kont148824148825%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148824148825%_))))
                                           (_%__kont148824148825%_))))))
                             _%rand142625142672%_
                             _%hd142615142646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop142620142656%_
                                                     _%target142617142651%_
                                                     '()))
                                                  (_%g142607142630%_
                                                   _%g142608142633%_)))))
                                        (_%g142607142630%_
                                         _%g142608142633%_))))
                                (_%g142607142630%_ _%g142608142633%_))))
                        (_%g142607142630%_ _%g142608142633%_)))))
            (_%g142606142891%_ _%stx142603%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self142345%_ _%stx142346%_)
        (let* ((_%__stx148892148893%_ _%stx142346%_)
               (_%g142349142378%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148892148893%_)))))
          (let ((_%__kont148894148895%_
                 (lambda (_%L142446%_ _%L142447%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self142345%_
                        _%stx142346%_)
                       (let ((_%f142469%_
                              (let ((__tmp149389
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L142447%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self142345%_
                                 __tmp149389))))
                         (let _%lp142471%_ ((_%rest142474%_
                                             (reverse (let ((__tmp149391
                                                             (lambda (_%g142591142594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g142592142596%_)
                       (cons _%g142591142594%_ _%g142592142596%_))))
                (declare (not safe))
                (__foldr1 __tmp149391 '() _%L142446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind142476%_ '())
                                            (_%args142477%_ '()))
                           (let* ((_%rest142478142486%_ _%rest142474%_)
                                  (_%else142480142494%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind142476%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f142469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args142477%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K142482142580%_
                                   (lambda (_%rest142497%_ _%e142498%_)
                                     (let* ((_%__stx148846148847%_ _%e142498%_)
                                            (_%g142503142521%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx148846148847%_)))))
                                       (let ((_%__kont148848148849%_
                                              (lambda ()
                                                (_%lp142471%_
                                                 _%rest142497%_
                                                 _%bind142476%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142498%_))
                                                       _%args142477%_))))
                                             (_%__kont148850148851%_
                                              (lambda ()
                                                (_%lp142471%_
                                                 _%rest142497%_
                                                 _%bind142476%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142498%_))
                                                       _%args142477%_))))
                                             (_%__kont148852148853%_
                                              (lambda ()
                                                (let ((_%tmp142528%_
                                                       (let ((__tmp149390
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp149390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp142471%_
                                                   _%rest142497%_
                                                   (cons (cons _%tmp142528%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e142498%_))
                             '()))
                 _%bind142476%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp142528%_
                                                         _%args142477%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx148846148847%_))
                                             (let ((_%e142505142559%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx148846148847%_))))
                                               (let ((_%tl142507142564%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e142505142559%_)))
                                                     (_%hd142506142562%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e142505142559%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd142506142562%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd142506142562%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142507142564%_))
                     (let ((_%e142508142567%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142507142564%_))))
                       (let ((_%tl142510142572%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142508142567%_)))
                             (_%hd142509142570%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142508142567%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142510142572%_))
                             (_%__kont148848148849%_)
                             (_%__kont148852148853%_))))
                     (_%__kont148852148853%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd142506142562%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl142507142564%_))
                         (let ((_%e142514142544%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl142507142564%_))))
                           (let ((_%tl142516142549%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e142514142544%_)))
                                 (_%hd142515142547%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e142514142544%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl142516142549%_))
                                 (_%__kont148850148851%_)
                                 (_%__kont148852148853%_))))
                         (_%__kont148852148853%_))
                     (_%__kont148852148853%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148852148853%_))))
                                             (_%__kont148852148853%_)))))))
                             (if (pair? _%rest142478142486%_)
                                 (let ((_%hd142483142583%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest142478142486%_)))
                                       (_%tl142484142585%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest142478142486%_))))
                                   (let* ((_%e142588%_ _%hd142483142583%_)
                                          (_%rest142590%_ _%tl142484142585%_))
                                     (_%K142482142580%_
                                      _%rest142590%_
                                      _%e142588%_)))
                                 (_%else142480142494%_))))))))
                (_%__kont148898148899%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self142345%_ _%stx142346%_))))
            (let ((_%__match148937148938%_
                   (lambda (_%e142353142390%_
                            _%hd142354142393%_
                            _%tl142355142395%_
                            _%e142356142398%_
                            _%hd142357142401%_
                            _%tl142358142403%_
                            _%e142359142406%_
                            _%hd142360142409%_
                            _%tl142361142411%_
                            _%e142362142414%_
                            _%hd142363142417%_
                            _%tl142364142419%_
                            _%__splice148896148897%_
                            _%target142365142422%_
                            _%tl142367142424%_)
                     (letrec ((_%loop142368142427%_
                               (lambda (_%hd142366142430%_
                                        _%rand142372142432%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd142366142430%_))
                                     (let ((_%e142369142435%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd142366142430%_))))
                                       (let ((_%lp-tl142371142440%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e142369142435%_)))
                                             (_%lp-hd142370142438%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e142369142435%_))))
                                         (_%loop142368142427%_
                                          _%lp-tl142371142440%_
                                          (cons _%lp-hd142370142438%_
                                                _%rand142372142432%_))))
                                     (let ((_%rand142373142443%_
                                            (reverse _%rand142372142432%_)))
                                       (_%__kont148894148895%_
                                        _%rand142373142443%_
                                        _%hd142363142417%_))))))
                       (_%loop142368142427%_ _%target142365142422%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148892148893%_))
                  (let ((_%e142353142390%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148892148893%_))))
                    (let ((_%tl142355142395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142353142390%_)))
                          (_%hd142354142393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142353142390%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142355142395%_))
                          (let ((_%e142356142398%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142355142395%_))))
                            (let ((_%tl142358142403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142356142398%_)))
                                  (_%hd142357142401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142356142398%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142357142401%_))
                                  (let ((_%e142359142406%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142357142401%_))))
                                    (let ((_%tl142361142411%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142359142406%_)))
                                          (_%hd142360142409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142359142406%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142360142409%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142360142409%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142361142411%_))
                                                  (let ((_%e142362142414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142361142411%_))))
                                                    (let ((_%tl142364142419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142362142414%_)))
                                                          (_%hd142363142417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142362142414%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142364142419%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl142358142403%_))
                      (let ((_%__splice148896148897%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl142358142403%_
                                '0))))
                        (let ((_%tl142367142424%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148896148897%_ '1)))
                              (_%target142365142422%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148896148897%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142367142424%_))
                              (_%__match148937148938%_
                               _%e142353142390%_
                               _%hd142354142393%_
                               _%tl142355142395%_
                               _%e142356142398%_
                               _%hd142357142401%_
                               _%tl142358142403%_
                               _%e142359142406%_
                               _%hd142360142409%_
                               _%tl142361142411%_
                               _%e142362142414%_
                               _%hd142363142417%_
                               _%tl142364142419%_
                               _%__splice148896148897%_
                               _%target142365142422%_
                               _%tl142367142424%_)
                              (_%__kont148898148899%_))))
                      (_%__kont148898148899%_))
                  (_%__kont148898148899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148898148899%_))
                                              (_%__kont148898148899%_))
                                          (_%__kont148898148899%_))))
                                  (_%__kont148898148899%_))))
                          (_%__kont148898148899%_))))
                  (_%__kont148898148899%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self142157%_ _%stx142158%_)
        (letrec ((_%simplify142160%_
                  (lambda (_%code142245%_)
                    (let* ((_%code142246142264%_ _%code142245%_)
                           (_%else142248142272%_ (lambda () _%code142245%_))
                           (_%K142250142308%_
                            (lambda (_%expr142275%_ _%test142276%_)
                              (let* ((_%expr142277142285%_ _%expr142275%_)
                                     (_%else142279142293%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test142276%_
                                                    (cons _%expr142275%_
                                                          '())))))
                                     (_%K142281142298%_
                                      (lambda (_%exprs142296%_)
                                        (cons 'and
                                              (cons _%test142276%_
                                                    _%exprs142296%_)))))
                                (if (pair? _%expr142277142285%_)
                                    (let ((_%hd142282142301%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr142277142285%_)))
                                          (_%tl142283142303%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr142277142285%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd142282142301%_ 'and))
                                          (let ((_%exprs142306%_
                                                 _%tl142283142303%_))
                                            (_%K142281142298%_
                                             _%exprs142306%_))
                                          (_%else142279142293%_)))
                                    (_%else142279142293%_))))))
                      (if (pair? _%code142246142264%_)
                          (let ((_%hd142251142311%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code142246142264%_)))
                                (_%tl142252142313%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code142246142264%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd142251142311%_ 'if))
                                (if (pair? _%tl142252142313%_)
                                    (let ((_%hd142253142316%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142252142313%_)))
                                          (_%tl142254142318%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142252142313%_))))
                                      (let ((_%test142321%_
                                             _%hd142253142316%_))
                                        (if (pair? _%tl142254142318%_)
                                            (let ((_%hd142255142323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl142254142318%_)))
                                                  (_%tl142256142325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl142254142318%_))))
                                              (let ((_%expr142328%_
                                                     _%hd142255142323%_))
                                                (if (pair? _%tl142256142325%_)
                                                    (let ((_%hd142257142330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142256142325%_)))
                                                          (_%tl142258142332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142256142325%_))))
                                                      (if (pair? _%hd142257142330%_)
                                                          (let ((_%hd142259142335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd142257142330%_)))
                        (_%tl142260142337%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd142257142330%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd142259142335%_ 'quote))
                        (if (pair? _%tl142260142337%_)
                            (let ((_%hd142261142340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl142260142337%_)))
                                  (_%tl142262142342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl142260142337%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142261142340%_ '#f))
                                  (if (null? _%tl142262142342%_)
                                      (if (null? _%tl142258142332%_)
                                          (_%K142250142308%_
                                           _%expr142328%_
                                           _%test142321%_)
                                          (_%else142248142272%_))
                                      (_%else142248142272%_))
                                  (_%else142248142272%_)))
                            (_%else142248142272%_))
                        (_%else142248142272%_)))
                  (_%else142248142272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142248142272%_))))
                                            (_%else142248142272%_))))
                                    (_%else142248142272%_))
                                (_%else142248142272%_)))
                          (_%else142248142272%_))))))
          (let* ((_%g142162142183%_
                  (lambda (_%g142163142180%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142163142180%_))))
                 (_%g142161142242%_
                  (lambda (_%g142163142186%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142163142186%_))
                        (let ((_%e142167142188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142163142186%_))))
                          (let ((_%hd142168142191%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142167142188%_)))
                                (_%tl142169142193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142167142188%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142169142193%_))
                                (let ((_%e142170142196%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142169142193%_))))
                                  (let ((_%hd142171142199%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142170142196%_)))
                                        (_%tl142172142201%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142170142196%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142172142201%_))
                                        (let ((_%e142173142204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142172142201%_))))
                                          (let ((_%hd142174142207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142173142204%_)))
                                                (_%tl142175142209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142173142204%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142175142209%_))
                                                (let ((_%e142176142212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142175142209%_))))
                                                  (let ((_%hd142177142215%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142176142212%_)))
                                                        (_%tl142178142217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142176142212%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142178142217%_))
                                                        ((lambda (_%L142220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L142221%_
                          _%L142222%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify142160%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self142157%_
                                       _%L142222%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self142157%_
                                             _%L142221%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142157%_
                                                   _%L142220%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp149392
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self142157%_
                                               _%L142222%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp149392
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142157%_
                                            _%L142221%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self142157%_
                                                  _%L142220%_))
                                               '()))))))
                 _%hd142177142215%_
                 _%hd142174142207%_
                 _%hd142171142199%_)
                (_%g142162142183%_ _%g142163142186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g142162142183%_
                                                 _%g142163142186%_))))
                                        (_%g142162142183%_
                                         _%g142163142186%_))))
                                (_%g142162142183%_ _%g142163142186%_))))
                        (_%g142162142183%_ _%g142163142186%_)))))
            (_%g142161142242%_ _%stx142158%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self142105%_ _%stx142106%_)
        (let* ((_%g142108142121%_
                (lambda (_%g142109142118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142109142118%_))))
               (_%g142107142154%_
                (lambda (_%g142109142124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142109142124%_))
                      (let ((_%e142111142126%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142109142124%_))))
                        (let ((_%hd142112142129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142111142126%_)))
                              (_%tl142113142131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142111142126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142113142131%_))
                              (let ((_%e142114142134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142113142131%_))))
                                (let ((_%hd142115142137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142114142134%_)))
                                      (_%tl142116142139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142114142134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142116142139%_))
                                      ((lambda (_%L142142%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L142142%_)))
                                       _%hd142115142137%_)
                                      (_%g142108142121%_ _%g142109142124%_))))
                              (_%g142108142121%_ _%g142109142124%_))))
                      (_%g142108142121%_ _%g142109142124%_)))))
          (_%g142107142154%_ _%stx142106%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self142037%_ _%stx142038%_)
        (let* ((_%g142040142057%_
                (lambda (_%g142041142054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142041142054%_))))
               (_%g142039142102%_
                (lambda (_%g142041142060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142041142060%_))
                      (let ((_%e142044142062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142041142060%_))))
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
                                (gx#stx-pair? _%tl142046142067%_))
                              (let ((_%e142047142070%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142046142067%_))))
                                (let ((_%hd142048142073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142047142070%_)))
                                      (_%tl142049142075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142047142070%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142049142075%_))
                                      (let ((_%e142050142078%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142049142075%_))))
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
                                                (gx#stx-null?
                                                 _%tl142052142083%_))
                                              ((lambda (_%L142086%_
                                                        _%L142087%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L142087%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self142037%_ _%L142086%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142051142081%_
                                               _%hd142048142073%_)
                                              (_%g142040142057%_
                                               _%g142041142060%_))))
                                      (_%g142040142057%_ _%g142041142060%_))))
                              (_%g142040142057%_ _%g142041142060%_))))
                      (_%g142040142057%_ _%g142041142060%_)))))
          (_%g142039142102%_ _%stx142038%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self141848%_ _%stx141849%_)
        (let* ((_%g141851141868%_
                (lambda (_%g141852141865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141852141865%_))))
               (_%g141850142034%_
                (lambda (_%g141852141871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141852141871%_))
                      (let ((_%e141855141873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141852141871%_))))
                        (let ((_%hd141856141876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141855141873%_)))
                              (_%tl141857141878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141855141873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141857141878%_))
                              (let ((_%e141858141881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141857141878%_))))
                                (let ((_%hd141859141884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141858141881%_)))
                                      (_%tl141860141886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141858141881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141860141886%_))
                                      (let ((_%e141861141889%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141860141886%_))))
                                        (let ((_%hd141862141892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141861141889%_)))
                                              (_%tl141863141894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141861141889%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141863141894%_))
                                              ((lambda (_%L141897%_
                                                        _%L141898%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141848%_ _%L141897%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141848%_ _%L141898%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141913%_ ((_%rest141916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141898%_ (cons _%L141897%_ '())))
                                (_%bind141918%_ '())
                                (_%args141919%_ '()))
               (let* ((_%rest141920141928%_ _%rest141916%_)
                      (_%else141922141936%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141918%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args141919%_)
                                                 '()))))))
                      (_%K141924142022%_
                       (lambda (_%rest141939%_ _%e141940%_)
                         (let* ((_%__stx148940148941%_ _%e141940%_)
                                (_%g141945141963%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148940148941%_)))))
                           (let ((_%__kont148942148943%_
                                  (lambda ()
                                    (_%lp141913%_
                                     _%rest141939%_
                                     _%bind141918%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141940%_))
                                           _%args141919%_))))
                                 (_%__kont148944148945%_
                                  (lambda ()
                                    (_%lp141913%_
                                     _%rest141939%_
                                     _%bind141918%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141940%_))
                                           _%args141919%_))))
                                 (_%__kont148946148947%_
                                  (lambda ()
                                    (let ((_%tmp141970%_
                                           (let ((__tmp149393
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149393))))
                                      (_%lp141913%_
                                       _%rest141939%_
                                       (cons (cons _%tmp141970%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141940%_))
                                                         '()))
                                             _%bind141918%_)
                                       (cons _%tmp141970%_ _%args141919%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148940148941%_))
                                 (let ((_%e141947142001%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148940148941%_))))
                                   (let ((_%tl141949142006%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141947142001%_)))
                                         (_%hd141948142004%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141947142001%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141948142004%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141948142004%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141949142006%_))
                                                 (let ((_%e141950142009%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141949142006%_))))
                                                   (let ((_%tl141952142014%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141950142009%_)))
                                                         (_%hd141951142012%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141950142009%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141952142014%_))
                                                         (_%__kont148942148943%_)
                                                         (_%__kont148946148947%_))))
                                                 (_%__kont148946148947%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141948142004%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141949142006%_))
                                                     (let ((_%e141956141986%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141949142006%_))))
                                                       (let ((_%tl141958141991%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141956141986%_)))
                     (_%hd141957141989%_
                      (let () (declare (not safe)) (##car _%e141956141986%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141958141991%_))
                     (_%__kont148944148945%_)
                     (_%__kont148946148947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148946148947%_))
                                                 (_%__kont148946148947%_)))
                                         (_%__kont148946148947%_))))
                                 (_%__kont148946148947%_)))))))
                 (if (pair? _%rest141920141928%_)
                     (let ((_%hd141925142025%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141920141928%_)))
                           (_%tl141926142027%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141920141928%_))))
                       (let* ((_%e142030%_ _%hd141925142025%_)
                              (_%rest142032%_ _%tl141926142027%_))
                         (_%K141924142022%_ _%rest142032%_ _%e142030%_)))
                     (_%else141922141936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141862141892%_
                                               _%hd141859141884%_)
                                              (_%g141851141868%_
                                               _%g141852141871%_))))
                                      (_%g141851141868%_ _%g141852141871%_))))
                              (_%g141851141868%_ _%g141852141871%_))))
                      (_%g141851141868%_ _%g141852141871%_)))))
          (_%g141850142034%_ _%stx141849%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self141659%_ _%stx141660%_)
        (let* ((_%g141662141679%_
                (lambda (_%g141663141676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141663141676%_))))
               (_%g141661141845%_
                (lambda (_%g141663141682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141663141682%_))
                      (let ((_%e141666141684%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141663141682%_))))
                        (let ((_%hd141667141687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141666141684%_)))
                              (_%tl141668141689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141666141684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141668141689%_))
                              (let ((_%e141669141692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141668141689%_))))
                                (let ((_%hd141670141695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141669141692%_)))
                                      (_%tl141671141697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141669141692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141671141697%_))
                                      (let ((_%e141672141700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141671141697%_))))
                                        (let ((_%hd141673141703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141672141700%_)))
                                              (_%tl141674141705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141672141700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141674141705%_))
                                              ((lambda (_%L141708%_
                                                        _%L141709%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141659%_ _%L141708%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141659%_ _%L141709%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141724%_ ((_%rest141727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141709%_ (cons _%L141708%_ '())))
                                (_%bind141729%_ '())
                                (_%args141730%_ '()))
               (let* ((_%rest141731141739%_ _%rest141727%_)
                      (_%else141733141747%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141729%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args141730%_)
                                                 '()))))))
                      (_%K141735141833%_
                       (lambda (_%rest141750%_ _%e141751%_)
                         (let* ((_%__stx148986148987%_ _%e141751%_)
                                (_%g141756141774%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148986148987%_)))))
                           (let ((_%__kont148988148989%_
                                  (lambda ()
                                    (_%lp141724%_
                                     _%rest141750%_
                                     _%bind141729%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141751%_))
                                           _%args141730%_))))
                                 (_%__kont148990148991%_
                                  (lambda ()
                                    (_%lp141724%_
                                     _%rest141750%_
                                     _%bind141729%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141751%_))
                                           _%args141730%_))))
                                 (_%__kont148992148993%_
                                  (lambda ()
                                    (let ((_%tmp141781%_
                                           (let ((__tmp149394
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149394))))
                                      (_%lp141724%_
                                       _%rest141750%_
                                       (cons (cons _%tmp141781%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141751%_))
                                                         '()))
                                             _%bind141729%_)
                                       (cons _%tmp141781%_ _%args141730%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148986148987%_))
                                 (let ((_%e141758141812%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148986148987%_))))
                                   (let ((_%tl141760141817%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141758141812%_)))
                                         (_%hd141759141815%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141758141812%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141759141815%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141759141815%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141760141817%_))
                                                 (let ((_%e141761141820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141760141817%_))))
                                                   (let ((_%tl141763141825%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141761141820%_)))
                                                         (_%hd141762141823%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141761141820%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141763141825%_))
                                                         (_%__kont148988148989%_)
                                                         (_%__kont148992148993%_))))
                                                 (_%__kont148992148993%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141759141815%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141760141817%_))
                                                     (let ((_%e141767141797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141760141817%_))))
                                                       (let ((_%tl141769141802%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141767141797%_)))
                     (_%hd141768141800%_
                      (let () (declare (not safe)) (##car _%e141767141797%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141769141802%_))
                     (_%__kont148990148991%_)
                     (_%__kont148992148993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148992148993%_))
                                                 (_%__kont148992148993%_)))
                                         (_%__kont148992148993%_))))
                                 (_%__kont148992148993%_)))))))
                 (if (pair? _%rest141731141739%_)
                     (let ((_%hd141736141836%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141731141739%_)))
                           (_%tl141737141838%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141731141739%_))))
                       (let* ((_%e141841%_ _%hd141736141836%_)
                              (_%rest141843%_ _%tl141737141838%_))
                         (_%K141735141833%_ _%rest141843%_ _%e141841%_)))
                     (_%else141733141747%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141673141703%_
                                               _%hd141670141695%_)
                                              (_%g141662141679%_
                                               _%g141663141682%_))))
                                      (_%g141662141679%_ _%g141663141682%_))))
                              (_%g141662141679%_ _%g141663141682%_))))
                      (_%g141662141679%_ _%g141663141682%_)))))
          (_%g141661141845%_ _%stx141660%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self141575%_ _%stx141576%_)
        (let* ((_%g141578141599%_
                (lambda (_%g141579141596%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141579141596%_))))
               (_%g141577141656%_
                (lambda (_%g141579141602%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141579141602%_))
                      (let ((_%e141583141604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141579141602%_))))
                        (let ((_%hd141584141607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141583141604%_)))
                              (_%tl141585141609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141583141604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141585141609%_))
                              (let ((_%e141586141612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141585141609%_))))
                                (let ((_%hd141587141615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141586141612%_)))
                                      (_%tl141588141617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141586141612%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141588141617%_))
                                      (let ((_%e141589141620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141588141617%_))))
                                        (let ((_%hd141590141623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141589141620%_)))
                                              (_%tl141591141625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141589141620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141591141625%_))
                                              (let ((_%e141592141628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141591141625%_))))
                                                (let ((_%hd141593141631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141592141628%_)))
                                                      (_%tl141594141633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141592141628%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141594141633%_))
                                                      ((lambda (_%L141636%_
                                                                _%L141637%_
                                                                _%L141638%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141575%_ _%L141636%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141575%_
                                      _%L141637%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141575%_
                                            _%L141638%_))
                                         (cons ''#f '()))))))
               _%hd141593141631%_
               _%hd141590141623%_
               _%hd141587141615%_)
              (_%g141578141599%_ _%g141579141602%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141578141599%_
                                               _%g141579141602%_))))
                                      (_%g141578141599%_ _%g141579141602%_))))
                              (_%g141578141599%_ _%g141579141602%_))))
                      (_%g141578141599%_ _%g141579141602%_)))))
          (_%g141577141656%_ _%stx141576%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self141475%_ _%stx141476%_)
        (let* ((_%g141478141503%_
                (lambda (_%g141479141500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141479141500%_))))
               (_%g141477141572%_
                (lambda (_%g141479141506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141479141506%_))
                      (let ((_%e141484141508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141479141506%_))))
                        (let ((_%hd141485141511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141484141508%_)))
                              (_%tl141486141513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141484141508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141486141513%_))
                              (let ((_%e141487141516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141486141513%_))))
                                (let ((_%hd141488141519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141487141516%_)))
                                      (_%tl141489141521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141487141516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141489141521%_))
                                      (let ((_%e141490141524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141489141521%_))))
                                        (let ((_%hd141491141527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141490141524%_)))
                                              (_%tl141492141529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141490141524%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141492141529%_))
                                              (let ((_%e141493141532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141492141529%_))))
                                                (let ((_%hd141494141535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141493141532%_)))
                                                      (_%tl141495141537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141493141532%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141495141537%_))
                                                      (let ((_%e141496141540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141495141537%_))))
                (let ((_%hd141497141543%_
                       (let () (declare (not safe)) (##car _%e141496141540%_)))
                      (_%tl141498141545%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141496141540%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141498141545%_))
                      ((lambda (_%L141548%_
                                _%L141549%_
                                _%L141550%_
                                _%L141551%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141475%_
                                        _%L141549%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141475%_
                                              _%L141548%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141475%_
                                                    _%L141550%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141475%_
                                                          _%L141551%_))
                                                       (cons ''#f '())))))))
                       _%hd141497141543%_
                       _%hd141494141535%_
                       _%hd141491141527%_
                       _%hd141488141519%_)
                      (_%g141478141503%_ _%g141479141506%_))))
              (_%g141478141503%_ _%g141479141506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141478141503%_
                                               _%g141479141506%_))))
                                      (_%g141478141503%_ _%g141479141506%_))))
                              (_%g141478141503%_ _%g141479141506%_))))
                      (_%g141478141503%_ _%g141479141506%_)))))
          (_%g141477141572%_ _%stx141476%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self141391%_ _%stx141392%_)
        (let* ((_%g141394141415%_
                (lambda (_%g141395141412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141395141412%_))))
               (_%g141393141472%_
                (lambda (_%g141395141418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141395141418%_))
                      (let ((_%e141399141420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141395141418%_))))
                        (let ((_%hd141400141423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141399141420%_)))
                              (_%tl141401141425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141399141420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141401141425%_))
                              (let ((_%e141402141428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141401141425%_))))
                                (let ((_%hd141403141431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141402141428%_)))
                                      (_%tl141404141433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141402141428%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141404141433%_))
                                      (let ((_%e141405141436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141404141433%_))))
                                        (let ((_%hd141406141439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141405141436%_)))
                                              (_%tl141407141441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141405141436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141407141441%_))
                                              (let ((_%e141408141444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141407141441%_))))
                                                (let ((_%hd141409141447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141408141444%_)))
                                                      (_%tl141410141449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141408141444%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141410141449%_))
                                                      ((lambda (_%L141452%_
                                                                _%L141453%_
                                                                _%L141454%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141391%_ _%L141452%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141391%_
                                      _%L141453%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141391%_
                                            _%L141454%_))
                                         (cons ''#f '()))))))
               _%hd141409141447%_
               _%hd141406141439%_
               _%hd141403141431%_)
              (_%g141394141415%_ _%g141395141418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141394141415%_
                                               _%g141395141418%_))))
                                      (_%g141394141415%_ _%g141395141418%_))))
                              (_%g141394141415%_ _%g141395141418%_))))
                      (_%g141394141415%_ _%g141395141418%_)))))
          (_%g141393141472%_ _%stx141392%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self141291%_ _%stx141292%_)
        (let* ((_%g141294141319%_
                (lambda (_%g141295141316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141295141316%_))))
               (_%g141293141388%_
                (lambda (_%g141295141322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141295141322%_))
                      (let ((_%e141300141324%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141295141322%_))))
                        (let ((_%hd141301141327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141300141324%_)))
                              (_%tl141302141329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141300141324%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141302141329%_))
                              (let ((_%e141303141332%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141302141329%_))))
                                (let ((_%hd141304141335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141303141332%_)))
                                      (_%tl141305141337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141303141332%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141305141337%_))
                                      (let ((_%e141306141340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141305141337%_))))
                                        (let ((_%hd141307141343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141306141340%_)))
                                              (_%tl141308141345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141306141340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141308141345%_))
                                              (let ((_%e141309141348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141308141345%_))))
                                                (let ((_%hd141310141351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141309141348%_)))
                                                      (_%tl141311141353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141309141348%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141311141353%_))
                                                      (let ((_%e141312141356%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141311141353%_))))
                (let ((_%hd141313141359%_
                       (let () (declare (not safe)) (##car _%e141312141356%_)))
                      (_%tl141314141361%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141312141356%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141314141361%_))
                      ((lambda (_%L141364%_
                                _%L141365%_
                                _%L141366%_
                                _%L141367%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141291%_
                                        _%L141365%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141291%_
                                              _%L141364%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141291%_
                                                    _%L141366%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141291%_
                                                          _%L141367%_))
                                                       (cons ''#f '())))))))
                       _%hd141313141359%_
                       _%hd141310141351%_
                       _%hd141307141343%_
                       _%hd141304141335%_)
                      (_%g141294141319%_ _%g141295141322%_))))
              (_%g141294141319%_ _%g141295141322%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141294141319%_
                                               _%g141295141322%_))))
                                      (_%g141294141319%_ _%g141295141322%_))))
                              (_%g141294141319%_ _%g141295141322%_))))
                      (_%g141294141319%_ _%g141295141322%_)))))
          (_%g141293141388%_ _%stx141292%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self141086%_ _%stx141087%_)
        (let* ((_%g141089141110%_
                (lambda (_%g141090141107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141090141107%_))))
               (_%g141088141288%_
                (lambda (_%g141090141113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141090141113%_))
                      (let ((_%e141094141115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141090141113%_))))
                        (let ((_%hd141095141118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141094141115%_)))
                              (_%tl141096141120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141094141115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141096141120%_))
                              (let ((_%e141097141123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141096141120%_))))
                                (let ((_%hd141098141126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141097141123%_)))
                                      (_%tl141099141128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141097141123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141099141128%_))
                                      (let ((_%e141100141131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141099141128%_))))
                                        (let ((_%hd141101141134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141100141131%_)))
                                              (_%tl141102141136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141100141131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141102141136%_))
                                              (let ((_%e141103141139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141102141136%_))))
                                                (let ((_%hd141104141142%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141103141139%_)))
                                                      (_%tl141105141144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141103141139%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141105141144%_))
                                                      ((lambda (_%L141147%_
                                                                _%L141148%_
                                                                _%L141149%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self141086%_
                                    _%L141147%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141086%_
                                          _%L141148%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp141167%_ ((_%rest141170%_
                                         (cons _%L141148%_
                                               (cons _%L141147%_ '())))
                                        (_%bind141172%_ '())
                                        (_%args141173%_ '()))
                       (let* ((_%rest141174141182%_ _%rest141170%_)
                              (_%else141176141190%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind141172%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp149395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp149395 _%args141173%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K141178141276%_
                               (lambda (_%rest141193%_ _%e141194%_)
                                 (let* ((_%__stx149032149033%_ _%e141194%_)
                                        (_%g141199141217%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149032149033%_)))))
                                   (let ((_%__kont149034149035%_
                                          (lambda ()
                                            (_%lp141167%_
                                             _%rest141193%_
                                             _%bind141172%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141194%_))
                                                   _%args141173%_))))
                                         (_%__kont149036149037%_
                                          (lambda ()
                                            (_%lp141167%_
                                             _%rest141193%_
                                             _%bind141172%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141194%_))
                                                   _%args141173%_))))
                                         (_%__kont149038149039%_
                                          (lambda ()
                                            (let ((_%tmp141224%_
                                                   (let ((__tmp149396
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp149396))))
                                              (_%lp141167%_
                                               _%rest141193%_
                                               (cons (cons _%tmp141224%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e141194%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141172%_)
                                               (cons _%tmp141224%_
                                                     _%args141173%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149032149033%_))
                                         (let ((_%e141201141255%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149032149033%_))))
                                           (let ((_%tl141203141260%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141201141255%_)))
                                                 (_%hd141202141258%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141201141255%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd141202141258%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd141202141258%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl141203141260%_))
                                                         (let ((_%e141204141263%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl141203141260%_))))
                   (let ((_%tl141206141268%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e141204141263%_)))
                         (_%hd141205141266%_
                          (let ()
                            (declare (not safe))
                            (##car _%e141204141263%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141206141268%_))
                         (_%__kont149034149035%_)
                         (_%__kont149038149039%_))))
                 (_%__kont149038149039%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd141202141258%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141203141260%_))
                     (let ((_%e141210141240%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141203141260%_))))
                       (let ((_%tl141212141245%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141210141240%_)))
                             (_%hd141211141243%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141210141240%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141212141245%_))
                             (_%__kont149036149037%_)
                             (_%__kont149038149039%_))))
                     (_%__kont149038149039%_))
                 (_%__kont149038149039%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149038149039%_))))
                                         (_%__kont149038149039%_)))))))
                         (if (pair? _%rest141174141182%_)
                             (let ((_%hd141179141279%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest141174141182%_)))
                                   (_%tl141180141281%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest141174141182%_))))
                               (let* ((_%e141284%_ _%hd141179141279%_)
                                      (_%rest141286%_ _%tl141180141281%_))
                                 (_%K141178141276%_
                                  _%rest141286%_
                                  _%e141284%_)))
                             (_%else141176141190%_))))))
               _%hd141104141142%_
               _%hd141101141134%_
               _%hd141098141126%_)
              (_%g141089141110%_ _%g141090141113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141089141110%_
                                               _%g141090141113%_))))
                                      (_%g141089141110%_ _%g141090141113%_))))
                              (_%g141089141110%_ _%g141090141113%_))))
                      (_%g141089141110%_ _%g141090141113%_)))))
          (_%g141088141288%_ _%stx141087%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self140865%_ _%stx140866%_)
        (let* ((_%g140868140893%_
                (lambda (_%g140869140890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140869140890%_))))
               (_%g140867141083%_
                (lambda (_%g140869140896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140869140896%_))
                      (let ((_%e140874140898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140869140896%_))))
                        (let ((_%hd140875140901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140874140898%_)))
                              (_%tl140876140903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140874140898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140876140903%_))
                              (let ((_%e140877140906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140876140903%_))))
                                (let ((_%hd140878140909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140877140906%_)))
                                      (_%tl140879140911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140877140906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140879140911%_))
                                      (let ((_%e140880140914%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140879140911%_))))
                                        (let ((_%hd140881140917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140880140914%_)))
                                              (_%tl140882140919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140880140914%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140882140919%_))
                                              (let ((_%e140883140922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140882140919%_))))
                                                (let ((_%hd140884140925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140883140922%_)))
                                                      (_%tl140885140927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140883140922%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140885140927%_))
                                                      (let ((_%e140886140930%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140885140927%_))))
                (let ((_%hd140887140933%_
                       (let () (declare (not safe)) (##car _%e140886140930%_)))
                      (_%tl140888140935%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140886140930%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140888140935%_))
                      ((lambda (_%L140938%_
                                _%L140939%_
                                _%L140940%_
                                _%L140941%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140865%_
                                            _%L140939%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140865%_
                                                  _%L140938%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140865%_
                                                        _%L140940%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp140962%_ ((_%rest140965%_
                                                 (cons _%L140940%_
                                                       (cons _%L140938%_
                                                             (cons _%L140939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind140967%_ '())
                                                (_%args140968%_ '()))
                               (let* ((_%rest140969140977%_ _%rest140965%_)
                                      (_%else140971140985%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind140967%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149397 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp149397 _%args140968%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K140973141071%_
                                       (lambda (_%rest140988%_ _%e140989%_)
                                         (let* ((_%__stx149078149079%_
                                                 _%e140989%_)
                                                (_%g140994141012%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx149078149079%_)))))
                                           (let ((_%__kont149080149081%_
                                                  (lambda ()
                                                    (_%lp140962%_
                                                     _%rest140988%_
                                                     _%bind140967%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140989%_))
                                                           _%args140968%_))))
                                                 (_%__kont149082149083%_
                                                  (lambda ()
                                                    (_%lp140962%_
                                                     _%rest140988%_
                                                     _%bind140967%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140989%_))
                                                           _%args140968%_))))
                                                 (_%__kont149084149085%_
                                                  (lambda ()
                                                    (let ((_%tmp141019%_
                                                           (let ((__tmp149398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp149398))))
              (_%lp140962%_
               _%rest140988%_
               (cons (cons _%tmp141019%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e140989%_))
                                 '()))
                     _%bind140967%_)
               (cons _%tmp141019%_ _%args140968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx149078149079%_))
                                                 (let ((_%e140996141050%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx149078149079%_))))
                                                   (let ((_%tl140998141055%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140996141050%_)))
                                                         (_%hd140997141053%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140996141050%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd140997141053%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd140997141053%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140998141055%_))
                         (let ((_%e140999141058%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140998141055%_))))
                           (let ((_%tl141001141063%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140999141058%_)))
                                 (_%hd141000141061%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140999141058%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141001141063%_))
                                 (_%__kont149080149081%_)
                                 (_%__kont149084149085%_))))
                         (_%__kont149084149085%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd140997141053%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl140998141055%_))
                             (let ((_%e141005141035%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl140998141055%_))))
                               (let ((_%tl141007141040%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e141005141035%_)))
                                     (_%hd141006141038%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e141005141035%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl141007141040%_))
                                     (_%__kont149082149083%_)
                                     (_%__kont149084149085%_))))
                             (_%__kont149084149085%_))
                         (_%__kont149084149085%_)))
                 (_%__kont149084149085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149084149085%_)))))))
                                 (if (pair? _%rest140969140977%_)
                                     (let ((_%hd140974141074%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest140969140977%_)))
                                           (_%tl140975141076%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest140969140977%_))))
                                       (let* ((_%e141079%_ _%hd140974141074%_)
                                              (_%rest141081%_
                                               _%tl140975141076%_))
                                         (_%K140973141071%_
                                          _%rest141081%_
                                          _%e141079%_)))
                                     (_%else140971140985%_))))))
                       _%hd140887140933%_
                       _%hd140884140925%_
                       _%hd140881140917%_
                       _%hd140878140909%_)
                      (_%g140868140893%_ _%g140869140896%_))))
              (_%g140868140893%_ _%g140869140896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140868140893%_
                                               _%g140869140896%_))))
                                      (_%g140868140893%_ _%g140869140896%_))))
                              (_%g140868140893%_ _%g140869140896%_))))
                      (_%g140868140893%_ _%g140869140896%_)))))
          (_%g140867141083%_ _%stx140866%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self140704%_ _%stx140705%_)
        (letrec ((_%import-set-template140707%_
                  (lambda (_%in140810%_ _%phi140811%_)
                    (let ((_%iphi140813%_
                           (fx+ _%phi140811%_
                                (##direct-structure-ref
                                 _%in140810%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports140814%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in140810%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp140816%_ ((_%rest140818%_ _%imports140814%_)
                                         (_%r140819%_ '()))
                        (let* ((_%rest140820140828%_ _%rest140818%_)
                               (_%else140822140836%_ (lambda () _%r140819%_))
                               (_%K140824140853%_
                                (lambda (_%rest140839%_ _%in140840%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in140840%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi140813%_))
                                          (_%lp140816%_
                                           _%rest140839%_
                                           (cons _%in140840%_ _%r140819%_))
                                          (_%lp140816%_
                                           _%rest140839%_
                                           _%r140819%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in140840%_
                                             'gx#module-import::t))
                                          (let ((_%iphi140844%_
                                                 (fx+ _%phi140811%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in140840%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi140844%_))
                                                (_%lp140816%_
                                                 _%rest140839%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in140840%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r140819%_))
                                                (_%lp140816%_
                                                 _%rest140839%_
                                                 _%r140819%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in140840%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi140847%_
                                                     (fx+ _%iphi140813%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in140840%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi140847%_))
                                                    (_%lp140816%_
                                                     _%rest140839%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140840%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r140819%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi140847%_))
                                                        (_%lp140816%_
                                                         _%rest140839%_
                                                         (let ((__tmp149399
                                                                (_%import-set-template140707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in140840%_
                         _%iphi140813%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r140819%_ __tmp149399)))
                (_%lp140816%_ _%rest140839%_ _%r140819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp140816%_
                                               _%rest140839%_
                                               _%r140819%_)))))))
                          (if (pair? _%rest140820140828%_)
                              (let ((_%hd140825140856%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140820140828%_)))
                                    (_%tl140826140858%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140820140828%_))))
                                (let* ((_%in140861%_ _%hd140825140856%_)
                                       (_%rest140863%_ _%tl140826140858%_))
                                  (_%K140824140853%_
                                   _%rest140863%_
                                   _%in140861%_)))
                              (_%else140822140836%_))))))))
          (let* ((_%g140709140719%_
                  (lambda (_%g140710140716%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140710140716%_))))
                 (_%g140708140807%_
                  (lambda (_%g140710140722%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140710140722%_))
                        (let ((_%e140712140724%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140710140722%_))))
                          (let ((_%hd140713140727%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140712140724%_)))
                                (_%tl140714140729%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140712140724%_))))
                            ((lambda (_%L140732%_)
                               (let ((_%ht140743%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp140745%_ ((_%rest140747%_
                                                     _%L140732%_)
                                                    (_%loads140748%_ '()))
                                   (letrec ((_%K140750%_
                                             (lambda (_%ctx140800%_
                                                      _%rest140801%_)
                                               (let ((_%id140803%_
                                                      (##structure-ref
                                                       _%ctx140800%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht140743%_
                                                        _%id140803%_))
                                                     (_%lp140745%_
                                                      _%rest140801%_
                                                      _%loads140748%_)
                                                     (let ((_%rt140805%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id140803%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht140743%_
                                                          _%id140803%_
                                                          _%rt140805%_))
                                                       (_%lp140745%_
                                                        _%rest140801%_
                                                        (cons _%rt140805%_
                                                              _%loads140748%_))))))))
                                     (let* ((_%rest140751140759%_
                                             _%rest140747%_)
                                            (_%else140753140771%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp149401
                                                            (lambda (_%g140766140768%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140766140768%_)))
                   (__tmp149400 (reverse _%loads140748%_)))
               (declare (not safe))
               (##map __tmp149401 __tmp149400)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K140755140788%_
                                             (lambda (_%rest140774%_
                                                      _%in140775%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in140775%_
                                                      'gx#module-context::t))
                                                   (_%K140750%_
                                                    _%in140775%_
                                                    _%rest140774%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in140775%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in140775%_
                               '3
                               '#f
                               '#f)))
                   (_%K140750%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in140775%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest140774%_)
                   (_%lp140745%_ _%rest140774%_ _%loads140748%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in140775%_
                      'gx#import-set::t))
                   (let ((_%phi140780%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140775%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi140780%_)
                         (_%K140750%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140775%_
                             '1
                             '#f
                             '#f))
                          _%rest140774%_)
                         (if (fxpositive? _%phi140780%_)
                             (let ((_%deps140784%_
                                    (_%import-set-template140707%_
                                     _%in140775%_
                                     '0)))
                               (_%lp140745%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest140774%_
                                   _%deps140784%_))
                                _%loads140748%_))
                             (_%lp140745%_ _%rest140774%_ _%loads140748%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx140705%_
                      _%in140775%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest140751140759%_)
                                           (let ((_%hd140756140791%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest140751140759%_)))
                                                 (_%tl140757140793%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest140751140759%_))))
                                             (let* ((_%in140796%_
                                                     _%hd140756140791%_)
                                                    (_%rest140798%_
                                                     _%tl140757140793%_))
                                               (_%K140755140788%_
                                                _%rest140798%_
                                                _%in140796%_)))
                                           (_%else140753140771%_)))))))
                             _%tl140714140729%_)))
                        (_%g140709140719%_ _%g140710140722%_)))))
            (_%g140708140807%_ _%stx140705%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self140517%_ _%stx140518%_)
        (letrec ((_%add-lift!140520%_
                  (lambda (_%expr140702%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr140702%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote140521%_
                  (lambda (_%id140699%_ _%marks140700%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id140699%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks140700%_
                                                        '()))))))))
                 (_%generate-simple140522%_
                  (lambda (_%stxq140694%_)
                    (let ((_%gid140696%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid140697%_
                           (gxc#generate-runtime-identifier _%stxq140694%_)))
                      (_%add-lift!140520%_
                       (cons 'define
                             (cons _%gid140696%_
                                   (cons (_%generate-syntax-quote140521%_
                                          _%qid140697%_
                                          ''())
                                         '()))))
                      (let ((__tmp149402
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149402 _%stxq140694%_ _%gid140696%_))
                      _%gid140696%_)))
                 (_%generate-serialized140523%_
                  (lambda (_%stxq140684%_ _%marks140685%_)
                    (let* ((_%mark-refs140687%_
                            (map _%generate-mark140524%_ _%marks140685%_))
                           (_%gid140689%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid140691%_
                            (gxc#generate-runtime-identifier _%stxq140684%_)))
                      (_%add-lift!140520%_
                       (cons 'define
                             (cons _%gid140689%_
                                   (cons (_%generate-syntax-quote140521%_
                                          _%qid140691%_
                                          (cons 'list _%mark-refs140687%_))
                                         '()))))
                      (let ((__tmp149403
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149403 _%stxq140684%_ _%gid140689%_))
                      _%gid140689%_)))
                 (_%generate-mark140524%_
                  (lambda (_%mark140669%_)
                    (let ((_%$e140671%_
                           (let ((__tmp149404
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp149404 _%mark140669%_))))
                      (if _%$e140671%_
                          _%$e140671%_
                          (let* ((_%gid140675%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr140677%_
                                  (_%serialize-mark140525%_ _%mark140669%_))
                                 (_%ctx140679%_
                                  (let ((__tmp149405
                                         (##structure-ref
                                          _%mark140669%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp149405)))
                                 (_%ctx-ref140681%_
                                  (if (eq? _%ctx140679%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref140526%_
                                                               _%ctx140679%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp149406
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149406
                               _%mark140669%_
                               _%gid140675%_))
                            (_%add-lift!140520%_
                             (cons 'define
                                   (cons _%gid140675%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr140677%_ '()))
                   (cons _%ctx-ref140681%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid140675%_)))))
                 (_%serialize-mark140525%_
                  (lambda (_%mark140616%_)
                    (letrec ((_%quote-e140618%_
                              (lambda (_%sym140667%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym140667%_))
                                    _%sym140667%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym140667%_))))))
                      (let* ((_%mark140619140628%_ _%mark140616%_)
                             (_%E140621140632%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark140619140628%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K140622140644%_
                              (lambda (_%trace140635%_
                                       _%phi140636%_
                                       _%ctx140637%_
                                       _%subst140638%_)
                                (let ((_%subs140640%_
                                       (if _%subst140638%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst140638%_))
                                           '())))
                                  (cons _%phi140636%_
                                        (map (lambda (_%pair140642%_)
                                               (cons (_%quote-e140618%_
                                                      (car _%pair140642%_))
                                                     (_%quote-e140618%_
                                                      (cdr _%pair140642%_))))
                                             _%subs140640%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark140619140628%_
                               'gx#expander-mark::t))
                            (let* ((_%e140623140647%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140619140628%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst140650%_ _%e140623140647%_)
                                   (_%e140624140652%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140619140628%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx140655%_ _%e140624140652%_)
                                   (_%e140625140657%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140619140628%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi140660%_ _%e140625140657%_)
                                   (_%e140626140662%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140619140628%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace140665%_ _%e140626140662%_))
                              (_%K140622140644%_
                               _%trace140665%_
                               _%phi140660%_
                               _%ctx140655%_
                               _%subst140650%_))
                            (_%E140621140632%_))))))
                 (_%context-ref140526%_
                  (lambda (_%ctx140603%_)
                    (if (let ((__tmp149407
                               (##structure-ref
                                _%ctx140603%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp149407
                           'gx#module-context::t))
                        (let ((_%ctx-ref140605%_
                               (_%context-ref-nested140528%_ _%ctx140603%_))
                              (_%ctx-origin140606%_
                               (_%context-ref-origin140527%_ _%ctx140603%_))
                              (_%origin140607%_
                               (_%context-ref-origin140527%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin140607%_ _%ctx-origin140606%_)
                              (let ((_%ref140609%_
                                     (_%context-ref-nested140528%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp140611%_ ((_%ref140613%_
                                                    (cdr _%ref140609%_))
                                                   (_%ctx-ref140614%_
                                                    (cdr _%ctx-ref140605%_)))
                                  (if (and (pair? _%ref140613%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref140613%_))
                                                (car _%ctx-ref140614%_)))
                                      (_%lp140611%_
                                       (cdr _%ref140613%_)
                                       (cdr _%ctx-ref140614%_))
                                      (cons '#f _%ctx-ref140614%_))))
                              _%ctx-ref140605%_))
                        (let ((__tmp149408
                               (##structure-ref
                                _%ctx140603%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp149408)))))
                 (_%context-ref-origin140527%_
                  (lambda (_%ctx140595%_)
                    (let _%lp140597%_ ((_%ctx140599%_ _%ctx140595%_))
                      (let ((_%super140601%_
                             (##structure-ref
                              _%ctx140599%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140601%_
                               'gx#module-context::t))
                            (_%lp140597%_ _%super140601%_)
                            _%ctx140599%_)))))
                 (_%context-ref-nested140528%_
                  (lambda (_%ctx140586%_)
                    (let _%lp140588%_ ((_%ctx140590%_ _%ctx140586%_)
                                       (_%r140591%_ '()))
                      (let ((_%super140593%_
                             (##structure-ref
                              _%ctx140590%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140593%_
                               'gx#module-context::t))
                            (_%lp140588%_
                             _%super140593%_
                             (cons (car (##structure-ref
                                         _%ctx140590%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r140591%_))
                            (cons (let ((__tmp149409
                                         (##structure-ref
                                          _%ctx140590%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp149409))
                                  _%r140591%_)))))))
          (let* ((_%g140530140543%_
                  (lambda (_%g140531140540%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140531140540%_))))
                 (_%g140529140583%_
                  (lambda (_%g140531140546%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140531140546%_))
                        (let ((_%e140533140548%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140531140546%_))))
                          (let ((_%hd140534140551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140533140548%_)))
                                (_%tl140535140553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140533140548%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140535140553%_))
                                (let ((_%e140536140556%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140535140553%_))))
                                  (let ((_%hd140537140559%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140536140556%_)))
                                        (_%tl140538140561%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140536140556%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140538140561%_))
                                        ((lambda (_%L140564%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L140564%_))
                                               (let ((_%$e140577%_
                                                      (let ((__tmp149410
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp149410 _%L140564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e140577%_
                                                     _%$e140577%_
                                                     (let ((_%marks140581%_
                                                            (##direct-structure-ref
                                                             _%L140564%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks140581%_)
                                                           (_%generate-simple140522%_
                                                            _%L140564%_)
                                                           (_%generate-serialized140523%_
                                                            _%L140564%_
                                                            _%marks140581%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L140564%_))))
                                         _%hd140537140559%_)
                                        (_%g140530140543%_
                                         _%g140531140546%_))))
                                (_%g140530140543%_ _%g140531140546%_))))
                        (_%g140530140543%_ _%g140531140546%_)))))
            (_%g140529140583%_ _%stx140518%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self140449%_ _%stx140450%_)
        (let* ((_%g140452140469%_
                (lambda (_%g140453140466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140453140466%_))))
               (_%g140451140514%_
                (lambda (_%g140453140472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140453140472%_))
                      (let ((_%e140456140474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140453140472%_))))
                        (let ((_%hd140457140477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140456140474%_)))
                              (_%tl140458140479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140456140474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140458140479%_))
                              (let ((_%e140459140482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140458140479%_))))
                                (let ((_%hd140460140485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140459140482%_)))
                                      (_%tl140461140487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140459140482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140461140487%_))
                                      (let ((_%e140462140490%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140461140487%_))))
                                        (let ((_%hd140463140493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140462140490%_)))
                                              (_%tl140464140495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140462140490%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140464140495%_))
                                              ((lambda (_%L140498%_
                                                        _%L140499%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L140499%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140449%_ _%L140498%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140463140493%_
                                               _%hd140460140485%_)
                                              (_%g140452140469%_
                                               _%g140453140472%_))))
                                      (_%g140452140469%_ _%g140453140472%_))))
                              (_%g140452140469%_ _%g140453140472%_))))
                      (_%g140452140469%_ _%g140453140472%_)))))
          (_%g140451140514%_ _%stx140450%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self140398%_ _%stx140399%_)
        (let* ((_%g140401140411%_
                (lambda (_%g140402140408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140402140408%_))))
               (_%g140400140446%_
                (lambda (_%g140402140414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140402140414%_))
                      (let ((_%e140404140416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140402140414%_))))
                        (let ((_%hd140405140419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140404140416%_)))
                              (_%tl140406140421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140404140416%_))))
                          ((lambda (_%L140424%_)
                             (let* ((_%c-body140438%_
                                     (map (lambda (_%g140433140435%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140398%_
                                               _%g140433140435%_)))
                                          _%L140424%_))
                                    (_%c-body140443%_
                                     (let ((__tmp149411
                                            (lambda (_%$obj140440%_)
                                              (not (eq? _%$obj140440%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp149411
                                        _%c-body140438%_))))
                               (cons '%#begin _%c-body140443%_)))
                           _%tl140406140421%_)))
                      (_%g140401140411%_ _%g140402140414%_)))))
          (_%g140400140446%_ _%stx140399%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self140303%_ _%stx140304%_)
        (let* ((_%g140306140316%_
                (lambda (_%g140307140313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140307140313%_))))
               (_%g140305140395%_
                (lambda (_%g140307140319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140307140319%_))
                      (let ((_%e140309140321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140307140319%_))))
                        (let ((_%hd140310140324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140309140321%_)))
                              (_%tl140311140326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140309140321%_))))
                          ((lambda (_%L140329%_)
                             (let* ((_%phi140339%_
                                     (let ((__tmp149412
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp149412 '1)))
                                    (_%block140341%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self140303%_ 'state))
                                      _%phi140339%_))
                                    (_%compiled140344%_
                                     (let ((__tmp149413
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self140303%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L140329%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp149413
                                        gx#current-expander-phi
                                        _%phi140339%_)))
                                    (_%g140347140357%_
                                     (lambda (_%g140348140354%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g140348140354%_))))
                                    (_%g140346140392%_
                                     (lambda (_%g140348140360%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g140348140360%_))
                                           (let ((_%e140350140362%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g140348140360%_))))
                                             (let ((_%hd140351140365%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140350140362%_)))
                                                   (_%tl140352140367%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140350140362%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140351140365%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd140351140365%_))
                                                       ((lambda (_%L140370%_)
                                                          (let ((_%c-body140387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj140384%_)
                                   (not (eq? _%$obj140384%_ '#!void)))
                                 _%L140370%_)))
                    (if _%block140341%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block140341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body140387%_))
                        (if (null? _%c-body140387%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body140387%_)))))
                _%tl140352140367%_)
               (_%g140347140357%_ _%g140348140360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g140347140357%_
                                                    _%g140348140360%_))))
                                           (_%g140347140357%_
                                            _%g140348140360%_)))))
                               (_%g140346140392%_ _%compiled140344%_)))
                           _%tl140311140326%_)))
                      (_%g140306140316%_ _%g140307140319%_)))))
          (_%g140305140395%_ _%stx140304%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self140234%_ _%stx140235%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140234%_ 'state)))
        (let* ((_%g140237140251%_
                (lambda (_%g140238140248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140238140248%_))))
               (_%g140236140300%_
                (lambda (_%g140238140254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140238140254%_))
                      (let ((_%e140241140256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140238140254%_))))
                        (let ((_%hd140242140259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140241140256%_)))
                              (_%tl140243140261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140241140256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140243140261%_))
                              (let ((_%e140244140264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140243140261%_))))
                                (let ((_%hd140245140267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140244140264%_)))
                                      (_%tl140246140269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140244140264%_))))
                                  ((lambda (_%L140272%_ _%L140273%_)
                                     (let ((_%key140286%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L140273%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key140286%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx140235%_
                                              _%L140273%_
                                              _%key140286%_)))
                                       (let* ((_%ctx140288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L140273%_)))
                                              (_%code140291%_
                                               (let ((__tmp149414
                                                      (lambda ()
                                                        (let ((__tmp149415
                                                               (##structure-ref
                                                                _%ctx140288%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self140234%_
                                                           __tmp149415)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp149414
                                                  gx#current-expander-context
                                                  _%ctx140288%_)))
                                              (_%rt140293%_
                                               (let ((__tmp149416
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp149416
                                                  _%ctx140288%_)))
                                              (_%loader140295%_
                                               (if _%rt140293%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt140293%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid140297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L140273%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self140234%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid140297%_
                                                     (cons _%code140291%_
                                                           _%loader140295%_))))))
                                   _%tl140246140269%_
                                   _%hd140245140267%_)))
                              (_%g140237140251%_ _%g140238140254%_))))
                      (_%g140237140251%_ _%g140238140254%_)))))
          (_%g140236140300%_ _%stx140235%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx140221%_ _%context-chain140222%_)
        (let _%lp140224%_ ((_%ctx140226%_ _%ctx140221%_) (_%path140227%_ '()))
          (let ((_%super140229%_
                 (##structure-ref _%ctx140226%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super140229%_ _%context-chain140222%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx140226%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path140227%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super140229%_
                       'gx#module-context::t))
                    (_%lp140224%_
                     _%super140229%_
                     (cons (car (##structure-ref
                                 _%ctx140226%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path140227%_))
                    (cons (let ((__tmp149417
                                 (##structure-ref
                                  _%ctx140226%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp149417))
                          _%path140227%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp140214%_ ((_%ctx140216%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r140217%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx140216%_ 'gx#module-context::t))
              (_%lp140214%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx140216%_ '3 '#f '#f))
               (cons _%ctx140216%_ _%r140217%_))
              _%r140217%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self139977%_ _%stx139978%_)
        (letrec* ((_%context-chain139980%_ (gxc#current-context-chain))
                  (_%make-import-spec139981%_
                   (lambda (_%in140150%_)
                     (let* ((_%in140151140163%_ _%in140150%_)
                            (_%E140153140167%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in140151140163%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K140154140177%_
                             (lambda (_%phi140170%_
                                      _%name140171%_
                                      _%src-name140172%_
                                      _%src-phi140173%_
                                      _%src-key140174%_
                                      _%src-ctx140175%_)
                               (cons _%phi140170%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name140171%_)
                                           (cons _%src-phi140173%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name140172%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in140151140163%_
                              'gx#module-import::t))
                           (let ((_%e140155140180%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in140151140163%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e140155140180%_
                                    'gx#module-export::t))
                                 (let* ((_%e140158140183%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140155140180%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx140186%_ _%e140158140183%_)
                                        (_%e140159140188%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140155140180%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key140191%_ _%e140159140188%_)
                                        (_%e140160140193%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140155140180%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi140196%_ _%e140160140193%_)
                                        (_%e140161140198%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140155140180%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name140201%_ _%e140161140198%_)
                                        (_%e140156140203%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140151140163%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name140206%_ _%e140156140203%_)
                                        (_%e140157140208%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140151140163%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi140211%_ _%e140157140208%_))
                                   (_%K140154140177%_
                                    _%phi140211%_
                                    _%name140206%_
                                    _%src-name140201%_
                                    _%src-phi140196%_
                                    _%src-key140191%_
                                    _%src-ctx140186%_))
                                 (_%E140153140167%_)))
                           (_%E140153140167%_)))))
                  (_%make-import-path139982%_
                   (lambda (_%ctx140148%_)
                     (gxc#generate-meta-import-path
                      _%ctx140148%_
                      _%context-chain139980%_)))
                  (_%make-import-spec-in139983%_
                   (lambda (_%ctx140145%_ _%in140146%_)
                     (cons 'spec:
                           (cons (_%make-import-path139982%_ _%ctx140145%_)
                                 (reverse _%in140146%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self139977%_ 'state)))
          (let* ((_%g139985139995%_
                  (lambda (_%g139986139992%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139986139992%_))))
                 (_%g139984140142%_
                  (lambda (_%g139986139998%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139986139998%_))
                        (let ((_%e139988140000%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139986139998%_))))
                          (let ((_%hd139989140003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139988140000%_)))
                                (_%tl139990140005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139988140000%_))))
                            ((lambda (_%L140008%_)
                               (let _%lp140019%_ ((_%rest140021%_ _%L140008%_)
                                                  (_%current-src140022%_ '#f)
                                                  (_%current-in140023%_ '())
                                                  (_%r140024%_ '()))
                                 (let* ((_%rest140025140033%_ _%rest140021%_)
                                        (_%else140027140043%_
                                         (lambda ()
                                           (let ((_%r140041%_
                                                  (if _%current-src140022%_
                                                      (cons (_%make-import-spec-in139983%_
                                                             _%current-src140022%_
                                                             _%current-in140023%_)
                                                            _%r140024%_)
                                                      _%r140024%_)))
                                             (cons '%#import
                                                   (reverse _%r140041%_)))))
                                        (_%K140029140130%_
                                         (lambda (_%rest140046%_ _%in140047%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in140047%_
                                                  'gx#module-import::t))
                                               (let* ((_%in140049140056%_
                                                       _%in140047%_)
                                                      (_%E140051140060%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in140049140056%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K140052140068%_
               (lambda (_%src-ctx140063%_)
                 (if (eq? _%current-src140022%_ _%src-ctx140063%_)
                     (_%lp140019%_
                      _%rest140046%_
                      _%current-src140022%_
                      (cons (_%make-import-spec139981%_ _%in140047%_)
                            _%current-in140023%_)
                      _%r140024%_)
                     (if _%current-src140022%_
                         (_%lp140019%_
                          _%rest140046%_
                          _%src-ctx140063%_
                          (cons (_%make-import-spec139981%_ _%in140047%_) '())
                          (cons (_%make-import-spec-in139983%_
                                 _%current-src140022%_
                                 _%current-in140023%_)
                                _%r140024%_))
                         (_%lp140019%_
                          _%rest140046%_
                          _%src-ctx140063%_
                          (cons (_%make-import-spec139981%_ _%in140047%_) '())
                          _%r140024%_)))))
              (_%e140053140071%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in140049140056%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e140053140071%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140054140074%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e140053140071%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx140077%_ _%e140054140074%_))
               (_%K140052140068%_ _%src-ctx140077%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E140051140060%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in140047%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi140080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140047%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src140082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140047%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in140122%_
                                                           (let* ((_%g140083140092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path139982%_ _%src140082%_))
                          (_%E140086140096%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g140083140092%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K140088140112%_
                            (lambda (_%path140110%_) _%path140110%_))
                           (_%K140087140102%_
                            (lambda (_%path140100%_)
                              (cons 'in: _%path140100%_))))
                       (if (pair? _%g140083140092%_)
                           (let ((_%tl140090140117%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g140083140092%_)))
                                 (_%hd140089140115%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g140083140092%_))))
                             (if (null? _%tl140090140117%_)
                                 (let ((_%path140120%_ _%hd140089140115%_))
                                   (_%K140088140112%_ _%path140120%_))
                                 (let ((_%path140105%_ _%g140083140092%_))
                                   (_%K140087140102%_ _%path140105%_))))
                           (let ((_%path140105%_ _%g140083140092%_))
                             (_%K140087140102%_ _%path140105%_))))))
                  (_%r140124%_
                   (if _%current-src140022%_
                       (cons (_%make-import-spec-in139983%_
                              _%current-src140022%_
                              _%current-in140023%_)
                             _%r140024%_)
                       _%r140024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp140019%_
                                                      _%rest140046%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi140080%_)
                                                                _%src-in140122%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi140080%_
                                    (cons _%src-in140122%_ '()))))
                    _%r140124%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in140047%_
                                                          'gx#module-context::t))
                                                       (let ((_%r140128%_
                                                              (if _%current-src140022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in139983%_
                                 _%current-src140022%_
                                 _%current-in140023%_)
                                _%r140024%_)
                          _%r140024%_)))
                 (_%lp140019%_
                  _%rest140046%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path139982%_ _%in140047%_))
                        _%r140128%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest140025140033%_)
                                       (let ((_%hd140030140133%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140025140033%_)))
                                             (_%tl140031140135%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140025140033%_))))
                                         (let* ((_%in140138%_
                                                 _%hd140030140133%_)
                                                (_%rest140140%_
                                                 _%tl140031140135%_))
                                           (_%K140029140130%_
                                            _%rest140140%_
                                            _%in140138%_)))
                                       (_%else140027140043%_)))))
                             _%tl139990140005%_)))
                        (_%g139985139995%_ _%g139986139998%_)))))
            (_%g139984140142%_ _%stx139978%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self139787%_ _%stx139788%_)
        (letrec* ((_%context-chain139790%_ (gxc#current-context-chain))
                  (_%make-import-path139791%_
                   (lambda (_%ctx139975%_)
                     (gxc#generate-meta-import-path
                      _%ctx139975%_
                      _%context-chain139790%_))))
          (let* ((_%g139793139803%_
                  (lambda (_%g139794139800%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139794139800%_))))
                 (_%g139792139972%_
                  (lambda (_%g139794139806%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139794139806%_))
                        (let ((_%e139796139808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139794139806%_))))
                          (let ((_%hd139797139811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139796139808%_)))
                                (_%tl139798139813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139796139808%_))))
                            ((lambda (_%L139816%_)
                               (let _%lp139827%_ ((_%rest139829%_ _%L139816%_)
                                                  (_%r139830%_ '()))
                                 (let* ((_%rest139831139839%_ _%rest139829%_)
                                        (_%else139833139847%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r139830%_))))
                                        (_%K139835139960%_
                                         (lambda (_%rest139850%_ _%out139851%_)
                                           (let* ((_%out139852139865%_
                                                   _%out139851%_)
                                                  (_%E139855139869%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out139852139865%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K139859139939%_
                                                    (lambda (_%name139935%_
                                                             _%phi139936%_
                                                             _%key139937%_)
                                                      (_%lp139827%_
                                                       _%rest139850%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi139936%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key139937%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name139935%_)
                                             '()))))
                     _%r139830%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K139856139919%_
                                                    (lambda (_%phi139873%_
                                                             _%src139874%_)
                                                      (let* ((_%out139914%_
                                                              (if _%src139874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g139875139884%_
                                              (_%make-import-path139791%_
                                               _%src139874%_))
                                             (_%E139878139888%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g139875139884%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K139880139904%_
                                               (lambda (_%path139902%_)
                                                 _%path139902%_))
                                              (_%K139879139894%_
                                               (lambda (_%path139892%_)
                                                 (cons 'in: _%path139892%_))))
                                          (if (pair? _%g139875139884%_)
                                              (let ((_%tl139882139909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g139875139884%_)))
                                                    (_%hd139881139907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g139875139884%_))))
                                                (if (null? _%tl139882139909%_)
                                                    (let ((_%path139912%_
                                                           _%hd139881139907%_))
                                                      (_%K139880139904%_
                                                       _%path139912%_))
                                                    (let ((_%path139897%_
                                                           _%g139875139884%_))
                                                      (_%K139879139894%_
                                                       _%path139897%_))))
                                              (let ((_%path139897%_
                                                     _%g139875139884%_))
                                                (_%K139879139894%_
                                                 _%path139897%_)))))
                                      '()))
                          '#t))
                     (_%out139916%_
                      (if (fxzero? _%phi139873%_)
                          _%out139914%_
                          (cons 'phi:
                                (cons _%phi139873%_
                                      (cons _%out139914%_ '()))))))
                (_%lp139827%_
                 _%rest139850%_
                 (cons _%out139916%_ _%r139830%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match139854139932%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out139852139865%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e139857139922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139852139865%_
                               '1
                               '#f
                               '#f)))
                           (_%e139858139927%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139852139865%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src139925%_ _%e139857139922%_)
                            (_%phi139930%_ _%e139858139927%_))
                        (_%K139856139919%_ _%phi139930%_ _%src139925%_)))
                    (_%E139855139869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out139852139865%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139860139942%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out139852139865%_
                        '1
                        '#f
                        '#f)))
                    (_%e139861139945%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139852139865%_
                        '2
                        '#f
                        '#f)))
                    (_%e139862139950%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139852139865%_
                        '3
                        '#f
                        '#f)))
                    (_%e139863139955%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139852139865%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key139948%_ _%e139861139945%_)
                     (_%phi139953%_ _%e139862139950%_)
                     (_%name139958%_ _%e139863139955%_))
                 (_%K139859139939%_
                  _%name139958%_
                  _%phi139953%_
                  _%key139948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match139854139932%_))))))))
                                   (if (pair? _%rest139831139839%_)
                                       (let ((_%hd139836139963%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139831139839%_)))
                                             (_%tl139837139965%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139831139839%_))))
                                         (let* ((_%out139968%_
                                                 _%hd139836139963%_)
                                                (_%rest139970%_
                                                 _%tl139837139965%_))
                                           (_%K139835139960%_
                                            _%rest139970%_
                                            _%out139968%_)))
                                       (_%else139833139847%_)))))
                             _%tl139798139813%_)))
                        (_%g139793139803%_ _%g139794139806%_)))))
            (_%g139792139972%_ _%stx139788%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self139748%_ _%stx139749%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139748%_ 'state)))
        (let* ((_%g139751139761%_
                (lambda (_%g139752139758%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139752139758%_))))
               (_%g139750139784%_
                (lambda (_%g139752139764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139752139764%_))
                      (let ((_%e139754139766%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139752139764%_))))
                        (let ((_%hd139755139769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139754139766%_)))
                              (_%tl139756139771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139754139766%_))))
                          ((lambda (_%L139774%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L139774%_)))
                           _%tl139756139771%_)))
                      (_%g139751139761%_ _%g139752139764%_)))))
          (_%g139750139784%_ _%stx139749%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self139619%_ _%stx139620%_)
        (letrec ((_%generate1139622%_
                  (lambda (_%id139743%_ _%eid139744%_)
                    (let ((_%eid139746%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid139744%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid139746%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx139620%_
                             _%eid139746%_)))
                      (cons (gxc#generate-runtime-identifier _%id139743%_)
                            (cons _%eid139746%_ '()))))))
          (let* ((_%g139624139652%_
                  (lambda (_%g139625139649%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139625139649%_))))
                 (_%g139623139740%_
                  (lambda (_%g139625139655%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139625139655%_))
                        (let ((_%e139628139657%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139625139655%_))))
                          (let ((_%hd139629139660%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139628139657%_)))
                                (_%tl139630139662%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139628139657%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl139630139662%_))
                                (let ((_g149418_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl139630139662%_
                                          '0))))
                                  (begin
                                    (let ((_g149419_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149418_)
                                                 (##values-length _g149418_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149419_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149419_)))
                                    (let ((_%target139631139665%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149418_ 0)))
                                          (_%tl139633139667%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149418_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139633139667%_))
                                          (letrec ((_%loop139634139670%_
                                                    (lambda (_%hd139632139673%_
                                                             _%eid139638139675%_
                                                             _%id139639139677%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd139632139673%_))
                                                          (let ((_%e139635139680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd139632139673%_))))
                    (let ((_%lp-hd139636139683%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139635139680%_)))
                          (_%lp-tl139637139685%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139635139680%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd139636139683%_))
                          (let ((_%e139642139688%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd139636139683%_))))
                            (let ((_%hd139643139691%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139642139688%_)))
                                  (_%tl139644139693%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139642139688%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl139644139693%_))
                                  (let ((_%e139645139696%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl139644139693%_))))
                                    (let ((_%hd139646139699%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139645139696%_)))
                                          (_%tl139647139701%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139645139696%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139647139701%_))
                                          (_%loop139634139670%_
                                           _%lp-tl139637139685%_
                                           (cons _%hd139646139699%_
                                                 _%eid139638139675%_)
                                           (cons _%hd139643139691%_
                                                 _%id139639139677%_))
                                          (_%g139624139652%_
                                           _%g139625139655%_))))
                                  (_%g139624139652%_ _%g139625139655%_))))
                          (_%g139624139652%_ _%g139625139655%_))))
                  (let ((_%eid139640139704%_ (reverse _%eid139638139675%_))
                        (_%id139641139706%_ (reverse _%id139639139677%_)))
                    ((lambda (_%L139709%_ _%L139710%_)
                       (cons '%#extern
                             (map _%generate1139622%_
                                  (let ((__tmp149420
                                         (lambda (_%g139725139728%_
                                                  _%g139726139730%_)
                                           (cons _%g139725139728%_
                                                 _%g139726139730%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149420 '() _%L139710%_))
                                  (let ((__tmp149421
                                         (lambda (_%g139732139735%_
                                                  _%g139733139737%_)
                                           (cons _%g139732139735%_
                                                 _%g139733139737%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149421 '() _%L139709%_)))))
                     _%eid139640139704%_
                     _%id139641139706%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop139634139670%_
                                             _%target139631139665%_
                                             '()
                                             '()))
                                          (_%g139624139652%_
                                           _%g139625139655%_)))))
                                (_%g139624139652%_ _%g139625139655%_))))
                        (_%g139624139652%_ _%g139625139655%_)))))
            (_%g139623139740%_ _%stx139620%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self139409%_ _%stx139410%_)
        (letrec ((_%generate1139412%_
                  (lambda (_%id139614%_)
                    (let ((_%eid139616%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id139614%_)))
                          (_%ident139617%_
                           (gxc#generate-runtime-identifier _%id139614%_)))
                      (cons '%#define-runtime
                            (cons _%ident139617%_ (cons _%eid139616%_ '()))))))
                 (_%generate*139413%_
                  (lambda (_%all139582%_)
                    (let* ((_%all139583139591%_ _%all139582%_)
                           (_%else139585139599%_
                            (lambda () (cons '%#begin _%all139582%_)))
                           (_%K139587139604%_
                            (lambda (_%one139602%_) _%one139602%_)))
                      (if (pair? _%all139583139591%_)
                          (let ((_%hd139588139607%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all139583139591%_)))
                                (_%tl139589139609%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all139583139591%_))))
                            (let ((_%one139612%_ _%hd139588139607%_))
                              (if (null? _%tl139589139609%_)
                                  (_%K139587139604%_ _%one139612%_)
                                  (_%else139585139599%_))))
                          (_%else139585139599%_))))))
          (let* ((_%g139415139432%_
                  (lambda (_%g139416139429%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139416139429%_))))
                 (_%g139414139579%_
                  (lambda (_%g139416139435%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139416139435%_))
                        (let ((_%e139419139437%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139416139435%_))))
                          (let ((_%hd139420139440%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139419139437%_)))
                                (_%tl139421139442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139419139437%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139421139442%_))
                                (let ((_%e139422139445%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139421139442%_))))
                                  (let ((_%hd139423139448%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139422139445%_)))
                                        (_%tl139424139450%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139422139445%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139424139450%_))
                                        (let ((_%e139425139453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139424139450%_))))
                                          (let ((_%hd139426139456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139425139453%_)))
                                                (_%tl139427139458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139425139453%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139427139458%_))
                                                ((lambda (_%L139461%_
                                                          _%L139462%_)
                                                   (let _%lp139478%_ ((_%rest139480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L139462%_)
                              (_%r139481%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx149157149158%_
                                                             _%rest139480%_)
                                                            (_%g139486139503%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx149157149158%_)))))
               (let ((_%__kont149159149160%_
                      (lambda (_%L139566%_)
                        (_%lp139478%_ _%L139566%_ _%r139481%_)))
                     (_%__kont149161149162%_
                      (lambda (_%L139539%_ _%L139540%_)
                        (_%lp139478%_
                         _%L139539%_
                         (cons (_%generate1139412%_ _%L139540%_)
                               _%r139481%_))))
                     (_%__kont149163149164%_
                      (lambda (_%L139515%_)
                        (_%generate*139413%_
                         (let ((__tmp149422
                                (cons (_%generate1139412%_ _%L139515%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp149422 _%r139481%_)))))
                     (_%__kont149165149166%_
                      (lambda () (_%generate*139413%_ (reverse _%r139481%_)))))
                 (let ((_%g139484139526%_
                        (lambda ()
                          (let ((_%L139515%_ _%__stx149157149158%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L139515%_))
                                (_%__kont149163149164%_ _%L139515%_)
                                (_%__kont149165149166%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx149157149158%_))
                       (let ((_%e139489139555%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx149157149158%_))))
                         (let ((_%tl139491139560%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e139489139555%_)))
                               (_%hd139490139558%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e139489139555%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd139490139558%_))
                               (let ((_%e139492139563%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd139490139558%_))))
                                 (if (equal? _%e139492139563%_ '#f)
                                     (_%__kont149159149160%_
                                      _%tl139491139560%_)
                                     (_%__kont149161149162%_
                                      _%tl139491139560%_
                                      _%hd139490139558%_)))
                               (_%__kont149161149162%_
                                _%tl139491139560%_
                                _%hd139490139558%_))))
                       (let () (declare (not safe)) (_%g139484139526%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd139426139456%_
                                                 _%hd139423139448%_)
                                                (_%g139415139432%_
                                                 _%g139416139435%_))))
                                        (_%g139415139432%_
                                         _%g139416139435%_))))
                                (_%g139415139432%_ _%g139416139435%_))))
                        (_%g139415139432%_ _%g139416139435%_)))))
            (_%g139414139579%_ _%stx139410%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self139306%_ _%stx139307%_)
        (let* ((_%g139309139326%_
                (lambda (_%g139310139323%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139310139323%_))))
               (_%g139308139406%_
                (lambda (_%g139310139329%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139310139329%_))
                      (let ((_%e139313139331%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139310139329%_))))
                        (let ((_%hd139314139334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139313139331%_)))
                              (_%tl139315139336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139313139331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139315139336%_))
                              (let ((_%e139316139339%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139315139336%_))))
                                (let ((_%hd139317139342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139316139339%_)))
                                      (_%tl139318139344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139316139339%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139318139344%_))
                                      (let ((_%e139319139347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139318139344%_))))
                                        (let ((_%hd139320139350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139319139347%_)))
                                              (_%tl139321139352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139319139347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139321139352%_))
                                              ((lambda (_%L139355%_
                                                        _%L139356%_)
                                                 (let* ((_%eid139371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L139356%_)))
                                                        (_%phi139373%_
                                                         (let ((__tmp149423
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp149423 '1)))
                (_%block139375%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self139306%_ 'state))
                  _%phi139373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g139378139385%_
                                                           (lambda (_%g139379139382%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g139379139382%_))))
                  (_%g139377139403%_
                   (lambda (_%g139379139388%_)
                     ((lambda (_%L139390%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self139306%_ 'state))
                         _%phi139373%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L139390%_ (cons _%L139355%_ '())))))
                      _%g139379139388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g139377139403%_
                                                      _%eid139371%_))
                                                   (if _%block139375%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block139375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L139356%_)
                                             (cons _%eid139371%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L139356%_)
                           (cons _%eid139371%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139320139350%_
                                               _%hd139317139342%_)
                                              (_%g139309139326%_
                                               _%g139310139329%_))))
                                      (_%g139309139326%_ _%g139310139329%_))))
                              (_%g139309139326%_ _%g139310139329%_))))
                      (_%g139309139326%_ _%g139310139329%_)))))
          (_%g139308139406%_ _%stx139307%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self139238%_ _%stx139239%_)
        (let* ((_%g139241139258%_
                (lambda (_%g139242139255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139242139255%_))))
               (_%g139240139303%_
                (lambda (_%g139242139261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139242139261%_))
                      (let ((_%e139245139263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139242139261%_))))
                        (let ((_%hd139246139266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139245139263%_)))
                              (_%tl139247139268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139245139263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139247139268%_))
                              (let ((_%e139248139271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139247139268%_))))
                                (let ((_%hd139249139274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139248139271%_)))
                                      (_%tl139250139276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139248139271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139250139276%_))
                                      (let ((_%e139251139279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139250139276%_))))
                                        (let ((_%hd139252139282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139251139279%_)))
                                              (_%tl139253139284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139251139279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139253139284%_))
                                              ((lambda (_%L139287%_
                                                        _%L139288%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L139288%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L139287%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139252139282%_
                                               _%hd139249139274%_)
                                              (_%g139241139258%_
                                               _%g139242139261%_))))
                                      (_%g139241139258%_ _%g139242139261%_))))
                              (_%g139241139258%_ _%g139242139261%_))))
                      (_%g139241139258%_ _%g139242139261%_)))))
          (_%g139240139303%_ _%stx139239%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self139235%_ _%stx139236%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139235%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx139236%_)
        (gxc#generate-meta-define-values% _%self139235%_ _%stx139236%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self139232%_ _%stx139233%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139232%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx139233%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp149425 (list)) (__tmp149424 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp149425
         '(src n open blocks)
         __tmp149424
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args139229%_
        (apply make-instance gxc#meta-state::t _%$args139229%_)))
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
      (lambda (_%self138574139213%_ _%ctx139215%_)
        (let* ((_%self139217%_ _%self138574139213%_)
               (_%self139219%_ _%self139217%_))
          (if (let ((__tmp149426
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self139219%_))))
                (declare (not safe))
                (##fx< '4 __tmp149426))
              (begin
                (let ((__tmp149427
                       (let ((__tmp149428
                              (##structure-ref
                               _%ctx139215%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp149428))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self139219%_
                   __tmp149427
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self139219%_ '1 '2 '#f '#f))
                (let ((__tmp149429
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self139219%_
                   __tmp149429
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self139219%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp149430
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self139219%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self139219%_
                       '4
                       __tmp149430))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp149432 (list)) (__tmp149431 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp149432
         '(ctx phi n code)
         __tmp149431
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args139088%_
        (apply make-instance gxc#meta-state-block::t _%$args139088%_)))
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
      (lambda (_%state139047%_ _%phi139048%_)
        (let* ((_%state139049139057%_ _%state139047%_)
               (_%E139051139061%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state139049139057%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K139052139070%_
                (lambda (_%open139064%_ _%n139065%_ _%src139066%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open139064%_ _%phi139048%_))
                      '#f
                      (let ((_%block-ref139068%_
                             (let ((__tmp149433 (number->string _%n139065%_)))
                               (declare (not safe))
                               (##string-append
                                _%src139066%_
                                '"~"
                                __tmp149433))))
                        (##structure-set!
                         _%state139047%_
                         (let () (declare (not safe)) (##fx+ _%n139065%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp149434
                               (let ((__tmp149435
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp149435
                                  _%phi139048%_
                                  _%n139065%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open139064%_ _%phi139048%_ __tmp149434))
                        _%block-ref139068%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state139049139057%_
                 'gxc#meta-state::t))
              (let* ((_%e139053139073%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139049139057%_
                         '1
                         '#f
                         '#f)))
                     (_%src139076%_ _%e139053139073%_)
                     (_%e139054139078%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139049139057%_
                         '2
                         '#f
                         '#f)))
                     (_%n139081%_ _%e139054139078%_)
                     (_%e139055139083%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139049139057%_
                         '3
                         '#f
                         '#f)))
                     (_%open139086%_ _%e139055139083%_))
                (_%K139052139070%_ _%open139086%_ _%n139081%_ _%src139076%_))
              (_%E139051139061%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state139041%_ _%phi139042%_ _%stx139043%_)
        (let ((_%block139045%_
               (let ((__tmp149436
                      (##structure-ref
                       _%state139041%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp149436 _%phi139042%_))))
          (##structure-set!
           _%block139045%_
           (cons _%stx139043%_
                 (##structure-ref
                  _%block139045%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state139035%_)
        (##structure-set!
         _%state139035%_
         (let ((__tmp149439
                (lambda (_%_139037%_ _%block139038%_ _%r139039%_)
                  (cons _%block139038%_ _%r139039%_)))
               (__tmp149438
                (##structure-ref _%state139035%_ '4 gxc#meta-state::t '#f))
               (__tmp149437
                (##structure-ref _%state139035%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp149439 __tmp149438 __tmp149437))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state139035%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state138987%_)
        (gxc#meta-state-end-phi! _%state138987%_)
        (let ((__tmp149441
               (lambda (_%block138989%_ _%r138990%_)
                 (let* ((_%block138991139000%_ _%block138989%_)
                        (_%E138993139004%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block138991139000%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K138994139012%_
                         (lambda (_%code139007%_
                                  _%n139008%_
                                  _%phi139009%_
                                  _%ctx139010%_)
                           (if (null? _%code139007%_)
                               _%r138990%_
                               (cons (cons _%ctx139010%_
                                           (cons _%phi139009%_
                                                 (cons _%n139008%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code139007%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r138990%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block138991139000%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e138995139015%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138991139000%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx139018%_ _%e138995139015%_)
                              (_%e138996139020%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138991139000%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi139023%_ _%e138996139020%_)
                              (_%e138997139025%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138991139000%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n139028%_ _%e138997139025%_)
                              (_%e138998139030%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138991139000%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code139033%_ _%e138998139030%_))
                         (_%K138994139012%_
                          _%code139033%_
                          _%n139028%_
                          _%phi139023%_
                          _%ctx139018%_))
                       (_%E138993139004%_)))))
              (__tmp149440
               (##structure-ref _%state138987%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp149441 '() __tmp149440))))
    (define gxc#collect-expression-refs
      (lambda (_%stx138983%_)
        (let ((_%ht138985%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht138985%_ _%stx138983%_)
          _%ht138985%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self138926%_ _%stx138927%_)
        (let* ((_%g138929138942%_
                (lambda (_%g138930138939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138930138939%_))))
               (_%g138928138980%_
                (lambda (_%g138930138945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138930138945%_))
                      (let ((_%e138932138947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138930138945%_))))
                        (let ((_%hd138933138950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138932138947%_)))
                              (_%tl138934138952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138932138947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138934138952%_))
                              (let ((_%e138935138955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138934138952%_))))
                                (let ((_%hd138936138958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138935138955%_)))
                                      (_%tl138937138960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138935138955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138937138960%_))
                                      ((lambda (_%L138963%_)
                                         (let* ((_%bind138975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L138963%_)))
                                                (_%eid138977%_
                                                 (if _%bind138975%_
                                                     (##structure-ref
                                                      _%bind138975%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L138963%_))))
                                                (__tmp149442
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self138926%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp149442
                                            _%eid138977%_
                                            _%eid138977%_)))
                                       _%hd138936138958%_)
                                      (_%g138929138942%_ _%g138930138945%_))))
                              (_%g138929138942%_ _%g138930138945%_))))
                      (_%g138929138942%_ _%g138930138945%_)))))
          (_%g138928138980%_ _%stx138927%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self138853%_ _%stx138854%_)
        (let* ((_%g138856138873%_
                (lambda (_%g138857138870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138857138870%_))))
               (_%g138855138923%_
                (lambda (_%g138857138876%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138857138876%_))
                      (let ((_%e138860138878%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138857138876%_))))
                        (let ((_%hd138861138881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138860138878%_)))
                              (_%tl138862138883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138860138878%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138862138883%_))
                              (let ((_%e138863138886%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138862138883%_))))
                                (let ((_%hd138864138889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138863138886%_)))
                                      (_%tl138865138891%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138863138886%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138865138891%_))
                                      (let ((_%e138866138894%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138865138891%_))))
                                        (let ((_%hd138867138897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138866138894%_)))
                                              (_%tl138868138899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138866138894%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138868138899%_))
                                              ((lambda (_%L138902%_
                                                        _%L138903%_)
                                                 (let* ((_%bind138918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L138903%_)))
                                                        (_%eid138920%_
                                                         (if _%bind138918%_
                                                             (##structure-ref
                                                              _%bind138918%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138903%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp149443
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self138853%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp149443
                                                      _%eid138920%_
                                                      _%eid138920%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self138853%_
                                                      _%L138902%_))))
                                               _%hd138867138897%_
                                               _%hd138864138889%_)
                                              (_%g138856138873%_
                                               _%g138857138876%_))))
                                      (_%g138856138873%_ _%g138857138876%_))))
                              (_%g138856138873%_ _%g138857138876%_))))
                      (_%g138856138873%_ _%g138857138876%_)))))
          (_%g138855138923%_ _%stx138854%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self138810%_ _%stx138811%_)
        (let* ((_%g138813138823%_
                (lambda (_%g138814138820%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138814138820%_))))
               (_%g138812138850%_
                (lambda (_%g138814138826%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138814138826%_))
                      (let ((_%e138816138828%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138814138826%_))))
                        (let ((_%hd138817138831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138816138828%_)))
                              (_%tl138818138833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138816138828%_))))
                          ((lambda (_%L138836%_)
                             (let ((__tmp149444
                                    (lambda (_%g138845138847%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self138810%_
                                         _%g138845138847%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp149444 _%L138836%_)))
                           _%tl138818138833%_)))
                      (_%g138813138823%_ _%g138814138826%_)))))
          (_%g138812138850%_ _%stx138811%_))))
    (define gxc#count-values-single%
      (lambda (_%self138807%_ _%stx138808%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self138673%_ _%stx138674%_)
        (let* ((_%__stx149187149188%_ _%stx138674%_)
               (_%g138677138706%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149187149188%_)))))
          (let ((_%__kont149189149190%_
                 (lambda (_%L138774%_ _%L138775%_)
                   (length (let ((__tmp149445
                                  (lambda (_%g138796138799%_ _%g138797138801%_)
                                    (cons _%g138796138799%_
                                          _%g138797138801%_))))
                             (declare (not safe))
                             (__foldr1 __tmp149445 '() _%L138774%_)))))
                (_%__kont149193149194%_ (lambda () '#f)))
            (let ((_%__match149232149233%_
                   (lambda (_%e138681138718%_
                            _%hd138682138721%_
                            _%tl138683138723%_
                            _%e138684138726%_
                            _%hd138685138729%_
                            _%tl138686138731%_
                            _%e138687138734%_
                            _%hd138688138737%_
                            _%tl138689138739%_
                            _%e138690138742%_
                            _%hd138691138745%_
                            _%tl138692138747%_
                            _%__splice149191149192%_
                            _%target138693138750%_
                            _%tl138695138752%_)
                     (letrec ((_%loop138696138755%_
                               (lambda (_%hd138694138758%_
                                        _%rand138700138760%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138694138758%_))
                                     (let ((_%e138697138763%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138694138758%_))))
                                       (let ((_%lp-tl138699138768%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138697138763%_)))
                                             (_%lp-hd138698138766%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138697138763%_))))
                                         (_%loop138696138755%_
                                          _%lp-tl138699138768%_
                                          (cons _%lp-hd138698138766%_
                                                _%rand138700138760%_))))
                                     (let ((_%rand138701138771%_
                                            (reverse _%rand138700138760%_)))
                                       (let ((_%L138774%_ _%rand138701138771%_)
                                             (_%L138775%_ _%hd138691138745%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L138775%_
                                                'values))
                                             (_%__kont149189149190%_
                                              _%L138774%_
                                              _%L138775%_)
                                             (_%__kont149193149194%_))))))))
                       (_%loop138696138755%_ _%target138693138750%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149187149188%_))
                  (let ((_%e138681138718%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149187149188%_))))
                    (let ((_%tl138683138723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138681138718%_)))
                          (_%hd138682138721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138681138718%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138683138723%_))
                          (let ((_%e138684138726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138683138723%_))))
                            (let ((_%tl138686138731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138684138726%_)))
                                  (_%hd138685138729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138684138726%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138685138729%_))
                                  (let ((_%e138687138734%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138685138729%_))))
                                    (let ((_%tl138689138739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138687138734%_)))
                                          (_%hd138688138737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138687138734%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138688138737%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138688138737%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138689138739%_))
                                                  (let ((_%e138690138742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138689138739%_))))
                                                    (let ((_%tl138692138747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138690138742%_)))
                                                          (_%hd138691138745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138690138742%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138692138747%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138686138731%_))
                      (let ((_%__splice149191149192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138686138731%_
                                '0))))
                        (let ((_%tl138695138752%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149191149192%_ '1)))
                              (_%target138693138750%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149191149192%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138695138752%_))
                              (_%__match149232149233%_
                               _%e138681138718%_
                               _%hd138682138721%_
                               _%tl138683138723%_
                               _%e138684138726%_
                               _%hd138685138729%_
                               _%tl138686138731%_
                               _%e138687138734%_
                               _%hd138688138737%_
                               _%tl138689138739%_
                               _%e138690138742%_
                               _%hd138691138745%_
                               _%tl138692138747%_
                               _%__splice149191149192%_
                               _%target138693138750%_
                               _%tl138695138752%_)
                              (_%__kont149193149194%_))))
                      (_%__kont149193149194%_))
                  (_%__kont149193149194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149193149194%_))
                                              (_%__kont149193149194%_))
                                          (_%__kont149193149194%_))))
                                  (_%__kont149193149194%_))))
                          (_%__kont149193149194%_))))
                  (_%__kont149193149194%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self138576%_ _%stx138577%_)
        (let* ((_%g138579138600%_
                (lambda (_%g138580138597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138580138597%_))))
               (_%g138578138670%_
                (lambda (_%g138580138603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138580138603%_))
                      (let ((_%e138584138605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138580138603%_))))
                        (let ((_%hd138585138608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138584138605%_)))
                              (_%tl138586138610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138584138605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138586138610%_))
                              (let ((_%e138587138613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138586138610%_))))
                                (let ((_%hd138588138616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138587138613%_)))
                                      (_%tl138589138618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138587138613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138589138618%_))
                                      (let ((_%e138590138621%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138589138618%_))))
                                        (let ((_%hd138591138624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138590138621%_)))
                                              (_%tl138592138626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138590138621%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138592138626%_))
                                              (let ((_%e138593138629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138592138626%_))))
                                                (let ((_%hd138594138632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138593138629%_)))
                                                      (_%tl138595138634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138593138629%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138595138634%_))
                                                      ((lambda (_%L138637%_
                                                                _%L138638%_
                                                                _%L138639%_)
                                                         (let ((_%c1138656138658%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self138576%_ _%L138638%_))))
                   (if _%c1138656138658%_
                       (let* ((_%c1138661%_ _%c1138656138658%_)
                              (_%c2138662138664%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self138576%_
                                  _%L138637%_))))
                         (if _%c2138662138664%_
                             (let ((_%c2138667%_ _%c2138662138664%_))
                               (if (fx= _%c1138661%_ _%c2138667%_)
                                   _%c1138661%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd138594138632%_
               _%hd138591138624%_
               _%hd138588138616%_)
              (_%g138579138600%_ _%g138580138603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138579138600%_
                                               _%g138580138603%_))))
                                      (_%g138579138600%_ _%g138580138603%_))))
                              (_%g138579138600%_ _%g138580138603%_))))
                      (_%g138579138600%_ _%g138580138603%_)))))
          (_%g138578138670%_ _%stx138577%_))))))
