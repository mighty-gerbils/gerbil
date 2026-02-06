(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770342549)
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
      (let ((__tmp195246 (list gxc#::void::t))
            (__tmp195245 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp195246
         '()
         __tmp195245
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args193860%_
        (apply make-instance gxc#::collect-bindings::t _%$args193860%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp195247
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
        (__make-atomic-promise __tmp195247)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx193852%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self193855%_
                (let ((__obj195221
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj195221))
               (__tmp195248
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193855%_ _%stx193852%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195248
           gxc#current-compile-method
           _%self193855%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp195250 (list gxc#::void::t))
            (__tmp195249 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp195250
         '(modules)
         __tmp195249
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args193849%_
        (apply make-instance gxc#::lift-modules::t _%$args193849%_)))
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
      (let ((__tmp195251
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
        (__make-atomic-promise __tmp195251)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords193824%_ _%modules193821193825%_ _%stx193826%_)
        (let ((_%modules193829%_
               (if (eq? _%modules193821193825%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules193821193825%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self193831%_
                  (let ((__obj195223
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj195223
                       _%modules193829%_
                       '1
                       '#f
                       '#f))
                    __obj195223))
                 (__tmp195252
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self193831%_ _%stx193826%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp195252
             gxc#current-compile-method
             _%self193831%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords193838%_ . _%args193839%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords193838%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193838%_
                  'modules:
                  absent-value))
               _%args193839%_)))
    (define gxc#apply-lift-modules
      (lambda _%args193822193845%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args193822193845%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp195254 (list)) (__tmp195253 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp195254
         '()
         __tmp195253
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args193817%_
        (apply make-instance gxc#::find-runtime-code::t _%$args193817%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp195255
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
        (__make-atomic-promise __tmp195255)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx193809%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self193812%_
                (let ((__obj195225
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj195225))
               (__tmp195256
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193812%_ _%stx193809%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195256
           gxc#current-compile-method
           _%self193812%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp195258 (list gxc#::false::t))
            (__tmp195257 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp195258
         '()
         __tmp195257
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args193806%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args193806%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp195259
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
        (__make-atomic-promise __tmp195259)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx193798%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self193801%_
                (let ((__obj195227
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj195227))
               (__tmp195260
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193801%_ _%stx193798%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195260
           gxc#current-compile-method
           _%self193801%_))))
    (define gxc#::count-values::t
      (let ((__tmp195262 (list gxc#::false-expression::t))
            (__tmp195261 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp195262
         '()
         __tmp195261
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args193795%_
        (apply make-instance gxc#::count-values::t _%$args193795%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp195263
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
        (__make-atomic-promise __tmp195263)))
    (define gxc#apply-count-values
      (lambda (_%stx193787%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self193790%_
                (let ((__obj195229
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj195229))
               (__tmp195264
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193790%_ _%stx193787%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195264
           gxc#current-compile-method
           _%self193790%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp195265 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp195265
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args193784%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args193784%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp195266
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
        (__make-atomic-promise __tmp195266)))
    (define gxc#::generate-loader::t
      (let ((__tmp195268 (list gxc#::generate-runtime-empty::t))
            (__tmp195267 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp195268
         '()
         __tmp195267
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args193780%_
        (apply make-instance gxc#::generate-loader::t _%$args193780%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp195269
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
        (__make-atomic-promise __tmp195269)))
    (define gxc#apply-generate-loader
      (lambda (_%stx193772%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self193775%_
                (let ((__obj195232
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj195232))
               (__tmp195270
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193775%_ _%stx193772%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195270
           gxc#current-compile-method
           _%self193775%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp195271 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp195271
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args193769%_
        (apply make-instance gxc#::generate-runtime::t _%$args193769%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp195272
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
        (__make-atomic-promise __tmp195272)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx193761%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self193764%_
                (let ((__obj195234
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj195234))
               (__tmp195273
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193764%_ _%stx193761%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195273
           gxc#current-compile-method
           _%self193764%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp195275 (list gxc#::generate-runtime::t))
            (__tmp195274 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp195275
         '()
         __tmp195274
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args193758%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args193758%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp195276
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
        (__make-atomic-promise __tmp195276)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx193750%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self193753%_
                (let ((__obj195236
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj195236))
               (__tmp195277
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193753%_ _%stx193750%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195277
           gxc#current-compile-method
           _%self193753%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp195278 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp195278
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args193747%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args193747%_)))
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
      (let ((__tmp195279
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
        (__make-atomic-promise __tmp195279)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords193722%_ _%table193719193723%_ _%stx193724%_)
        (let ((_%table193727%_
               (if (eq? _%table193719193723%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table193719193723%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self193729%_
                  (let ((__obj195238
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj195238
                       _%table193727%_
                       '1
                       '#f
                       '#f))
                    __obj195238))
                 (__tmp195280
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self193729%_ _%stx193724%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp195280
             gxc#current-compile-method
             _%self193729%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords193736%_ . _%args193737%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords193736%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193736%_
                  'table:
                  absent-value))
               _%args193737%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args193720193743%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args193720193743%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp195282 (list gxc#::void-expression::t))
            (__tmp195281 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp195282
         '(state)
         __tmp195281
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args193715%_
        (apply make-instance gxc#::generate-meta::t _%$args193715%_)))
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
      (let ((__tmp195283
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
        (__make-atomic-promise __tmp195283)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords193690%_ _%state193687193691%_ _%stx193692%_)
        (let ((_%state193695%_
               (if (eq? _%state193687193691%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state193687193691%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self193697%_
                  (let ((__obj195240
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj195240
                       _%state193695%_
                       '1
                       '#f
                       '#f))
                    __obj195240))
                 (__tmp195284
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self193697%_ _%stx193692%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp195284
             gxc#current-compile-method
             _%self193697%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords193704%_ . _%args193705%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords193704%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193704%_
                  'state:
                  absent-value))
               _%args193705%_)))
    (define gxc#apply-generate-meta
      (lambda _%args193688193711%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args193688193711%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp195286 (list)) (__tmp195285 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp195286
         '(state)
         __tmp195285
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args193683%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args193683%_)))
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
      (let ((__tmp195287
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
        (__make-atomic-promise __tmp195287)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords193658%_ _%state193655193659%_ _%stx193660%_)
        (let ((_%state193663%_
               (if (eq? _%state193655193659%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state193655193659%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self193665%_
                  (let ((__obj195242
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj195242
                       _%state193663%_
                       '1
                       '#f
                       '#f))
                    __obj195242))
                 (__tmp195288
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self193665%_ _%stx193660%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp195288
             gxc#current-compile-method
             _%self193665%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords193672%_ . _%args193673%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords193672%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193672%_
                  'state:
                  absent-value))
               _%args193673%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args193656193679%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args193656193679%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self193584%_ _%stx193585%_)
        (let* ((_%g193587193604%_
                (lambda (_%g193588193601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193588193601%_))))
               (_%g193586193651%_
                (lambda (_%g193588193607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193588193607%_))
                      (let ((_%e193591193609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193588193607%_))))
                        (let ((_%hd193592193612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193591193609%_)))
                              (_%tl193593193614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193591193609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193593193614%_))
                              (let ((_%e193594193617%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193593193614%_))))
                                (let ((_%hd193595193620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193594193617%_)))
                                      (_%tl193596193622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193594193617%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193596193622%_))
                                      (let ((_%e193597193625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193596193622%_))))
                                        (let ((_%hd193598193628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193597193625%_)))
                                              (_%tl193599193630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193597193625%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193599193630%_))
                                              ((lambda (_%g193589193633%_
                                                        _%g193590193634%_)
                                                 (let ((__tmp195289
                                                        (lambda (_%bind193649%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind193649%_))
                      (gxc#add-module-binding! _%bind193649%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp195289
                                                    _%g193590193634%_)))
                                               _%hd193598193628%_
                                               _%hd193595193620%_)
                                              (_%g193587193604%_
                                               _%g193588193607%_))))
                                      (_%g193587193604%_ _%g193588193607%_))))
                              (_%g193587193604%_ _%g193588193607%_))))
                      (_%g193587193604%_ _%g193588193607%_)))))
          (_%g193586193651%_ _%stx193585%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self193516%_ _%stx193517%_)
        (let* ((_%g193519193536%_
                (lambda (_%g193520193533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193520193533%_))))
               (_%g193518193581%_
                (lambda (_%g193520193539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193520193539%_))
                      (let ((_%e193523193541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193520193539%_))))
                        (let ((_%hd193524193544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193523193541%_)))
                              (_%tl193525193546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193523193541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193525193546%_))
                              (let ((_%e193526193549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193525193546%_))))
                                (let ((_%hd193527193552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193526193549%_)))
                                      (_%tl193528193554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193526193549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193528193554%_))
                                      (let ((_%e193529193557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193528193554%_))))
                                        (let ((_%hd193530193560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193529193557%_)))
                                              (_%tl193531193562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193529193557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193531193562%_))
                                              ((lambda (_%g193521193565%_
                                                        _%g193522193566%_)
                                                 (gxc#add-module-binding!
                                                  _%g193522193566%_
                                                  '#t))
                                               _%hd193530193560%_
                                               _%hd193527193552%_)
                                              (_%g193519193536%_
                                               _%g193520193539%_))))
                                      (_%g193519193536%_ _%g193520193539%_))))
                              (_%g193519193536%_ _%g193520193539%_))))
                      (_%g193519193536%_ _%g193520193539%_)))))
          (_%g193518193581%_ _%stx193517%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self193458%_ _%stx193459%_)
        (let* ((_%g193461193475%_
                (lambda (_%g193462193472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193462193472%_))))
               (_%g193460193513%_
                (lambda (_%g193462193478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193462193478%_))
                      (let ((_%e193465193480%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193462193478%_))))
                        (let ((_%hd193466193483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193465193480%_)))
                              (_%tl193467193485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193465193480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193467193485%_))
                              (let ((_%e193468193488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193467193485%_))))
                                (let ((_%hd193469193491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193468193488%_)))
                                      (_%tl193470193493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193468193488%_))))
                                  ((lambda (_%g193463193496%_
                                            _%g193464193497%_)
                                     (let ((_%ctx193510%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g193464193497%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self193458%_
                                           'modules))
                                        (cons _%ctx193510%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self193458%_
                                                        'modules)))))
                                       (let ((__tmp195290
                                              (lambda ()
                                                (let ((__tmp195291
                                                       (##structure-ref
                                                        _%ctx193510%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self193458%_
                                                   __tmp195291)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp195290
                                          gx#current-expander-context
                                          _%ctx193510%_))))
                                   _%tl193470193493%_
                                   _%hd193469193491%_)))
                              (_%g193461193475%_ _%g193462193478%_))))
                      (_%g193461193475%_ _%g193462193478%_)))))
          (_%g193460193513%_ _%stx193459%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls193412193414%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls193412193414%_
              (let ((_%decls193416%_ _%decls193412193414%_))
                (let _%lp193418%_ ((_%rest193420%_ _%decls193416%_))
                  (let* ((_%rest193421193429%_ _%rest193420%_)
                         (_%else193423193437%_ (lambda () '#f))
                         (_%K193425193446%_
                          (lambda (_%decls193440%_ _%decl193441%_)
                            (if (equal? _%decl193441%_ '(not safe))
                                '#t
                                (if (equal? _%decl193441%_ '(safe))
                                    '#f
                                    (_%lp193418%_ _%decls193440%_))))))
                    (if (pair? _%rest193421193429%_)
                        (let ((_%hd193426193449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest193421193429%_)))
                              (_%tl193427193451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest193421193429%_))))
                          (let* ((_%decl193454%_ _%hd193426193449%_)
                                 (_%decls193456%_ _%tl193427193451%_))
                            (_%K193425193446%_
                             _%decls193456%_
                             _%decl193454%_)))
                        (_%else193423193437%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id193406%_ _%syntax?193407%_)
        (let ((_%eid193409%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id193406%_))
                '1
                gx#binding::t
                '#f))
              (_%ht193410%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid193409%_))
              '#!void
              (let ((__tmp195292
                     (let ((__tmp195293
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid193409%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp195293 _%syntax?193407%_))))
                (declare (not safe))
                (hash-put! _%ht193410%_ _%eid193409%_ __tmp195292))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self193403%_ _%stx193404%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self193250%_ _%stx193251%_)
        (letrec ((_%simplify193253%_
                  (lambda (_%body193301%_)
                    (let _%lp193303%_ ((_%rest193305%_ _%body193301%_)
                                       (_%r193306%_ '()))
                      (let* ((_%rest193307193315%_ _%rest193305%_)
                             (_%else193309193323%_
                              (lambda () (reverse _%r193306%_)))
                             (_%K193311193391%_
                              (lambda (_%rest193326%_ _%hd193327%_)
                                (let* ((_%hd193328193344%_ _%hd193327%_)
                                       (_%else193332193352%_
                                        (lambda ()
                                          (_%lp193303%_
                                           _%rest193326%_
                                           (cons _%hd193327%_ _%r193306%_)))))
                                  (let ((_%K193340193381%_
                                         (lambda (_%exprs193379%_)
                                           (_%lp193303%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest193326%_
                                               _%exprs193379%_))
                                            _%r193306%_)))
                                        (_%K193335193365%_
                                         (lambda ()
                                           (if (null? _%rest193326%_)
                                               (_%lp193303%_
                                                _%rest193326%_
                                                (cons _%hd193327%_
                                                      _%r193306%_))
                                               (_%lp193303%_
                                                _%rest193326%_
                                                _%r193306%_))))
                                        (_%K193334193357%_
                                         (lambda ()
                                           (if (null? _%rest193326%_)
                                               (_%lp193303%_
                                                _%rest193326%_
                                                (cons _%hd193327%_
                                                      _%r193306%_))
                                               (_%lp193303%_
                                                _%rest193326%_
                                                _%r193306%_)))))
                                    (let ((_%try-match193331193360%_
                                           (lambda ()
                                             (if (symbol? _%hd193328193344%_)
                                                 (_%K193334193357%_)
                                                 (_%else193332193352%_)))))
                                      (if (pair? _%hd193328193344%_)
                                          (let ((_%tl193342193386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd193328193344%_)))
                                                (_%hd193341193384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd193328193344%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd193341193384%_
                                                         'begin))
                                                (let ((_%exprs193389%_
                                                       _%tl193342193386%_))
                                                  (_%K193340193381%_
                                                   _%exprs193389%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd193341193384%_
                                                             'quote))
                                                    (if (pair? _%tl193342193386%_)
                                                        (let ((_%tl193339193373%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl193342193386%_))))
                  (if (null? _%tl193339193373%_)
                      (_%K193335193365%_)
                      (_%try-match193331193360%_)))
                (_%try-match193331193360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match193331193360%_))))
                                          (_%try-match193331193360%_))))))))
                        (if (pair? _%rest193307193315%_)
                            (let ((_%hd193312193394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest193307193315%_)))
                                  (_%tl193313193396%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest193307193315%_))))
                              (let* ((_%hd193399%_ _%hd193312193394%_)
                                     (_%rest193401%_ _%tl193313193396%_))
                                (_%K193311193391%_
                                 _%rest193401%_
                                 _%hd193399%_)))
                            (_%else193309193323%_)))))))
          (let* ((_%g193255193265%_
                  (lambda (_%g193256193262%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193256193262%_))))
                 (_%g193254193298%_
                  (lambda (_%g193256193268%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193256193268%_))
                        (let ((_%e193258193270%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193256193268%_))))
                          (let ((_%hd193259193273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193258193270%_)))
                                (_%tl193260193275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193258193270%_))))
                            ((lambda (_%g193257193278%_)
                               (let* ((_%body193293%_
                                       (map (lambda (_%g193288193290%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self193250%_
                                                 _%g193288193290%_)))
                                            _%g193257193278%_))
                                      (_%body193295%_
                                       (_%simplify193253%_ _%body193293%_)))
                                 (if (let ((__tmp195294
                                            (length _%body193295%_)))
                                       (declare (not safe))
                                       (##fx= __tmp195294 '1))
                                     (car _%body193295%_)
                                     (cons 'begin _%body193295%_))))
                             _%tl193260193275%_)))
                        (_%g193255193265%_ _%g193256193268%_)))))
            (_%g193254193298%_ _%stx193251%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self193211%_ _%stx193212%_)
        (let* ((_%g193214193224%_
                (lambda (_%g193215193221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193215193221%_))))
               (_%g193213193247%_
                (lambda (_%g193215193227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193215193227%_))
                      (let ((_%e193217193229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193215193227%_))))
                        (let ((_%hd193218193232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193217193229%_)))
                              (_%tl193219193234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193217193229%_))))
                          ((lambda (_%g193216193237%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g193216193237%_))))
                           _%tl193219193234%_)))
                      (_%g193214193224%_ _%g193215193227%_)))))
          (_%g193213193247%_ _%stx193212%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self192977%_ _%stx192978%_)
        (let* ((_%__stx193884193885%_ _%stx192978%_)
               (_%g192982193034%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193884193885%_)))))
          (let ((_%__kont193886193887%_
                 (lambda (_%g192984193193%_ _%g192985193194%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self192977%_ _%g192984193193%_))))
                (_%__kont193888193889%_
                 (lambda (_%g192995193141%_
                          _%g192996193142%_
                          _%g192997193143%_)
                   (if (let ((__tmp195295
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g192997193143%_))))
                         (declare (not safe))
                         (##memq __tmp195295 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self192977%_
                          _%g192995193141%_)))))
                (_%__kont193892193893%_
                 (lambda (_%g193019193063%_ _%g193020193064%_)
                   (let ((_%decls193079%_
                          (map gx#syntax->datum _%g193020193064%_)))
                     (let ((__tmp195298
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls193079%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self192977%_
                                                   _%g193019193063%_))
                                                '())))))
                           (__tmp195296
                            (let ((__tmp195297
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp195297 _%decls193079%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp195298
                        gxc#current-compile-decls
                        __tmp195296))))))
            (let* ((_%__match193939193940%_
                    (lambda (_%e192998193087%_
                             _%hd192999193090%_
                             _%tl193000193092%_
                             _%e193001193095%_
                             _%hd193002193098%_
                             _%tl193003193100%_
                             _%e193004193103%_
                             _%hd193005193106%_
                             _%tl193006193108%_
                             _%__splice193890193891%_
                             _%target193007193111%_
                             _%tl193009193113%_)
                      (letrec ((_%loop193010193116%_
                                (lambda (_%hd193008193119%_
                                         _%param193014193121%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193008193119%_))
                                      (let ((_%e193011193123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd193008193119%_))))
                                        (let ((_%lp-tl193013193128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193011193123%_)))
                                              (_%lp-hd193012193126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193011193123%_))))
                                          (_%loop193010193116%_
                                           _%lp-tl193013193128%_
                                           (cons _%lp-hd193012193126%_
                                                 _%param193014193121%_))))
                                      (let ((_%param193015193131%_
                                             (reverse _%param193014193121%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193003193100%_))
                                            (let ((_%e193016193133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193003193100%_))))
                                              (let ((_%tl193018193138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193016193133%_)))
                                                    (_%hd193017193136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193016193133%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193018193138%_))
                                                    (let ((_%g192995193141%_
                                                           _%hd193017193136%_)
                                                          (_%g192996193142%_
                                                           _%param193015193131%_)
                                                          (_%g192997193143%_
                                                           _%hd193005193106%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g192997193143%_))
                       (not (let ((__tmp195299
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g192997193143%_))))
                              (declare (not safe))
                              (##memq __tmp195299 gxc#gambit-annotations))))
                  (_%__kont193888193889%_
                   _%g192995193141%_
                   _%g192996193142%_
                   _%g192997193143%_)
                  (_%__kont193892193893%_
                   _%hd193017193136%_
                   _%hd193002193098%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192982193034%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192982193034%_))))))))
                        (_%loop193010193116%_ _%target193007193111%_ '()))))
                   (_%__match193913193914%_
                    (lambda (_%e192986193169%_
                             _%hd192987193172%_
                             _%tl192988193174%_
                             _%e192989193177%_
                             _%hd192990193180%_
                             _%tl192991193182%_
                             _%e192992193185%_
                             _%hd192993193188%_
                             _%tl192994193190%_)
                      (let ((_%g192984193193%_ _%hd192993193188%_)
                            (_%g192985193194%_ _%hd192990193180%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g192985193194%_))
                            (_%__kont193886193887%_
                             _%g192984193193%_
                             _%g192985193194%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd192990193180%_))
                                (let ((_%e193004193103%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd192990193180%_))))
                                  (let ((_%tl193006193108%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193004193103%_)))
                                        (_%hd193005193106%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193004193103%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl193006193108%_))
                                        (let ((_%__splice193890193891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl193006193108%_
                                                  '0))))
                                          (let ((_%tl193009193113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193890193891%_
                                                    '1)))
                                                (_%target193007193111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193890193891%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193009193113%_))
                                                (_%__match193939193940%_
                                                 _%e192986193169%_
                                                 _%hd192987193172%_
                                                 _%tl192988193174%_
                                                 _%e192989193177%_
                                                 _%hd192990193180%_
                                                 _%tl192991193182%_
                                                 _%e193004193103%_
                                                 _%hd193005193106%_
                                                 _%tl193006193108%_
                                                 _%__splice193890193891%_
                                                 _%target193007193111%_
                                                 _%tl193009193113%_)
                                                (_%__kont193892193893%_
                                                 _%hd192993193188%_
                                                 _%hd192990193180%_))))
                                        (_%__kont193892193893%_
                                         _%hd192993193188%_
                                         _%hd192990193180%_))))
                                (_%__kont193892193893%_
                                 _%hd192993193188%_
                                 _%hd192990193180%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193884193885%_))
                  (let ((_%e192986193169%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193884193885%_))))
                    (let ((_%tl192988193174%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192986193169%_)))
                          (_%hd192987193172%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192986193169%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192988193174%_))
                          (let ((_%e192989193177%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192988193174%_))))
                            (let ((_%tl192991193182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192989193177%_)))
                                  (_%hd192990193180%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192989193177%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192991193182%_))
                                  (let ((_%e192992193185%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192991193182%_))))
                                    (let ((_%tl192994193190%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192992193185%_)))
                                          (_%hd192993193188%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192992193185%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192994193190%_))
                                          (_%__match193913193914%_
                                           _%e192986193169%_
                                           _%hd192987193172%_
                                           _%tl192988193174%_
                                           _%e192989193177%_
                                           _%hd192990193180%_
                                           _%tl192991193182%_
                                           _%e192992193185%_
                                           _%hd192993193188%_
                                           _%tl192994193190%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd192990193180%_))
                                              (let ((_%e193004193103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd192990193180%_))))
                                                (let ((_%tl193006193108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193004193103%_)))
                                                      (_%hd193005193106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193004193103%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl193006193108%_))
                                                      (let ((_%__splice193890193891%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl193006193108%_
                        '0))))
                (let ((_%tl193009193113%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice193890193891%_ '1)))
                      (_%target193007193111%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice193890193891%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193009193113%_))
                      (_%__match193939193940%_
                       _%e192986193169%_
                       _%hd192987193172%_
                       _%tl192988193174%_
                       _%e192989193177%_
                       _%hd192990193180%_
                       _%tl192991193182%_
                       _%e193004193103%_
                       _%hd193005193106%_
                       _%tl193006193108%_
                       _%__splice193890193891%_
                       _%target193007193111%_
                       _%tl193009193113%_)
                      (let () (declare (not safe)) (_%g192982193034%_)))))
              (let () (declare (not safe)) (_%g192982193034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g192982193034%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd192990193180%_))
                                      (let ((_%e193004193103%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd192990193180%_))))
                                        (let ((_%tl193006193108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193004193103%_)))
                                              (_%hd193005193106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193004193103%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl193006193108%_))
                                              (let ((_%__splice193890193891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl193006193108%_
                                                        '0))))
                                                (let ((_%tl193009193113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice193890193891%_
                                                          '1)))
                                                      (_%target193007193111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice193890193891%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193009193113%_))
                                                      (_%__match193939193940%_
                                                       _%e192986193169%_
                                                       _%hd192987193172%_
                                                       _%tl192988193174%_
                                                       _%e192989193177%_
                                                       _%hd192990193180%_
                                                       _%tl192991193182%_
                                                       _%e193004193103%_
                                                       _%hd193005193106%_
                                                       _%tl193006193108%_
                                                       _%__splice193890193891%_
                                                       _%target193007193111%_
                                                       _%tl193009193113%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192982193034%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192982193034%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192982193034%_))))))
                          (let () (declare (not safe)) (_%g192982193034%_)))))
                  (let () (declare (not safe)) (_%g192982193034%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self192936%_ _%stx192937%_)
        (let* ((_%g192939192949%_
                (lambda (_%g192940192946%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192940192946%_))))
               (_%g192938192974%_
                (lambda (_%g192940192952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192940192952%_))
                      (let ((_%e192942192954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192940192952%_))))
                        (let ((_%hd192943192957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192942192954%_)))
                              (_%tl192944192959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192942192954%_))))
                          ((lambda (_%g192941192962%_)
                             (let ((_%decls192972%_
                                    (map gx#syntax->datum _%g192941192962%_)))
                               (let ((__tmp195300
                                      (let ((__tmp195301
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195301
                                         _%decls192972%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp195300))
                               (cons 'declare _%decls192972%_)))
                           _%tl192944192959%_)))
                      (_%g192939192949%_ _%g192940192952%_)))))
          (_%g192938192974%_ _%stx192937%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self192683%_ _%stx192684%_)
        (let* ((_%g192686192703%_
                (lambda (_%g192687192700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192687192700%_))))
               (_%g192685192933%_
                (lambda (_%g192687192706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192687192706%_))
                      (let ((_%e192690192708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192687192706%_))))
                        (let ((_%hd192691192711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192690192708%_)))
                              (_%tl192692192713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192690192708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192692192713%_))
                              (let ((_%e192693192716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192692192713%_))))
                                (let ((_%hd192694192719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192693192716%_)))
                                      (_%tl192695192721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192693192716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192695192721%_))
                                      (let ((_%e192696192724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192695192721%_))))
                                        (let ((_%hd192697192727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192696192724%_)))
                                              (_%tl192698192729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192696192724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192698192729%_))
                                              ((lambda (_%g192688192732%_
                                                        _%g192689192733%_)
                                                 (let* ((_%__stx193992193993%_
                                                         _%g192689192733%_)
                                                        (_%g192750192764%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx193992193993%_)))))
                                                   (let ((_%__kont193994193995%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self192683%_
                                                               _%g192688192732%_))))
                                                         (_%__kont193996193997%_
                                                          (lambda (_%g192756192896%_)
                                                            (let ((_%eid192905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g192756192896%_))))
                      (let ((_%lambda-expr192906192908%_
                             (gxc#apply-find-lambda-expression
                              _%g192688192732%_)))
                        (if _%lambda-expr192906192908%_
                            (let* ((_%lambda-expr192910%_
                                    _%lambda-expr192906192908%_)
                                   (__tmp195302
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp195302
                               _%lambda-expr192910%_
                               _%eid192905%_))
                            '#f))
                      (cons 'define
                            (cons _%eid192905%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self192683%_
                                           _%g192688192732%_))
                                        '()))))))
                 (_%__kont193998193999%_
                  (lambda ()
                    (let* ((_%tmp192771%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body192880%_
                            (let _%lp192773%_ ((_%rest192775%_
                                                _%g192689192733%_)
                                               (_%k192776%_ '0)
                                               (_%r192777%_ '()))
                              (let* ((_%__stx193962193963%_ _%rest192775%_)
                                     (_%g192782192799%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx193962193963%_)))))
                                (let ((_%__kont193964193965%_
                                       (lambda (_%g192784192867%_)
                                         (_%lp192773%_
                                          _%g192784192867%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k192776%_ '1))
                                          _%r192777%_)))
                                      (_%__kont193966193967%_
                                       (lambda (_%g192789192840%_
                                                _%g192790192841%_)
                                         (_%lp192773%_
                                          _%g192789192840%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k192776%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g192790192841%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp192771%_
                           _%k192776%_
                           _%g192789192840%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r192777%_))))
                                      (_%__kont193968193969%_
                                       (lambda (_%g192794192811%_)
                                         (let ((__tmp195303
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g192794192811%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp192771%_
                                 _%k192776%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp195303
                                            _%r192777%_))))
                                      (_%__kont193970193971%_
                                       (lambda () (reverse _%r192777%_))))
                                  (let ((_%g192780192827%_
                                         (lambda ()
                                           (let ((_%g192794192811%_
                                                  _%__stx193962193963%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g192794192811%_))
                                                 (_%__kont193968193969%_
                                                  _%g192794192811%_)
                                                 (_%__kont193970193971%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx193962193963%_))
                                        (let ((_%e192785192856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx193962193963%_))))
                                          (let ((_%tl192787192861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192785192856%_)))
                                                (_%hd192786192859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192785192856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd192786192859%_))
                                                (let ((_%e192788192864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd192786192859%_))))
                                                  (if (equal? _%e192788192864%_
                                                              '#f)
                                                      (_%__kont193964193965%_
                                                       _%tl192787192861%_)
                                                      (_%__kont193966193967%_
                                                       _%tl192787192861%_
                                                       _%hd192786192859%_)))
                                                (_%__kont193966193967%_
                                                 _%tl192787192861%_
                                                 _%hd192786192859%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192780192827%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp192771%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self192683%_
                                                       _%g192688192732%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp192771%_
                                         _%g192689192733%_
                                         _%g192688192732%_)
                                        _%body192880%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx193992193993%_))
                                                         (let ((_%e192752192917%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx193992193993%_))))
                   (let ((_%tl192754192922%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e192752192917%_)))
                         (_%hd192753192920%_
                          (let ()
                            (declare (not safe))
                            (##car _%e192752192917%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd192753192920%_))
                         (let ((_%e192755192925%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd192753192920%_))))
                           (if (equal? _%e192755192925%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl192754192922%_))
                                   (_%__kont193994193995%_)
                                   (_%__kont193998193999%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl192754192922%_))
                                   (_%__kont193996193997%_ _%hd192753192920%_)
                                   (_%__kont193998193999%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl192754192922%_))
                             (_%__kont193996193997%_ _%hd192753192920%_)
                             (_%__kont193998193999%_)))))
                 (_%__kont193998193999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd192697192727%_
                                               _%hd192694192719%_)
                                              (_%g192686192703%_
                                               _%g192687192706%_))))
                                      (_%g192686192703%_ _%g192687192706%_))))
                              (_%g192686192703%_ _%g192687192706%_))))
                      (_%g192686192703%_ _%g192687192706%_)))))
          (_%g192685192933%_ _%stx192684%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals192658%_ _%hd192659%_ _%expr192660%_)
        (let ((_%$e192662%_ (gxc#apply-count-values _%expr192660%_)))
          (if _%$e192662%_
              ((lambda (_%count192665%_)
                 (let ((_%len192667%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd192659%_)))
                       (_%cmp192668%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd192659%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len192667%_ '0))
                           (_%cmp192668%_ _%count192665%_ _%len192667%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr192660%_
                          _%hd192659%_)))))
               _%$e192662%_)
              (let* ((_%len192674%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd192659%_)))
                     (_%cmp192676%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd192659%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg192678%_
                      (let ((__tmp195305
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd192659%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp195304 (number->string _%len192674%_)))
                        (declare (not safe))
                        (##string-append __tmp195305 __tmp195304 '" values")))
                     (_%count192680%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd192659%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len192674%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count192680%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals192658%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp192676%_
                                (cons _%count192680%_
                                      (cons _%len192674%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp192676%_
                                                        (cons _%count192680%_
                                                              (cons _%len192674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg192678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count192680%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var192653%_)
        (letrec ((_%generate-inline192655%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var192653%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var192653%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline192655%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline192655%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var192646%_ _%i192647%_ _%rest192648%_)
        (letrec ((_%generate-inline192650%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i192647%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest192648%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var192646%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var192646%_
                                                      (cons '0 '())))
                                          (cons _%var192646%_ '()))))
                        (cons '##values-ref
                              (cons _%var192646%_ (cons _%i192647%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline192650%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline192650%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var192640%_ _%i192641%_)
        (if (let () (declare (not safe)) (##fx= _%i192641%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var192640%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var192640%_ '()))
                                  (cons (cons 'list (cons _%var192640%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var192640%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var192640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var192640%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i192641%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var192640%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var192640%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var192640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var192640%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var192640%_ '()))
                                (cons _%i192641%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var192640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i192641%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self192572%_ _%stx192573%_)
        (let* ((_%g192575192592%_
                (lambda (_%g192576192589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192576192589%_))))
               (_%g192574192637%_
                (lambda (_%g192576192595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192576192595%_))
                      (let ((_%e192579192597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192576192595%_))))
                        (let ((_%hd192580192600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192579192597%_)))
                              (_%tl192581192602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192579192597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192581192602%_))
                              (let ((_%e192582192605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192581192602%_))))
                                (let ((_%hd192583192608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192582192605%_)))
                                      (_%tl192584192610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192582192605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192584192610%_))
                                      (let ((_%e192585192613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192584192610%_))))
                                        (let ((_%hd192586192616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192585192613%_)))
                                              (_%tl192587192618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192585192613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192587192618%_))
                                              ((lambda (_%g192577192621%_
                                                        _%g192578192622%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self192572%_
                                                  _%g192578192622%_
                                                  _%g192577192621%_))
                                               _%hd192586192616%_
                                               _%hd192583192608%_)
                                              (_%g192575192592%_
                                               _%g192576192595%_))))
                                      (_%g192575192592%_ _%g192576192595%_))))
                              (_%g192575192592%_ _%g192576192595%_))))
                      (_%g192575192592%_ _%g192576192595%_)))))
          (_%g192574192637%_ _%stx192573%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self192531%_ _%hd192532%_ _%body192533%_)
        (let* ((_%hd192535%_ (gxc#generate-runtime-lambda-head _%hd192532%_))
               (_%body192537%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self192531%_ _%body192533%_)))
               (_%body192569%_
                (let* ((_%body192538192546%_ _%body192537%_)
                       (_%else192540192554%_
                        (lambda () (cons _%body192537%_ '())))
                       (_%K192542192559%_
                        (lambda (_%exprs192557%_) _%exprs192557%_)))
                  (if (pair? _%body192538192546%_)
                      (let ((_%hd192543192562%_
                             (let ()
                               (declare (not safe))
                               (##car _%body192538192546%_)))
                            (_%tl192544192564%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body192538192546%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd192543192562%_ 'begin))
                            (let ((_%exprs192567%_ _%tl192544192564%_))
                              (_%K192542192559%_ _%exprs192567%_))
                            (_%else192540192554%_)))
                      (_%else192540192554%_)))))
          (cons 'lambda (cons _%hd192535%_ _%body192569%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd192529%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd192529%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self191086%_ _%stx191087%_)
        (letrec ((_%dispatch-case?191089%_
                  (lambda (_%hd191767%_ _%body191768%_)
                    (let* ((_%form191770%_
                            (cons _%hd191767%_ (cons _%body191768%_ '())))
                           (_%__stx194024194025%_ _%form191770%_)
                           (_%g191775191932%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx194024194025%_)))))
                      (let ((_%__kont194026194027%_
                             (lambda (_%g191777192449%_
                                      _%g191778192450%_
                                      _%g191779192451%_)
                               '#t))
                            (_%__kont194032194033%_
                             (lambda (_%g191822192241%_
                                      _%g191823192242%_
                                      _%g191824192243%_
                                      _%g191825192244%_
                                      _%g191826192245%_
                                      _%g191827192246%_)
                               '#t))
                            (_%__kont194038194039%_
                             (lambda (_%g191888192040%_
                                      _%g191889192041%_
                                      _%g191890192042%_
                                      _%g191891192043%_)
                               '#t))
                            (_%__kont194040194041%_ (lambda () '#f)))
                        (let* ((_%__match194165194166%_
                                (lambda (_%e191892191944%_
                                         _%hd191893191947%_
                                         _%tl191894191949%_
                                         _%e191895191952%_
                                         _%hd191896191955%_
                                         _%tl191897191957%_
                                         _%e191898191960%_
                                         _%hd191899191963%_
                                         _%tl191900191965%_
                                         _%e191901191968%_
                                         _%hd191902191971%_
                                         _%tl191903191973%_
                                         _%e191904191976%_
                                         _%hd191905191979%_
                                         _%tl191906191981%_
                                         _%e191907191984%_
                                         _%hd191908191987%_
                                         _%tl191909191989%_
                                         _%e191910191992%_
                                         _%hd191911191995%_
                                         _%tl191912191997%_
                                         _%e191913192000%_
                                         _%hd191914192003%_
                                         _%tl191915192005%_
                                         _%e191916192008%_
                                         _%hd191917192011%_
                                         _%tl191918192013%_
                                         _%e191919192016%_
                                         _%hd191920192019%_
                                         _%tl191921192021%_
                                         _%e191922192024%_
                                         _%hd191923192027%_
                                         _%tl191924192029%_
                                         _%e191925192032%_
                                         _%hd191926192035%_
                                         _%tl191927192037%_)
                                  (let ((_%g191888192040%_ _%hd191926192035%_)
                                        (_%g191889192041%_ _%hd191917192011%_)
                                        (_%g191890192042%_ _%hd191908191987%_)
                                        (_%g191891192043%_ _%hd191893191947%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g191891192043%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g191890192042%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g191891192043%_
                                                _%g191888192040%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g191889192041%_
                                                     _%g191891192043%_))))
                                        (_%__kont194038194039%_
                                         _%g191888192040%_
                                         _%g191889192041%_
                                         _%g191890192042%_
                                         _%g191891192043%_)
                                        (_%__kont194040194041%_)))))
                               (_%__match194137194138%_
                                (lambda (_%e191892191944%_
                                         _%hd191893191947%_
                                         _%tl191894191949%_
                                         _%e191895191952%_
                                         _%hd191896191955%_
                                         _%tl191897191957%_
                                         _%e191898191960%_
                                         _%hd191899191963%_
                                         _%tl191900191965%_
                                         _%e191901191968%_
                                         _%hd191902191971%_
                                         _%tl191903191973%_
                                         _%e191904191976%_
                                         _%hd191905191979%_
                                         _%tl191906191981%_
                                         _%e191907191984%_
                                         _%hd191908191987%_
                                         _%tl191909191989%_
                                         _%e191910191992%_
                                         _%hd191911191995%_
                                         _%tl191912191997%_
                                         _%e191913192000%_
                                         _%hd191914192003%_
                                         _%tl191915192005%_
                                         _%e191916192008%_
                                         _%hd191917192011%_
                                         _%tl191918192013%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191912191997%_))
                                      (let ((_%e191919192016%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191912191997%_))))
                                        (let ((_%tl191921192021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191919192016%_)))
                                              (_%hd191920192019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191919192016%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd191920192019%_))
                                              (let ((_%e191922192024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd191920192019%_))))
                                                (let ((_%tl191924192029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191922192024%_)))
                                                      (_%hd191923192027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191922192024%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd191923192027%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd191923192027%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191924192029%_))
                      (let ((_%e191925192032%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191924192029%_))))
                        (let ((_%tl191927192037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191925192032%_)))
                              (_%hd191926192035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191925192032%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191927192037%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191921192021%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191897191957%_))
                                      (_%__match194165194166%_
                                       _%e191892191944%_
                                       _%hd191893191947%_
                                       _%tl191894191949%_
                                       _%e191895191952%_
                                       _%hd191896191955%_
                                       _%tl191897191957%_
                                       _%e191898191960%_
                                       _%hd191899191963%_
                                       _%tl191900191965%_
                                       _%e191901191968%_
                                       _%hd191902191971%_
                                       _%tl191903191973%_
                                       _%e191904191976%_
                                       _%hd191905191979%_
                                       _%tl191906191981%_
                                       _%e191907191984%_
                                       _%hd191908191987%_
                                       _%tl191909191989%_
                                       _%e191910191992%_
                                       _%hd191911191995%_
                                       _%tl191912191997%_
                                       _%e191913192000%_
                                       _%hd191914192003%_
                                       _%tl191915192005%_
                                       _%e191916192008%_
                                       _%hd191917192011%_
                                       _%tl191918192013%_
                                       _%e191919192016%_
                                       _%hd191920192019%_
                                       _%tl191921192021%_
                                       _%e191922192024%_
                                       _%hd191923192027%_
                                       _%tl191924192029%_
                                       _%e191925192032%_
                                       _%hd191926192035%_
                                       _%tl191927192037%_)
                                      (_%__kont194040194041%_))
                                  (_%__kont194040194041%_))
                              (_%__kont194040194041%_))))
                      (_%__kont194040194041%_))
                  (_%__kont194040194041%_))
              (_%__kont194040194041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194040194041%_))))
                                      (_%__kont194040194041%_))))
                               (_%__match194067194068%_
                                (lambda (_%e191828192085%_
                                         _%hd191829192088%_
                                         _%tl191830192090%_
                                         _%__splice194034194035%_
                                         _%target191831192093%_
                                         _%tl191833192095%_)
                                  (letrec ((_%loop191834192098%_
                                            (lambda (_%hd191832192101%_
                                                     _%arg191838192103%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd191832192101%_))
                                                  (let ((_%e191835192105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd191832192101%_))))
                                                    (let ((_%lp-tl191837192110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191835192105%_)))
                                                          (_%lp-hd191836192108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191835192105%_))))
                                                      (_%loop191834192098%_
                                                       _%lp-tl191837192110%_
                                                       (cons _%lp-hd191836192108%_
                                                             _%arg191838192103%_))))
                                                  (let ((_%arg191839192113%_
                                                         (reverse _%arg191838192103%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl191830192090%_))
                                                        (let ((_%e191840192115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl191830192090%_))))
                  (let ((_%tl191842192120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191840192115%_)))
                        (_%hd191841192118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191840192115%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191841192118%_))
                        (let ((_%e191843192123%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd191841192118%_))))
                          (let ((_%tl191845192128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191843192123%_)))
                                (_%hd191844192126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191843192123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd191844192126%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd191844192126%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191845192128%_))
                                        (let ((_%e191846192131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191845192128%_))))
                                          (let ((_%tl191848192136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191846192131%_)))
                                                (_%hd191847192134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191846192131%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd191847192134%_))
                                                (let ((_%e191849192139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd191847192134%_))))
                                                  (let ((_%tl191851192144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191849192139%_)))
                                                        (_%hd191850192142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191849192139%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd191850192142%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd191850192142%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl191851192144%_))
                        (let ((_%e191852192147%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191851192144%_))))
                          (let ((_%tl191854192152%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191852192147%_)))
                                (_%hd191853192150%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191852192147%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191854192152%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191848192136%_))
                                    (let ((_%e191855192155%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191848192136%_))))
                                      (let ((_%tl191857192160%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191855192155%_)))
                                            (_%hd191856192158%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191855192155%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd191856192158%_))
                                            (let ((_%e191858192163%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd191856192158%_))))
                                              (let ((_%tl191860192168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191858192163%_)))
                                                    (_%hd191859192166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191858192163%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd191859192166%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd191859192166%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191860192168%_))
                                                            (let ((_%e191861192171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191860192168%_))))
                      (let ((_%tl191863192176%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191861192171%_)))
                            (_%hd191862192174%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191861192171%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191863192176%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl191857192160%_))
                                (if (let ((__tmp195306
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl191857192160%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp195306 '1))
                                    (let ((_%__splice194036194037%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl191857192160%_
                                              '1))))
                                      (let ((_%tl191866192181%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice194036194037%_
                                                '1)))
                                            (_%target191864192179%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice194036194037%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191866192181%_))
                                            (let ((_%e191873192184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191866192181%_))))
                                              (let ((_%tl191875192189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191873192184%_)))
                                                    (_%hd191874192187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191873192184%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd191874192187%_))
                                                    (let ((_%e191876192192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd191874192187%_))))
                                                      (let ((_%tl191878192197%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e191876192192%_)))
                    (_%hd191877192195%_
                     (let () (declare (not safe)) (##car _%e191876192192%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd191877192195%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd191877192195%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl191878192197%_))
                            (let ((_%e191879192200%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl191878192197%_))))
                              (let ((_%tl191881192205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191879192200%_)))
                                    (_%hd191880192203%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191879192200%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl191881192205%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191875192189%_))
                                        (letrec ((_%loop191867192208%_
                                                  (lambda (_%hd191865192211%_
                                                           _%xarg191871192213%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd191865192211%_))
                                                        (let ((_%e191868192215%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd191865192211%_))))
                  (let ((_%lp-tl191870192220%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191868192215%_)))
                        (_%lp-hd191869192218%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191868192215%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd191869192218%_))
                        (let ((_%e191882192223%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd191869192218%_))))
                          (let ((_%tl191884192228%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191882192223%_)))
                                (_%hd191883192226%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191882192223%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd191883192226%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd191883192226%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191884192228%_))
                                        (let ((_%e191885192231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191884192228%_))))
                                          (let ((_%tl191887192236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191885192231%_)))
                                                (_%hd191886192234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191885192231%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191887192236%_))
                                                (_%loop191867192208%_
                                                 _%lp-tl191870192220%_
                                                 (cons _%hd191886192234%_
                                                       _%xarg191871192213%_))
                                                (_%__match194137194138%_
                                                 _%e191828192085%_
                                                 _%hd191829192088%_
                                                 _%tl191830192090%_
                                                 _%e191840192115%_
                                                 _%hd191841192118%_
                                                 _%tl191842192120%_
                                                 _%e191843192123%_
                                                 _%hd191844192126%_
                                                 _%tl191845192128%_
                                                 _%e191846192131%_
                                                 _%hd191847192134%_
                                                 _%tl191848192136%_
                                                 _%e191849192139%_
                                                 _%hd191850192142%_
                                                 _%tl191851192144%_
                                                 _%e191852192147%_
                                                 _%hd191853192150%_
                                                 _%tl191854192152%_
                                                 _%e191855192155%_
                                                 _%hd191856192158%_
                                                 _%tl191857192160%_
                                                 _%e191858192163%_
                                                 _%hd191859192166%_
                                                 _%tl191860192168%_
                                                 _%e191861192171%_
                                                 _%hd191862192174%_
                                                 _%tl191863192176%_))))
                                        (_%__match194137194138%_
                                         _%e191828192085%_
                                         _%hd191829192088%_
                                         _%tl191830192090%_
                                         _%e191840192115%_
                                         _%hd191841192118%_
                                         _%tl191842192120%_
                                         _%e191843192123%_
                                         _%hd191844192126%_
                                         _%tl191845192128%_
                                         _%e191846192131%_
                                         _%hd191847192134%_
                                         _%tl191848192136%_
                                         _%e191849192139%_
                                         _%hd191850192142%_
                                         _%tl191851192144%_
                                         _%e191852192147%_
                                         _%hd191853192150%_
                                         _%tl191854192152%_
                                         _%e191855192155%_
                                         _%hd191856192158%_
                                         _%tl191857192160%_
                                         _%e191858192163%_
                                         _%hd191859192166%_
                                         _%tl191860192168%_
                                         _%e191861192171%_
                                         _%hd191862192174%_
                                         _%tl191863192176%_))
                                    (_%__match194137194138%_
                                     _%e191828192085%_
                                     _%hd191829192088%_
                                     _%tl191830192090%_
                                     _%e191840192115%_
                                     _%hd191841192118%_
                                     _%tl191842192120%_
                                     _%e191843192123%_
                                     _%hd191844192126%_
                                     _%tl191845192128%_
                                     _%e191846192131%_
                                     _%hd191847192134%_
                                     _%tl191848192136%_
                                     _%e191849192139%_
                                     _%hd191850192142%_
                                     _%tl191851192144%_
                                     _%e191852192147%_
                                     _%hd191853192150%_
                                     _%tl191854192152%_
                                     _%e191855192155%_
                                     _%hd191856192158%_
                                     _%tl191857192160%_
                                     _%e191858192163%_
                                     _%hd191859192166%_
                                     _%tl191860192168%_
                                     _%e191861192171%_
                                     _%hd191862192174%_
                                     _%tl191863192176%_))
                                (_%__match194137194138%_
                                 _%e191828192085%_
                                 _%hd191829192088%_
                                 _%tl191830192090%_
                                 _%e191840192115%_
                                 _%hd191841192118%_
                                 _%tl191842192120%_
                                 _%e191843192123%_
                                 _%hd191844192126%_
                                 _%tl191845192128%_
                                 _%e191846192131%_
                                 _%hd191847192134%_
                                 _%tl191848192136%_
                                 _%e191849192139%_
                                 _%hd191850192142%_
                                 _%tl191851192144%_
                                 _%e191852192147%_
                                 _%hd191853192150%_
                                 _%tl191854192152%_
                                 _%e191855192155%_
                                 _%hd191856192158%_
                                 _%tl191857192160%_
                                 _%e191858192163%_
                                 _%hd191859192166%_
                                 _%tl191860192168%_
                                 _%e191861192171%_
                                 _%hd191862192174%_
                                 _%tl191863192176%_))))
                        (_%__match194137194138%_
                         _%e191828192085%_
                         _%hd191829192088%_
                         _%tl191830192090%_
                         _%e191840192115%_
                         _%hd191841192118%_
                         _%tl191842192120%_
                         _%e191843192123%_
                         _%hd191844192126%_
                         _%tl191845192128%_
                         _%e191846192131%_
                         _%hd191847192134%_
                         _%tl191848192136%_
                         _%e191849192139%_
                         _%hd191850192142%_
                         _%tl191851192144%_
                         _%e191852192147%_
                         _%hd191853192150%_
                         _%tl191854192152%_
                         _%e191855192155%_
                         _%hd191856192158%_
                         _%tl191857192160%_
                         _%e191858192163%_
                         _%hd191859192166%_
                         _%tl191860192168%_
                         _%e191861192171%_
                         _%hd191862192174%_
                         _%tl191863192176%_))))
                (let ((_%xarg191872192239%_ (reverse _%xarg191871192213%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191842192120%_))
                      (let ((_%g191822192241%_ _%hd191880192203%_)
                            (_%g191823192242%_ _%xarg191872192239%_)
                            (_%g191824192243%_ _%hd191862192174%_)
                            (_%g191825192244%_ _%hd191853192150%_)
                            (_%g191826192245%_ _%tl191833192095%_)
                            (_%g191827192246%_ _%arg191839192113%_))
                        (if (and (let ((__tmp195307
                                        (let ((__tmp195308
                                               (lambda (_%g192289192292%_
                                                        _%g192290192294%_)
                                                 (cons _%g192289192292%_
                                                       _%g192290192294%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp195308
                                           '()
                                           _%g191827192246%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp195307))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g191826192245%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g191825192244%_
                                    'apply))
                                 (let ((__tmp195311
                                        (length (let ((__tmp195312
                                                       (lambda (_%g192296192299%_
                                                                _%g192297192301%_)
                                                         (cons _%g192296192299%_
                                                               _%g192297192301%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp195312
                                                   '()
                                                   _%g191827192246%_))))
                                       (__tmp195309
                                        (length (let ((__tmp195310
                                                       (lambda (_%g192303192306%_
                                                                _%g192304192308%_)
                                                         (cons _%g192303192306%_
                                                               _%g192304192308%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp195310
                                                   '()
                                                   _%g191823192242%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp195311 __tmp195309))
                                 (let ((__tmp195315
                                        (let ((__tmp195316
                                               (lambda (_%g192310192313%_
                                                        _%g192311192315%_)
                                                 (cons _%g192310192313%_
                                                       _%g192311192315%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp195316
                                           '()
                                           _%g191827192246%_)))
                                       (__tmp195313
                                        (let ((__tmp195314
                                               (lambda (_%g192317192320%_
                                                        _%g192318192322%_)
                                                 (cons _%g192317192320%_
                                                       _%g192318192322%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp195314
                                           '()
                                           _%g191823192242%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp195315
                                    __tmp195313))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g191826192245%_
                                    _%g191822192241%_))
                                 (not (let ((__tmp195320
                                             (lambda (_%g192324192326%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g192324192326%_
                                                  _%g191824192243%_))))
                                            (__tmp195317
                                             (let ((__tmp195319
                                                    (lambda (_%g192328192331%_
                                                             _%g192329192333%_)
                                                      (cons _%g192328192331%_
                                                            _%g192329192333%_)))
                                                   (__tmp195318
                                                    (cons _%g191826192245%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp195319
                                                __tmp195318
                                                _%g191827192246%_))))
                                        (declare (not safe))
                                        (__find __tmp195320 __tmp195317))))
                            (_%__kont194032194033%_
                             _%g191822192241%_
                             _%g191823192242%_
                             _%g191824192243%_
                             _%g191825192244%_
                             _%g191826192245%_
                             _%g191827192246%_)
                            (_%__match194137194138%_
                             _%e191828192085%_
                             _%hd191829192088%_
                             _%tl191830192090%_
                             _%e191840192115%_
                             _%hd191841192118%_
                             _%tl191842192120%_
                             _%e191843192123%_
                             _%hd191844192126%_
                             _%tl191845192128%_
                             _%e191846192131%_
                             _%hd191847192134%_
                             _%tl191848192136%_
                             _%e191849192139%_
                             _%hd191850192142%_
                             _%tl191851192144%_
                             _%e191852192147%_
                             _%hd191853192150%_
                             _%tl191854192152%_
                             _%e191855192155%_
                             _%hd191856192158%_
                             _%tl191857192160%_
                             _%e191858192163%_
                             _%hd191859192166%_
                             _%tl191860192168%_
                             _%e191861192171%_
                             _%hd191862192174%_
                             _%tl191863192176%_)))
                      (_%__match194137194138%_
                       _%e191828192085%_
                       _%hd191829192088%_
                       _%tl191830192090%_
                       _%e191840192115%_
                       _%hd191841192118%_
                       _%tl191842192120%_
                       _%e191843192123%_
                       _%hd191844192126%_
                       _%tl191845192128%_
                       _%e191846192131%_
                       _%hd191847192134%_
                       _%tl191848192136%_
                       _%e191849192139%_
                       _%hd191850192142%_
                       _%tl191851192144%_
                       _%e191852192147%_
                       _%hd191853192150%_
                       _%tl191854192152%_
                       _%e191855192155%_
                       _%hd191856192158%_
                       _%tl191857192160%_
                       _%e191858192163%_
                       _%hd191859192166%_
                       _%tl191860192168%_
                       _%e191861192171%_
                       _%hd191862192174%_
                       _%tl191863192176%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop191867192208%_
                                           _%target191864192179%_
                                           '()))
                                        (_%__match194137194138%_
                                         _%e191828192085%_
                                         _%hd191829192088%_
                                         _%tl191830192090%_
                                         _%e191840192115%_
                                         _%hd191841192118%_
                                         _%tl191842192120%_
                                         _%e191843192123%_
                                         _%hd191844192126%_
                                         _%tl191845192128%_
                                         _%e191846192131%_
                                         _%hd191847192134%_
                                         _%tl191848192136%_
                                         _%e191849192139%_
                                         _%hd191850192142%_
                                         _%tl191851192144%_
                                         _%e191852192147%_
                                         _%hd191853192150%_
                                         _%tl191854192152%_
                                         _%e191855192155%_
                                         _%hd191856192158%_
                                         _%tl191857192160%_
                                         _%e191858192163%_
                                         _%hd191859192166%_
                                         _%tl191860192168%_
                                         _%e191861192171%_
                                         _%hd191862192174%_
                                         _%tl191863192176%_))
                                    (_%__match194137194138%_
                                     _%e191828192085%_
                                     _%hd191829192088%_
                                     _%tl191830192090%_
                                     _%e191840192115%_
                                     _%hd191841192118%_
                                     _%tl191842192120%_
                                     _%e191843192123%_
                                     _%hd191844192126%_
                                     _%tl191845192128%_
                                     _%e191846192131%_
                                     _%hd191847192134%_
                                     _%tl191848192136%_
                                     _%e191849192139%_
                                     _%hd191850192142%_
                                     _%tl191851192144%_
                                     _%e191852192147%_
                                     _%hd191853192150%_
                                     _%tl191854192152%_
                                     _%e191855192155%_
                                     _%hd191856192158%_
                                     _%tl191857192160%_
                                     _%e191858192163%_
                                     _%hd191859192166%_
                                     _%tl191860192168%_
                                     _%e191861192171%_
                                     _%hd191862192174%_
                                     _%tl191863192176%_))))
                            (_%__match194137194138%_
                             _%e191828192085%_
                             _%hd191829192088%_
                             _%tl191830192090%_
                             _%e191840192115%_
                             _%hd191841192118%_
                             _%tl191842192120%_
                             _%e191843192123%_
                             _%hd191844192126%_
                             _%tl191845192128%_
                             _%e191846192131%_
                             _%hd191847192134%_
                             _%tl191848192136%_
                             _%e191849192139%_
                             _%hd191850192142%_
                             _%tl191851192144%_
                             _%e191852192147%_
                             _%hd191853192150%_
                             _%tl191854192152%_
                             _%e191855192155%_
                             _%hd191856192158%_
                             _%tl191857192160%_
                             _%e191858192163%_
                             _%hd191859192166%_
                             _%tl191860192168%_
                             _%e191861192171%_
                             _%hd191862192174%_
                             _%tl191863192176%_))
                        (_%__match194137194138%_
                         _%e191828192085%_
                         _%hd191829192088%_
                         _%tl191830192090%_
                         _%e191840192115%_
                         _%hd191841192118%_
                         _%tl191842192120%_
                         _%e191843192123%_
                         _%hd191844192126%_
                         _%tl191845192128%_
                         _%e191846192131%_
                         _%hd191847192134%_
                         _%tl191848192136%_
                         _%e191849192139%_
                         _%hd191850192142%_
                         _%tl191851192144%_
                         _%e191852192147%_
                         _%hd191853192150%_
                         _%tl191854192152%_
                         _%e191855192155%_
                         _%hd191856192158%_
                         _%tl191857192160%_
                         _%e191858192163%_
                         _%hd191859192166%_
                         _%tl191860192168%_
                         _%e191861192171%_
                         _%hd191862192174%_
                         _%tl191863192176%_))
                    (_%__match194137194138%_
                     _%e191828192085%_
                     _%hd191829192088%_
                     _%tl191830192090%_
                     _%e191840192115%_
                     _%hd191841192118%_
                     _%tl191842192120%_
                     _%e191843192123%_
                     _%hd191844192126%_
                     _%tl191845192128%_
                     _%e191846192131%_
                     _%hd191847192134%_
                     _%tl191848192136%_
                     _%e191849192139%_
                     _%hd191850192142%_
                     _%tl191851192144%_
                     _%e191852192147%_
                     _%hd191853192150%_
                     _%tl191854192152%_
                     _%e191855192155%_
                     _%hd191856192158%_
                     _%tl191857192160%_
                     _%e191858192163%_
                     _%hd191859192166%_
                     _%tl191860192168%_
                     _%e191861192171%_
                     _%hd191862192174%_
                     _%tl191863192176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match194137194138%_
                                                     _%e191828192085%_
                                                     _%hd191829192088%_
                                                     _%tl191830192090%_
                                                     _%e191840192115%_
                                                     _%hd191841192118%_
                                                     _%tl191842192120%_
                                                     _%e191843192123%_
                                                     _%hd191844192126%_
                                                     _%tl191845192128%_
                                                     _%e191846192131%_
                                                     _%hd191847192134%_
                                                     _%tl191848192136%_
                                                     _%e191849192139%_
                                                     _%hd191850192142%_
                                                     _%tl191851192144%_
                                                     _%e191852192147%_
                                                     _%hd191853192150%_
                                                     _%tl191854192152%_
                                                     _%e191855192155%_
                                                     _%hd191856192158%_
                                                     _%tl191857192160%_
                                                     _%e191858192163%_
                                                     _%hd191859192166%_
                                                     _%tl191860192168%_
                                                     _%e191861192171%_
                                                     _%hd191862192174%_
                                                     _%tl191863192176%_))))
                                            (_%__match194137194138%_
                                             _%e191828192085%_
                                             _%hd191829192088%_
                                             _%tl191830192090%_
                                             _%e191840192115%_
                                             _%hd191841192118%_
                                             _%tl191842192120%_
                                             _%e191843192123%_
                                             _%hd191844192126%_
                                             _%tl191845192128%_
                                             _%e191846192131%_
                                             _%hd191847192134%_
                                             _%tl191848192136%_
                                             _%e191849192139%_
                                             _%hd191850192142%_
                                             _%tl191851192144%_
                                             _%e191852192147%_
                                             _%hd191853192150%_
                                             _%tl191854192152%_
                                             _%e191855192155%_
                                             _%hd191856192158%_
                                             _%tl191857192160%_
                                             _%e191858192163%_
                                             _%hd191859192166%_
                                             _%tl191860192168%_
                                             _%e191861192171%_
                                             _%hd191862192174%_
                                             _%tl191863192176%_))))
                                    (_%__match194137194138%_
                                     _%e191828192085%_
                                     _%hd191829192088%_
                                     _%tl191830192090%_
                                     _%e191840192115%_
                                     _%hd191841192118%_
                                     _%tl191842192120%_
                                     _%e191843192123%_
                                     _%hd191844192126%_
                                     _%tl191845192128%_
                                     _%e191846192131%_
                                     _%hd191847192134%_
                                     _%tl191848192136%_
                                     _%e191849192139%_
                                     _%hd191850192142%_
                                     _%tl191851192144%_
                                     _%e191852192147%_
                                     _%hd191853192150%_
                                     _%tl191854192152%_
                                     _%e191855192155%_
                                     _%hd191856192158%_
                                     _%tl191857192160%_
                                     _%e191858192163%_
                                     _%hd191859192166%_
                                     _%tl191860192168%_
                                     _%e191861192171%_
                                     _%hd191862192174%_
                                     _%tl191863192176%_))
                                (_%__match194137194138%_
                                 _%e191828192085%_
                                 _%hd191829192088%_
                                 _%tl191830192090%_
                                 _%e191840192115%_
                                 _%hd191841192118%_
                                 _%tl191842192120%_
                                 _%e191843192123%_
                                 _%hd191844192126%_
                                 _%tl191845192128%_
                                 _%e191846192131%_
                                 _%hd191847192134%_
                                 _%tl191848192136%_
                                 _%e191849192139%_
                                 _%hd191850192142%_
                                 _%tl191851192144%_
                                 _%e191852192147%_
                                 _%hd191853192150%_
                                 _%tl191854192152%_
                                 _%e191855192155%_
                                 _%hd191856192158%_
                                 _%tl191857192160%_
                                 _%e191858192163%_
                                 _%hd191859192166%_
                                 _%tl191860192168%_
                                 _%e191861192171%_
                                 _%hd191862192174%_
                                 _%tl191863192176%_))
                            (_%__kont194040194041%_))))
                    (_%__kont194040194041%_))
                (_%__kont194040194041%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont194040194041%_))))
                                            (_%__kont194040194041%_))))
                                    (_%__kont194040194041%_))
                                (_%__kont194040194041%_))))
                        (_%__kont194040194041%_))
                    (_%__kont194040194041%_))
                (_%__kont194040194041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont194040194041%_))))
                                        (_%__kont194040194041%_))
                                    (_%__kont194040194041%_))
                                (_%__kont194040194041%_))))
                        (_%__kont194040194041%_))))
                (_%__kont194040194041%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop191834192098%_
                                     _%target191831192093%_
                                     '()))))
                               (_%__match194055194056%_
                                (lambda (_%e191780192341%_
                                         _%hd191781192344%_
                                         _%tl191782192346%_
                                         _%__splice194028194029%_
                                         _%target191783192349%_
                                         _%tl191785192351%_)
                                  (letrec ((_%loop191786192354%_
                                            (lambda (_%hd191784192357%_
                                                     _%arg191790192359%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd191784192357%_))
                                                  (let ((_%e191787192361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd191784192357%_))))
                                                    (let ((_%lp-tl191789192366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191787192361%_)))
                                                          (_%lp-hd191788192364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191787192361%_))))
                                                      (_%loop191786192354%_
                                                       _%lp-tl191789192366%_
                                                       (cons _%lp-hd191788192364%_
                                                             _%arg191790192359%_))))
                                                  (let ((_%arg191791192369%_
                                                         (reverse _%arg191790192359%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl191782192346%_))
                                                        (let ((_%e191792192371%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl191782192346%_))))
                  (let ((_%tl191794192376%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191792192371%_)))
                        (_%hd191793192374%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191792192371%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191793192374%_))
                        (let ((_%e191795192379%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd191793192374%_))))
                          (let ((_%tl191797192384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191795192379%_)))
                                (_%hd191796192382%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191795192379%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd191796192382%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd191796192382%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191797192384%_))
                                        (let ((_%e191798192387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191797192384%_))))
                                          (let ((_%tl191800192392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191798192387%_)))
                                                (_%hd191799192390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191798192387%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd191799192390%_))
                                                (let ((_%e191801192395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd191799192390%_))))
                                                  (let ((_%tl191803192400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191801192395%_)))
                                                        (_%hd191802192398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191801192395%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd191802192398%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd191802192398%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl191803192400%_))
                        (let ((_%e191804192403%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191803192400%_))))
                          (let ((_%tl191806192408%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191804192403%_)))
                                (_%hd191805192406%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191804192403%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191806192408%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl191800192392%_))
                                    (let ((_%__splice194030194031%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl191800192392%_
                                              '0))))
                                      (let ((_%tl191809192413%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice194030194031%_
                                                '1)))
                                            (_%target191807192411%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice194030194031%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191809192413%_))
                                            (letrec ((_%loop191810192416%_
                                                      (lambda (_%hd191808192419%_
                                                               _%xarg191814192421%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd191808192419%_))
                                                            (let ((_%e191811192423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd191808192419%_))))
                      (let ((_%lp-tl191813192428%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191811192423%_)))
                            (_%lp-hd191812192426%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191811192423%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd191812192426%_))
                            (let ((_%e191816192431%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd191812192426%_))))
                              (let ((_%tl191818192436%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191816192431%_)))
                                    (_%hd191817192434%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191816192431%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191817192434%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd191817192434%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191818192436%_))
                                            (let ((_%e191819192439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191818192436%_))))
                                              (let ((_%tl191821192444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191819192439%_)))
                                                    (_%hd191820192442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191819192439%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191821192444%_))
                                                    (_%loop191810192416%_
                                                     _%lp-tl191813192428%_
                                                     (cons _%hd191820192442%_
                                                           _%xarg191814192421%_))
                                                    (_%__match194067194068%_
                                                     _%e191780192341%_
                                                     _%hd191781192344%_
                                                     _%tl191782192346%_
                                                     _%__splice194028194029%_
                                                     _%target191783192349%_
                                                     _%tl191785192351%_))))
                                            (_%__match194067194068%_
                                             _%e191780192341%_
                                             _%hd191781192344%_
                                             _%tl191782192346%_
                                             _%__splice194028194029%_
                                             _%target191783192349%_
                                             _%tl191785192351%_))
                                        (_%__match194067194068%_
                                         _%e191780192341%_
                                         _%hd191781192344%_
                                         _%tl191782192346%_
                                         _%__splice194028194029%_
                                         _%target191783192349%_
                                         _%tl191785192351%_))
                                    (_%__match194067194068%_
                                     _%e191780192341%_
                                     _%hd191781192344%_
                                     _%tl191782192346%_
                                     _%__splice194028194029%_
                                     _%target191783192349%_
                                     _%tl191785192351%_))))
                            (_%__match194067194068%_
                             _%e191780192341%_
                             _%hd191781192344%_
                             _%tl191782192346%_
                             _%__splice194028194029%_
                             _%target191783192349%_
                             _%tl191785192351%_))))
                    (let ((_%xarg191815192447%_
                           (reverse _%xarg191814192421%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191794192376%_))
                          (let ((_%g191777192449%_ _%xarg191815192447%_)
                                (_%g191778192450%_ _%hd191805192406%_)
                                (_%g191779192451%_ _%arg191791192369%_))
                            (if (and (let ((__tmp195321
                                            (let ((__tmp195322
                                                   (lambda (_%g192479192482%_
                                                            _%g192480192484%_)
                                                     (cons _%g192479192482%_
                                                           _%g192480192484%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp195322
                                               '()
                                               _%g191779192451%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp195321))
                                     (let ((__tmp195325
                                            (length (let ((__tmp195326
                                                           (lambda (_%g192486192489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g192487192491%_)
                     (cons _%g192486192489%_ _%g192487192491%_))))
              (declare (not safe))
              (__foldr1 __tmp195326 '() _%g191779192451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp195323
                                            (length (let ((__tmp195324
                                                           (lambda (_%g192493192496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g192494192498%_)
                     (cons _%g192493192496%_ _%g192494192498%_))))
              (declare (not safe))
              (__foldr1 __tmp195324 '() _%g191777192449%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp195325 __tmp195323))
                                     (let ((__tmp195329
                                            (let ((__tmp195330
                                                   (lambda (_%g192500192503%_
                                                            _%g192501192505%_)
                                                     (cons _%g192500192503%_
                                                           _%g192501192505%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp195330
                                               '()
                                               _%g191779192451%_)))
                                           (__tmp195327
                                            (let ((__tmp195328
                                                   (lambda (_%g192507192510%_
                                                            _%g192508192512%_)
                                                     (cons _%g192507192510%_
                                                           _%g192508192512%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp195328
                                               '()
                                               _%g191777192449%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp195329
                                        __tmp195327))
                                     (not (let ((__tmp195333
                                                 (lambda (_%g192514192516%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g192514192516%_
                                                      _%g191778192450%_))))
                                                (__tmp195331
                                                 (let ((__tmp195332
                                                        (lambda (_%g192518192521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g192519192523%_)
                  (cons _%g192518192521%_ _%g192519192523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp195332
                                                    '()
                                                    _%g191779192451%_))))
                                            (declare (not safe))
                                            (__find __tmp195333 __tmp195331))))
                                (_%__kont194026194027%_
                                 _%g191777192449%_
                                 _%g191778192450%_
                                 _%g191779192451%_)
                                (_%__match194067194068%_
                                 _%e191780192341%_
                                 _%hd191781192344%_
                                 _%tl191782192346%_
                                 _%__splice194028194029%_
                                 _%target191783192349%_
                                 _%tl191785192351%_)))
                          (_%__match194067194068%_
                           _%e191780192341%_
                           _%hd191781192344%_
                           _%tl191782192346%_
                           _%__splice194028194029%_
                           _%target191783192349%_
                           _%tl191785192351%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop191810192416%_
                                               _%target191807192411%_
                                               '()))
                                            (_%__match194067194068%_
                                             _%e191780192341%_
                                             _%hd191781192344%_
                                             _%tl191782192346%_
                                             _%__splice194028194029%_
                                             _%target191783192349%_
                                             _%tl191785192351%_))))
                                    (_%__match194067194068%_
                                     _%e191780192341%_
                                     _%hd191781192344%_
                                     _%tl191782192346%_
                                     _%__splice194028194029%_
                                     _%target191783192349%_
                                     _%tl191785192351%_))
                                (_%__match194067194068%_
                                 _%e191780192341%_
                                 _%hd191781192344%_
                                 _%tl191782192346%_
                                 _%__splice194028194029%_
                                 _%target191783192349%_
                                 _%tl191785192351%_))))
                        (_%__match194067194068%_
                         _%e191780192341%_
                         _%hd191781192344%_
                         _%tl191782192346%_
                         _%__splice194028194029%_
                         _%target191783192349%_
                         _%tl191785192351%_))
                    (_%__match194067194068%_
                     _%e191780192341%_
                     _%hd191781192344%_
                     _%tl191782192346%_
                     _%__splice194028194029%_
                     _%target191783192349%_
                     _%tl191785192351%_))
                (_%__match194067194068%_
                 _%e191780192341%_
                 _%hd191781192344%_
                 _%tl191782192346%_
                 _%__splice194028194029%_
                 _%target191783192349%_
                 _%tl191785192351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match194067194068%_
                                                 _%e191780192341%_
                                                 _%hd191781192344%_
                                                 _%tl191782192346%_
                                                 _%__splice194028194029%_
                                                 _%target191783192349%_
                                                 _%tl191785192351%_))))
                                        (_%__match194067194068%_
                                         _%e191780192341%_
                                         _%hd191781192344%_
                                         _%tl191782192346%_
                                         _%__splice194028194029%_
                                         _%target191783192349%_
                                         _%tl191785192351%_))
                                    (_%__match194067194068%_
                                     _%e191780192341%_
                                     _%hd191781192344%_
                                     _%tl191782192346%_
                                     _%__splice194028194029%_
                                     _%target191783192349%_
                                     _%tl191785192351%_))
                                (_%__match194067194068%_
                                 _%e191780192341%_
                                 _%hd191781192344%_
                                 _%tl191782192346%_
                                 _%__splice194028194029%_
                                 _%target191783192349%_
                                 _%tl191785192351%_))))
                        (_%__match194067194068%_
                         _%e191780192341%_
                         _%hd191781192344%_
                         _%tl191782192346%_
                         _%__splice194028194029%_
                         _%target191783192349%_
                         _%tl191785192351%_))))
                (_%__match194067194068%_
                 _%e191780192341%_
                 _%hd191781192344%_
                 _%tl191782192346%_
                 _%__splice194028194029%_
                 _%target191783192349%_
                 _%tl191785192351%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop191786192354%_
                                     _%target191783192349%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx194024194025%_))
                              (let ((_%e191780192341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx194024194025%_))))
                                (let ((_%tl191782192346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191780192341%_)))
                                      (_%hd191781192344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191780192341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd191781192344%_))
                                      (let ((_%__splice194028194029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd191781192344%_
                                                '0))))
                                        (let ((_%tl191785192351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194028194029%_
                                                  '1)))
                                              (_%target191783192349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194028194029%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191785192351%_))
                                              (_%__match194055194056%_
                                               _%e191780192341%_
                                               _%hd191781192344%_
                                               _%tl191782192346%_
                                               _%__splice194028194029%_
                                               _%target191783192349%_
                                               _%tl191785192351%_)
                                              (_%__match194067194068%_
                                               _%e191780192341%_
                                               _%hd191781192344%_
                                               _%tl191782192346%_
                                               _%__splice194028194029%_
                                               _%target191783192349%_
                                               _%tl191785192351%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191782192346%_))
                                          (let ((_%e191895191952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191782192346%_))))
                                            (let ((_%tl191897191957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191895191952%_)))
                                                  (_%hd191896191955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191895191952%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd191896191955%_))
                                                  (let ((_%e191898191960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd191896191955%_))))
                                                    (let ((_%tl191900191965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191898191960%_)))
                                                          (_%hd191899191963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191898191960%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd191899191963%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd191899191963%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191900191965%_))
                          (let ((_%e191901191968%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191900191965%_))))
                            (let ((_%tl191903191973%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191901191968%_)))
                                  (_%hd191902191971%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191901191968%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191902191971%_))
                                  (let ((_%e191904191976%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191902191971%_))))
                                    (let ((_%tl191906191981%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191904191976%_)))
                                          (_%hd191905191979%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191904191976%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191905191979%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191905191979%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191906191981%_))
                                                  (let ((_%e191907191984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191906191981%_))))
                                                    (let ((_%tl191909191989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191907191984%_)))
                                                          (_%hd191908191987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191907191984%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191909191989%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191903191973%_))
                      (let ((_%e191910191992%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191903191973%_))))
                        (let ((_%tl191912191997%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191910191992%_)))
                              (_%hd191911191995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191910191992%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191911191995%_))
                              (let ((_%e191913192000%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd191911191995%_))))
                                (let ((_%tl191915192005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191913192000%_)))
                                      (_%hd191914192003%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191913192000%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd191914192003%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd191914192003%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191915192005%_))
                                              (let ((_%e191916192008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191915192005%_))))
                                                (let ((_%tl191918192013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191916192008%_)))
                                                      (_%hd191917192011%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191916192008%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191918192013%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191912191997%_))
                                                          (let ((_%e191919192016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191912191997%_))))
                    (let ((_%tl191921192021%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191919192016%_)))
                          (_%hd191920192019%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191919192016%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd191920192019%_))
                          (let ((_%e191922192024%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd191920192019%_))))
                            (let ((_%tl191924192029%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191922192024%_)))
                                  (_%hd191923192027%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191922192024%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd191923192027%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd191923192027%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191924192029%_))
                                          (let ((_%e191925192032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191924192029%_))))
                                            (let ((_%tl191927192037%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191925192032%_)))
                                                  (_%hd191926192035%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191925192032%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191927192037%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191921192021%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191897191957%_))
                                                          (_%__match194165194166%_
                                                           _%e191780192341%_
                                                           _%hd191781192344%_
                                                           _%tl191782192346%_
                                                           _%e191895191952%_
                                                           _%hd191896191955%_
                                                           _%tl191897191957%_
                                                           _%e191898191960%_
                                                           _%hd191899191963%_
                                                           _%tl191900191965%_
                                                           _%e191901191968%_
                                                           _%hd191902191971%_
                                                           _%tl191903191973%_
                                                           _%e191904191976%_
                                                           _%hd191905191979%_
                                                           _%tl191906191981%_
                                                           _%e191907191984%_
                                                           _%hd191908191987%_
                                                           _%tl191909191989%_
                                                           _%e191910191992%_
                                                           _%hd191911191995%_
                                                           _%tl191912191997%_
                                                           _%e191913192000%_
                                                           _%hd191914192003%_
                                                           _%tl191915192005%_
                                                           _%e191916192008%_
                                                           _%hd191917192011%_
                                                           _%tl191918192013%_
                                                           _%e191919192016%_
                                                           _%hd191920192019%_
                                                           _%tl191921192021%_
                                                           _%e191922192024%_
                                                           _%hd191923192027%_
                                                           _%tl191924192029%_
                                                           _%e191925192032%_
                                                           _%hd191926192035%_
                                                           _%tl191927192037%_)
                                                          (_%__kont194040194041%_))
                                                      (_%__kont194040194041%_))
                                                  (_%__kont194040194041%_))))
                                          (_%__kont194040194041%_))
                                      (_%__kont194040194041%_))
                                  (_%__kont194040194041%_))))
                          (_%__kont194040194041%_))))
                  (_%__kont194040194041%_))
              (_%__kont194040194041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194040194041%_))
                                          (_%__kont194040194041%_))
                                      (_%__kont194040194041%_))))
                              (_%__kont194040194041%_))))
                      (_%__kont194040194041%_))
                  (_%__kont194040194041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194040194041%_))
                                              (_%__kont194040194041%_))
                                          (_%__kont194040194041%_))))
                                  (_%__kont194040194041%_))))
                          (_%__kont194040194041%_))
                      (_%__kont194040194041%_))
                  (_%__kont194040194041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194040194041%_))))
                                          (_%__kont194040194041%_)))))
                              (_%__kont194040194041%_)))))))
                 (_%dispatch-case-e191090%_
                  (lambda (_%hd191237%_ _%body191238%_)
                    (let* ((_%form191240%_
                            (cons _%hd191237%_ (cons _%body191238%_ '())))
                           (_%__stx194168194169%_ _%form191240%_)
                           (_%g191244191368%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx194168194169%_)))))
                      (let ((_%__kont194170194171%_
                             (lambda (_%g191246191733%_
                                      _%g191247191734%_
                                      _%g191248191735%_)
                               (let ((__tmp195334
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g191247191734%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self191086%_
                                  __tmp195334))))
                            (_%__kont194176194177%_
                             (lambda (_%g191291191585%_
                                      _%g191292191586%_
                                      _%g191293191587%_
                                      _%g191294191588%_)
                               (let ((__tmp195335
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g191291191585%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self191086%_
                                  __tmp195335))))
                            (_%__kont194180194181%_
                             (lambda (_%g191331191453%_
                                      _%g191332191454%_
                                      _%g191333191455%_)
                               (let ((__tmp195336
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g191331191453%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self191086%_
                                  __tmp195336)))))
                        (let* ((_%__match194277194278%_
                                (lambda (_%e191334191373%_
                                         _%hd191335191376%_
                                         _%tl191336191378%_
                                         _%e191337191381%_
                                         _%hd191338191384%_
                                         _%tl191339191386%_
                                         _%e191340191389%_
                                         _%hd191341191392%_
                                         _%tl191342191394%_
                                         _%e191343191397%_
                                         _%hd191344191400%_
                                         _%tl191345191402%_
                                         _%e191346191405%_
                                         _%hd191347191408%_
                                         _%tl191348191410%_
                                         _%e191349191413%_
                                         _%hd191350191416%_
                                         _%tl191351191418%_
                                         _%e191352191421%_
                                         _%hd191353191424%_
                                         _%tl191354191426%_
                                         _%e191355191429%_
                                         _%hd191356191432%_
                                         _%tl191357191434%_
                                         _%e191358191437%_
                                         _%hd191359191440%_
                                         _%tl191360191442%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191354191426%_))
                                      (let ((_%e191361191445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191354191426%_))))
                                        (let ((_%tl191363191450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191361191445%_)))
                                              (_%hd191362191448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191361191445%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191363191450%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191339191386%_))
                                                  (_%__kont194180194181%_
                                                   _%hd191359191440%_
                                                   _%hd191350191416%_
                                                   _%hd191335191376%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191244191368%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191244191368%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191244191368%_)))))
                               (_%__match194207194208%_
                                (lambda (_%e191295191491%_
                                         _%hd191296191494%_
                                         _%tl191297191496%_
                                         _%__splice194178194179%_
                                         _%target191298191499%_
                                         _%tl191300191501%_)
                                  (letrec ((_%loop191301191504%_
                                            (lambda (_%hd191299191507%_
                                                     _%arg191305191509%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd191299191507%_))
                                                  (let ((_%e191302191511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd191299191507%_))))
                                                    (let ((_%lp-tl191304191516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191302191511%_)))
                                                          (_%lp-hd191303191514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191302191511%_))))
                                                      (_%loop191301191504%_
                                                       _%lp-tl191304191516%_
                                                       (cons _%lp-hd191303191514%_
                                                             _%arg191305191509%_))))
                                                  (let ((_%arg191306191519%_
                                                         (reverse _%arg191305191509%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl191297191496%_))
                                                        (let ((_%e191307191521%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl191297191496%_))))
                  (let ((_%tl191309191526%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191307191521%_)))
                        (_%hd191308191524%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191307191521%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191308191524%_))
                        (let ((_%e191310191529%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd191308191524%_))))
                          (let ((_%tl191312191534%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191310191529%_)))
                                (_%hd191311191532%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191310191529%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd191311191532%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd191311191532%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191312191534%_))
                                        (let ((_%e191313191537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191312191534%_))))
                                          (let ((_%tl191315191542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191313191537%_)))
                                                (_%hd191314191540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191313191537%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd191314191540%_))
                                                (let ((_%e191316191545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd191314191540%_))))
                                                  (let ((_%tl191318191550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191316191545%_)))
                                                        (_%hd191317191548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191316191545%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd191317191548%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd191317191548%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl191318191550%_))
                        (let ((_%e191319191553%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191318191550%_))))
                          (let ((_%tl191321191558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191319191553%_)))
                                (_%hd191320191556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191319191553%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191321191558%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191315191542%_))
                                    (let ((_%e191322191561%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191315191542%_))))
                                      (let ((_%tl191324191566%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191322191561%_)))
                                            (_%hd191323191564%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191322191561%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd191323191564%_))
                                            (let ((_%e191325191569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd191323191564%_))))
                                              (let ((_%tl191327191574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191325191569%_)))
                                                    (_%hd191326191572%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191325191569%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd191326191572%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd191326191572%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191327191574%_))
                                                            (let ((_%e191328191577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191327191574%_))))
                      (let ((_%tl191330191582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191328191577%_)))
                            (_%hd191329191580%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191328191577%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191330191582%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191309191526%_))
                                (_%__kont194176194177%_
                                 _%hd191329191580%_
                                 _%hd191320191556%_
                                 _%tl191300191501%_
                                 _%arg191306191519%_)
                                (_%__match194277194278%_
                                 _%e191295191491%_
                                 _%hd191296191494%_
                                 _%tl191297191496%_
                                 _%e191307191521%_
                                 _%hd191308191524%_
                                 _%tl191309191526%_
                                 _%e191310191529%_
                                 _%hd191311191532%_
                                 _%tl191312191534%_
                                 _%e191313191537%_
                                 _%hd191314191540%_
                                 _%tl191315191542%_
                                 _%e191316191545%_
                                 _%hd191317191548%_
                                 _%tl191318191550%_
                                 _%e191319191553%_
                                 _%hd191320191556%_
                                 _%tl191321191558%_
                                 _%e191322191561%_
                                 _%hd191323191564%_
                                 _%tl191324191566%_
                                 _%e191325191569%_
                                 _%hd191326191572%_
                                 _%tl191327191574%_
                                 _%e191328191577%_
                                 _%hd191329191580%_
                                 _%tl191330191582%_))
                            (let ()
                              (declare (not safe))
                              (_%g191244191368%_)))))
                    (let () (declare (not safe)) (_%g191244191368%_)))
                (let () (declare (not safe)) (_%g191244191368%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191244191368%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191244191368%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191244191368%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g191244191368%_)))))
                        (let () (declare (not safe)) (_%g191244191368%_)))
                    (let () (declare (not safe)) (_%g191244191368%_)))
                (let () (declare (not safe)) (_%g191244191368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191244191368%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g191244191368%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191244191368%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g191244191368%_)))))
                        (let () (declare (not safe)) (_%g191244191368%_)))))
                (let () (declare (not safe)) (_%g191244191368%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop191301191504%_
                                     _%target191298191499%_
                                     '()))))
                               (_%__match194195194196%_
                                (lambda (_%e191249191625%_
                                         _%hd191250191628%_
                                         _%tl191251191630%_
                                         _%__splice194172194173%_
                                         _%target191252191633%_
                                         _%tl191254191635%_)
                                  (letrec ((_%loop191255191638%_
                                            (lambda (_%hd191253191641%_
                                                     _%arg191259191643%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd191253191641%_))
                                                  (let ((_%e191256191645%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd191253191641%_))))
                                                    (let ((_%lp-tl191258191650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191256191645%_)))
                                                          (_%lp-hd191257191648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191256191645%_))))
                                                      (_%loop191255191638%_
                                                       _%lp-tl191258191650%_
                                                       (cons _%lp-hd191257191648%_
                                                             _%arg191259191643%_))))
                                                  (let ((_%arg191260191653%_
                                                         (reverse _%arg191259191643%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl191251191630%_))
                                                        (let ((_%e191261191655%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl191251191630%_))))
                  (let ((_%tl191263191660%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191261191655%_)))
                        (_%hd191262191658%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191261191655%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191262191658%_))
                        (let ((_%e191264191663%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd191262191658%_))))
                          (let ((_%tl191266191668%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191264191663%_)))
                                (_%hd191265191666%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191264191663%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd191265191666%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd191265191666%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191266191668%_))
                                        (let ((_%e191267191671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191266191668%_))))
                                          (let ((_%tl191269191676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191267191671%_)))
                                                (_%hd191268191674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191267191671%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd191268191674%_))
                                                (let ((_%e191270191679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd191268191674%_))))
                                                  (let ((_%tl191272191684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191270191679%_)))
                                                        (_%hd191271191682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191270191679%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd191271191682%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd191271191682%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl191272191684%_))
                        (let ((_%e191273191687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191272191684%_))))
                          (let ((_%tl191275191692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191273191687%_)))
                                (_%hd191274191690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191273191687%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191275191692%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl191269191676%_))
                                    (let ((_%__splice194174194175%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl191269191676%_
                                              '0))))
                                      (let ((_%tl191278191697%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice194174194175%_
                                                '1)))
                                            (_%target191276191695%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice194174194175%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191278191697%_))
                                            (letrec ((_%loop191279191700%_
                                                      (lambda (_%hd191277191703%_
                                                               _%xarg191283191705%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd191277191703%_))
                                                            (let ((_%e191280191707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd191277191703%_))))
                      (let ((_%lp-tl191282191712%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191280191707%_)))
                            (_%lp-hd191281191710%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191280191707%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd191281191710%_))
                            (let ((_%e191285191715%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd191281191710%_))))
                              (let ((_%tl191287191720%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191285191715%_)))
                                    (_%hd191286191718%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191285191715%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191286191718%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd191286191718%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191287191720%_))
                                            (let ((_%e191288191723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191287191720%_))))
                                              (let ((_%tl191290191728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191288191723%_)))
                                                    (_%hd191289191726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191288191723%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191290191728%_))
                                                    (_%loop191279191700%_
                                                     _%lp-tl191282191712%_
                                                     (cons _%hd191289191726%_
                                                           _%xarg191283191705%_))
                                                    (_%__match194207194208%_
                                                     _%e191249191625%_
                                                     _%hd191250191628%_
                                                     _%tl191251191630%_
                                                     _%__splice194172194173%_
                                                     _%target191252191633%_
                                                     _%tl191254191635%_))))
                                            (_%__match194207194208%_
                                             _%e191249191625%_
                                             _%hd191250191628%_
                                             _%tl191251191630%_
                                             _%__splice194172194173%_
                                             _%target191252191633%_
                                             _%tl191254191635%_))
                                        (_%__match194207194208%_
                                         _%e191249191625%_
                                         _%hd191250191628%_
                                         _%tl191251191630%_
                                         _%__splice194172194173%_
                                         _%target191252191633%_
                                         _%tl191254191635%_))
                                    (_%__match194207194208%_
                                     _%e191249191625%_
                                     _%hd191250191628%_
                                     _%tl191251191630%_
                                     _%__splice194172194173%_
                                     _%target191252191633%_
                                     _%tl191254191635%_))))
                            (_%__match194207194208%_
                             _%e191249191625%_
                             _%hd191250191628%_
                             _%tl191251191630%_
                             _%__splice194172194173%_
                             _%target191252191633%_
                             _%tl191254191635%_))))
                    (let ((_%xarg191284191731%_
                           (reverse _%xarg191283191705%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191263191660%_))
                          (_%__kont194170194171%_
                           _%xarg191284191731%_
                           _%hd191274191690%_
                           _%arg191260191653%_)
                          (_%__match194207194208%_
                           _%e191249191625%_
                           _%hd191250191628%_
                           _%tl191251191630%_
                           _%__splice194172194173%_
                           _%target191252191633%_
                           _%tl191254191635%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop191279191700%_
                                               _%target191276191695%_
                                               '()))
                                            (_%__match194207194208%_
                                             _%e191249191625%_
                                             _%hd191250191628%_
                                             _%tl191251191630%_
                                             _%__splice194172194173%_
                                             _%target191252191633%_
                                             _%tl191254191635%_))))
                                    (_%__match194207194208%_
                                     _%e191249191625%_
                                     _%hd191250191628%_
                                     _%tl191251191630%_
                                     _%__splice194172194173%_
                                     _%target191252191633%_
                                     _%tl191254191635%_))
                                (_%__match194207194208%_
                                 _%e191249191625%_
                                 _%hd191250191628%_
                                 _%tl191251191630%_
                                 _%__splice194172194173%_
                                 _%target191252191633%_
                                 _%tl191254191635%_))))
                        (_%__match194207194208%_
                         _%e191249191625%_
                         _%hd191250191628%_
                         _%tl191251191630%_
                         _%__splice194172194173%_
                         _%target191252191633%_
                         _%tl191254191635%_))
                    (_%__match194207194208%_
                     _%e191249191625%_
                     _%hd191250191628%_
                     _%tl191251191630%_
                     _%__splice194172194173%_
                     _%target191252191633%_
                     _%tl191254191635%_))
                (_%__match194207194208%_
                 _%e191249191625%_
                 _%hd191250191628%_
                 _%tl191251191630%_
                 _%__splice194172194173%_
                 _%target191252191633%_
                 _%tl191254191635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match194207194208%_
                                                 _%e191249191625%_
                                                 _%hd191250191628%_
                                                 _%tl191251191630%_
                                                 _%__splice194172194173%_
                                                 _%target191252191633%_
                                                 _%tl191254191635%_))))
                                        (_%__match194207194208%_
                                         _%e191249191625%_
                                         _%hd191250191628%_
                                         _%tl191251191630%_
                                         _%__splice194172194173%_
                                         _%target191252191633%_
                                         _%tl191254191635%_))
                                    (_%__match194207194208%_
                                     _%e191249191625%_
                                     _%hd191250191628%_
                                     _%tl191251191630%_
                                     _%__splice194172194173%_
                                     _%target191252191633%_
                                     _%tl191254191635%_))
                                (_%__match194207194208%_
                                 _%e191249191625%_
                                 _%hd191250191628%_
                                 _%tl191251191630%_
                                 _%__splice194172194173%_
                                 _%target191252191633%_
                                 _%tl191254191635%_))))
                        (_%__match194207194208%_
                         _%e191249191625%_
                         _%hd191250191628%_
                         _%tl191251191630%_
                         _%__splice194172194173%_
                         _%target191252191633%_
                         _%tl191254191635%_))))
                (_%__match194207194208%_
                 _%e191249191625%_
                 _%hd191250191628%_
                 _%tl191251191630%_
                 _%__splice194172194173%_
                 _%target191252191633%_
                 _%tl191254191635%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop191255191638%_
                                     _%target191252191633%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx194168194169%_))
                              (let ((_%e191249191625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx194168194169%_))))
                                (let ((_%tl191251191630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191249191625%_)))
                                      (_%hd191250191628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191249191625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd191250191628%_))
                                      (let ((_%__splice194172194173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd191250191628%_
                                                '0))))
                                        (let ((_%tl191254191635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194172194173%_
                                                  '1)))
                                              (_%target191252191633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194172194173%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191254191635%_))
                                              (_%__match194195194196%_
                                               _%e191249191625%_
                                               _%hd191250191628%_
                                               _%tl191251191630%_
                                               _%__splice194172194173%_
                                               _%target191252191633%_
                                               _%tl191254191635%_)
                                              (_%__match194207194208%_
                                               _%e191249191625%_
                                               _%hd191250191628%_
                                               _%tl191251191630%_
                                               _%__splice194172194173%_
                                               _%target191252191633%_
                                               _%tl191254191635%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191251191630%_))
                                          (let ((_%e191337191381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191251191630%_))))
                                            (let ((_%tl191339191386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191337191381%_)))
                                                  (_%hd191338191384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191337191381%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd191338191384%_))
                                                  (let ((_%e191340191389%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd191338191384%_))))
                                                    (let ((_%tl191342191394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191340191389%_)))
                                                          (_%hd191341191392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191340191389%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd191341191392%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd191341191392%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191342191394%_))
                          (let ((_%e191343191397%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191342191394%_))))
                            (let ((_%tl191345191402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191343191397%_)))
                                  (_%hd191344191400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191343191397%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191344191400%_))
                                  (let ((_%e191346191405%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191344191400%_))))
                                    (let ((_%tl191348191410%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191346191405%_)))
                                          (_%hd191347191408%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191346191405%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191347191408%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191347191408%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191348191410%_))
                                                  (let ((_%e191349191413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191348191410%_))))
                                                    (let ((_%tl191351191418%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191349191413%_)))
                                                          (_%hd191350191416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191349191413%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191351191418%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191345191402%_))
                      (let ((_%e191352191421%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191345191402%_))))
                        (let ((_%tl191354191426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191352191421%_)))
                              (_%hd191353191424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191352191421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191353191424%_))
                              (let ((_%e191355191429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd191353191424%_))))
                                (let ((_%tl191357191434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191355191429%_)))
                                      (_%hd191356191432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191355191429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd191356191432%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd191356191432%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191357191434%_))
                                              (let ((_%e191358191437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191357191434%_))))
                                                (let ((_%tl191360191442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191358191437%_)))
                                                      (_%hd191359191440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191358191437%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191360191442%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191354191426%_))
                                                          (let ((_%e191361191445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191354191426%_))))
                    (let ((_%tl191363191450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191361191445%_)))
                          (_%hd191362191448%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191361191445%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191363191450%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191339191386%_))
                              (_%__kont194180194181%_
                               _%hd191359191440%_
                               _%hd191350191416%_
                               _%hd191250191628%_)
                              (let ()
                                (declare (not safe))
                                (_%g191244191368%_)))
                          (let () (declare (not safe)) (_%g191244191368%_)))))
                  (let () (declare (not safe)) (_%g191244191368%_)))
              (let () (declare (not safe)) (_%g191244191368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g191244191368%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191244191368%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191244191368%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g191244191368%_)))))
                      (let () (declare (not safe)) (_%g191244191368%_)))
                  (let () (declare (not safe)) (_%g191244191368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191244191368%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191244191368%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191244191368%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191244191368%_)))))
                          (let () (declare (not safe)) (_%g191244191368%_)))
                      (let () (declare (not safe)) (_%g191244191368%_)))
                  (let () (declare (not safe)) (_%g191244191368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191244191368%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191244191368%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g191244191368%_))))))))
                 (_%generate1191091%_
                  (lambda (_%args191222%_
                           _%arglen191223%_
                           _%hd191224%_
                           _%body191225%_)
                    (let* ((_%len191227%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd191224%_)))
                           (_%condition191232%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd191224%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen191223%_
                                                (cons _%len191227%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen191223%_ (cons _%len191227%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len191227%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen191223%_
                                                    (cons _%len191227%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen191223%_ (cons _%len191227%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch191234%_
                            (if (_%dispatch-case?191089%_
                                 _%hd191224%_
                                 _%body191225%_)
                                (_%dispatch-case-e191090%_
                                 _%hd191224%_
                                 _%body191225%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self191086%_
                                 _%hd191224%_
                                 _%body191225%_))))
                      (cons _%condition191232%_
                            (cons (cons 'apply
                                        (cons _%dispatch191234%_
                                              (cons _%args191222%_ '())))
                                  '()))))))
          (let* ((_%g191093191121%_
                  (lambda (_%g191094191118%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g191094191118%_))))
                 (_%g191092191219%_
                  (lambda (_%g191094191124%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g191094191124%_))
                        (let ((_%e191097191126%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g191094191124%_))))
                          (let ((_%hd191098191129%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191097191126%_)))
                                (_%tl191099191131%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191097191126%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl191099191131%_))
                                (let ((_g195337_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl191099191131%_
                                          '0))))
                                  (begin
                                    (let ((_g195338_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195337_)
                                                 (##values-length _g195337_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195338_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195338_)))
                                    (let ((_%target191100191134%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g195337_ 0)))
                                          (_%tl191102191136%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g195337_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191102191136%_))
                                          (letrec ((_%loop191103191139%_
                                                    (lambda (_%hd191101191142%_
                                                             _%body191107191144%_
                                                             _%hd191108191145%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191101191142%_))
                                                          (let ((_%e191104191147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191101191142%_))))
                    (let ((_%lp-hd191105191150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191104191147%_)))
                          (_%lp-tl191106191152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191104191147%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd191105191150%_))
                          (let ((_%e191111191155%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd191105191150%_))))
                            (let ((_%hd191112191158%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191111191155%_)))
                                  (_%tl191113191160%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191111191155%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191113191160%_))
                                  (let ((_%e191114191163%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191113191160%_))))
                                    (let ((_%hd191115191166%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191114191163%_)))
                                          (_%tl191116191168%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191114191163%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191116191168%_))
                                          (_%loop191103191139%_
                                           _%lp-tl191106191152%_
                                           (cons _%hd191115191166%_
                                                 _%body191107191144%_)
                                           (cons _%hd191112191158%_
                                                 _%hd191108191145%_))
                                          (_%g191093191121%_
                                           _%g191094191124%_))))
                                  (_%g191093191121%_ _%g191094191124%_))))
                          (_%g191093191121%_ _%g191094191124%_))))
                  (let ((_%body191109191171%_ (reverse _%body191107191144%_))
                        (_%hd191110191172%_ (reverse _%hd191108191145%_)))
                    ((lambda (_%g191095191174%_ _%g191096191175%_)
                       (let ((_%args191194%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen191195%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name191196%_
                              (let ((_%$e191191%_
                                     (let ((__tmp195339
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp195339 _%stx191087%_))))
                                (if _%$e191191%_
                                    _%$e191191%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args191194%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen191195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args191194%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args191194%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp195343
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name191196%_
                                                                (cons _%args191194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp195340
                                  (map (lambda (_%g191197191200%_
                                                _%g191198191202%_)
                                         (_%generate1191091%_
                                          _%args191194%_
                                          _%arglen191195%_
                                          _%g191197191200%_
                                          _%g191198191202%_))
                                       (let ((__tmp195341
                                              (lambda (_%g191204191207%_
                                                       _%g191205191209%_)
                                                (cons _%g191204191207%_
                                                      _%g191205191209%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp195341
                                          '()
                                          _%g191096191175%_))
                                       (let ((__tmp195342
                                              (lambda (_%g191211191214%_
                                                       _%g191212191216%_)
                                                (cons _%g191211191214%_
                                                      _%g191212191216%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp195342
                                          '()
                                          _%g191095191174%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp195343 __tmp195340)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body191109191171%_
                     _%hd191110191172%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop191103191139%_
                                             _%target191100191134%_
                                             '()
                                             '()))
                                          (_%g191093191121%_
                                           _%g191094191124%_)))))
                                (_%g191093191121%_ _%g191094191124%_))))
                        (_%g191093191121%_ _%g191094191124%_)))))
            (_%g191092191219%_ _%stx191087%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self190323%_ _%stx190324%_ _%compiled-body?190325%_)
        (letrec ((_%generate-simple190327%_
                  (lambda (_%hd191071%_ _%body191072%_)
                    (_%coalesce-boolean190328%_
                     (_%simplify-let190329%_
                      (gxc#generate-runtime-simple-let
                       _%self190323%_
                       'let
                       _%hd191071%_
                       _%body191072%_
                       _%compiled-body?190325%_)))))
                 (_%coalesce-boolean190328%_
                  (lambda (_%code190932%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code190933190959%_ _%code190932%_)
                               (_%else190935190967%_
                                (lambda () _%code190932%_))
                               (_%K190937191004%_
                                (lambda (_%expr2190970%_
                                         _%expr1190971%_
                                         _%id190972%_)
                                  (let* ((_%expr2190973190981%_
                                          _%expr2190970%_)
                                         (_%else190975190989%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1190971%_
                                                        (cons _%expr2190970%_
                                                              '())))))
                                         (_%K190977190994%_
                                          (lambda (_%exprs190992%_)
                                            (cons 'or
                                                  (cons _%expr1190971%_
                                                        _%exprs190992%_)))))
                                    (if (pair? _%expr2190973190981%_)
                                        (let ((_%hd190978190997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2190973190981%_)))
                                              (_%tl190979190999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2190973190981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd190978190997%_ 'or))
                                              (let ((_%exprs191002%_
                                                     _%tl190979190999%_))
                                                (_%K190977190994%_
                                                 _%exprs191002%_))
                                              (_%else190975190989%_)))
                                        (_%else190975190989%_))))))
                          (if (pair? _%code190933190959%_)
                              (let ((_%hd190938191007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code190933190959%_)))
                                    (_%tl190939191009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code190933190959%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd190938191007%_ 'let))
                                    (if (pair? _%tl190939191009%_)
                                        (let ((_%hd190940191012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl190939191009%_)))
                                              (_%tl190941191014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl190939191009%_))))
                                          (if (pair? _%hd190940191012%_)
                                              (let ((_%hd190952191017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd190940191012%_)))
                                                    (_%tl190953191019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd190940191012%_))))
                                                (if (pair? _%hd190952191017%_)
                                                    (let ((_%hd190954191022%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd190952191017%_)))
                                                          (_%tl190955191024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd190952191017%_))))
                                                      (let ((_%id191027%_
                                                             _%hd190954191022%_))
                                                        (if (pair? _%tl190955191024%_)
                                                            (let ((_%hd190956191029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl190955191024%_)))
                          (_%tl190957191031%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl190955191024%_))))
                      (let ((_%expr1191034%_ _%hd190956191029%_))
                        (if (null? _%tl190957191031%_)
                            (if (null? _%tl190953191019%_)
                                (if (pair? _%tl190941191014%_)
                                    (let ((_%hd190942191036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl190941191014%_)))
                                          (_%tl190943191038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl190941191014%_))))
                                      (if (pair? _%hd190942191036%_)
                                          (let ((_%hd190944191041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd190942191036%_)))
                                                (_%tl190945191043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd190942191036%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd190944191041%_
                                                         'if))
                                                (if (pair? _%tl190945191043%_)
                                                    (let ((_%hd190946191046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl190945191043%_)))
                                                          (_%tl190947191048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl190945191043%_))))
                                                      (if ((lambda (_%g191050191052%_)
                                                             (eq? _%g191050191052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id191027%_))
                   _%hd190946191046%_)
                  (if (pair? _%tl190947191048%_)
                      (let ((_%hd190948191055%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl190947191048%_)))
                            (_%tl190949191057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl190947191048%_))))
                        (if ((lambda (_%g191059191061%_)
                               (eq? _%g191059191061%_ _%id191027%_))
                             _%hd190948191055%_)
                            (if (pair? _%tl190949191057%_)
                                (let ((_%hd190950191064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl190949191057%_)))
                                      (_%tl190951191066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl190949191057%_))))
                                  (let ((_%expr2191069%_ _%hd190950191064%_))
                                    (if (null? _%tl190951191066%_)
                                        (if (null? _%tl190943191038%_)
                                            (_%K190937191004%_
                                             _%expr2191069%_
                                             _%expr1191034%_
                                             _%id191027%_)
                                            (_%else190935190967%_))
                                        (_%else190935190967%_))))
                                (_%else190935190967%_))
                            (_%else190935190967%_)))
                      (_%else190935190967%_))
                  (_%else190935190967%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else190935190967%_))
                                                (_%else190935190967%_)))
                                          (_%else190935190967%_)))
                                    (_%else190935190967%_))
                                (_%else190935190967%_))
                            (_%else190935190967%_))))
                    (_%else190935190967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else190935190967%_)))
                                              (_%else190935190967%_)))
                                        (_%else190935190967%_))
                                    (_%else190935190967%_)))
                              (_%else190935190967%_)))
                        _%code190932%_)))
                 (_%simplify-let190329%_
                  (lambda (_%code190631%_)
                    (let* ((_%code190632190704%_ _%code190631%_)
                           (_%else190637190712%_ (lambda () _%code190631%_)))
                      (let ((_%K190696190912%_
                             (lambda (_%expr190910%_) _%expr190910%_))
                            (_%K190679190858%_
                             (lambda (_%body190854%_
                                      _%expr190855%_
                                      _%id190856%_)
                               (cons 'let
                                     (cons (cons (cons _%id190856%_
                                                       (cons _%expr190855%_
                                                             '()))
                                                 '())
                                           _%body190854%_))))
                            (_%K190656190782%_
                             (lambda (_%body190776%_
                                      _%expr2190777%_
                                      _%id2190778%_
                                      _%expr1190779%_
                                      _%id1190780%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1190780%_
                                                       (cons _%expr1190779%_
                                                             '()))
                                                 (cons (cons _%id2190778%_
                                                             (cons _%expr2190777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body190776%_))))
                            (_%K190639190721%_
                             (lambda (_%body190716%_
                                      _%bind190717%_
                                      _%expr1190718%_
                                      _%id1190719%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1190719%_
                                                       (cons _%expr1190718%_
                                                             '()))
                                                 _%bind190717%_)
                                           _%body190716%_)))))
                        (if (pair? _%code190632190704%_)
                            (let ((_%tl190698190917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code190632190704%_)))
                                  (_%hd190697190915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code190632190704%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd190697190915%_ 'let))
                                  (if (pair? _%tl190698190917%_)
                                      (let ((_%tl190700190922%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl190698190917%_)))
                                            (_%hd190699190920%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl190698190917%_))))
                                        (if (null? _%hd190699190920%_)
                                            (if (pair? _%tl190700190922%_)
                                                (let ((_%tl190702190927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl190700190922%_)))
                                                      (_%hd190701190925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl190700190922%_))))
                                                  (if (null? _%tl190702190927%_)
                                                      (let ((_%expr190930%_
                                                             _%hd190701190925%_))
                                                        (_%K190696190912%_
                                                         _%expr190930%_))
                                                      (_%else190637190712%_)))
                                                (_%else190637190712%_))
                                            (if (pair? _%hd190699190920%_)
                                                (let ((_%tl190691190873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd190699190920%_)))
                                                      (_%hd190690190871%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd190699190920%_))))
                                                  (if (pair? _%hd190690190871%_)
                                                      (let ((_%tl190693190878%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd190690190871%_)))
                    (_%hd190692190876%_
                     (let () (declare (not safe)) (##car _%hd190690190871%_))))
                (if (pair? _%tl190693190878%_)
                    (let ((_%tl190695190885%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl190693190878%_)))
                          (_%hd190694190883%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl190693190878%_))))
                      (if (null? _%tl190695190885%_)
                          (if (null? _%tl190691190873%_)
                              (if (pair? _%tl190700190922%_)
                                  (let ((_%tl190685190892%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl190700190922%_)))
                                        (_%hd190684190890%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl190700190922%_))))
                                    (if (pair? _%hd190684190890%_)
                                        (let ((_%tl190687190897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd190684190890%_)))
                                              (_%hd190686190895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd190684190890%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd190686190895%_
                                                       'let))
                                              (if (pair? _%tl190687190897%_)
                                                  (let ((_%tl190689190902%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl190687190897%_)))
                                                        (_%hd190688190900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl190687190897%_))))
                                                    (if (null? _%hd190688190900%_)
                                                        (if (null? _%tl190685190892%_)
                                                            (let ((_%id190881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd190692190876%_)
                          (_%expr190888%_ _%hd190694190883%_)
                          (_%body190905%_ _%tl190689190902%_))
                      (_%K190679190858%_
                       _%body190905%_
                       _%expr190888%_
                       _%id190881%_))
                    (_%else190637190712%_))
                (if (pair? _%hd190688190900%_)
                    (let ((_%tl190668190831%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd190688190900%_)))
                          (_%hd190667190829%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd190688190900%_))))
                      (if (pair? _%hd190667190829%_)
                          (let ((_%tl190670190836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd190667190829%_)))
                                (_%hd190669190834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd190667190829%_))))
                            (if (pair? _%tl190670190836%_)
                                (let ((_%tl190672190843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl190670190836%_)))
                                      (_%hd190671190841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl190670190836%_))))
                                  (if (null? _%tl190672190843%_)
                                      (if (null? _%tl190668190831%_)
                                          (if (null? _%tl190685190892%_)
                                              (let ((_%id1190805%_
                                                     _%hd190692190876%_)
                                                    (_%expr1190812%_
                                                     _%hd190694190883%_)
                                                    (_%id2190839%_
                                                     _%hd190669190834%_)
                                                    (_%expr2190846%_
                                                     _%hd190671190841%_)
                                                    (_%body190848%_
                                                     _%tl190689190902%_))
                                                (_%K190656190782%_
                                                 _%body190848%_
                                                 _%expr2190846%_
                                                 _%id2190839%_
                                                 _%expr1190812%_
                                                 _%id1190805%_))
                                              (_%else190637190712%_))
                                          (_%else190637190712%_))
                                      (_%else190637190712%_)))
                                (_%else190637190712%_)))
                          (_%else190637190712%_)))
                    (_%else190637190712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else190637190712%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd190686190895%_
                                                           'let*))
                                                  (if (pair? _%tl190687190897%_)
                                                      (let ((_%tl190649190765%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl190687190897%_)))
                    (_%hd190648190763%_
                     (let () (declare (not safe)) (##car _%tl190687190897%_))))
                (if (null? _%tl190685190892%_)
                    (let ((_%id1190744%_ _%hd190692190876%_)
                          (_%expr1190751%_ _%hd190694190883%_)
                          (_%bind190768%_ _%hd190648190763%_)
                          (_%body190770%_ _%tl190649190765%_))
                      (_%K190639190721%_
                       _%body190770%_
                       _%bind190768%_
                       _%expr1190751%_
                       _%id1190744%_))
                    (_%else190637190712%_)))
              (_%else190637190712%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else190637190712%_))))
                                        (_%else190637190712%_)))
                                  (_%else190637190712%_))
                              (_%else190637190712%_))
                          (_%else190637190712%_)))
                    (_%else190637190712%_)))
              (_%else190637190712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else190637190712%_))))
                                      (_%else190637190712%_))
                                  (_%else190637190712%_)))
                            (_%else190637190712%_))))))
                 (_%generate-values190330%_
                  (lambda (_%hd190444%_ _%body190445%_)
                    (let _%lp190447%_ ((_%rest190449%_ _%hd190444%_)
                                       (_%bind190450%_ '())
                                       (_%check190451%_ '())
                                       (_%post190452%_ '()))
                      (let* ((_%__stx194497194498%_ _%rest190449%_)
                             (_%g190455190466%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx194497194498%_)))))
                        (let ((_%__kont194499194500%_
                               (lambda (_%g190457190493%_ _%g190458190494%_)
                                 (let* ((_%__stx194453194454%_
                                         _%g190458190494%_)
                                        (_%g190509190534%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx194453194454%_)))))
                                   (let ((_%__kont194455194456%_
                                          (lambda (_%g190511190607%_
                                                   _%g190512190608%_)
                                            (let ((_%eid190622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g190512190608%_)))
                                                  (_%expr190623%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self190323%_
                                                      _%g190511190607%_))))
                                              (_%lp190447%_
                                               _%g190457190493%_
                                               (cons (cons _%eid190622%_
                                                           (cons _%expr190623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind190450%_)
                                               _%check190451%_
                                               _%post190452%_))))
                                         (_%__kont194457194458%_
                                          (lambda (_%g190522190555%_
                                                   _%g190523190556%_)
                                            (let* ((_%vals190569%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values190571%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals190569%_
                                                     _%g190523190556%_
                                                     _%g190522190555%_))
                                                   (_%refs190573%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals190569%_
                                                     _%g190523190556%_))
                                                   (_%expr190575%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self190323%_
                                                       _%g190522190555%_))))
                                              (_%lp190447%_
                                               _%g190457190493%_
                                               (cons (cons _%vals190569%_
                                                           (cons _%expr190575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind190450%_)
                                               (cons _%check-values190571%_
                                                     _%check190451%_)
                                               (cons _%refs190573%_
                                                     _%post190452%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx194453194454%_))
                                         (let ((_%e190513190583%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx194453194454%_))))
                                           (let ((_%tl190515190588%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190513190583%_)))
                                                 (_%hd190514190586%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190513190583%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd190514190586%_))
                                                 (let ((_%e190516190591%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd190514190586%_))))
                                                   (let ((_%tl190518190596%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e190516190591%_)))
                                                         (_%hd190517190594%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e190516190591%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl190518190596%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl190515190588%_))
                     (let ((_%e190519190599%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl190515190588%_))))
                       (let ((_%tl190521190604%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190519190599%_)))
                             (_%hd190520190602%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190519190599%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190521190604%_))
                             (_%__kont194455194456%_
                              _%hd190520190602%_
                              _%hd190517190594%_)
                             (let ()
                               (declare (not safe))
                               (_%g190509190534%_)))))
                     (let () (declare (not safe)) (_%g190509190534%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl190515190588%_))
                     (let ((_%e190527190547%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl190515190588%_))))
                       (let ((_%tl190529190552%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190527190547%_)))
                             (_%hd190528190550%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190527190547%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190529190552%_))
                             (_%__kont194457194458%_
                              _%hd190528190550%_
                              _%hd190514190586%_)
                             (let ()
                               (declare (not safe))
                               (_%g190509190534%_)))))
                     (let () (declare (not safe)) (_%g190509190534%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl190515190588%_))
                                                     (let ((_%e190527190547%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl190515190588%_))))
                                                       (let ((_%tl190529190552%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e190527190547%_)))
                     (_%hd190528190550%_
                      (let () (declare (not safe)) (##car _%e190527190547%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190529190552%_))
                     (_%__kont194457194458%_
                      _%hd190528190550%_
                      _%hd190514190586%_)
                     (let () (declare (not safe)) (_%g190509190534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g190509190534%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g190509190534%_)))))))
                              (_%__kont194501194502%_
                               (lambda ()
                                 (let* ((_%body190473%_
                                         (if _%compiled-body?190325%_
                                             _%body190445%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self190323%_
                                                _%body190445%_))))
                                        (_%body190475%_
                                         (_%generate-values-post190331%_
                                          _%post190452%_
                                          _%body190473%_))
                                        (_%body190477%_
                                         (_%generate-values-check190332%_
                                          _%check190451%_
                                          _%body190475%_)))
                                   (cons 'let
                                         (cons (reverse _%bind190450%_)
                                               (cons _%body190477%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx194497194498%_))
                              (let ((_%e190459190485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx194497194498%_))))
                                (let ((_%tl190461190490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190459190485%_)))
                                      (_%hd190460190488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190459190485%_))))
                                  (_%__kont194499194500%_
                                   _%tl190461190490%_
                                   _%hd190460190488%_)))
                              (_%__kont194501194502%_)))))))
                 (_%generate-values-post190331%_
                  (lambda (_%post190403%_ _%body190404%_)
                    (let _%lp190406%_ ((_%rest190408%_ _%post190403%_)
                                       (_%body190409%_ _%body190404%_))
                      (let* ((_%rest190410190418%_ _%rest190408%_)
                             (_%else190412190426%_ (lambda () _%body190409%_))
                             (_%K190414190432%_
                              (lambda (_%rest190429%_ _%bind190430%_)
                                (_%lp190406%_
                                 _%rest190429%_
                                 (cons 'let
                                       (cons _%bind190430%_
                                             (cons _%body190409%_ '())))))))
                        (if (pair? _%rest190410190418%_)
                            (let ((_%hd190415190435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest190410190418%_)))
                                  (_%tl190416190437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest190410190418%_))))
                              (let* ((_%bind190440%_ _%hd190415190435%_)
                                     (_%rest190442%_ _%tl190416190437%_))
                                (_%K190414190432%_
                                 _%rest190442%_
                                 _%bind190440%_)))
                            (_%else190412190426%_))))))
                 (_%generate-values-check190332%_
                  (lambda (_%check190400%_ _%body190401%_)
                    (cons 'begin
                          (let ((__tmp195345 (cons _%body190401%_ '()))
                                (__tmp195344 (reverse _%check190400%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp195345 __tmp195344))))))
          (let* ((_%g190334190351%_
                  (lambda (_%g190335190348%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g190335190348%_))))
                 (_%g190333190397%_
                  (lambda (_%g190335190354%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g190335190354%_))
                        (let ((_%e190338190356%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g190335190354%_))))
                          (let ((_%hd190339190359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190338190356%_)))
                                (_%tl190340190361%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190338190356%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190340190361%_))
                                (let ((_%e190341190364%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl190340190361%_))))
                                  (let ((_%hd190342190367%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190341190364%_)))
                                        (_%tl190343190369%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190341190364%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190343190369%_))
                                        (let ((_%e190344190372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190343190369%_))))
                                          (let ((_%hd190345190375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190344190372%_)))
                                                (_%tl190346190377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190344190372%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190346190377%_))
                                                ((lambda (_%g190336190380%_
                                                          _%g190337190381%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g190337190381%_)
                                                       (_%generate-simple190327%_
                                                        _%g190337190381%_
                                                        _%g190336190380%_)
                                                       (_%generate-values190330%_
                                                        _%g190337190381%_
                                                        _%g190336190380%_)))
                                                 _%hd190345190375%_
                                                 _%hd190342190367%_)
                                                (_%g190334190351%_
                                                 _%g190335190354%_))))
                                        (_%g190334190351%_
                                         _%g190335190354%_))))
                                (_%g190334190351%_ _%g190335190354%_))))
                        (_%g190334190351%_ _%g190335190354%_)))))
            (_%g190333190397%_ _%stx190324%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self191077%_ _%stx191078%_)
        (let ((_%compiled-body?191080%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self191077%_
           _%stx191078%_
           _%compiled-body?191080%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g195346_
        (let ((_g195347_ (let () (declare (not safe)) (##length _g195346_))))
          (cond ((let () (declare (not safe)) (##fx= _g195347_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g195346_))
                ((let () (declare (not safe)) (##fx= _g195347_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g195346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g195346_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals190217%_ _%hd190218%_)
        (let _%lp190220%_ ((_%rest190222%_ _%hd190218%_)
                           (_%k190223%_ '0)
                           (_%r190224%_ '()))
          (let* ((_%__stx194511194512%_ _%rest190222%_)
                 (_%g190229190246%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194511194512%_)))))
            (let ((_%__kont194513194514%_
                   (lambda (_%g190231190309%_)
                     (_%lp190220%_
                      _%g190231190309%_
                      (let () (declare (not safe)) (##fx+ _%k190223%_ '1))
                      _%r190224%_)))
                  (_%__kont194515194516%_
                   (lambda (_%g190236190282%_ _%g190237190283%_)
                     (_%lp190220%_
                      _%g190236190282%_
                      (let () (declare (not safe)) (##fx+ _%k190223%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g190237190283%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals190217%_
                                         _%k190223%_
                                         _%g190236190282%_)
                                        '()))
                            _%r190224%_))))
                  (_%__kont194517194518%_
                   (lambda (_%g190241190258%_)
                     (let ((__tmp195348
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g190241190258%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals190217%_
                                               _%k190223%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp195348 _%r190224%_))))
                  (_%__kont194519194520%_ (lambda () (reverse _%r190224%_))))
              (let ((_%g190227190269%_
                     (lambda ()
                       (let ((_%g190241190258%_ _%__stx194511194512%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g190241190258%_))
                             (_%__kont194517194518%_ _%g190241190258%_)
                             (_%__kont194519194520%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194511194512%_))
                    (let ((_%e190232190298%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194511194512%_))))
                      (let ((_%tl190234190303%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190232190298%_)))
                            (_%hd190233190301%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190232190298%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd190233190301%_))
                            (let ((_%e190235190306%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd190233190301%_))))
                              (if (equal? _%e190235190306%_ '#f)
                                  (_%__kont194513194514%_ _%tl190234190303%_)
                                  (_%__kont194515194516%_
                                   _%tl190234190303%_
                                   _%hd190233190301%_)))
                            (_%__kont194515194516%_
                             _%tl190234190303%_
                             _%hd190233190301%_))))
                    (let () (declare (not safe)) (_%g190227190269%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self189896%_ _%stx189897%_ _%compiled-body?189898%_)
        (letrec ((_%generate-simple189900%_
                  (lambda (_%hd190202%_ _%body190203%_)
                    (gxc#generate-runtime-simple-let
                     _%self189896%_
                     'letrec
                     _%hd190202%_
                     _%body190203%_
                     _%compiled-body?189898%_)))
                 (_%generate-values189901%_
                  (lambda (_%hd189981%_ _%body189982%_)
                    (let _%lp189984%_ ((_%rest189986%_ _%hd189981%_)
                                       (_%bind189987%_ '())
                                       (_%check189988%_ '())
                                       (_%post189989%_ '()))
                      (let* ((_%__stx194585194586%_ _%rest189986%_)
                             (_%g189992190003%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx194585194586%_)))))
                        (let ((_%__kont194587194588%_
                               (lambda (_%g189994190030%_ _%g189995190031%_)
                                 (let* ((_%__stx194541194542%_
                                         _%g189995190031%_)
                                        (_%g190046190071%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx194541194542%_)))))
                                   (let ((_%__kont194543194544%_
                                          (lambda (_%g190048190178%_
                                                   _%g190049190179%_)
                                            (let ((_%eid190193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g190049190179%_)))
                                                  (_%expr190194%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189896%_
                                                      _%g190048190178%_))))
                                              (_%lp189984%_
                                               _%g189994190030%_
                                               (cons (cons _%eid190193%_
                                                           (cons _%expr190194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind189987%_)
                                               _%check189988%_
                                               _%post189989%_))))
                                         (_%__kont194545194546%_
                                          (lambda (_%g190059190092%_
                                                   _%g190060190093%_)
                                            (let* ((_%vals190106%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values190108%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals190106%_
                                                     _%g190060190093%_
                                                     _%g190059190092%_))
                                                   (_%refs190110%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals190106%_
                                                     _%g190060190093%_))
                                                   (_%expr190112%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self189896%_
                                                       _%g190059190092%_))))
                                              (_%lp189984%_
                                               _%g189994190030%_
                                               (let ((__tmp195350
                                                      (cons (cons _%vals190106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr190112%_ '()))
                    _%bind189987%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp195349
                                                      (map (lambda (_%e190114190116%_)
                                                             (let* ((_%e190114190118190127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e190114190116%_)
                            (_%E190120190131%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e190114190118190127%_
                                        '([eid _])))
                               '#!void))
                            (_%K190121190136%_
                             (lambda (_%eid190134%_)
                               (cons _%eid190134%_ (cons '#!void '())))))
                       (if (pair? _%e190114190118190127%_)
                           (let ((_%hd190122190139%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190114190118190127%_)))
                                 (_%tl190123190141%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190114190118190127%_))))
                             (let ((_%eid190144%_ _%hd190122190139%_))
                               (if (pair? _%tl190123190141%_)
                                   (let ((_%tl190125190146%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl190123190141%_))))
                                     (if (null? _%tl190125190146%_)
                                         (_%K190121190136%_ _%eid190144%_)
                                         (_%E190120190131%_)))
                                   (_%E190120190131%_))))
                           (_%E190120190131%_))))
                   _%refs190110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp195350
                                                  __tmp195349))
                                               (cons _%check-values190108%_
                                                     _%check189988%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs190110%_
                                                  _%post189989%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx194541194542%_))
                                         (let ((_%e190050190154%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx194541194542%_))))
                                           (let ((_%tl190052190159%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190050190154%_)))
                                                 (_%hd190051190157%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190050190154%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd190051190157%_))
                                                 (let ((_%e190053190162%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd190051190157%_))))
                                                   (let ((_%tl190055190167%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e190053190162%_)))
                                                         (_%hd190054190165%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e190053190162%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl190055190167%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl190052190159%_))
                     (let ((_%e190056190170%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl190052190159%_))))
                       (let ((_%tl190058190175%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190056190170%_)))
                             (_%hd190057190173%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190056190170%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190058190175%_))
                             (_%__kont194543194544%_
                              _%hd190057190173%_
                              _%hd190054190165%_)
                             (let ()
                               (declare (not safe))
                               (_%g190046190071%_)))))
                     (let () (declare (not safe)) (_%g190046190071%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl190052190159%_))
                     (let ((_%e190064190084%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl190052190159%_))))
                       (let ((_%tl190066190089%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e190064190084%_)))
                             (_%hd190065190087%_
                              (let ()
                                (declare (not safe))
                                (##car _%e190064190084%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl190066190089%_))
                             (_%__kont194545194546%_
                              _%hd190065190087%_
                              _%hd190051190157%_)
                             (let ()
                               (declare (not safe))
                               (_%g190046190071%_)))))
                     (let () (declare (not safe)) (_%g190046190071%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl190052190159%_))
                                                     (let ((_%e190064190084%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl190052190159%_))))
                                                       (let ((_%tl190066190089%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e190064190084%_)))
                     (_%hd190065190087%_
                      (let () (declare (not safe)) (##car _%e190064190084%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190066190089%_))
                     (_%__kont194545194546%_
                      _%hd190065190087%_
                      _%hd190051190157%_)
                     (let () (declare (not safe)) (_%g190046190071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g190046190071%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g190046190071%_)))))))
                              (_%__kont194589194590%_
                               (lambda ()
                                 (let* ((_%body190010%_
                                         (if _%compiled-body?189898%_
                                             _%body189982%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self189896%_
                                                _%body189982%_))))
                                        (_%body190012%_
                                         (_%generate-values-post189903%_
                                          _%post189989%_
                                          _%body190010%_))
                                        (_%body190014%_
                                         (_%generate-values-check189902%_
                                          _%check189988%_
                                          _%body190012%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind189987%_)
                                               (cons _%body190014%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx194585194586%_))
                              (let ((_%e189996190022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx194585194586%_))))
                                (let ((_%tl189998190027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189996190022%_)))
                                      (_%hd189997190025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189996190022%_))))
                                  (_%__kont194587194588%_
                                   _%tl189998190027%_
                                   _%hd189997190025%_)))
                              (_%__kont194589194590%_)))))))
                 (_%generate-values-check189902%_
                  (lambda (_%check189978%_ _%body189979%_)
                    (cons 'begin
                          (let ((__tmp195352 (cons _%body189979%_ '()))
                                (__tmp195351 (reverse _%check189978%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp195352 __tmp195351)))))
                 (_%generate-values-post189903%_
                  (lambda (_%post189971%_ _%body189972%_)
                    (cons 'begin
                          (let ((__tmp195356 (cons _%body189972%_ '()))
                                (__tmp195353
                                 (let ((__tmp195355
                                        (lambda (_%g189973189975%_)
                                          (cons 'set! _%g189973189975%_)))
                                       (__tmp195354 (reverse _%post189971%_)))
                                   (declare (not safe))
                                   (##map __tmp195355 __tmp195354))))
                            (declare (not safe))
                            (__foldr1 cons __tmp195356 __tmp195353))))))
          (let* ((_%g189905189922%_
                  (lambda (_%g189906189919%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189906189919%_))))
                 (_%g189904189968%_
                  (lambda (_%g189906189925%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189906189925%_))
                        (let ((_%e189909189927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189906189925%_))))
                          (let ((_%hd189910189930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189909189927%_)))
                                (_%tl189911189932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189909189927%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189911189932%_))
                                (let ((_%e189912189935%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl189911189932%_))))
                                  (let ((_%hd189913189938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189912189935%_)))
                                        (_%tl189914189940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189912189935%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189914189940%_))
                                        (let ((_%e189915189943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189914189940%_))))
                                          (let ((_%hd189916189946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189915189943%_)))
                                                (_%tl189917189948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189915189943%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189917189948%_))
                                                ((lambda (_%g189907189951%_
                                                          _%g189908189952%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g189908189952%_)
                                                       (_%generate-simple189900%_
                                                        _%g189908189952%_
                                                        _%g189907189951%_)
                                                       (_%generate-values189901%_
                                                        _%g189908189952%_
                                                        _%g189907189951%_)))
                                                 _%hd189916189946%_
                                                 _%hd189913189938%_)
                                                (_%g189905189922%_
                                                 _%g189906189925%_))))
                                        (_%g189905189922%_
                                         _%g189906189925%_))))
                                (_%g189905189922%_ _%g189906189925%_))))
                        (_%g189905189922%_ _%g189906189925%_)))))
            (_%g189904189968%_ _%stx189897%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self190208%_ _%stx190209%_)
        (let ((_%compiled-body?190211%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self190208%_
           _%stx190209%_
           _%compiled-body?190211%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g195357_
        (let ((_g195358_ (let () (declare (not safe)) (##length _g195357_))))
          (cond ((let () (declare (not safe)) (##fx= _g195358_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g195357_))
                ((let () (declare (not safe)) (##fx= _g195358_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g195357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g195357_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self189477%_ _%stx189478%_)
        (letrec ((_%generate-values189480%_
                  (lambda (_%hd189723%_ _%body189724%_)
                    (let _%lp189726%_ ((_%rest189728%_ _%hd189723%_)
                                       (_%bind189729%_ '()))
                      (let* ((_%rest189730189738%_ _%rest189728%_)
                             (_%else189732189749%_
                              (lambda ()
                                (let ((_%bind189746%_ (reverse _%bind189729%_))
                                      (_%body189747%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self189477%_
                                          _%body189724%_))))
                                  (cons 'letrec*
                                        (cons _%bind189746%_
                                              (cons _%body189747%_ '()))))))
                             (_%K189734189883%_
                              (lambda (_%rest189752%_ _%hd-bind189753%_)
                                (let* ((_%__stx194599194600%_
                                        _%hd-bind189753%_)
                                       (_%g189756189781%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx194599194600%_)))))
                                  (let ((_%__kont194601194602%_
                                         (lambda (_%g189758189862%_
                                                  _%g189759189863%_)
                                           (let ((_%eid189877%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g189759189863%_)))
                                                 (_%expr189878%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self189477%_
                                                     _%g189758189862%_))))
                                             (_%lp189726%_
                                              _%rest189752%_
                                              (cons (cons _%eid189877%_
                                                          (cons _%expr189878%_
                                                                '()))
                                                    _%bind189729%_)))))
                                        (_%__kont194603194604%_
                                         (lambda (_%g189769189802%_
                                                  _%g189770189803%_)
                                           (let* ((_%vals189822%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp189824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values189826%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp189824%_
                                                    _%g189770189803%_
                                                    _%g189769189802%_))
                                                  (_%refs189828%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals189822%_
                                                    _%g189770189803%_))
                                                  (_%expr189830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self189477%_
                                                      _%g189769189802%_))))
                                             (_%lp189726%_
                                              _%rest189752%_
                                              (let ((__tmp195359
                                                     (cons (cons _%vals189822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp189824%_
                                                       (cons _%expr189830%_
                                                             '()))
                                                 '())
                                           (cons _%check-values189826%_
                                                 (cons _%tmp189824%_ '()))))
                               '()))
                   _%bind189729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp195359
                                                 _%refs189828%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx194599194600%_))
                                        (let ((_%e189760189838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx194599194600%_))))
                                          (let ((_%tl189762189843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189760189838%_)))
                                                (_%hd189761189841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189760189838%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd189761189841%_))
                                                (let ((_%e189763189846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd189761189841%_))))
                                                  (let ((_%tl189765189851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189763189846%_)))
                                                        (_%hd189764189849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189763189846%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189765189851%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl189762189843%_))
                                                            (let ((_%e189766189854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl189762189843%_))))
                      (let ((_%tl189768189859%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189766189854%_)))
                            (_%hd189767189857%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189766189854%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl189768189859%_))
                            (_%__kont194601194602%_
                             _%hd189767189857%_
                             _%hd189764189849%_)
                            (let ()
                              (declare (not safe))
                              (_%g189756189781%_)))))
                    (let () (declare (not safe)) (_%g189756189781%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl189762189843%_))
                    (let ((_%e189774189794%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl189762189843%_))))
                      (let ((_%tl189776189799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189774189794%_)))
                            (_%hd189775189797%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189774189794%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl189776189799%_))
                            (_%__kont194603194604%_
                             _%hd189775189797%_
                             _%hd189761189841%_)
                            (let ()
                              (declare (not safe))
                              (_%g189756189781%_)))))
                    (let () (declare (not safe)) (_%g189756189781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl189762189843%_))
                                                    (let ((_%e189774189794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl189762189843%_))))
                                                      (let ((_%tl189776189799%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e189774189794%_)))
                    (_%hd189775189797%_
                     (let () (declare (not safe)) (##car _%e189774189794%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl189776189799%_))
                    (_%__kont194603194604%_
                     _%hd189775189797%_
                     _%hd189761189841%_)
                    (let () (declare (not safe)) (_%g189756189781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g189756189781%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g189756189781%_))))))))
                        (if (pair? _%rest189730189738%_)
                            (let ((_%hd189735189886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest189730189738%_)))
                                  (_%tl189736189888%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest189730189738%_))))
                              (let* ((_%hd-bind189891%_ _%hd189735189886%_)
                                     (_%rest189893%_ _%tl189736189888%_))
                                (_%K189734189883%_
                                 _%rest189893%_
                                 _%hd-bind189891%_)))
                            (_%else189732189749%_))))))
                 (_%generate-letrec?189481%_
                  (lambda (_%hd189613%_)
                    (let _%lp189615%_ ((_%rest189617%_ _%hd189613%_))
                      (let* ((_%rest189618189626%_ _%rest189617%_)
                             (_%else189620189634%_ (lambda () '#t))
                             (_%K189622189711%_
                              (lambda (_%rest189637%_ _%hd-bind189638%_)
                                (let* ((_%g189640189657%_
                                        (lambda (_%g189641189654%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g189641189654%_))))
                                       (_%g189639189708%_
                                        (lambda (_%g189641189660%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g189641189660%_))
                                              (let ((_%e189644189662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g189641189660%_))))
                                                (let ((_%hd189645189665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189644189662%_)))
                                                      (_%tl189646189667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189644189662%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd189645189665%_))
                                                      (let ((_%e189647189670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd189645189665%_))))
                (let ((_%hd189648189673%_
                       (let () (declare (not safe)) (##car _%e189647189670%_)))
                      (_%tl189649189675%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e189647189670%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189649189675%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189646189667%_))
                          (let ((_%e189650189678%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189646189667%_))))
                            (let ((_%hd189651189681%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189650189678%_)))
                                  (_%tl189652189683%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189650189678%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189652189683%_))
                                  ((lambda (_%g189642189686%_
                                            _%g189643189687%_)
                                     (if (_%is-lambda-expr?189482%_
                                          _%g189642189686%_)
                                         (_%lp189615%_ _%rest189637%_)
                                         '#f))
                                   _%hd189651189681%_
                                   _%hd189648189673%_)
                                  (_%g189640189657%_ _%g189641189660%_))))
                          (_%g189640189657%_ _%g189641189660%_))
                      (_%g189640189657%_ _%g189641189660%_))))
              (_%g189640189657%_ _%g189641189660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g189640189657%_
                                               _%g189641189660%_)))))
                                  (_%g189639189708%_ _%hd-bind189638%_)))))
                        (if (pair? _%rest189618189626%_)
                            (let ((_%hd189623189714%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest189618189626%_)))
                                  (_%tl189624189716%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest189618189626%_))))
                              (let* ((_%hd-bind189719%_ _%hd189623189714%_)
                                     (_%rest189721%_ _%tl189624189716%_))
                                (_%K189622189711%_
                                 _%rest189721%_
                                 _%hd-bind189719%_)))
                            (_%else189620189634%_))))))
                 (_%is-lambda-expr?189482%_
                  (lambda (_%expr189550%_)
                    (let* ((_%__stx194643194644%_ _%expr189550%_)
                           (_%g189553189567%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx194643194644%_)))))
                      (let ((_%__kont194645194646%_
                             (lambda (_%g189555189595%_ _%g189556189596%_)
                               '#t))
                            (_%__kont194647194648%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx194643194644%_))
                            (let ((_%e189557189579%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx194643194644%_))))
                              (let ((_%tl189559189584%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e189557189579%_)))
                                    (_%hd189558189582%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e189557189579%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd189558189582%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd189558189582%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl189559189584%_))
                                            (let ((_%e189560189587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl189559189584%_))))
                                              (let ((_%tl189562189592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e189560189587%_)))
                                                    (_%hd189561189590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e189560189587%_))))
                                                (_%__kont194645194646%_
                                                 _%tl189562189592%_
                                                 _%hd189561189590%_)))
                                            (_%__kont194647194648%_))
                                        (_%__kont194647194648%_))
                                    (_%__kont194647194648%_))))
                            (_%__kont194647194648%_)))))))
          (let* ((_%g189484189501%_
                  (lambda (_%g189485189498%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189485189498%_))))
                 (_%g189483189547%_
                  (lambda (_%g189485189504%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189485189504%_))
                        (let ((_%e189488189506%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189485189504%_))))
                          (let ((_%hd189489189509%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189488189506%_)))
                                (_%tl189490189511%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189488189506%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189490189511%_))
                                (let ((_%e189491189514%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl189490189511%_))))
                                  (let ((_%hd189492189517%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189491189514%_)))
                                        (_%tl189493189519%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189491189514%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189493189519%_))
                                        (let ((_%e189494189522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189493189519%_))))
                                          (let ((_%hd189495189525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189494189522%_)))
                                                (_%tl189496189527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189494189522%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189496189527%_))
                                                ((lambda (_%g189486189530%_
                                                          _%g189487189531%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g189487189531%_)
                                                       (if (_%generate-letrec?189481%_
                                                            _%g189487189531%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self189477%_
                                                            'letrec
                                                            _%g189487189531%_
                                                            _%g189486189530%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self189477%_
                                                            'letrec*
                                                            _%g189487189531%_
                                                            _%g189486189530%_
                                                            '#f))
                                                       (_%generate-values189480%_
                                                        _%g189487189531%_
                                                        _%g189486189530%_)))
                                                 _%hd189495189525%_
                                                 _%hd189492189517%_)
                                                (_%g189484189501%_
                                                 _%g189485189504%_))))
                                        (_%g189484189501%_
                                         _%g189485189504%_))))
                                (_%g189484189501%_ _%g189485189504%_))))
                        (_%g189484189501%_ _%g189485189504%_)))))
            (_%g189483189547%_ _%stx189478%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd189414%_)
        (let _%lp189416%_ ((_%rest189418%_ _%hd189414%_))
          (let* ((_%rest189419189435%_ _%rest189418%_)
                 (_%else189422189443%_ (lambda () '#f)))
            (let ((_%K189425189456%_
                   (lambda (_%rest189454%_) (_%lp189416%_ _%rest189454%_)))
                  (_%K189424189448%_ (lambda () '#t)))
              (let ((_%try-match189421189451%_
                     (lambda ()
                       (if (null? _%rest189419189435%_)
                           (_%K189424189448%_)
                           (_%else189422189443%_)))))
                (if (pair? _%rest189419189435%_)
                    (let ((_%tl189427189461%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest189419189435%_)))
                          (_%hd189426189459%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest189419189435%_))))
                      (if (pair? _%hd189426189459%_)
                          (let ((_%tl189429189466%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd189426189459%_)))
                                (_%hd189428189464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd189426189459%_))))
                            (if (pair? _%hd189428189464%_)
                                (let ((_%tl189433189469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd189428189464%_))))
                                  (if (null? _%tl189433189469%_)
                                      (if (pair? _%tl189429189466%_)
                                          (let ((_%tl189431189472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl189429189466%_))))
                                            (if (null? _%tl189431189472%_)
                                                (let ((_%rest189475%_
                                                       _%tl189427189461%_))
                                                  (_%lp189416%_
                                                   _%rest189475%_))
                                                (_%else189422189443%_)))
                                          (_%else189422189443%_))
                                      (_%else189422189443%_)))
                                (_%else189422189443%_)))
                          (_%else189422189443%_)))
                    (_%try-match189421189451%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self189326%_
               _%form189327%_
               _%hd189328%_
               _%body189329%_
               _%compiled-body?189330%_)
        (letrec ((_%generate1189332%_
                  (lambda (_%bind189371%_)
                    (let* ((_%bind189372189383%_ _%bind189371%_)
                           (_%E189374189386%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind189372189383%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K189375189392%_
                            (lambda (_%expr189389%_ _%id189390%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id189390%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self189326%_
                                             _%expr189389%_))
                                          '())))))
                      (if (pair? _%bind189372189383%_)
                          (let ((_%hd189376189395%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind189372189383%_)))
                                (_%tl189377189397%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind189372189383%_))))
                            (if (pair? _%hd189376189395%_)
                                (let ((_%hd189380189400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd189376189395%_)))
                                      (_%tl189381189402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd189376189395%_))))
                                  (let ((_%id189405%_ _%hd189380189400%_))
                                    (if (null? _%tl189381189402%_)
                                        (if (pair? _%tl189377189397%_)
                                            (let ((_%hd189378189407%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl189377189397%_)))
                                                  (_%tl189379189409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl189377189397%_))))
                                              (let ((_%expr189412%_
                                                     _%hd189378189407%_))
                                                (if (null? _%tl189379189409%_)
                                                    (_%K189375189392%_
                                                     _%expr189412%_
                                                     _%id189405%_)
                                                    (_%E189374189386%_))))
                                            (_%E189374189386%_))
                                        (_%E189374189386%_))))
                                (_%E189374189386%_)))
                          (_%E189374189386%_))))))
          (let* ((_%bind189334%_ (map _%generate1189332%_ _%hd189328%_))
                 (_%body189336%_
                  (if _%compiled-body?189330%_
                      _%body189329%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self189326%_ _%body189329%_))))
                 (_%body189368%_
                  (let* ((_%body189337189345%_ _%body189336%_)
                         (_%else189339189353%_
                          (lambda () (cons _%body189336%_ '())))
                         (_%K189341189358%_
                          (lambda (_%exprs189356%_) _%exprs189356%_)))
                    (if (pair? _%body189337189345%_)
                        (let ((_%hd189342189361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body189337189345%_)))
                              (_%tl189343189363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body189337189345%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd189342189361%_ 'begin))
                              (let ((_%exprs189366%_ _%tl189343189363%_))
                                (_%K189341189358%_ _%exprs189366%_))
                              (_%else189339189353%_)))
                        (_%else189339189353%_)))))
            (cons _%form189327%_ (cons _%bind189334%_ _%body189368%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self189226%_ _%stx189227%_)
        (letrec ((_%generate1189229%_
                  (lambda (_%datum189281%_)
                    (if (or (null? _%datum189281%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum189281%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum189281%_))
                            (eof-object? _%datum189281%_))
                        _%datum189281%_
                        (if (uninterned-symbol? _%datum189281%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum189281%_
                               '#t))
                            (if (pair? _%datum189281%_)
                                (cons (_%generate1189229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum189281%_)))
                                      (_%generate1189229%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum189281%_))))
                                (if (box? _%datum189281%_)
                                    (box (_%generate1189229%_
                                          (unbox _%datum189281%_)))
                                    (if (vector? _%datum189281%_)
                                        (vector-map
                                         _%generate1189229%_
                                         _%datum189281%_)
                                        (if (or (s8vector? _%datum189281%_)
                                                (u8vector? _%datum189281%_)
                                                (s16vector? _%datum189281%_)
                                                (u16vector? _%datum189281%_)
                                                (s32vector? _%datum189281%_)
                                                (u32vector? _%datum189281%_)
                                                (s64vector? _%datum189281%_)
                                                (u64vector? _%datum189281%_)
                                                (f32vector? _%datum189281%_)
                                                (f64vector? _%datum189281%_))
                                            _%datum189281%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx189227%_)))))))))))
          (let* ((_%g189231189244%_
                  (lambda (_%g189232189241%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189232189241%_))))
                 (_%g189230189278%_
                  (lambda (_%g189232189247%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189232189247%_))
                        (let ((_%e189234189249%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189232189247%_))))
                          (let ((_%hd189235189252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189234189249%_)))
                                (_%tl189236189254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189234189249%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189236189254%_))
                                (let ((_%e189237189257%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl189236189254%_))))
                                  (let ((_%hd189238189260%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189237189257%_)))
                                        (_%tl189239189262%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189237189257%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl189239189262%_))
                                        ((lambda (_%g189233189265%_)
                                           (cons 'quote
                                                 (cons (_%generate1189229%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g189233189265%_)))
                                                       '())))
                                         _%hd189238189260%_)
                                        (_%g189231189244%_
                                         _%g189232189247%_))))
                                (_%g189231189244%_ _%g189232189247%_))))
                        (_%g189231189244%_ _%g189232189247%_)))))
            (_%g189230189278%_ _%stx189227%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self188673%_ _%stx188674%_)
        (letrec ((_%compile-call188676%_
                  (lambda (_%rator188963%_ _%rands188964%_)
                    (let ((_%rator188970%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self188673%_
                              _%rator188963%_)))
                          (_%rands188971%_
                           (map (lambda (_%g188965188967%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self188673%_
                                     _%g188965188967%_)))
                                _%rands188964%_)))
                      (let* ((_%__stx194690194691%_ _%rator188970%_)
                             (_%g188974189026%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx194690194691%_)))))
                        (let ((_%__kont194692194693%_
                               (lambda (_%g188976189146%_
                                        _%g188977189147%_
                                        _%g188978189148%_
                                        _%g188979189149%_)
                                 (if (let ((__tmp195362
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands188971%_)))
                                           (__tmp195360
                                            (length (let ((__tmp195361
                                                           (lambda (_%g189185189188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g189186189190%_)
                     (cons _%g189185189188%_ _%g189186189190%_))))
              (declare (not safe))
              (__foldr1 __tmp195361 '() _%g188978189148%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp195362 __tmp195360))
                                     (let* ((_%id189193%_ _%g188979189149%_)
                                            (_%args189202%_
                                             (let ((__tmp195363
                                                    (lambda (_%g189194189197%_
                                                             _%g189195189199%_)
                                                      (cons _%g189194189197%_
                                                            _%g189195189199%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp195363
                                                '()
                                                _%g188978189148%_)))
                                            (_%body189211%_
                                             (let ((__tmp195364
                                                    (lambda (_%g189203189206%_
                                                             _%g189204189208%_)
                                                      (cons _%g189203189206%_
                                                            _%g189204189208%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp195364
                                                '()
                                                _%g188977189147%_)))
                                            (_%init189213%_
                                             (map list
                                                  _%args189202%_
                                                  _%rands188971%_)))
                                       (cons 'let
                                             (cons _%id189193%_
                                                   (cons _%init189213%_
                                                         _%body189211%_))))
                                     (let ((__tmp195365
                                            (let ((__tmp195366
                                                   (lambda (_%g189215189218%_
                                                            _%g189216189220%_)
                                                     (cons _%g189215189218%_
                                                           _%g189216189220%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp195366
                                               '()
                                               _%g188978189148%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx188674%_
                                        __tmp195365
                                        _%rands188971%_)))))
                              (_%__kont194698194699%_
                               (lambda ()
                                 (cons _%rator188970%_ _%rands188971%_))))
                          (let ((_%__match194757194758%_
                                 (lambda (_%e188980189038%_
                                          _%hd188981189041%_
                                          _%tl188982189043%_
                                          _%e188983189046%_
                                          _%hd188984189049%_
                                          _%tl188985189051%_
                                          _%e188986189054%_
                                          _%hd188987189057%_
                                          _%tl188988189059%_
                                          _%e188989189062%_
                                          _%hd188990189065%_
                                          _%tl188991189067%_
                                          _%e188992189070%_
                                          _%hd188993189073%_
                                          _%tl188994189075%_
                                          _%e188995189078%_
                                          _%hd188996189081%_
                                          _%tl188997189083%_
                                          _%e188998189086%_
                                          _%hd188999189089%_
                                          _%tl189000189091%_
                                          _%__splice194694194695%_
                                          _%target189001189094%_
                                          _%tl189003189096%_)
                                   (letrec ((_%loop189004189099%_
                                             (lambda (_%hd189002189102%_
                                                      _%arg189008189104%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd189002189102%_))
                                                   (let ((_%e189005189106%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd189002189102%_))))
                                                     (let ((_%lp-tl189007189111%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e189005189106%_)))
                                                           (_%lp-hd189006189109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e189005189106%_))))
                                                       (_%loop189004189099%_
                                                        _%lp-tl189007189111%_
                                                        (cons _%lp-hd189006189109%_
                                                              _%arg189008189104%_))))
                                                   (let ((_%arg189009189114%_
                                                          (reverse _%arg189008189104%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl189000189091%_))
                                                         (let ((_%__splice194696194697%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl189000189091%_
                           '0))))
                   (let ((_%tl189012189118%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice194696194697%_ '1)))
                         (_%target189010189116%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice194696194697%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl189012189118%_))
                         (letrec ((_%loop189013189121%_
                                   (lambda (_%hd189011189124%_
                                            _%body189017189126%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd189011189124%_))
                                         (let ((_%e189014189128%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd189011189124%_))))
                                           (let ((_%lp-tl189016189133%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189014189128%_)))
                                                 (_%lp-hd189015189131%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189014189128%_))))
                                             (_%loop189013189121%_
                                              _%lp-tl189016189133%_
                                              (cons _%lp-hd189015189131%_
                                                    _%body189017189126%_))))
                                         (let ((_%body189018189136%_
                                                (reverse _%body189017189126%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl188994189075%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl188988189059%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl188985189051%_))
                                                       (let ((_%e189019189138%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl188985189051%_))))
                 (let ((_%tl189021189143%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e189019189138%_)))
                       (_%hd189020189141%_
                        (let ()
                          (declare (not safe))
                          (##car _%e189019189138%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl189021189143%_))
                       (let ((_%g188976189146%_ _%hd189020189141%_)
                             (_%g188977189147%_ _%body189018189136%_)
                             (_%g188978189148%_ _%arg189009189114%_)
                             (_%g188979189149%_ _%hd188990189065%_))
                         (if (eq? _%g188979189149%_ _%g188976189146%_)
                             (_%__kont194692194693%_
                              _%g188976189146%_
                              _%g188977189147%_
                              _%g188978189148%_
                              _%g188979189149%_)
                             (_%__kont194698194699%_)))
                       (_%__kont194698194699%_))))
               (_%__kont194698194699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont194698194699%_))
                                               (_%__kont194698194699%_)))))))
                           (_%loop189013189121%_ _%target189010189116%_ '()))
                         (_%__kont194698194699%_))))
                 (_%__kont194698194699%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop189004189099%_
                                      _%target189001189094%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx194690194691%_))
                                (let ((_%e188980189038%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx194690194691%_))))
                                  (let ((_%tl188982189043%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188980189038%_)))
                                        (_%hd188981189041%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188980189038%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd188981189041%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd188981189041%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl188982189043%_))
                                                (let ((_%e188983189046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl188982189043%_))))
                                                  (let ((_%tl188985189051%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e188983189046%_)))
                                                        (_%hd188984189049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e188983189046%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd188984189049%_))
                                                        (let ((_%e188986189054%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd188984189049%_))))
                  (let ((_%tl188988189059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e188986189054%_)))
                        (_%hd188987189057%_
                         (let ()
                           (declare (not safe))
                           (##car _%e188986189054%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd188987189057%_))
                        (let ((_%e188989189062%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd188987189057%_))))
                          (let ((_%tl188991189067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188989189062%_)))
                                (_%hd188990189065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188989189062%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188991189067%_))
                                (let ((_%e188992189070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188991189067%_))))
                                  (let ((_%tl188994189075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188992189070%_)))
                                        (_%hd188993189073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188992189070%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd188993189073%_))
                                        (let ((_%e188995189078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd188993189073%_))))
                                          (let ((_%tl188997189083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e188995189078%_)))
                                                (_%hd188996189081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e188995189078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd188996189081%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd188996189081%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl188997189083%_))
                                                        (let ((_%e188998189086%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl188997189083%_))))
                  (let ((_%tl189000189091%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e188998189086%_)))
                        (_%hd188999189089%_
                         (let ()
                           (declare (not safe))
                           (##car _%e188998189086%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd188999189089%_))
                        (let ((_%__splice194694194695%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd188999189089%_
                                  '0))))
                          (let ((_%tl189003189096%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice194694194695%_ '1)))
                                (_%target189001189094%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice194694194695%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189003189096%_))
                                (_%__match194757194758%_
                                 _%e188980189038%_
                                 _%hd188981189041%_
                                 _%tl188982189043%_
                                 _%e188983189046%_
                                 _%hd188984189049%_
                                 _%tl188985189051%_
                                 _%e188986189054%_
                                 _%hd188987189057%_
                                 _%tl188988189059%_
                                 _%e188989189062%_
                                 _%hd188990189065%_
                                 _%tl188991189067%_
                                 _%e188992189070%_
                                 _%hd188993189073%_
                                 _%tl188994189075%_
                                 _%e188995189078%_
                                 _%hd188996189081%_
                                 _%tl188997189083%_
                                 _%e188998189086%_
                                 _%hd188999189089%_
                                 _%tl189000189091%_
                                 _%__splice194694194695%_
                                 _%target189001189094%_
                                 _%tl189003189096%_)
                                (_%__kont194698194699%_))))
                        (_%__kont194698194699%_))))
                (_%__kont194698194699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont194698194699%_))
                                                (_%__kont194698194699%_))))
                                        (_%__kont194698194699%_))))
                                (_%__kont194698194699%_))))
                        (_%__kont194698194699%_))))
                (_%__kont194698194699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont194698194699%_))
                                            (_%__kont194698194699%_))
                                        (_%__kont194698194699%_))))
                                (_%__kont194698194699%_)))))))))
          (let* ((_%g188678188701%_
                  (lambda (_%g188679188698%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188679188698%_))))
                 (_%g188677188960%_
                  (lambda (_%g188679188704%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188679188704%_))
                        (let ((_%e188682188706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188679188704%_))))
                          (let ((_%hd188683188709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188682188706%_)))
                                (_%tl188684188711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188682188706%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188684188711%_))
                                (let ((_%e188685188714%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188684188711%_))))
                                  (let ((_%hd188686188717%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188685188714%_)))
                                        (_%tl188687188719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188685188714%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl188687188719%_))
                                        (let ((_g195367_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl188687188719%_
                                                  '0))))
                                          (begin
                                            (let ((_g195368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g195367_)
                                                         (##values-length
                                                          _g195367_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g195368_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g195368_)))
                                            (let ((_%target188688188722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g195367_
                                                      0)))
                                                  (_%tl188690188724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g195367_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl188690188724%_))
                                                  (letrec ((_%loop188691188727%_
                                                            (lambda (_%hd188689188730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand188695188732%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd188689188730%_))
                          (let ((_%e188692188734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd188689188730%_))))
                            (let ((_%lp-hd188693188737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188692188734%_)))
                                  (_%lp-tl188694188739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188692188734%_))))
                              (_%loop188691188727%_
                               _%lp-tl188694188739%_
                               (cons _%lp-hd188693188737%_
                                     _%rand188695188732%_))))
                          (let ((_%rand188696188742%_
                                 (reverse _%rand188695188732%_)))
                            ((lambda (_%g188680188744%_ _%g188681188745%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call188676%_
                                    _%g188681188745%_
                                    (let ((__tmp195369
                                           (lambda (_%g188762188765%_
                                                    _%g188763188767%_)
                                             (cons _%g188762188765%_
                                                   _%g188763188767%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp195369
                                       '()
                                       _%g188680188744%_)))
                                   (let* ((_%__stx194806194807%_
                                           _%g188681188745%_)
                                          (_%g188771188783%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx194806194807%_)))))
                                     (let ((_%__kont194808194809%_
                                            (lambda ()
                                              (let ((_%f188820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self188673%_
                                                        _%g188681188745%_))))
                                                (if (and (let ((__tmp195370
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f188820%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp195370))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f188820%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp188822%_ ((_%rest188825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp195372
                                                (lambda (_%g188942188945%_
                                                         _%g188943188947%_)
                                                  (cons _%g188942188945%_
                                                        _%g188943188947%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp195372
                                            '()
                                            _%g188680188744%_))))
                               (_%bind188827%_ '())
                               (_%args188828%_ '()))
              (let* ((_%rest188829188837%_ _%rest188825%_)
                     (_%else188831188845%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind188827%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f188820%_
                                                      _%args188828%_)
                                                '()))))))
                     (_%K188833188931%_
                      (lambda (_%rest188848%_ _%e188849%_)
                        (let* ((_%__stx194760194761%_ _%e188849%_)
                               (_%g188854188872%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx194760194761%_)))))
                          (let ((_%__kont194762194763%_
                                 (lambda ()
                                   (_%lp188822%_
                                    _%rest188848%_
                                    _%bind188827%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e188849%_))
                                          _%args188828%_))))
                                (_%__kont194764194765%_
                                 (lambda ()
                                   (_%lp188822%_
                                    _%rest188848%_
                                    _%bind188827%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e188849%_))
                                          _%args188828%_))))
                                (_%__kont194766194767%_
                                 (lambda ()
                                   (let ((_%tmp188879%_
                                          (let ((__tmp195371
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp195371))))
                                     (_%lp188822%_
                                      _%rest188848%_
                                      (cons (cons _%tmp188879%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e188849%_))
                                                        '()))
                                            _%bind188827%_)
                                      (cons _%tmp188879%_ _%args188828%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx194760194761%_))
                                (let ((_%e188856188910%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx194760194761%_))))
                                  (let ((_%tl188858188915%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188856188910%_)))
                                        (_%hd188857188913%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188856188910%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd188857188913%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd188857188913%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl188858188915%_))
                                                (let ((_%e188859188918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl188858188915%_))))
                                                  (let ((_%tl188861188923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e188859188918%_)))
                                                        (_%hd188860188921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e188859188918%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188861188923%_))
                                                        (_%__kont194762194763%_)
                                                        (_%__kont194766194767%_))))
                                                (_%__kont194766194767%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd188857188913%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl188858188915%_))
                                                    (let ((_%e188865188895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl188858188915%_))))
                                                      (let ((_%tl188867188900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e188865188895%_)))
                    (_%hd188866188898%_
                     (let () (declare (not safe)) (##car _%e188865188895%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl188867188900%_))
                    (_%__kont194764194765%_)
                    (_%__kont194766194767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont194766194767%_))
                                                (_%__kont194766194767%_)))
                                        (_%__kont194766194767%_))))
                                (_%__kont194766194767%_)))))))
                (if (pair? _%rest188829188837%_)
                    (let ((_%hd188834188934%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest188829188837%_)))
                          (_%tl188835188936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest188829188837%_))))
                      (let* ((_%e188939%_ _%hd188834188934%_)
                             (_%rest188941%_ _%tl188835188936%_))
                        (_%K188833188931%_ _%rest188941%_ _%e188939%_)))
                    (_%else188831188845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call188676%_
                                                     _%g188681188745%_
                                                     (let ((__tmp195373
                                                            (lambda (_%g188949188952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g188950188954%_)
                      (cons _%g188949188952%_ _%g188950188954%_))))
               (declare (not safe))
               (__foldr1 __tmp195373 '() _%g188680188744%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont194810194811%_
                                            (lambda ()
                                              (_%compile-call188676%_
                                               _%g188681188745%_
                                               (let ((__tmp195374
                                                      (lambda (_%g188789188792%_
                                                               _%g188790188794%_)
                                                        (cons _%g188789188792%_
                                                              _%g188790188794%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp195374
                                                  '()
                                                  _%g188680188744%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx194806194807%_))
                                           (let ((_%e188773188802%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx194806194807%_))))
                                             (let ((_%tl188775188807%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e188773188802%_)))
                                                   (_%hd188774188805%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e188773188802%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd188774188805%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd188774188805%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188775188807%_))
                                                           (let ((_%e188776188810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188775188807%_))))
                     (let ((_%tl188778188815%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188776188810%_)))
                           (_%hd188777188813%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188776188810%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl188778188815%_))
                           (_%__kont194808194809%_)
                           (_%__kont194810194811%_))))
                   (_%__kont194810194811%_))
               (_%__kont194810194811%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont194810194811%_))))
                                           (_%__kont194810194811%_))))))
                             _%rand188696188742%_
                             _%hd188686188717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop188691188727%_
                                                     _%target188688188722%_
                                                     '()))
                                                  (_%g188678188701%_
                                                   _%g188679188704%_)))))
                                        (_%g188678188701%_
                                         _%g188679188704%_))))
                                (_%g188678188701%_ _%g188679188704%_))))
                        (_%g188678188701%_ _%g188679188704%_)))))
            (_%g188677188960%_ _%stx188674%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self188418%_ _%stx188419%_)
        (let* ((_%__stx194878194879%_ _%stx188419%_)
               (_%g188422188451%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194878194879%_)))))
          (let ((_%__kont194880194881%_
                 (lambda (_%g188424188517%_ _%g188425188518%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self188418%_
                        _%stx188419%_)
                       (let ((_%f188540%_
                              (let ((__tmp195375
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g188425188518%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self188418%_
                                 __tmp195375))))
                         (let _%lp188542%_ ((_%rest188545%_
                                             (reverse (let ((__tmp195377
                                                             (lambda (_%g188662188665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g188663188667%_)
                       (cons _%g188662188665%_ _%g188663188667%_))))
                (declare (not safe))
                (__foldr1 __tmp195377 '() _%g188424188517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind188547%_ '())
                                            (_%args188548%_ '()))
                           (let* ((_%rest188549188557%_ _%rest188545%_)
                                  (_%else188551188565%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind188547%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f188540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args188548%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K188553188651%_
                                   (lambda (_%rest188568%_ _%e188569%_)
                                     (let* ((_%__stx194832194833%_ _%e188569%_)
                                            (_%g188574188592%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx194832194833%_)))))
                                       (let ((_%__kont194834194835%_
                                              (lambda ()
                                                (_%lp188542%_
                                                 _%rest188568%_
                                                 _%bind188547%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e188569%_))
                                                       _%args188548%_))))
                                             (_%__kont194836194837%_
                                              (lambda ()
                                                (_%lp188542%_
                                                 _%rest188568%_
                                                 _%bind188547%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e188569%_))
                                                       _%args188548%_))))
                                             (_%__kont194838194839%_
                                              (lambda ()
                                                (let ((_%tmp188599%_
                                                       (let ((__tmp195376
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp195376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp188542%_
                                                   _%rest188568%_
                                                   (cons (cons _%tmp188599%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e188569%_))
                             '()))
                 _%bind188547%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp188599%_
                                                         _%args188548%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx194832194833%_))
                                             (let ((_%e188576188630%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx194832194833%_))))
                                               (let ((_%tl188578188635%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e188576188630%_)))
                                                     (_%hd188577188633%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e188576188630%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd188577188633%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd188577188633%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl188578188635%_))
                     (let ((_%e188579188638%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl188578188635%_))))
                       (let ((_%tl188581188643%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e188579188638%_)))
                             (_%hd188580188641%_
                              (let ()
                                (declare (not safe))
                                (##car _%e188579188638%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl188581188643%_))
                             (_%__kont194834194835%_)
                             (_%__kont194838194839%_))))
                     (_%__kont194838194839%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd188577188633%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl188578188635%_))
                         (let ((_%e188585188615%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl188578188635%_))))
                           (let ((_%tl188587188620%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e188585188615%_)))
                                 (_%hd188586188618%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e188585188615%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl188587188620%_))
                                 (_%__kont194836194837%_)
                                 (_%__kont194838194839%_))))
                         (_%__kont194838194839%_))
                     (_%__kont194838194839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194838194839%_))))
                                             (_%__kont194838194839%_)))))))
                             (if (pair? _%rest188549188557%_)
                                 (let ((_%hd188554188654%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest188549188557%_)))
                                       (_%tl188555188656%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest188549188557%_))))
                                   (let* ((_%e188659%_ _%hd188554188654%_)
                                          (_%rest188661%_ _%tl188555188656%_))
                                     (_%K188553188651%_
                                      _%rest188661%_
                                      _%e188659%_)))
                                 (_%else188551188565%_))))))))
                (_%__kont194884194885%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self188418%_ _%stx188419%_))))
            (let ((_%__match194923194924%_
                   (lambda (_%e188426188463%_
                            _%hd188427188466%_
                            _%tl188428188468%_
                            _%e188429188471%_
                            _%hd188430188474%_
                            _%tl188431188476%_
                            _%e188432188479%_
                            _%hd188433188482%_
                            _%tl188434188484%_
                            _%e188435188487%_
                            _%hd188436188490%_
                            _%tl188437188492%_
                            _%__splice194882194883%_
                            _%target188438188495%_
                            _%tl188440188497%_)
                     (letrec ((_%loop188441188500%_
                               (lambda (_%hd188439188503%_
                                        _%rand188445188505%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188439188503%_))
                                     (let ((_%e188442188507%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188439188503%_))))
                                       (let ((_%lp-tl188444188512%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188442188507%_)))
                                             (_%lp-hd188443188510%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188442188507%_))))
                                         (_%loop188441188500%_
                                          _%lp-tl188444188512%_
                                          (cons _%lp-hd188443188510%_
                                                _%rand188445188505%_))))
                                     (let ((_%rand188446188515%_
                                            (reverse _%rand188445188505%_)))
                                       (_%__kont194880194881%_
                                        _%rand188446188515%_
                                        _%hd188436188490%_))))))
                       (_%loop188441188500%_ _%target188438188495%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194878194879%_))
                  (let ((_%e188426188463%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194878194879%_))))
                    (let ((_%tl188428188468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188426188463%_)))
                          (_%hd188427188466%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188426188463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188428188468%_))
                          (let ((_%e188429188471%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188428188468%_))))
                            (let ((_%tl188431188476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188429188471%_)))
                                  (_%hd188430188474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188429188471%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188430188474%_))
                                  (let ((_%e188432188479%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188430188474%_))))
                                    (let ((_%tl188434188484%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188432188479%_)))
                                          (_%hd188433188482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188432188479%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188433188482%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd188433188482%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188434188484%_))
                                                  (let ((_%e188435188487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188434188484%_))))
                                                    (let ((_%tl188437188492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188435188487%_)))
                                                          (_%hd188436188490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188435188487%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188437188492%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl188431188476%_))
                      (let ((_%__splice194882194883%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl188431188476%_
                                '0))))
                        (let ((_%tl188440188497%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194882194883%_ '1)))
                              (_%target188438188495%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194882194883%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188440188497%_))
                              (_%__match194923194924%_
                               _%e188426188463%_
                               _%hd188427188466%_
                               _%tl188428188468%_
                               _%e188429188471%_
                               _%hd188430188474%_
                               _%tl188431188476%_
                               _%e188432188479%_
                               _%hd188433188482%_
                               _%tl188434188484%_
                               _%e188435188487%_
                               _%hd188436188490%_
                               _%tl188437188492%_
                               _%__splice194882194883%_
                               _%target188438188495%_
                               _%tl188440188497%_)
                              (_%__kont194884194885%_))))
                      (_%__kont194884194885%_))
                  (_%__kont194884194885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194884194885%_))
                                              (_%__kont194884194885%_))
                                          (_%__kont194884194885%_))))
                                  (_%__kont194884194885%_))))
                          (_%__kont194884194885%_))))
                  (_%__kont194884194885%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self188230%_ _%stx188231%_)
        (letrec ((_%simplify188233%_
                  (lambda (_%code188318%_)
                    (let* ((_%code188319188337%_ _%code188318%_)
                           (_%else188321188345%_ (lambda () _%code188318%_))
                           (_%K188323188381%_
                            (lambda (_%expr188348%_ _%test188349%_)
                              (let* ((_%expr188350188358%_ _%expr188348%_)
                                     (_%else188352188366%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test188349%_
                                                    (cons _%expr188348%_
                                                          '())))))
                                     (_%K188354188371%_
                                      (lambda (_%exprs188369%_)
                                        (cons 'and
                                              (cons _%test188349%_
                                                    _%exprs188369%_)))))
                                (if (pair? _%expr188350188358%_)
                                    (let ((_%hd188355188374%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr188350188358%_)))
                                          (_%tl188356188376%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr188350188358%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd188355188374%_ 'and))
                                          (let ((_%exprs188379%_
                                                 _%tl188356188376%_))
                                            (_%K188354188371%_
                                             _%exprs188379%_))
                                          (_%else188352188366%_)))
                                    (_%else188352188366%_))))))
                      (if (pair? _%code188319188337%_)
                          (let ((_%hd188324188384%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code188319188337%_)))
                                (_%tl188325188386%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code188319188337%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd188324188384%_ 'if))
                                (if (pair? _%tl188325188386%_)
                                    (let ((_%hd188326188389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl188325188386%_)))
                                          (_%tl188327188391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl188325188386%_))))
                                      (let ((_%test188394%_
                                             _%hd188326188389%_))
                                        (if (pair? _%tl188327188391%_)
                                            (let ((_%hd188328188396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl188327188391%_)))
                                                  (_%tl188329188398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl188327188391%_))))
                                              (let ((_%expr188401%_
                                                     _%hd188328188396%_))
                                                (if (pair? _%tl188329188398%_)
                                                    (let ((_%hd188330188403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl188329188398%_)))
                                                          (_%tl188331188405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl188329188398%_))))
                                                      (if (pair? _%hd188330188403%_)
                                                          (let ((_%hd188332188408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd188330188403%_)))
                        (_%tl188333188410%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd188330188403%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd188332188408%_ 'quote))
                        (if (pair? _%tl188333188410%_)
                            (let ((_%hd188334188413%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl188333188410%_)))
                                  (_%tl188335188415%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl188333188410%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd188334188413%_ '#f))
                                  (if (null? _%tl188335188415%_)
                                      (if (null? _%tl188331188405%_)
                                          (_%K188323188381%_
                                           _%expr188401%_
                                           _%test188394%_)
                                          (_%else188321188345%_))
                                      (_%else188321188345%_))
                                  (_%else188321188345%_)))
                            (_%else188321188345%_))
                        (_%else188321188345%_)))
                  (_%else188321188345%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else188321188345%_))))
                                            (_%else188321188345%_))))
                                    (_%else188321188345%_))
                                (_%else188321188345%_)))
                          (_%else188321188345%_))))))
          (let* ((_%g188235188256%_
                  (lambda (_%g188236188253%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188236188253%_))))
                 (_%g188234188315%_
                  (lambda (_%g188236188259%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188236188259%_))
                        (let ((_%e188240188261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188236188259%_))))
                          (let ((_%hd188241188264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188240188261%_)))
                                (_%tl188242188266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188240188261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188242188266%_))
                                (let ((_%e188243188269%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188242188266%_))))
                                  (let ((_%hd188244188272%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188243188269%_)))
                                        (_%tl188245188274%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188243188269%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl188245188274%_))
                                        (let ((_%e188246188277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl188245188274%_))))
                                          (let ((_%hd188247188280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e188246188277%_)))
                                                (_%tl188248188282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e188246188277%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl188248188282%_))
                                                (let ((_%e188249188285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl188248188282%_))))
                                                  (let ((_%hd188250188288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e188249188285%_)))
                                                        (_%tl188251188290%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e188249188285%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188251188290%_))
                                                        ((lambda (_%g188237188293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188238188294%_
                          _%g188239188295%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify188233%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self188230%_
                                       _%g188239188295%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self188230%_
                                             _%g188238188294%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self188230%_
                                                   _%g188237188293%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp195378
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self188230%_
                                               _%g188239188295%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp195378
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self188230%_
                                            _%g188238188294%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self188230%_
                                                  _%g188237188293%_))
                                               '()))))))
                 _%hd188250188288%_
                 _%hd188247188280%_
                 _%hd188244188272%_)
                (_%g188235188256%_ _%g188236188259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188235188256%_
                                                 _%g188236188259%_))))
                                        (_%g188235188256%_
                                         _%g188236188259%_))))
                                (_%g188235188256%_ _%g188236188259%_))))
                        (_%g188235188256%_ _%g188236188259%_)))))
            (_%g188234188315%_ _%stx188231%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self188178%_ _%stx188179%_)
        (let* ((_%g188181188194%_
                (lambda (_%g188182188191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188182188191%_))))
               (_%g188180188227%_
                (lambda (_%g188182188197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188182188197%_))
                      (let ((_%e188184188199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188182188197%_))))
                        (let ((_%hd188185188202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188184188199%_)))
                              (_%tl188186188204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188184188199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188186188204%_))
                              (let ((_%e188187188207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl188186188204%_))))
                                (let ((_%hd188188188210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188187188207%_)))
                                      (_%tl188189188212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188187188207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188189188212%_))
                                      ((lambda (_%g188183188215%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g188183188215%_)))
                                       _%hd188188188210%_)
                                      (_%g188181188194%_ _%g188182188197%_))))
                              (_%g188181188194%_ _%g188182188197%_))))
                      (_%g188181188194%_ _%g188182188197%_)))))
          (_%g188180188227%_ _%stx188179%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self188110%_ _%stx188111%_)
        (let* ((_%g188113188130%_
                (lambda (_%g188114188127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188114188127%_))))
               (_%g188112188175%_
                (lambda (_%g188114188133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188114188133%_))
                      (let ((_%e188117188135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188114188133%_))))
                        (let ((_%hd188118188138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188117188135%_)))
                              (_%tl188119188140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188117188135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188119188140%_))
                              (let ((_%e188120188143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl188119188140%_))))
                                (let ((_%hd188121188146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188120188143%_)))
                                      (_%tl188122188148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188120188143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188122188148%_))
                                      (let ((_%e188123188151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188122188148%_))))
                                        (let ((_%hd188124188154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188123188151%_)))
                                              (_%tl188125188156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188123188151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188125188156%_))
                                              ((lambda (_%g188115188159%_
                                                        _%g188116188160%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g188116188160%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self188110%_
                              _%g188115188159%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd188124188154%_
                                               _%hd188121188146%_)
                                              (_%g188113188130%_
                                               _%g188114188133%_))))
                                      (_%g188113188130%_ _%g188114188133%_))))
                              (_%g188113188130%_ _%g188114188133%_))))
                      (_%g188113188130%_ _%g188114188133%_)))))
          (_%g188112188175%_ _%stx188111%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self187921%_ _%stx187922%_)
        (let* ((_%g187924187941%_
                (lambda (_%g187925187938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187925187938%_))))
               (_%g187923188107%_
                (lambda (_%g187925187944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187925187944%_))
                      (let ((_%e187928187946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187925187944%_))))
                        (let ((_%hd187929187949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187928187946%_)))
                              (_%tl187930187951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187928187946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187930187951%_))
                              (let ((_%e187931187954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187930187951%_))))
                                (let ((_%hd187932187957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187931187954%_)))
                                      (_%tl187933187959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187931187954%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187933187959%_))
                                      (let ((_%e187934187962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187933187959%_))))
                                        (let ((_%hd187935187965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187934187962%_)))
                                              (_%tl187936187967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187934187962%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187936187967%_))
                                              ((lambda (_%g187926187970%_
                                                        _%g187927187971%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187921%_ _%g187926187970%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self187921%_
                                  _%g187927187971%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp187986%_ ((_%rest187989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g187927187971%_
                                       (cons _%g187926187970%_ '())))
                                (_%bind187991%_ '())
                                (_%args187992%_ '()))
               (let* ((_%rest187993188001%_ _%rest187989%_)
                      (_%else187995188009%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind187991%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args187992%_)
                                                 '()))))))
                      (_%K187997188095%_
                       (lambda (_%rest188012%_ _%e188013%_)
                         (let* ((_%__stx194926194927%_ _%e188013%_)
                                (_%g188018188036%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx194926194927%_)))))
                           (let ((_%__kont194928194929%_
                                  (lambda ()
                                    (_%lp187986%_
                                     _%rest188012%_
                                     _%bind187991%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e188013%_))
                                           _%args187992%_))))
                                 (_%__kont194930194931%_
                                  (lambda ()
                                    (_%lp187986%_
                                     _%rest188012%_
                                     _%bind187991%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e188013%_))
                                           _%args187992%_))))
                                 (_%__kont194932194933%_
                                  (lambda ()
                                    (let ((_%tmp188043%_
                                           (let ((__tmp195379
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp195379))))
                                      (_%lp187986%_
                                       _%rest188012%_
                                       (cons (cons _%tmp188043%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e188013%_))
                                                         '()))
                                             _%bind187991%_)
                                       (cons _%tmp188043%_ _%args187992%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx194926194927%_))
                                 (let ((_%e188020188074%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx194926194927%_))))
                                   (let ((_%tl188022188079%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e188020188074%_)))
                                         (_%hd188021188077%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e188020188074%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd188021188077%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd188021188077%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl188022188079%_))
                                                 (let ((_%e188023188082%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl188022188079%_))))
                                                   (let ((_%tl188025188087%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e188023188082%_)))
                                                         (_%hd188024188085%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e188023188082%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl188025188087%_))
                                                         (_%__kont194928194929%_)
                                                         (_%__kont194932194933%_))))
                                                 (_%__kont194932194933%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd188021188077%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl188022188079%_))
                                                     (let ((_%e188029188059%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl188022188079%_))))
                                                       (let ((_%tl188031188064%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e188029188059%_)))
                     (_%hd188030188062%_
                      (let () (declare (not safe)) (##car _%e188029188059%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl188031188064%_))
                     (_%__kont194930194931%_)
                     (_%__kont194932194933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194932194933%_))
                                                 (_%__kont194932194933%_)))
                                         (_%__kont194932194933%_))))
                                 (_%__kont194932194933%_)))))))
                 (if (pair? _%rest187993188001%_)
                     (let ((_%hd187998188098%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest187993188001%_)))
                           (_%tl187999188100%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest187993188001%_))))
                       (let* ((_%e188103%_ _%hd187998188098%_)
                              (_%rest188105%_ _%tl187999188100%_))
                         (_%K187997188095%_ _%rest188105%_ _%e188103%_)))
                     (_%else187995188009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd187935187965%_
                                               _%hd187932187957%_)
                                              (_%g187924187941%_
                                               _%g187925187944%_))))
                                      (_%g187924187941%_ _%g187925187944%_))))
                              (_%g187924187941%_ _%g187925187944%_))))
                      (_%g187924187941%_ _%g187925187944%_)))))
          (_%g187923188107%_ _%stx187922%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self187732%_ _%stx187733%_)
        (let* ((_%g187735187752%_
                (lambda (_%g187736187749%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187736187749%_))))
               (_%g187734187918%_
                (lambda (_%g187736187755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187736187755%_))
                      (let ((_%e187739187757%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187736187755%_))))
                        (let ((_%hd187740187760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187739187757%_)))
                              (_%tl187741187762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187739187757%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187741187762%_))
                              (let ((_%e187742187765%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187741187762%_))))
                                (let ((_%hd187743187768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187742187765%_)))
                                      (_%tl187744187770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187742187765%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187744187770%_))
                                      (let ((_%e187745187773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187744187770%_))))
                                        (let ((_%hd187746187776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187745187773%_)))
                                              (_%tl187747187778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187745187773%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187747187778%_))
                                              ((lambda (_%g187737187781%_
                                                        _%g187738187782%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187732%_ _%g187737187781%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self187732%_
                                  _%g187738187782%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp187797%_ ((_%rest187800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g187738187782%_
                                       (cons _%g187737187781%_ '())))
                                (_%bind187802%_ '())
                                (_%args187803%_ '()))
               (let* ((_%rest187804187812%_ _%rest187800%_)
                      (_%else187806187820%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind187802%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args187803%_)
                                                 '()))))))
                      (_%K187808187906%_
                       (lambda (_%rest187823%_ _%e187824%_)
                         (let* ((_%__stx194972194973%_ _%e187824%_)
                                (_%g187829187847%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx194972194973%_)))))
                           (let ((_%__kont194974194975%_
                                  (lambda ()
                                    (_%lp187797%_
                                     _%rest187823%_
                                     _%bind187802%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e187824%_))
                                           _%args187803%_))))
                                 (_%__kont194976194977%_
                                  (lambda ()
                                    (_%lp187797%_
                                     _%rest187823%_
                                     _%bind187802%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e187824%_))
                                           _%args187803%_))))
                                 (_%__kont194978194979%_
                                  (lambda ()
                                    (let ((_%tmp187854%_
                                           (let ((__tmp195380
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp195380))))
                                      (_%lp187797%_
                                       _%rest187823%_
                                       (cons (cons _%tmp187854%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e187824%_))
                                                         '()))
                                             _%bind187802%_)
                                       (cons _%tmp187854%_ _%args187803%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx194972194973%_))
                                 (let ((_%e187831187885%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx194972194973%_))))
                                   (let ((_%tl187833187890%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e187831187885%_)))
                                         (_%hd187832187888%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e187831187885%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd187832187888%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd187832187888%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl187833187890%_))
                                                 (let ((_%e187834187893%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl187833187890%_))))
                                                   (let ((_%tl187836187898%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e187834187893%_)))
                                                         (_%hd187835187896%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e187834187893%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl187836187898%_))
                                                         (_%__kont194974194975%_)
                                                         (_%__kont194978194979%_))))
                                                 (_%__kont194978194979%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd187832187888%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl187833187890%_))
                                                     (let ((_%e187840187870%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl187833187890%_))))
                                                       (let ((_%tl187842187875%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e187840187870%_)))
                     (_%hd187841187873%_
                      (let () (declare (not safe)) (##car _%e187840187870%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl187842187875%_))
                     (_%__kont194976194977%_)
                     (_%__kont194978194979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194978194979%_))
                                                 (_%__kont194978194979%_)))
                                         (_%__kont194978194979%_))))
                                 (_%__kont194978194979%_)))))))
                 (if (pair? _%rest187804187812%_)
                     (let ((_%hd187809187909%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest187804187812%_)))
                           (_%tl187810187911%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest187804187812%_))))
                       (let* ((_%e187914%_ _%hd187809187909%_)
                              (_%rest187916%_ _%tl187810187911%_))
                         (_%K187808187906%_ _%rest187916%_ _%e187914%_)))
                     (_%else187806187820%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd187746187776%_
                                               _%hd187743187768%_)
                                              (_%g187735187752%_
                                               _%g187736187755%_))))
                                      (_%g187735187752%_ _%g187736187755%_))))
                              (_%g187735187752%_ _%g187736187755%_))))
                      (_%g187735187752%_ _%g187736187755%_)))))
          (_%g187734187918%_ _%stx187733%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self187648%_ _%stx187649%_)
        (let* ((_%g187651187672%_
                (lambda (_%g187652187669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187652187669%_))))
               (_%g187650187729%_
                (lambda (_%g187652187675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187652187675%_))
                      (let ((_%e187656187677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187652187675%_))))
                        (let ((_%hd187657187680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187656187677%_)))
                              (_%tl187658187682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187656187677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187658187682%_))
                              (let ((_%e187659187685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187658187682%_))))
                                (let ((_%hd187660187688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187659187685%_)))
                                      (_%tl187661187690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187659187685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187661187690%_))
                                      (let ((_%e187662187693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187661187690%_))))
                                        (let ((_%hd187663187696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187662187693%_)))
                                              (_%tl187664187698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187662187693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187664187698%_))
                                              (let ((_%e187665187701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187664187698%_))))
                                                (let ((_%hd187666187704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187665187701%_)))
                                                      (_%tl187667187706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187665187701%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187667187706%_))
                                                      ((lambda (_%g187653187709%_
                                                                _%g187654187710%_
                                                                _%g187655187711%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self187648%_
                                _%g187653187709%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self187648%_
                                      _%g187654187710%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self187648%_
                                            _%g187655187711%_))
                                         (cons ''#f '()))))))
               _%hd187666187704%_
               _%hd187663187696%_
               _%hd187660187688%_)
              (_%g187651187672%_ _%g187652187675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g187651187672%_
                                               _%g187652187675%_))))
                                      (_%g187651187672%_ _%g187652187675%_))))
                              (_%g187651187672%_ _%g187652187675%_))))
                      (_%g187651187672%_ _%g187652187675%_)))))
          (_%g187650187729%_ _%stx187649%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self187548%_ _%stx187549%_)
        (let* ((_%g187551187576%_
                (lambda (_%g187552187573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187552187573%_))))
               (_%g187550187645%_
                (lambda (_%g187552187579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187552187579%_))
                      (let ((_%e187557187581%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187552187579%_))))
                        (let ((_%hd187558187584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187557187581%_)))
                              (_%tl187559187586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187557187581%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187559187586%_))
                              (let ((_%e187560187589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187559187586%_))))
                                (let ((_%hd187561187592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187560187589%_)))
                                      (_%tl187562187594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187560187589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187562187594%_))
                                      (let ((_%e187563187597%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187562187594%_))))
                                        (let ((_%hd187564187600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187563187597%_)))
                                              (_%tl187565187602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187563187597%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187565187602%_))
                                              (let ((_%e187566187605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187565187602%_))))
                                                (let ((_%hd187567187608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187566187605%_)))
                                                      (_%tl187568187610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187566187605%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187568187610%_))
                                                      (let ((_%e187569187613%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187568187610%_))))
                (let ((_%hd187570187616%_
                       (let () (declare (not safe)) (##car _%e187569187613%_)))
                      (_%tl187571187618%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e187569187613%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187571187618%_))
                      ((lambda (_%g187553187621%_
                                _%g187554187622%_
                                _%g187555187623%_
                                _%g187556187624%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self187548%_
                                        _%g187554187622%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self187548%_
                                              _%g187553187621%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self187548%_
                                                    _%g187555187623%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self187548%_
                                                          _%g187556187624%_))
                                                       (cons ''#f '())))))))
                       _%hd187570187616%_
                       _%hd187567187608%_
                       _%hd187564187600%_
                       _%hd187561187592%_)
                      (_%g187551187576%_ _%g187552187579%_))))
              (_%g187551187576%_ _%g187552187579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g187551187576%_
                                               _%g187552187579%_))))
                                      (_%g187551187576%_ _%g187552187579%_))))
                              (_%g187551187576%_ _%g187552187579%_))))
                      (_%g187551187576%_ _%g187552187579%_)))))
          (_%g187550187645%_ _%stx187549%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self187464%_ _%stx187465%_)
        (let* ((_%g187467187488%_
                (lambda (_%g187468187485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187468187485%_))))
               (_%g187466187545%_
                (lambda (_%g187468187491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187468187491%_))
                      (let ((_%e187472187493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187468187491%_))))
                        (let ((_%hd187473187496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187472187493%_)))
                              (_%tl187474187498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187472187493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187474187498%_))
                              (let ((_%e187475187501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187474187498%_))))
                                (let ((_%hd187476187504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187475187501%_)))
                                      (_%tl187477187506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187475187501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187477187506%_))
                                      (let ((_%e187478187509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187477187506%_))))
                                        (let ((_%hd187479187512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187478187509%_)))
                                              (_%tl187480187514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187478187509%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187480187514%_))
                                              (let ((_%e187481187517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187480187514%_))))
                                                (let ((_%hd187482187520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187481187517%_)))
                                                      (_%tl187483187522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187481187517%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187483187522%_))
                                                      ((lambda (_%g187469187525%_
                                                                _%g187470187526%_
                                                                _%g187471187527%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self187464%_
                                _%g187469187525%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self187464%_
                                      _%g187470187526%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self187464%_
                                            _%g187471187527%_))
                                         (cons ''#f '()))))))
               _%hd187482187520%_
               _%hd187479187512%_
               _%hd187476187504%_)
              (_%g187467187488%_ _%g187468187491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g187467187488%_
                                               _%g187468187491%_))))
                                      (_%g187467187488%_ _%g187468187491%_))))
                              (_%g187467187488%_ _%g187468187491%_))))
                      (_%g187467187488%_ _%g187468187491%_)))))
          (_%g187466187545%_ _%stx187465%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self187364%_ _%stx187365%_)
        (let* ((_%g187367187392%_
                (lambda (_%g187368187389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187368187389%_))))
               (_%g187366187461%_
                (lambda (_%g187368187395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187368187395%_))
                      (let ((_%e187373187397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187368187395%_))))
                        (let ((_%hd187374187400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187373187397%_)))
                              (_%tl187375187402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187373187397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187375187402%_))
                              (let ((_%e187376187405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187375187402%_))))
                                (let ((_%hd187377187408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187376187405%_)))
                                      (_%tl187378187410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187376187405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187378187410%_))
                                      (let ((_%e187379187413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187378187410%_))))
                                        (let ((_%hd187380187416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187379187413%_)))
                                              (_%tl187381187418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187379187413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187381187418%_))
                                              (let ((_%e187382187421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187381187418%_))))
                                                (let ((_%hd187383187424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187382187421%_)))
                                                      (_%tl187384187426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187382187421%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187384187426%_))
                                                      (let ((_%e187385187429%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187384187426%_))))
                (let ((_%hd187386187432%_
                       (let () (declare (not safe)) (##car _%e187385187429%_)))
                      (_%tl187387187434%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e187385187429%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187387187434%_))
                      ((lambda (_%g187369187437%_
                                _%g187370187438%_
                                _%g187371187439%_
                                _%g187372187440%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self187364%_
                                        _%g187370187438%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self187364%_
                                              _%g187369187437%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self187364%_
                                                    _%g187371187439%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self187364%_
                                                          _%g187372187440%_))
                                                       (cons ''#f '())))))))
                       _%hd187386187432%_
                       _%hd187383187424%_
                       _%hd187380187416%_
                       _%hd187377187408%_)
                      (_%g187367187392%_ _%g187368187395%_))))
              (_%g187367187392%_ _%g187368187395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g187367187392%_
                                               _%g187368187395%_))))
                                      (_%g187367187392%_ _%g187368187395%_))))
                              (_%g187367187392%_ _%g187368187395%_))))
                      (_%g187367187392%_ _%g187368187395%_)))))
          (_%g187366187461%_ _%stx187365%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self187159%_ _%stx187160%_)
        (let* ((_%g187162187183%_
                (lambda (_%g187163187180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g187163187180%_))))
               (_%g187161187361%_
                (lambda (_%g187163187186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g187163187186%_))
                      (let ((_%e187167187188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g187163187186%_))))
                        (let ((_%hd187168187191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187167187188%_)))
                              (_%tl187169187193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187167187188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187169187193%_))
                              (let ((_%e187170187196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187169187193%_))))
                                (let ((_%hd187171187199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187170187196%_)))
                                      (_%tl187172187201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187170187196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187172187201%_))
                                      (let ((_%e187173187204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187172187201%_))))
                                        (let ((_%hd187174187207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187173187204%_)))
                                              (_%tl187175187209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187173187204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187175187209%_))
                                              (let ((_%e187176187212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187175187209%_))))
                                                (let ((_%hd187177187215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187176187212%_)))
                                                      (_%tl187178187217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187176187212%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187178187217%_))
                                                      ((lambda (_%g187164187220%_
                                                                _%g187165187221%_
                                                                _%g187166187222%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self187159%_
                                    _%g187164187220%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self187159%_
                                          _%g187165187221%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp187240%_ ((_%rest187243%_
                                         (cons _%g187165187221%_
                                               (cons _%g187164187220%_ '())))
                                        (_%bind187245%_ '())
                                        (_%args187246%_ '()))
                       (let* ((_%rest187247187255%_ _%rest187243%_)
                              (_%else187249187263%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind187245%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp195381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp195381 _%args187246%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K187251187349%_
                               (lambda (_%rest187266%_ _%e187267%_)
                                 (let* ((_%__stx195018195019%_ _%e187267%_)
                                        (_%g187272187290%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx195018195019%_)))))
                                   (let ((_%__kont195020195021%_
                                          (lambda ()
                                            (_%lp187240%_
                                             _%rest187266%_
                                             _%bind187245%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e187267%_))
                                                   _%args187246%_))))
                                         (_%__kont195022195023%_
                                          (lambda ()
                                            (_%lp187240%_
                                             _%rest187266%_
                                             _%bind187245%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e187267%_))
                                                   _%args187246%_))))
                                         (_%__kont195024195025%_
                                          (lambda ()
                                            (let ((_%tmp187297%_
                                                   (let ((__tmp195382
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp195382))))
                                              (_%lp187240%_
                                               _%rest187266%_
                                               (cons (cons _%tmp187297%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e187267%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind187245%_)
                                               (cons _%tmp187297%_
                                                     _%args187246%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx195018195019%_))
                                         (let ((_%e187274187328%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx195018195019%_))))
                                           (let ((_%tl187276187333%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e187274187328%_)))
                                                 (_%hd187275187331%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e187274187328%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd187275187331%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd187275187331%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl187276187333%_))
                                                         (let ((_%e187277187336%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl187276187333%_))))
                   (let ((_%tl187279187341%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e187277187336%_)))
                         (_%hd187278187339%_
                          (let ()
                            (declare (not safe))
                            (##car _%e187277187336%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl187279187341%_))
                         (_%__kont195020195021%_)
                         (_%__kont195024195025%_))))
                 (_%__kont195024195025%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd187275187331%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl187276187333%_))
                     (let ((_%e187283187313%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl187276187333%_))))
                       (let ((_%tl187285187318%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e187283187313%_)))
                             (_%hd187284187316%_
                              (let ()
                                (declare (not safe))
                                (##car _%e187283187313%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl187285187318%_))
                             (_%__kont195022195023%_)
                             (_%__kont195024195025%_))))
                     (_%__kont195024195025%_))
                 (_%__kont195024195025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont195024195025%_))))
                                         (_%__kont195024195025%_)))))))
                         (if (pair? _%rest187247187255%_)
                             (let ((_%hd187252187352%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest187247187255%_)))
                                   (_%tl187253187354%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest187247187255%_))))
                               (let* ((_%e187357%_ _%hd187252187352%_)
                                      (_%rest187359%_ _%tl187253187354%_))
                                 (_%K187251187349%_
                                  _%rest187359%_
                                  _%e187357%_)))
                             (_%else187249187263%_))))))
               _%hd187177187215%_
               _%hd187174187207%_
               _%hd187171187199%_)
              (_%g187162187183%_ _%g187163187186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g187162187183%_
                                               _%g187163187186%_))))
                                      (_%g187162187183%_ _%g187163187186%_))))
                              (_%g187162187183%_ _%g187163187186%_))))
                      (_%g187162187183%_ _%g187163187186%_)))))
          (_%g187161187361%_ _%stx187160%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self186938%_ _%stx186939%_)
        (let* ((_%g186941186966%_
                (lambda (_%g186942186963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186942186963%_))))
               (_%g186940187156%_
                (lambda (_%g186942186969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186942186969%_))
                      (let ((_%e186947186971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g186942186969%_))))
                        (let ((_%hd186948186974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186947186971%_)))
                              (_%tl186949186976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186947186971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186949186976%_))
                              (let ((_%e186950186979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186949186976%_))))
                                (let ((_%hd186951186982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186950186979%_)))
                                      (_%tl186952186984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186950186979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186952186984%_))
                                      (let ((_%e186953186987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186952186984%_))))
                                        (let ((_%hd186954186990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186953186987%_)))
                                              (_%tl186955186992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186953186987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186955186992%_))
                                              (let ((_%e186956186995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186955186992%_))))
                                                (let ((_%hd186957186998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186956186995%_)))
                                                      (_%tl186958187000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186956186995%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186958187000%_))
                                                      (let ((_%e186959187003%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186958187000%_))))
                (let ((_%hd186960187006%_
                       (let () (declare (not safe)) (##car _%e186959187003%_)))
                      (_%tl186961187008%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e186959187003%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186961187008%_))
                      ((lambda (_%g186943187011%_
                                _%g186944187012%_
                                _%g186945187013%_
                                _%g186946187014%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self186938%_
                                            _%g186944187012%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self186938%_
                                                  _%g186943187011%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self186938%_
                                                        _%g186945187013%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp187035%_ ((_%rest187038%_
                                                 (cons _%g186945187013%_
                                                       (cons _%g186943187011%_
                                                             (cons _%g186944187012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind187040%_ '())
                                                (_%args187041%_ '()))
                               (let* ((_%rest187042187050%_ _%rest187038%_)
                                      (_%else187044187058%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind187040%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195383 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195383 _%args187041%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K187046187144%_
                                       (lambda (_%rest187061%_ _%e187062%_)
                                         (let* ((_%__stx195064195065%_
                                                 _%e187062%_)
                                                (_%g187067187085%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx195064195065%_)))))
                                           (let ((_%__kont195066195067%_
                                                  (lambda ()
                                                    (_%lp187035%_
                                                     _%rest187061%_
                                                     _%bind187040%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e187062%_))
                                                           _%args187041%_))))
                                                 (_%__kont195068195069%_
                                                  (lambda ()
                                                    (_%lp187035%_
                                                     _%rest187061%_
                                                     _%bind187040%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e187062%_))
                                                           _%args187041%_))))
                                                 (_%__kont195070195071%_
                                                  (lambda ()
                                                    (let ((_%tmp187092%_
                                                           (let ((__tmp195384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp195384))))
              (_%lp187035%_
               _%rest187061%_
               (cons (cons _%tmp187092%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e187062%_))
                                 '()))
                     _%bind187040%_)
               (cons _%tmp187092%_ _%args187041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx195064195065%_))
                                                 (let ((_%e187069187123%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx195064195065%_))))
                                                   (let ((_%tl187071187128%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e187069187123%_)))
                                                         (_%hd187070187126%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e187069187123%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd187070187126%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd187070187126%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl187071187128%_))
                         (let ((_%e187072187131%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl187071187128%_))))
                           (let ((_%tl187074187136%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e187072187131%_)))
                                 (_%hd187073187134%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e187072187131%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl187074187136%_))
                                 (_%__kont195066195067%_)
                                 (_%__kont195070195071%_))))
                         (_%__kont195070195071%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd187070187126%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl187071187128%_))
                             (let ((_%e187078187108%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl187071187128%_))))
                               (let ((_%tl187080187113%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e187078187108%_)))
                                     (_%hd187079187111%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e187078187108%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl187080187113%_))
                                     (_%__kont195068195069%_)
                                     (_%__kont195070195071%_))))
                             (_%__kont195070195071%_))
                         (_%__kont195070195071%_)))
                 (_%__kont195070195071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont195070195071%_)))))))
                                 (if (pair? _%rest187042187050%_)
                                     (let ((_%hd187047187147%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest187042187050%_)))
                                           (_%tl187048187149%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest187042187050%_))))
                                       (let* ((_%e187152%_ _%hd187047187147%_)
                                              (_%rest187154%_
                                               _%tl187048187149%_))
                                         (_%K187046187144%_
                                          _%rest187154%_
                                          _%e187152%_)))
                                     (_%else187044187058%_))))))
                       _%hd186960187006%_
                       _%hd186957186998%_
                       _%hd186954186990%_
                       _%hd186951186982%_)
                      (_%g186941186966%_ _%g186942186969%_))))
              (_%g186941186966%_ _%g186942186969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g186941186966%_
                                               _%g186942186969%_))))
                                      (_%g186941186966%_ _%g186942186969%_))))
                              (_%g186941186966%_ _%g186942186969%_))))
                      (_%g186941186966%_ _%g186942186969%_)))))
          (_%g186940187156%_ _%stx186939%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self186777%_ _%stx186778%_)
        (letrec ((_%import-set-template186780%_
                  (lambda (_%in186883%_ _%phi186884%_)
                    (let ((_%iphi186886%_
                           (fx+ _%phi186884%_
                                (##direct-structure-ref
                                 _%in186883%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports186887%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in186883%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp186889%_ ((_%rest186891%_ _%imports186887%_)
                                         (_%r186892%_ '()))
                        (let* ((_%rest186893186901%_ _%rest186891%_)
                               (_%else186895186909%_ (lambda () _%r186892%_))
                               (_%K186897186926%_
                                (lambda (_%rest186912%_ _%in186913%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in186913%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi186886%_))
                                          (_%lp186889%_
                                           _%rest186912%_
                                           (cons _%in186913%_ _%r186892%_))
                                          (_%lp186889%_
                                           _%rest186912%_
                                           _%r186892%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in186913%_
                                             'gx#module-import::t))
                                          (let ((_%iphi186917%_
                                                 (fx+ _%phi186884%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in186913%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi186917%_))
                                                (_%lp186889%_
                                                 _%rest186912%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in186913%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r186892%_))
                                                (_%lp186889%_
                                                 _%rest186912%_
                                                 _%r186892%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in186913%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi186920%_
                                                     (fx+ _%iphi186886%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in186913%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi186920%_))
                                                    (_%lp186889%_
                                                     _%rest186912%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in186913%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r186892%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi186920%_))
                                                        (_%lp186889%_
                                                         _%rest186912%_
                                                         (let ((__tmp195385
                                                                (_%import-set-template186780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in186913%_
                         _%iphi186886%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r186892%_ __tmp195385)))
                (_%lp186889%_ _%rest186912%_ _%r186892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp186889%_
                                               _%rest186912%_
                                               _%r186892%_)))))))
                          (if (pair? _%rest186893186901%_)
                              (let ((_%hd186898186929%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest186893186901%_)))
                                    (_%tl186899186931%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest186893186901%_))))
                                (let* ((_%in186934%_ _%hd186898186929%_)
                                       (_%rest186936%_ _%tl186899186931%_))
                                  (_%K186897186926%_
                                   _%rest186936%_
                                   _%in186934%_)))
                              (_%else186895186909%_))))))))
          (let* ((_%g186782186792%_
                  (lambda (_%g186783186789%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g186783186789%_))))
                 (_%g186781186880%_
                  (lambda (_%g186783186795%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g186783186795%_))
                        (let ((_%e186785186797%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g186783186795%_))))
                          (let ((_%hd186786186800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186785186797%_)))
                                (_%tl186787186802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186785186797%_))))
                            ((lambda (_%g186784186805%_)
                               (let ((_%ht186816%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp186818%_ ((_%rest186820%_
                                                     _%g186784186805%_)
                                                    (_%loads186821%_ '()))
                                   (letrec ((_%K186823%_
                                             (lambda (_%ctx186873%_
                                                      _%rest186874%_)
                                               (let ((_%id186876%_
                                                      (##structure-ref
                                                       _%ctx186873%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht186816%_
                                                        _%id186876%_))
                                                     (_%lp186818%_
                                                      _%rest186874%_
                                                      _%loads186821%_)
                                                     (let ((_%rt186878%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id186876%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht186816%_
                                                          _%id186876%_
                                                          _%rt186878%_))
                                                       (_%lp186818%_
                                                        _%rest186874%_
                                                        (cons _%rt186878%_
                                                              _%loads186821%_))))))))
                                     (let* ((_%rest186824186832%_
                                             _%rest186820%_)
                                            (_%else186826186844%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp195387
                                                            (lambda (_%g186839186841%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g186839186841%_)))
                   (__tmp195386 (reverse _%loads186821%_)))
               (declare (not safe))
               (##map __tmp195387 __tmp195386)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K186828186861%_
                                             (lambda (_%rest186847%_
                                                      _%in186848%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in186848%_
                                                      'gx#module-context::t))
                                                   (_%K186823%_
                                                    _%in186848%_
                                                    _%rest186847%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in186848%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in186848%_
                               '3
                               '#f
                               '#f)))
                   (_%K186823%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in186848%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest186847%_)
                   (_%lp186818%_ _%rest186847%_ _%loads186821%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in186848%_
                      'gx#import-set::t))
                   (let ((_%phi186853%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in186848%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi186853%_)
                         (_%K186823%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in186848%_
                             '1
                             '#f
                             '#f))
                          _%rest186847%_)
                         (if (fxpositive? _%phi186853%_)
                             (let ((_%deps186857%_
                                    (_%import-set-template186780%_
                                     _%in186848%_
                                     '0)))
                               (_%lp186818%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest186847%_
                                   _%deps186857%_))
                                _%loads186821%_))
                             (_%lp186818%_ _%rest186847%_ _%loads186821%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx186778%_
                      _%in186848%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest186824186832%_)
                                           (let ((_%hd186829186864%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest186824186832%_)))
                                                 (_%tl186830186866%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest186824186832%_))))
                                             (let* ((_%in186869%_
                                                     _%hd186829186864%_)
                                                    (_%rest186871%_
                                                     _%tl186830186866%_))
                                               (_%K186828186861%_
                                                _%rest186871%_
                                                _%in186869%_)))
                                           (_%else186826186844%_)))))))
                             _%tl186787186802%_)))
                        (_%g186782186792%_ _%g186783186795%_)))))
            (_%g186781186880%_ _%stx186778%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self186591%_ _%stx186592%_)
        (letrec ((_%add-lift!186594%_
                  (lambda (_%expr186775%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr186775%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote186595%_
                  (lambda (_%id186772%_ _%marks186773%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id186772%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks186773%_
                                                        '()))))))))
                 (_%generate-simple186596%_
                  (lambda (_%stxq186767%_)
                    (let ((_%gid186769%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid186770%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq186767%_))))
                      (_%add-lift!186594%_
                       (cons 'define
                             (cons _%gid186769%_
                                   (cons (_%generate-syntax-quote186595%_
                                          _%qid186770%_
                                          ''())
                                         '()))))
                      (let ((__tmp195388
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp195388 _%stxq186767%_ _%gid186769%_))
                      _%gid186769%_)))
                 (_%generate-serialized186597%_
                  (lambda (_%stxq186757%_ _%marks186758%_)
                    (let* ((_%mark-refs186760%_
                            (map _%generate-mark186598%_ _%marks186758%_))
                           (_%gid186762%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid186764%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq186757%_))))
                      (_%add-lift!186594%_
                       (cons 'define
                             (cons _%gid186762%_
                                   (cons (_%generate-syntax-quote186595%_
                                          _%qid186764%_
                                          (cons 'list _%mark-refs186760%_))
                                         '()))))
                      (let ((__tmp195389
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp195389 _%stxq186757%_ _%gid186762%_))
                      _%gid186762%_)))
                 (_%generate-mark186598%_
                  (lambda (_%mark186742%_)
                    (let ((_%$e186744%_
                           (let ((__tmp195390
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp195390 _%mark186742%_))))
                      (if _%$e186744%_
                          _%$e186744%_
                          (let* ((_%gid186748%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr186750%_
                                  (_%serialize-mark186599%_ _%mark186742%_))
                                 (_%ctx186752%_
                                  (let ((__tmp195391
                                         (##structure-ref
                                          _%mark186742%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp195391)))
                                 (_%ctx-ref186754%_
                                  (if (eq? _%ctx186752%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref186600%_
                                                               _%ctx186752%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp195392
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp195392
                               _%mark186742%_
                               _%gid186748%_))
                            (_%add-lift!186594%_
                             (cons 'define
                                   (cons _%gid186748%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr186750%_ '()))
                   (cons _%ctx-ref186754%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid186748%_)))))
                 (_%serialize-mark186599%_
                  (lambda (_%mark186690%_)
                    (letrec ((_%quote-e186692%_
                              (lambda (_%sym186740%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym186740%_))
                                    _%sym186740%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym186740%_))))))
                      (let* ((_%mark186693186702%_ _%mark186690%_)
                             (_%E186695186705%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark186693186702%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K186696186717%_
                              (lambda (_%trace186708%_
                                       _%phi186709%_
                                       _%ctx186710%_
                                       _%subst186711%_)
                                (let ((_%subs186713%_
                                       (if _%subst186711%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst186711%_))
                                           '())))
                                  (cons _%phi186709%_
                                        (let ((__tmp195393
                                               (lambda (_%pair186715%_)
                                                 (cons (_%quote-e186692%_
                                                        (car _%pair186715%_))
                                                       (_%quote-e186692%_
                                                        (cdr _%pair186715%_))))))
                                          (declare (not safe))
                                          (##map __tmp195393
                                                 _%subs186713%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark186693186702%_
                               'gx#expander-mark::t))
                            (let* ((_%e186697186720%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark186693186702%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst186723%_ _%e186697186720%_)
                                   (_%e186698186725%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark186693186702%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx186728%_ _%e186698186725%_)
                                   (_%e186699186730%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark186693186702%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi186733%_ _%e186699186730%_)
                                   (_%e186700186735%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark186693186702%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace186738%_ _%e186700186735%_))
                              (_%K186696186717%_
                               _%trace186738%_
                               _%phi186733%_
                               _%ctx186728%_
                               _%subst186723%_))
                            (_%E186695186705%_))))))
                 (_%context-ref186600%_
                  (lambda (_%ctx186677%_)
                    (if (let ((__tmp195394
                               (##structure-ref
                                _%ctx186677%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp195394
                           'gx#module-context::t))
                        (let ((_%ctx-ref186679%_
                               (_%context-ref-nested186602%_ _%ctx186677%_))
                              (_%ctx-origin186680%_
                               (_%context-ref-origin186601%_ _%ctx186677%_))
                              (_%origin186681%_
                               (_%context-ref-origin186601%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin186681%_ _%ctx-origin186680%_)
                              (let ((_%ref186683%_
                                     (_%context-ref-nested186602%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp186685%_ ((_%ref186687%_
                                                    (cdr _%ref186683%_))
                                                   (_%ctx-ref186688%_
                                                    (cdr _%ctx-ref186679%_)))
                                  (if (and (pair? _%ref186687%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref186687%_))
                                                (car _%ctx-ref186688%_)))
                                      (_%lp186685%_
                                       (cdr _%ref186687%_)
                                       (cdr _%ctx-ref186688%_))
                                      (cons '#f _%ctx-ref186688%_))))
                              _%ctx-ref186679%_))
                        (let ((__tmp195395
                               (##structure-ref
                                _%ctx186677%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp195395)))))
                 (_%context-ref-origin186601%_
                  (lambda (_%ctx186669%_)
                    (let _%lp186671%_ ((_%ctx186673%_ _%ctx186669%_))
                      (let ((_%super186675%_
                             (##structure-ref
                              _%ctx186673%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super186675%_
                               'gx#module-context::t))
                            (_%lp186671%_ _%super186675%_)
                            _%ctx186673%_)))))
                 (_%context-ref-nested186602%_
                  (lambda (_%ctx186660%_)
                    (let _%lp186662%_ ((_%ctx186664%_ _%ctx186660%_)
                                       (_%r186665%_ '()))
                      (let ((_%super186667%_
                             (##structure-ref
                              _%ctx186664%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super186667%_
                               'gx#module-context::t))
                            (_%lp186662%_
                             _%super186667%_
                             (cons (car (##structure-ref
                                         _%ctx186664%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r186665%_))
                            (cons (let ((__tmp195396
                                         (##structure-ref
                                          _%ctx186664%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp195396))
                                  _%r186665%_)))))))
          (let* ((_%g186604186617%_
                  (lambda (_%g186605186614%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g186605186614%_))))
                 (_%g186603186657%_
                  (lambda (_%g186605186620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g186605186620%_))
                        (let ((_%e186607186622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g186605186620%_))))
                          (let ((_%hd186608186625%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186607186622%_)))
                                (_%tl186609186627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186607186622%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl186609186627%_))
                                (let ((_%e186610186630%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl186609186627%_))))
                                  (let ((_%hd186611186633%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186610186630%_)))
                                        (_%tl186612186635%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186610186630%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl186612186635%_))
                                        ((lambda (_%g186606186638%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g186606186638%_))
                                               (let ((_%$e186651%_
                                                      (let ((__tmp195397
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp195397 _%g186606186638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e186651%_
                                                     _%$e186651%_
                                                     (let ((_%marks186655%_
                                                            (##direct-structure-ref
                                                             _%g186606186638%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks186655%_)
                                                           (_%generate-simple186596%_
                                                            _%g186606186638%_)
                                                           (_%generate-serialized186597%_
                                                            _%g186606186638%_
                                                            _%marks186655%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g186606186638%_))))
                                         _%hd186611186633%_)
                                        (_%g186604186617%_
                                         _%g186605186620%_))))
                                (_%g186604186617%_ _%g186605186620%_))))
                        (_%g186604186617%_ _%g186605186620%_)))))
            (_%g186603186657%_ _%stx186592%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self186523%_ _%stx186524%_)
        (let* ((_%g186526186543%_
                (lambda (_%g186527186540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186527186540%_))))
               (_%g186525186588%_
                (lambda (_%g186527186546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186527186546%_))
                      (let ((_%e186530186548%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g186527186546%_))))
                        (let ((_%hd186531186551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186530186548%_)))
                              (_%tl186532186553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186530186548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186532186553%_))
                              (let ((_%e186533186556%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186532186553%_))))
                                (let ((_%hd186534186559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186533186556%_)))
                                      (_%tl186535186561%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186533186556%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186535186561%_))
                                      (let ((_%e186536186564%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186535186561%_))))
                                        (let ((_%hd186537186567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186536186564%_)))
                                              (_%tl186538186569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186536186564%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186538186569%_))
                                              ((lambda (_%g186528186572%_
                                                        _%g186529186573%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g186529186573%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self186523%_
                              _%g186528186572%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd186537186567%_
                                               _%hd186534186559%_)
                                              (_%g186526186543%_
                                               _%g186527186546%_))))
                                      (_%g186526186543%_ _%g186527186546%_))))
                              (_%g186526186543%_ _%g186527186546%_))))
                      (_%g186526186543%_ _%g186527186546%_)))))
          (_%g186525186588%_ _%stx186524%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self186472%_ _%stx186473%_)
        (let* ((_%g186475186485%_
                (lambda (_%g186476186482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186476186482%_))))
               (_%g186474186520%_
                (lambda (_%g186476186488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186476186488%_))
                      (let ((_%e186478186490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g186476186488%_))))
                        (let ((_%hd186479186493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186478186490%_)))
                              (_%tl186480186495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186478186490%_))))
                          ((lambda (_%g186477186498%_)
                             (let* ((_%c-body186512%_
                                     (map (lambda (_%g186507186509%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self186472%_
                                               _%g186507186509%_)))
                                          _%g186477186498%_))
                                    (_%c-body186517%_
                                     (let ((__tmp195398
                                            (lambda (_%$obj186514%_)
                                              (not (eq? _%$obj186514%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp195398
                                        _%c-body186512%_))))
                               (cons '%#begin _%c-body186517%_)))
                           _%tl186480186495%_)))
                      (_%g186475186485%_ _%g186476186488%_)))))
          (_%g186474186520%_ _%stx186473%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self186377%_ _%stx186378%_)
        (let* ((_%g186380186390%_
                (lambda (_%g186381186387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186381186387%_))))
               (_%g186379186469%_
                (lambda (_%g186381186393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186381186393%_))
                      (let ((_%e186383186395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g186381186393%_))))
                        (let ((_%hd186384186398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186383186395%_)))
                              (_%tl186385186400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186383186395%_))))
                          ((lambda (_%g186382186403%_)
                             (let* ((_%phi186413%_
                                     (let ((__tmp195399
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp195399 '1)))
                                    (_%block186415%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self186377%_ 'state))
                                      _%phi186413%_))
                                    (_%compiled186418%_
                                     (let ((__tmp195400
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self186377%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g186382186403%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195400
                                        gx#current-expander-phi
                                        _%phi186413%_)))
                                    (_%g186421186431%_
                                     (lambda (_%g186422186428%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g186422186428%_))))
                                    (_%g186420186466%_
                                     (lambda (_%g186422186434%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g186422186434%_))
                                           (let ((_%e186424186436%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g186422186434%_))))
                                             (let ((_%hd186425186439%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186424186436%_)))
                                                   (_%tl186426186441%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186424186436%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd186425186439%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd186425186439%_))
                                                       ((lambda (_%g186423186444%_)
                                                          (let ((_%c-body186461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj186458%_)
                                   (not (eq? _%$obj186458%_ '#!void)))
                                 _%g186423186444%_)))
                    (if _%block186415%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block186415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body186461%_))
                        (if (null? _%c-body186461%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body186461%_)))))
                _%tl186426186441%_)
               (_%g186421186431%_ _%g186422186434%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186421186431%_
                                                    _%g186422186434%_))))
                                           (_%g186421186431%_
                                            _%g186422186434%_)))))
                               (_%g186420186466%_ _%compiled186418%_)))
                           _%tl186385186400%_)))
                      (_%g186380186390%_ _%g186381186393%_)))))
          (_%g186379186469%_ _%stx186378%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self186308%_ _%stx186309%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self186308%_ 'state)))
        (let* ((_%g186311186325%_
                (lambda (_%g186312186322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g186312186322%_))))
               (_%g186310186374%_
                (lambda (_%g186312186328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g186312186328%_))
                      (let ((_%e186315186330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g186312186328%_))))
                        (let ((_%hd186316186333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186315186330%_)))
                              (_%tl186317186335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186315186330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186317186335%_))
                              (let ((_%e186318186338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186317186335%_))))
                                (let ((_%hd186319186341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186318186338%_)))
                                      (_%tl186320186343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186318186338%_))))
                                  ((lambda (_%g186313186346%_
                                            _%g186314186347%_)
                                     (let ((_%key186360%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g186314186347%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key186360%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx186309%_
                                              _%g186314186347%_
                                              _%key186360%_)))
                                       (let* ((_%ctx186362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g186314186347%_)))
                                              (_%code186365%_
                                               (let ((__tmp195401
                                                      (lambda ()
                                                        (let ((__tmp195402
                                                               (##structure-ref
                                                                _%ctx186362%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self186308%_
                                                           __tmp195402)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp195401
                                                  gx#current-expander-context
                                                  _%ctx186362%_)))
                                              (_%rt186367%_
                                               (let ((__tmp195403
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp195403
                                                  _%ctx186362%_)))
                                              (_%loader186369%_
                                               (if _%rt186367%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt186367%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid186371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g186314186347%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self186308%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid186371%_
                                                     (cons _%code186365%_
                                                           _%loader186369%_))))))
                                   _%tl186320186343%_
                                   _%hd186319186341%_)))
                              (_%g186311186325%_ _%g186312186328%_))))
                      (_%g186311186325%_ _%g186312186328%_)))))
          (_%g186310186374%_ _%stx186309%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx186295%_ _%context-chain186296%_)
        (let _%lp186298%_ ((_%ctx186300%_ _%ctx186295%_) (_%path186301%_ '()))
          (let ((_%super186303%_
                 (##structure-ref _%ctx186300%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super186303%_ _%context-chain186296%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx186300%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path186301%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super186303%_
                       'gx#module-context::t))
                    (_%lp186298%_
                     _%super186303%_
                     (cons (car (##structure-ref
                                 _%ctx186300%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path186301%_))
                    (cons (let ((__tmp195404
                                 (##structure-ref
                                  _%ctx186300%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp195404))
                          _%path186301%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp186288%_ ((_%ctx186290%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r186291%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx186290%_ 'gx#module-context::t))
              (_%lp186288%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx186290%_ '3 '#f '#f))
               (cons _%ctx186290%_ _%r186291%_))
              _%r186291%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self186053%_ _%stx186054%_)
        (letrec* ((_%context-chain186056%_ (gxc#current-context-chain))
                  (_%make-import-spec186057%_
                   (lambda (_%in186225%_)
                     (let* ((_%in186226186238%_ _%in186225%_)
                            (_%E186228186241%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in186226186238%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K186229186251%_
                             (lambda (_%phi186244%_
                                      _%name186245%_
                                      _%src-name186246%_
                                      _%src-phi186247%_
                                      _%src-key186248%_
                                      _%src-ctx186249%_)
                               (cons _%phi186244%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name186245%_))
                                           (cons _%src-phi186247%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name186246%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in186226186238%_
                              'gx#module-import::t))
                           (let ((_%e186230186254%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in186226186238%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e186230186254%_
                                    'gx#module-export::t))
                                 (let* ((_%e186233186257%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e186230186254%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx186260%_ _%e186233186257%_)
                                        (_%e186234186262%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e186230186254%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key186265%_ _%e186234186262%_)
                                        (_%e186235186267%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e186230186254%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi186270%_ _%e186235186267%_)
                                        (_%e186236186272%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e186230186254%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name186275%_ _%e186236186272%_)
                                        (_%e186231186277%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in186226186238%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name186280%_ _%e186231186277%_)
                                        (_%e186232186282%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in186226186238%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi186285%_ _%e186232186282%_))
                                   (_%K186229186251%_
                                    _%phi186285%_
                                    _%name186280%_
                                    _%src-name186275%_
                                    _%src-phi186270%_
                                    _%src-key186265%_
                                    _%src-ctx186260%_))
                                 (_%E186228186241%_)))
                           (_%E186228186241%_)))))
                  (_%make-import-path186058%_
                   (lambda (_%ctx186223%_)
                     (gxc#generate-meta-import-path
                      _%ctx186223%_
                      _%context-chain186056%_)))
                  (_%make-import-spec-in186059%_
                   (lambda (_%ctx186220%_ _%in186221%_)
                     (cons 'spec:
                           (cons (_%make-import-path186058%_ _%ctx186220%_)
                                 (reverse _%in186221%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self186053%_ 'state)))
          (let* ((_%g186061186071%_
                  (lambda (_%g186062186068%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g186062186068%_))))
                 (_%g186060186217%_
                  (lambda (_%g186062186074%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g186062186074%_))
                        (let ((_%e186064186076%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g186062186074%_))))
                          (let ((_%hd186065186079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186064186076%_)))
                                (_%tl186066186081%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186064186076%_))))
                            ((lambda (_%g186063186084%_)
                               (let _%lp186095%_ ((_%rest186097%_
                                                   _%g186063186084%_)
                                                  (_%current-src186098%_ '#f)
                                                  (_%current-in186099%_ '())
                                                  (_%r186100%_ '()))
                                 (let* ((_%rest186101186109%_ _%rest186097%_)
                                        (_%else186103186119%_
                                         (lambda ()
                                           (let ((_%r186117%_
                                                  (if _%current-src186098%_
                                                      (cons (_%make-import-spec-in186059%_
                                                             _%current-src186098%_
                                                             _%current-in186099%_)
                                                            _%r186100%_)
                                                      _%r186100%_)))
                                             (cons '%#import
                                                   (reverse _%r186117%_)))))
                                        (_%K186105186205%_
                                         (lambda (_%rest186122%_ _%in186123%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in186123%_
                                                  'gx#module-import::t))
                                               (let* ((_%in186125186132%_
                                                       _%in186123%_)
                                                      (_%E186127186135%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in186125186132%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K186128186143%_
               (lambda (_%src-ctx186138%_)
                 (if (eq? _%current-src186098%_ _%src-ctx186138%_)
                     (_%lp186095%_
                      _%rest186122%_
                      _%current-src186098%_
                      (cons (_%make-import-spec186057%_ _%in186123%_)
                            _%current-in186099%_)
                      _%r186100%_)
                     (if _%current-src186098%_
                         (_%lp186095%_
                          _%rest186122%_
                          _%src-ctx186138%_
                          (cons (_%make-import-spec186057%_ _%in186123%_) '())
                          (cons (_%make-import-spec-in186059%_
                                 _%current-src186098%_
                                 _%current-in186099%_)
                                _%r186100%_))
                         (_%lp186095%_
                          _%rest186122%_
                          _%src-ctx186138%_
                          (cons (_%make-import-spec186057%_ _%in186123%_) '())
                          _%r186100%_)))))
              (_%e186129186146%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in186125186132%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e186129186146%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e186130186149%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e186129186146%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx186152%_ _%e186130186149%_))
               (_%K186128186143%_ _%src-ctx186152%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E186127186135%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in186123%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi186155%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in186123%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src186157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in186123%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in186197%_
                                                           (let* ((_%g186158186167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path186058%_ _%src186157%_))
                          (_%E186161186171%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g186158186167%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K186163186187%_
                            (lambda (_%path186185%_) _%path186185%_))
                           (_%K186162186177%_
                            (lambda (_%path186175%_)
                              (cons 'in: _%path186175%_))))
                       (if (pair? _%g186158186167%_)
                           (let ((_%tl186165186192%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g186158186167%_)))
                                 (_%hd186164186190%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g186158186167%_))))
                             (if (null? _%tl186165186192%_)
                                 (let ((_%path186195%_ _%hd186164186190%_))
                                   (_%K186163186187%_ _%path186195%_))
                                 (let ((_%path186180%_ _%g186158186167%_))
                                   (_%K186162186177%_ _%path186180%_))))
                           (let ((_%path186180%_ _%g186158186167%_))
                             (_%K186162186177%_ _%path186180%_))))))
                  (_%r186199%_
                   (if _%current-src186098%_
                       (cons (_%make-import-spec-in186059%_
                              _%current-src186098%_
                              _%current-in186099%_)
                             _%r186100%_)
                       _%r186100%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp186095%_
                                                      _%rest186122%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi186155%_)
                                                                _%src-in186197%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi186155%_
                                    (cons _%src-in186197%_ '()))))
                    _%r186199%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in186123%_
                                                          'gx#module-context::t))
                                                       (let ((_%r186203%_
                                                              (if _%current-src186098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in186059%_
                                 _%current-src186098%_
                                 _%current-in186099%_)
                                _%r186100%_)
                          _%r186100%_)))
                 (_%lp186095%_
                  _%rest186122%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path186058%_ _%in186123%_))
                        _%r186203%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest186101186109%_)
                                       (let ((_%hd186106186208%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest186101186109%_)))
                                             (_%tl186107186210%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest186101186109%_))))
                                         (let* ((_%in186213%_
                                                 _%hd186106186208%_)
                                                (_%rest186215%_
                                                 _%tl186107186210%_))
                                           (_%K186105186205%_
                                            _%rest186215%_
                                            _%in186213%_)))
                                       (_%else186103186119%_)))))
                             _%tl186066186081%_)))
                        (_%g186061186071%_ _%g186062186074%_)))))
            (_%g186060186217%_ _%stx186054%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self185863%_ _%stx185864%_)
        (letrec* ((_%context-chain185866%_ (gxc#current-context-chain))
                  (_%make-import-path185867%_
                   (lambda (_%ctx186051%_)
                     (gxc#generate-meta-import-path
                      _%ctx186051%_
                      _%context-chain185866%_))))
          (let* ((_%g185869185879%_
                  (lambda (_%g185870185876%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g185870185876%_))))
                 (_%g185868186048%_
                  (lambda (_%g185870185882%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g185870185882%_))
                        (let ((_%e185872185884%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g185870185882%_))))
                          (let ((_%hd185873185887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185872185884%_)))
                                (_%tl185874185889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185872185884%_))))
                            ((lambda (_%g185871185892%_)
                               (let _%lp185903%_ ((_%rest185905%_
                                                   _%g185871185892%_)
                                                  (_%r185906%_ '()))
                                 (let* ((_%rest185907185915%_ _%rest185905%_)
                                        (_%else185909185923%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r185906%_))))
                                        (_%K185911186036%_
                                         (lambda (_%rest185926%_ _%out185927%_)
                                           (let* ((_%out185928185941%_
                                                   _%out185927%_)
                                                  (_%E185931185945%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out185928185941%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K185935186015%_
                                                    (lambda (_%name186011%_
                                                             _%phi186012%_
                                                             _%key186013%_)
                                                      (_%lp185903%_
                                                       _%rest185926%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi186012%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key186013%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name186011%_))
                                             '()))))
                     _%r185906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K185932185995%_
                                                    (lambda (_%phi185949%_
                                                             _%src185950%_)
                                                      (let* ((_%out185990%_
                                                              (if _%src185950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g185951185960%_
                                              (_%make-import-path185867%_
                                               _%src185950%_))
                                             (_%E185954185964%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g185951185960%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K185956185980%_
                                               (lambda (_%path185978%_)
                                                 _%path185978%_))
                                              (_%K185955185970%_
                                               (lambda (_%path185968%_)
                                                 (cons 'in: _%path185968%_))))
                                          (if (pair? _%g185951185960%_)
                                              (let ((_%tl185958185985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g185951185960%_)))
                                                    (_%hd185957185983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g185951185960%_))))
                                                (if (null? _%tl185958185985%_)
                                                    (let ((_%path185988%_
                                                           _%hd185957185983%_))
                                                      (_%K185956185980%_
                                                       _%path185988%_))
                                                    (let ((_%path185973%_
                                                           _%g185951185960%_))
                                                      (_%K185955185970%_
                                                       _%path185973%_))))
                                              (let ((_%path185973%_
                                                     _%g185951185960%_))
                                                (_%K185955185970%_
                                                 _%path185973%_)))))
                                      '()))
                          '#t))
                     (_%out185992%_
                      (if (fxzero? _%phi185949%_)
                          _%out185990%_
                          (cons 'phi:
                                (cons _%phi185949%_
                                      (cons _%out185990%_ '()))))))
                (_%lp185903%_
                 _%rest185926%_
                 (cons _%out185992%_ _%r185906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match185930186008%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out185928185941%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e185933185998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out185928185941%_
                               '1
                               '#f
                               '#f)))
                           (_%e185934186003%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out185928185941%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src186001%_ _%e185933185998%_)
                            (_%phi186006%_ _%e185934186003%_))
                        (_%K185932185995%_ _%phi186006%_ _%src186001%_)))
                    (_%E185931185945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out185928185941%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e185936186018%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out185928185941%_
                        '1
                        '#f
                        '#f)))
                    (_%e185937186021%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out185928185941%_
                        '2
                        '#f
                        '#f)))
                    (_%e185938186026%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out185928185941%_
                        '3
                        '#f
                        '#f)))
                    (_%e185939186031%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out185928185941%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key186024%_ _%e185937186021%_)
                     (_%phi186029%_ _%e185938186026%_)
                     (_%name186034%_ _%e185939186031%_))
                 (_%K185935186015%_
                  _%name186034%_
                  _%phi186029%_
                  _%key186024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match185930186008%_))))))))
                                   (if (pair? _%rest185907185915%_)
                                       (let ((_%hd185912186039%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest185907185915%_)))
                                             (_%tl185913186041%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest185907185915%_))))
                                         (let* ((_%out186044%_
                                                 _%hd185912186039%_)
                                                (_%rest186046%_
                                                 _%tl185913186041%_))
                                           (_%K185911186036%_
                                            _%rest186046%_
                                            _%out186044%_)))
                                       (_%else185909185923%_)))))
                             _%tl185874185889%_)))
                        (_%g185869185879%_ _%g185870185882%_)))))
            (_%g185868186048%_ _%stx185864%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self185824%_ _%stx185825%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self185824%_ 'state)))
        (let* ((_%g185827185837%_
                (lambda (_%g185828185834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185828185834%_))))
               (_%g185826185860%_
                (lambda (_%g185828185840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185828185840%_))
                      (let ((_%e185830185842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185828185840%_))))
                        (let ((_%hd185831185845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185830185842%_)))
                              (_%tl185832185847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185830185842%_))))
                          ((lambda (_%g185829185850%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g185829185850%_)))
                           _%tl185832185847%_)))
                      (_%g185827185837%_ _%g185828185840%_)))))
          (_%g185826185860%_ _%stx185825%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self185699%_ _%stx185700%_)
        (letrec ((_%generate1185702%_
                  (lambda (_%id185819%_ _%eid185820%_)
                    (let ((_%eid185822%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid185820%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid185822%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx185700%_
                             _%eid185822%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id185819%_))
                            (cons _%eid185822%_ '()))))))
          (let* ((_%g185704185732%_
                  (lambda (_%g185705185729%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g185705185729%_))))
                 (_%g185703185816%_
                  (lambda (_%g185705185735%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g185705185735%_))
                        (let ((_%e185708185737%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g185705185735%_))))
                          (let ((_%hd185709185740%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185708185737%_)))
                                (_%tl185710185742%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185708185737%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl185710185742%_))
                                (let ((_g195405_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl185710185742%_
                                          '0))))
                                  (begin
                                    (let ((_g195406_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195405_)
                                                 (##values-length _g195405_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195406_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195406_)))
                                    (let ((_%target185711185745%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g195405_ 0)))
                                          (_%tl185713185747%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g195405_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl185713185747%_))
                                          (letrec ((_%loop185714185750%_
                                                    (lambda (_%hd185712185753%_
                                                             _%eid185718185755%_
                                                             _%id185719185756%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd185712185753%_))
                                                          (let ((_%e185715185758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd185712185753%_))))
                    (let ((_%lp-hd185716185761%_
                           (let ()
                             (declare (not safe))
                             (##car _%e185715185758%_)))
                          (_%lp-tl185717185763%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e185715185758%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd185716185761%_))
                          (let ((_%e185722185766%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd185716185761%_))))
                            (let ((_%hd185723185769%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185722185766%_)))
                                  (_%tl185724185771%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185722185766%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl185724185771%_))
                                  (let ((_%e185725185774%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl185724185771%_))))
                                    (let ((_%hd185726185777%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e185725185774%_)))
                                          (_%tl185727185779%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e185725185774%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl185727185779%_))
                                          (_%loop185714185750%_
                                           _%lp-tl185717185763%_
                                           (cons _%hd185726185777%_
                                                 _%eid185718185755%_)
                                           (cons _%hd185723185769%_
                                                 _%id185719185756%_))
                                          (_%g185704185732%_
                                           _%g185705185735%_))))
                                  (_%g185704185732%_ _%g185705185735%_))))
                          (_%g185704185732%_ _%g185705185735%_))))
                  (let ((_%eid185720185782%_ (reverse _%eid185718185755%_))
                        (_%id185721185783%_ (reverse _%id185719185756%_)))
                    ((lambda (_%g185706185785%_ _%g185707185786%_)
                       (cons '%#extern
                             (map _%generate1185702%_
                                  (let ((__tmp195407
                                         (lambda (_%g185801185804%_
                                                  _%g185802185806%_)
                                           (cons _%g185801185804%_
                                                 _%g185802185806%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp195407
                                     '()
                                     _%g185707185786%_))
                                  (let ((__tmp195408
                                         (lambda (_%g185808185811%_
                                                  _%g185809185813%_)
                                           (cons _%g185808185811%_
                                                 _%g185809185813%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp195408
                                     '()
                                     _%g185706185785%_)))))
                     _%eid185720185782%_
                     _%id185721185783%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop185714185750%_
                                             _%target185711185745%_
                                             '()
                                             '()))
                                          (_%g185704185732%_
                                           _%g185705185735%_)))))
                                (_%g185704185732%_ _%g185705185735%_))))
                        (_%g185704185732%_ _%g185705185735%_)))))
            (_%g185703185816%_ _%stx185700%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self185488%_ _%stx185489%_)
        (letrec ((_%generate1185491%_
                  (lambda (_%id185693%_)
                    (let ((_%eid185695%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id185693%_)))
                          (_%ident185696%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id185693%_)))
                          (_%props185697%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id185693%_))))
                      (cons '%#define-runtime
                            (cons _%ident185696%_
                                  (cons _%eid185695%_ _%props185697%_))))))
                 (_%generate*185492%_
                  (lambda (_%all185661%_)
                    (let* ((_%all185662185670%_ _%all185661%_)
                           (_%else185664185678%_
                            (lambda () (cons '%#begin _%all185661%_)))
                           (_%K185666185683%_
                            (lambda (_%one185681%_) _%one185681%_)))
                      (if (pair? _%all185662185670%_)
                          (let ((_%hd185667185686%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all185662185670%_)))
                                (_%tl185668185688%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all185662185670%_))))
                            (let ((_%one185691%_ _%hd185667185686%_))
                              (if (null? _%tl185668185688%_)
                                  (_%K185666185683%_ _%one185691%_)
                                  (_%else185664185678%_))))
                          (_%else185664185678%_))))))
          (let* ((_%g185494185511%_
                  (lambda (_%g185495185508%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g185495185508%_))))
                 (_%g185493185658%_
                  (lambda (_%g185495185514%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g185495185514%_))
                        (let ((_%e185498185516%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g185495185514%_))))
                          (let ((_%hd185499185519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185498185516%_)))
                                (_%tl185500185521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185498185516%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl185500185521%_))
                                (let ((_%e185501185524%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl185500185521%_))))
                                  (let ((_%hd185502185527%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185501185524%_)))
                                        (_%tl185503185529%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185501185524%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl185503185529%_))
                                        (let ((_%e185504185532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl185503185529%_))))
                                          (let ((_%hd185505185535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e185504185532%_)))
                                                (_%tl185506185537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e185504185532%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl185506185537%_))
                                                ((lambda (_%g185496185540%_
                                                          _%g185497185541%_)
                                                   (let _%lp185557%_ ((_%rest185559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g185497185541%_)
                              (_%r185560%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx195143195144%_
                                                             _%rest185559%_)
                                                            (_%g185565185582%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx195143195144%_)))))
               (let ((_%__kont195145195146%_
                      (lambda (_%g185567185645%_)
                        (_%lp185557%_ _%g185567185645%_ _%r185560%_)))
                     (_%__kont195147195148%_
                      (lambda (_%g185572185618%_ _%g185573185619%_)
                        (_%lp185557%_
                         _%g185572185618%_
                         (cons (_%generate1185491%_ _%g185573185619%_)
                               _%r185560%_))))
                     (_%__kont195149195150%_
                      (lambda (_%g185577185594%_)
                        (_%generate*185492%_
                         (let ((__tmp195409
                                (cons (_%generate1185491%_ _%g185577185594%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp195409 _%r185560%_)))))
                     (_%__kont195151195152%_
                      (lambda ()
                        (_%generate*185492%_ (reverse! _%r185560%_)))))
                 (let ((_%g185563185605%_
                        (lambda ()
                          (let ((_%g185577185594%_ _%__stx195143195144%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g185577185594%_))
                                (_%__kont195149195150%_ _%g185577185594%_)
                                (_%__kont195151195152%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx195143195144%_))
                       (let ((_%e185568185634%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx195143195144%_))))
                         (let ((_%tl185570185639%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e185568185634%_)))
                               (_%hd185569185637%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e185568185634%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd185569185637%_))
                               (let ((_%e185571185642%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd185569185637%_))))
                                 (if (equal? _%e185571185642%_ '#f)
                                     (_%__kont195145195146%_
                                      _%tl185570185639%_)
                                     (_%__kont195147195148%_
                                      _%tl185570185639%_
                                      _%hd185569185637%_)))
                               (_%__kont195147195148%_
                                _%tl185570185639%_
                                _%hd185569185637%_))))
                       (let () (declare (not safe)) (_%g185563185605%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd185505185535%_
                                                 _%hd185502185527%_)
                                                (_%g185494185511%_
                                                 _%g185495185514%_))))
                                        (_%g185494185511%_
                                         _%g185495185514%_))))
                                (_%g185494185511%_ _%g185495185514%_))))
                        (_%g185494185511%_ _%g185495185514%_)))))
            (_%g185493185658%_ _%stx185489%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self185385%_ _%stx185386%_)
        (let* ((_%g185388185405%_
                (lambda (_%g185389185402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185389185402%_))))
               (_%g185387185485%_
                (lambda (_%g185389185408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185389185408%_))
                      (let ((_%e185392185410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185389185408%_))))
                        (let ((_%hd185393185413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185392185410%_)))
                              (_%tl185394185415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185392185410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185394185415%_))
                              (let ((_%e185395185418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185394185415%_))))
                                (let ((_%hd185396185421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185395185418%_)))
                                      (_%tl185397185423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185395185418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185397185423%_))
                                      (let ((_%e185398185426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185397185423%_))))
                                        (let ((_%hd185399185429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185398185426%_)))
                                              (_%tl185400185431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185398185426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl185400185431%_))
                                              ((lambda (_%g185390185434%_
                                                        _%g185391185435%_)
                                                 (let* ((_%eid185450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g185391185435%_)))
                                                        (_%phi185452%_
                                                         (let ((__tmp195410
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp195410 '1)))
                (_%block185454%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self185385%_ 'state))
                  _%phi185452%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g185457185464%_
                                                           (lambda (_%g185458185461%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g185458185461%_))))
                  (_%g185456185482%_
                   (lambda (_%g185458185467%_)
                     ((lambda (_%g185459185469%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self185385%_ 'state))
                         _%phi185452%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g185459185469%_
                                     (cons _%g185390185434%_ '())))))
                      _%g185458185467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g185456185482%_
                                                      _%eid185450%_))
                                                   (if _%block185454%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block185454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g185391185435%_))
                                             (cons _%eid185450%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g185391185435%_))
                           (cons _%eid185450%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd185399185429%_
                                               _%hd185396185421%_)
                                              (_%g185388185405%_
                                               _%g185389185408%_))))
                                      (_%g185388185405%_ _%g185389185408%_))))
                              (_%g185388185405%_ _%g185389185408%_))))
                      (_%g185388185405%_ _%g185389185408%_)))))
          (_%g185387185485%_ _%stx185386%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self185317%_ _%stx185318%_)
        (let* ((_%g185320185337%_
                (lambda (_%g185321185334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185321185334%_))))
               (_%g185319185382%_
                (lambda (_%g185321185340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185321185340%_))
                      (let ((_%e185324185342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185321185340%_))))
                        (let ((_%hd185325185345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185324185342%_)))
                              (_%tl185326185347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185324185342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185326185347%_))
                              (let ((_%e185327185350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185326185347%_))))
                                (let ((_%hd185328185353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185327185350%_)))
                                      (_%tl185329185355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185327185350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185329185355%_))
                                      (let ((_%e185330185358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185329185355%_))))
                                        (let ((_%hd185331185361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185330185358%_)))
                                              (_%tl185332185363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185330185358%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl185332185363%_))
                                              ((lambda (_%g185322185366%_
                                                        _%g185323185367%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g185323185367%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g185322185366%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd185331185361%_
                                               _%hd185328185353%_)
                                              (_%g185320185337%_
                                               _%g185321185340%_))))
                                      (_%g185320185337%_ _%g185321185340%_))))
                              (_%g185320185337%_ _%g185321185340%_))))
                      (_%g185320185337%_ _%g185321185340%_)))))
          (_%g185319185382%_ _%stx185318%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self185314%_ _%stx185315%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self185314%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx185315%_)
        (gxc#generate-meta-define-values% _%self185314%_ _%stx185315%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self185311%_ _%stx185312%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self185311%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx185312%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp195412 (list)) (__tmp195411 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp195412
         '(src n open blocks)
         __tmp195411
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args185308%_
        (apply make-instance gxc#meta-state::t _%$args185308%_)))
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
      (lambda (_%self185294%_ _%ctx185295%_)
        (let ((_%self185298%_ _%self185294%_))
          (if (let ((__tmp195413
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self185298%_))))
                (declare (not safe))
                (##fx< '4 __tmp195413))
              (begin
                (let ((__tmp195414
                       (let ((__tmp195415
                              (##structure-ref
                               _%ctx185295%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp195415))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self185298%_
                   __tmp195414
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self185298%_ '1 '2 '#f '#f))
                (let ((__tmp195416
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self185298%_
                   __tmp195416
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self185298%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp195417
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self185298%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self185298%_
                       '4
                       __tmp195417))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp195419 (list)) (__tmp195418 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp195419
         '(ctx phi n code)
         __tmp195418
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args185169%_
        (apply make-instance gxc#meta-state-block::t _%$args185169%_)))
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
      (lambda (_%state185129%_ _%phi185130%_)
        (let* ((_%state185131185139%_ _%state185129%_)
               (_%E185133185142%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state185131185139%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K185134185151%_
                (lambda (_%open185145%_ _%n185146%_ _%src185147%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open185145%_ _%phi185130%_))
                      '#f
                      (let ((_%block-ref185149%_
                             (let ((__tmp195420 (number->string _%n185146%_)))
                               (declare (not safe))
                               (##string-append
                                _%src185147%_
                                '"~"
                                __tmp195420))))
                        (##structure-set!
                         _%state185129%_
                         (let () (declare (not safe)) (##fx+ _%n185146%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp195421
                               (let ((__tmp195422
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp195422
                                  _%phi185130%_
                                  _%n185146%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open185145%_ _%phi185130%_ __tmp195421))
                        _%block-ref185149%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state185131185139%_
                 'gxc#meta-state::t))
              (let* ((_%e185135185154%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state185131185139%_
                         '1
                         '#f
                         '#f)))
                     (_%src185157%_ _%e185135185154%_)
                     (_%e185136185159%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state185131185139%_
                         '2
                         '#f
                         '#f)))
                     (_%n185162%_ _%e185136185159%_)
                     (_%e185137185164%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state185131185139%_
                         '3
                         '#f
                         '#f)))
                     (_%open185167%_ _%e185137185164%_))
                (_%K185134185151%_ _%open185167%_ _%n185162%_ _%src185157%_))
              (_%E185133185142%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state185123%_ _%phi185124%_ _%stx185125%_)
        (let ((_%block185127%_
               (let ((__tmp195423
                      (##structure-ref
                       _%state185123%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp195423 _%phi185124%_))))
          (##structure-set!
           _%block185127%_
           (cons _%stx185125%_
                 (##structure-ref
                  _%block185127%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state185117%_)
        (##structure-set!
         _%state185117%_
         (let ((__tmp195426
                (lambda (_%_185119%_ _%block185120%_ _%r185121%_)
                  (cons _%block185120%_ _%r185121%_)))
               (__tmp195425
                (##structure-ref _%state185117%_ '4 gxc#meta-state::t '#f))
               (__tmp195424
                (##structure-ref _%state185117%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp195426 __tmp195425 __tmp195424))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state185117%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state185070%_)
        (gxc#meta-state-end-phi! _%state185070%_)
        (let ((__tmp195428
               (lambda (_%block185072%_ _%r185073%_)
                 (let* ((_%block185074185083%_ _%block185072%_)
                        (_%E185076185086%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block185074185083%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K185077185094%_
                         (lambda (_%code185089%_
                                  _%n185090%_
                                  _%phi185091%_
                                  _%ctx185092%_)
                           (if (null? _%code185089%_)
                               _%r185073%_
                               (cons (cons _%ctx185092%_
                                           (cons _%phi185091%_
                                                 (cons _%n185090%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code185089%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r185073%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block185074185083%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e185078185097%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block185074185083%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx185100%_ _%e185078185097%_)
                              (_%e185079185102%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block185074185083%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi185105%_ _%e185079185102%_)
                              (_%e185080185107%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block185074185083%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n185110%_ _%e185080185107%_)
                              (_%e185081185112%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block185074185083%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code185115%_ _%e185081185112%_))
                         (_%K185077185094%_
                          _%code185115%_
                          _%n185110%_
                          _%phi185105%_
                          _%ctx185100%_))
                       (_%E185076185086%_)))))
              (__tmp195427
               (##structure-ref _%state185070%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp195428 '() __tmp195427))))
    (define gxc#collect-expression-refs
      (lambda (_%stx185066%_)
        (let ((_%ht185068%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht185068%_ _%stx185066%_)
          _%ht185068%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self185009%_ _%stx185010%_)
        (let* ((_%g185012185025%_
                (lambda (_%g185013185022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185013185022%_))))
               (_%g185011185063%_
                (lambda (_%g185013185028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185013185028%_))
                      (let ((_%e185015185030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185013185028%_))))
                        (let ((_%hd185016185033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185015185030%_)))
                              (_%tl185017185035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185015185030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185017185035%_))
                              (let ((_%e185018185038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185017185035%_))))
                                (let ((_%hd185019185041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185018185038%_)))
                                      (_%tl185020185043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185018185038%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl185020185043%_))
                                      ((lambda (_%g185014185046%_)
                                         (let* ((_%bind185058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g185014185046%_)))
                                                (_%eid185060%_
                                                 (if _%bind185058%_
                                                     (##structure-ref
                                                      _%bind185058%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g185014185046%_))))
                                                (__tmp195429
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self185009%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp195429
                                            _%eid185060%_
                                            _%eid185060%_)))
                                       _%hd185019185041%_)
                                      (_%g185012185025%_ _%g185013185028%_))))
                              (_%g185012185025%_ _%g185013185028%_))))
                      (_%g185012185025%_ _%g185013185028%_)))))
          (_%g185011185063%_ _%stx185010%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self184936%_ _%stx184937%_)
        (let* ((_%g184939184956%_
                (lambda (_%g184940184953%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g184940184953%_))))
               (_%g184938185006%_
                (lambda (_%g184940184959%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g184940184959%_))
                      (let ((_%e184943184961%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g184940184959%_))))
                        (let ((_%hd184944184964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184943184961%_)))
                              (_%tl184945184966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184943184961%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184945184966%_))
                              (let ((_%e184946184969%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184945184966%_))))
                                (let ((_%hd184947184972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184946184969%_)))
                                      (_%tl184948184974%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184946184969%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl184948184974%_))
                                      (let ((_%e184949184977%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl184948184974%_))))
                                        (let ((_%hd184950184980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184949184977%_)))
                                              (_%tl184951184982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184949184977%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184951184982%_))
                                              ((lambda (_%g184941184985%_
                                                        _%g184942184986%_)
                                                 (let* ((_%bind185001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g184942184986%_)))
                                                        (_%eid185003%_
                                                         (if _%bind185001%_
                                                             (##structure-ref
                                                              _%bind185001%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g184942184986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp195430
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184936%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp195430
                                                      _%eid185003%_
                                                      _%eid185003%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self184936%_
                                                      _%g184941184985%_))))
                                               _%hd184950184980%_
                                               _%hd184947184972%_)
                                              (_%g184939184956%_
                                               _%g184940184959%_))))
                                      (_%g184939184956%_ _%g184940184959%_))))
                              (_%g184939184956%_ _%g184940184959%_))))
                      (_%g184939184956%_ _%g184940184959%_)))))
          (_%g184938185006%_ _%stx184937%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self184893%_ _%stx184894%_)
        (let* ((_%g184896184906%_
                (lambda (_%g184897184903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g184897184903%_))))
               (_%g184895184933%_
                (lambda (_%g184897184909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g184897184909%_))
                      (let ((_%e184899184911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g184897184909%_))))
                        (let ((_%hd184900184914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184899184911%_)))
                              (_%tl184901184916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184899184911%_))))
                          ((lambda (_%g184898184919%_)
                             (let ((__tmp195431
                                    (lambda (_%g184928184930%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self184893%_
                                         _%g184928184930%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp195431 _%g184898184919%_)))
                           _%tl184901184916%_)))
                      (_%g184896184906%_ _%g184897184909%_)))))
          (_%g184895184933%_ _%stx184894%_))))
    (define gxc#count-values-single%
      (lambda (_%self184890%_ _%stx184891%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self184758%_ _%stx184759%_)
        (let* ((_%__stx195173195174%_ _%stx184759%_)
               (_%g184762184791%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195173195174%_)))))
          (let ((_%__kont195175195176%_
                 (lambda (_%g184764184857%_ _%g184765184858%_)
                   (length (let ((__tmp195432
                                  (lambda (_%g184879184882%_ _%g184880184884%_)
                                    (cons _%g184879184882%_
                                          _%g184880184884%_))))
                             (declare (not safe))
                             (__foldr1 __tmp195432 '() _%g184764184857%_)))))
                (_%__kont195179195180%_ (lambda () '#f)))
            (let ((_%__match195218195219%_
                   (lambda (_%e184766184803%_
                            _%hd184767184806%_
                            _%tl184768184808%_
                            _%e184769184811%_
                            _%hd184770184814%_
                            _%tl184771184816%_
                            _%e184772184819%_
                            _%hd184773184822%_
                            _%tl184774184824%_
                            _%e184775184827%_
                            _%hd184776184830%_
                            _%tl184777184832%_
                            _%__splice195177195178%_
                            _%target184778184835%_
                            _%tl184780184837%_)
                     (letrec ((_%loop184781184840%_
                               (lambda (_%hd184779184843%_
                                        _%rand184785184845%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd184779184843%_))
                                     (let ((_%e184782184847%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd184779184843%_))))
                                       (let ((_%lp-tl184784184852%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e184782184847%_)))
                                             (_%lp-hd184783184850%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e184782184847%_))))
                                         (_%loop184781184840%_
                                          _%lp-tl184784184852%_
                                          (cons _%lp-hd184783184850%_
                                                _%rand184785184845%_))))
                                     (let ((_%rand184786184855%_
                                            (reverse _%rand184785184845%_)))
                                       (let ((_%g184764184857%_
                                              _%rand184786184855%_)
                                             (_%g184765184858%_
                                              _%hd184776184830%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g184765184858%_
                                                'values))
                                             (_%__kont195175195176%_
                                              _%g184764184857%_
                                              _%g184765184858%_)
                                             (_%__kont195179195180%_))))))))
                       (_%loop184781184840%_ _%target184778184835%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195173195174%_))
                  (let ((_%e184766184803%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195173195174%_))))
                    (let ((_%tl184768184808%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184766184803%_)))
                          (_%hd184767184806%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184766184803%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184768184808%_))
                          (let ((_%e184769184811%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184768184808%_))))
                            (let ((_%tl184771184816%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184769184811%_)))
                                  (_%hd184770184814%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184769184811%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd184770184814%_))
                                  (let ((_%e184772184819%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd184770184814%_))))
                                    (let ((_%tl184774184824%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e184772184819%_)))
                                          (_%hd184773184822%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e184772184819%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd184773184822%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd184773184822%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl184774184824%_))
                                                  (let ((_%e184775184827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl184774184824%_))))
                                                    (let ((_%tl184777184832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184775184827%_)))
                                                          (_%hd184776184830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184775184827%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl184777184832%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl184771184816%_))
                      (let ((_%__splice195177195178%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl184771184816%_
                                '0))))
                        (let ((_%tl184780184837%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195177195178%_ '1)))
                              (_%target184778184835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195177195178%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl184780184837%_))
                              (_%__match195218195219%_
                               _%e184766184803%_
                               _%hd184767184806%_
                               _%tl184768184808%_
                               _%e184769184811%_
                               _%hd184770184814%_
                               _%tl184771184816%_
                               _%e184772184819%_
                               _%hd184773184822%_
                               _%tl184774184824%_
                               _%e184775184827%_
                               _%hd184776184830%_
                               _%tl184777184832%_
                               _%__splice195177195178%_
                               _%target184778184835%_
                               _%tl184780184837%_)
                              (_%__kont195179195180%_))))
                      (_%__kont195179195180%_))
                  (_%__kont195179195180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195179195180%_))
                                              (_%__kont195179195180%_))
                                          (_%__kont195179195180%_))))
                                  (_%__kont195179195180%_))))
                          (_%__kont195179195180%_))))
                  (_%__kont195179195180%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self184663%_ _%stx184664%_)
        (let* ((_%g184666184687%_
                (lambda (_%g184667184684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g184667184684%_))))
               (_%g184665184755%_
                (lambda (_%g184667184690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g184667184690%_))
                      (let ((_%e184671184692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g184667184690%_))))
                        (let ((_%hd184672184695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184671184692%_)))
                              (_%tl184673184697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184671184692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184673184697%_))
                              (let ((_%e184674184700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184673184697%_))))
                                (let ((_%hd184675184703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184674184700%_)))
                                      (_%tl184676184705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184674184700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl184676184705%_))
                                      (let ((_%e184677184708%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl184676184705%_))))
                                        (let ((_%hd184678184711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184677184708%_)))
                                              (_%tl184679184713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184677184708%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl184679184713%_))
                                              (let ((_%e184680184716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl184679184713%_))))
                                                (let ((_%hd184681184719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e184680184716%_)))
                                                      (_%tl184682184721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e184680184716%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl184682184721%_))
                                                      ((lambda (_%g184668184724%_
                                                                _%g184669184725%_
                                                                _%g184670184726%_)
                                                         (let ((_%c1184743184745%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self184663%_
                           _%g184669184725%_))))
                   (if _%c1184743184745%_
                       (let* ((_%c1184747%_ _%c1184743184745%_)
                              (_%c2184748184750%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self184663%_
                                  _%g184668184724%_))))
                         (if _%c2184748184750%_
                             (let ((_%c2184752%_ _%c2184748184750%_))
                               (if (fx= _%c1184747%_ _%c2184752%_)
                                   _%c1184747%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd184681184719%_
               _%hd184678184711%_
               _%hd184675184703%_)
              (_%g184666184687%_ _%g184667184690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g184666184687%_
                                               _%g184667184690%_))))
                                      (_%g184666184687%_ _%g184667184690%_))))
                              (_%g184666184687%_ _%g184667184690%_))))
                      (_%g184666184687%_ _%g184667184690%_)))))
          (_%g184665184755%_ _%stx184664%_))))))
