(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1784471386)
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
      (let ((__tmp215227 (list gxc#::void::t))
            (__tmp215226 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp215227
         '()
         __tmp215226
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args213841%_
        (apply make-instance gxc#::collect-bindings::t _%$args213841%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp215228
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
        (__make-atomic-promise __tmp215228)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx213833%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self213836%_
                (let ((__obj215202
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj215202))
               (__tmp215229
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213836%_ _%stx213833%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215229
           gxc#current-compile-method
           _%self213836%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp215231 (list gxc#::void::t))
            (__tmp215230 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp215231
         '(modules)
         __tmp215230
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args213830%_
        (apply make-instance gxc#::lift-modules::t _%$args213830%_)))
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
      (let ((__tmp215232
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
        (__make-atomic-promise __tmp215232)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords213805%_ _%$%modules213802213806%_ _%stx213807%_)
        (let ((_%modules213810%_
               (if (eq? _%$%modules213802213806%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%$%modules213802213806%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self213812%_
                  (let ((__obj215204
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215204
                       _%modules213810%_
                       '1
                       '#f
                       '#f))
                    __obj215204))
                 (__tmp215233
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213812%_ _%stx213807%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215233
             gxc#current-compile-method
             _%self213812%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords213819%_ . _%args213820%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords213819%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213819%_
                  'modules:
                  absent-value))
               _%args213820%_)))
    (define gxc#apply-lift-modules
      (lambda _%$%args213803213826%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%$%args213803213826%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp215235 (list)) (__tmp215234 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp215235
         '()
         __tmp215234
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args213798%_
        (apply make-instance gxc#::find-runtime-code::t _%$args213798%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp215236
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
        (__make-atomic-promise __tmp215236)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx213790%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self213793%_
                (let ((__obj215206
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj215206))
               (__tmp215237
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213793%_ _%stx213790%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215237
           gxc#current-compile-method
           _%self213793%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp215239 (list gxc#::false::t))
            (__tmp215238 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp215239
         '()
         __tmp215238
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args213787%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args213787%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp215240
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
        (__make-atomic-promise __tmp215240)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx213779%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self213782%_
                (let ((__obj215208
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj215208))
               (__tmp215241
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213782%_ _%stx213779%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215241
           gxc#current-compile-method
           _%self213782%_))))
    (define gxc#::count-values::t
      (let ((__tmp215243 (list gxc#::false-expression::t))
            (__tmp215242 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp215243
         '()
         __tmp215242
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args213776%_
        (apply make-instance gxc#::count-values::t _%$args213776%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp215244
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
        (__make-atomic-promise __tmp215244)))
    (define gxc#apply-count-values
      (lambda (_%stx213768%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self213771%_
                (let ((__obj215210
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj215210))
               (__tmp215245
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213771%_ _%stx213768%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215245
           gxc#current-compile-method
           _%self213771%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp215246 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp215246
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args213765%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args213765%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp215247
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
                  '%#define-runtime
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
        (__make-atomic-promise __tmp215247)))
    (define gxc#::generate-loader::t
      (let ((__tmp215249 (list gxc#::generate-runtime-empty::t))
            (__tmp215248 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp215249
         '()
         __tmp215248
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args213761%_
        (apply make-instance gxc#::generate-loader::t _%$args213761%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp215250
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
        (__make-atomic-promise __tmp215250)))
    (define gxc#apply-generate-loader
      (lambda (_%stx213753%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self213756%_
                (let ((__obj215213
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj215213))
               (__tmp215251
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213756%_ _%stx213753%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215251
           gxc#current-compile-method
           _%self213756%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp215252 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp215252
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args213750%_
        (apply make-instance gxc#::generate-runtime::t _%$args213750%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp215253
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
        (__make-atomic-promise __tmp215253)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx213742%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self213745%_
                (let ((__obj215215
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj215215))
               (__tmp215254
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213745%_ _%stx213742%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215254
           gxc#current-compile-method
           _%self213745%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp215256 (list gxc#::generate-runtime::t))
            (__tmp215255 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp215256
         '()
         __tmp215255
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args213739%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args213739%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp215257
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
        (__make-atomic-promise __tmp215257)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx213731%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self213734%_
                (let ((__obj215217
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj215217))
               (__tmp215258
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213734%_ _%stx213731%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp215258
           gxc#current-compile-method
           _%self213734%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp215259 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp215259
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args213728%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args213728%_)))
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
      (let ((__tmp215260
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
        (__make-atomic-promise __tmp215260)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords213703%_ _%$%table213700213704%_ _%stx213705%_)
        (let ((_%table213708%_
               (if (eq? _%$%table213700213704%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table213700213704%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self213710%_
                  (let ((__obj215219
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215219
                       _%table213708%_
                       '1
                       '#f
                       '#f))
                    __obj215219))
                 (__tmp215261
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213710%_ _%stx213705%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215261
             gxc#current-compile-method
             _%self213710%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords213717%_ . _%args213718%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords213717%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213717%_
                  'table:
                  absent-value))
               _%args213718%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%$%args213701213724%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%$%args213701213724%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp215263 (list gxc#::void-expression::t))
            (__tmp215262 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp215263
         '(state)
         __tmp215262
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args213696%_
        (apply make-instance gxc#::generate-meta::t _%$args213696%_)))
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
      (let ((__tmp215264
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
                  '%#define-runtime
                  gxc#generate-meta-define-runtime%))
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
        (__make-atomic-promise __tmp215264)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords213671%_ _%$%state213668213672%_ _%stx213673%_)
        (let ((_%state213676%_
               (if (eq? _%$%state213668213672%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state213668213672%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self213678%_
                  (let ((__obj215221
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215221
                       _%state213676%_
                       '1
                       '#f
                       '#f))
                    __obj215221))
                 (__tmp215265
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213678%_ _%stx213673%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215265
             gxc#current-compile-method
             _%self213678%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords213685%_ . _%args213686%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords213685%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213685%_
                  'state:
                  absent-value))
               _%args213686%_)))
    (define gxc#apply-generate-meta
      (lambda _%$%args213669213692%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%$%args213669213692%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp215267 (list)) (__tmp215266 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp215267
         '(state)
         __tmp215266
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args213664%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args213664%_)))
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
      (let ((__tmp215268
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
        (__make-atomic-promise __tmp215268)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords213639%_ _%$%state213636213640%_ _%stx213641%_)
        (let ((_%state213644%_
               (if (eq? _%$%state213636213640%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%$%state213636213640%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self213646%_
                  (let ((__obj215223
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj215223
                       _%state213644%_
                       '1
                       '#f
                       '#f))
                    __obj215223))
                 (__tmp215269
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213646%_ _%stx213641%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp215269
             gxc#current-compile-method
             _%self213646%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords213653%_ . _%args213654%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords213653%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213653%_
                  'state:
                  absent-value))
               _%args213654%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%$%args213637213660%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%$%args213637213660%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self213565%_ _%stx213566%_)
        (let* ((_%$%g213568213585%_
                (lambda (_%$%g213569213582%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213569213582%_))))
               (_%$%g213567213632%_
                (lambda (_%$%g213569213588%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213569213588%_))
                      (let ((_%$%e213572213590%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213569213588%_))))
                        (let ((_%$%hd213573213593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213572213590%_)))
                              (_%$%tl213574213595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213572213590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213574213595%_))
                              (let ((_%$%e213575213598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213574213595%_))))
                                (let ((_%$%hd213576213601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213575213598%_)))
                                      (_%$%tl213577213603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213575213598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213577213603%_))
                                      (let ((_%$%e213578213606%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213577213603%_))))
                                        (let ((_%$%hd213579213609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213578213606%_)))
                                              (_%$%tl213580213611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213578213606%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213580213611%_))
                                              (let ((__tmp215270
                                                     (lambda (_%bind213630%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind213630%_))
                                                           (gxc#add-module-binding!
                                                            _%bind213630%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp215270
                                                 _%$%hd213576213601%_))
                                              (_%$%g213568213585%_
                                               _%$%g213569213588%_))))
                                      (_%$%g213568213585%_
                                       _%$%g213569213588%_))))
                              (_%$%g213568213585%_ _%$%g213569213588%_))))
                      (_%$%g213568213585%_ _%$%g213569213588%_)))))
          (_%$%g213567213632%_ _%stx213566%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self213497%_ _%stx213498%_)
        (let* ((_%$%g213500213517%_
                (lambda (_%$%g213501213514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213501213514%_))))
               (_%$%g213499213562%_
                (lambda (_%$%g213501213520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213501213520%_))
                      (let ((_%$%e213504213522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213501213520%_))))
                        (let ((_%$%hd213505213525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213504213522%_)))
                              (_%$%tl213506213527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213504213522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213506213527%_))
                              (let ((_%$%e213507213530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213506213527%_))))
                                (let ((_%$%hd213508213533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213507213530%_)))
                                      (_%$%tl213509213535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213507213530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213509213535%_))
                                      (let ((_%$%e213510213538%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213509213535%_))))
                                        (let ((_%$%hd213511213541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213510213538%_)))
                                              (_%$%tl213512213543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213510213538%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213512213543%_))
                                              (gxc#add-module-binding!
                                               _%$%hd213508213533%_
                                               '#t)
                                              (_%$%g213500213517%_
                                               _%$%g213501213520%_))))
                                      (_%$%g213500213517%_
                                       _%$%g213501213520%_))))
                              (_%$%g213500213517%_ _%$%g213501213520%_))))
                      (_%$%g213500213517%_ _%$%g213501213520%_)))))
          (_%$%g213499213562%_ _%stx213498%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self213439%_ _%stx213440%_)
        (let* ((_%$%g213442213456%_
                (lambda (_%$%g213443213453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213443213453%_))))
               (_%$%g213441213494%_
                (lambda (_%$%g213443213459%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213443213459%_))
                      (let ((_%$%e213446213461%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213443213459%_))))
                        (let ((_%$%hd213447213464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213446213461%_)))
                              (_%$%tl213448213466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213446213461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213448213466%_))
                              (let ((_%$%e213449213469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213448213466%_))))
                                (let ((_%$%hd213450213472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213449213469%_)))
                                      (_%$%tl213451213474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213449213469%_))))
                                  (let ((_%ctx213491%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%$%hd213450213472%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self213439%_ 'modules))
                                     (cons _%ctx213491%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self213439%_
                                                     'modules)))))
                                    (let ((__tmp215271
                                           (lambda ()
                                             (let ((__tmp215272
                                                    (##structure-ref
                                                     _%ctx213491%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self213439%_
                                                __tmp215272)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp215271
                                       gx#current-expander-context
                                       _%ctx213491%_)))))
                              (_%$%g213442213456%_ _%$%g213443213459%_))))
                      (_%$%g213442213456%_ _%$%g213443213459%_)))))
          (_%$%g213441213494%_ _%stx213440%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls213393213395%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%$%decls213393213395%_
              (let ((_%decls213397%_ _%$%decls213393213395%_))
                (let _%lp213399%_ ((_%rest213401%_ _%decls213397%_))
                  (let* ((_%$%rest213402213410%_ _%rest213401%_)
                         (_%$%else213404213418%_ (lambda () '#f))
                         (_%$%K213406213427%_
                          (lambda (_%decls213421%_ _%decl213422%_)
                            (if (equal? _%decl213422%_ '(not safe))
                                '#t
                                (if (equal? _%decl213422%_ '(safe))
                                    '#f
                                    (_%lp213399%_ _%decls213421%_))))))
                    (if (pair? _%$%rest213402213410%_)
                        (let ((_%$%hd213407213430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest213402213410%_)))
                              (_%$%tl213408213432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest213402213410%_))))
                          (let* ((_%decl213435%_ _%$%hd213407213430%_)
                                 (_%decls213437%_ _%$%tl213408213432%_))
                            (_%$%K213406213427%_
                             _%decls213437%_
                             _%decl213435%_)))
                        (_%$%else213404213418%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id213387%_ _%syntax?213388%_)
        (let ((_%eid213390%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id213387%_))
                '1
                gx#binding::t
                '#f))
              (_%ht213391%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid213390%_))
              '#!void
              (let ((__tmp215273
                     (let ((__tmp215274
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid213390%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp215274 _%syntax?213388%_))))
                (declare (not safe))
                (hash-put! _%ht213391%_ _%eid213390%_ __tmp215273))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self213384%_ _%stx213385%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self213231%_ _%stx213232%_)
        (letrec ((_%simplify213234%_
                  (lambda (_%body213282%_)
                    (let _%lp213284%_ ((_%rest213286%_ _%body213282%_)
                                       (_%r213287%_ '()))
                      (let* ((_%$%rest213288213296%_ _%rest213286%_)
                             (_%$%else213290213304%_
                              (lambda () (reverse _%r213287%_)))
                             (_%$%K213292213372%_
                              (lambda (_%rest213307%_ _%hd213308%_)
                                (let* ((_%$%hd213309213325%_ _%hd213308%_)
                                       (_%$%else213313213333%_
                                        (lambda ()
                                          (_%lp213284%_
                                           _%rest213307%_
                                           (cons _%hd213308%_ _%r213287%_)))))
                                  (let ((_%$%K213321213362%_
                                         (lambda (_%exprs213360%_)
                                           (_%lp213284%_
                                            (append _%exprs213360%_
                                                    _%rest213307%_)
                                            _%r213287%_)))
                                        (_%$%K213316213346%_
                                         (lambda ()
                                           (if (null? _%rest213307%_)
                                               (_%lp213284%_
                                                _%rest213307%_
                                                (cons _%hd213308%_
                                                      _%r213287%_))
                                               (_%lp213284%_
                                                _%rest213307%_
                                                _%r213287%_))))
                                        (_%$%K213315213338%_
                                         (lambda ()
                                           (if (null? _%rest213307%_)
                                               (_%lp213284%_
                                                _%rest213307%_
                                                (cons _%hd213308%_
                                                      _%r213287%_))
                                               (_%lp213284%_
                                                _%rest213307%_
                                                _%r213287%_)))))
                                    (let ((_%$%try-match213312213341%_
                                           (lambda ()
                                             (if (symbol? _%$%hd213309213325%_)
                                                 (_%$%K213315213338%_)
                                                 (_%$%else213313213333%_)))))
                                      (if (pair? _%$%hd213309213325%_)
                                          (let ((_%$%tl213323213367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd213309213325%_)))
                                                (_%$%hd213322213365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd213309213325%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd213322213365%_
                                                         'begin))
                                                (let ((_%exprs213370%_
                                                       _%$%tl213323213367%_))
                                                  (_%$%K213321213362%_
                                                   _%exprs213370%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd213322213365%_
                                                             'quote))
                                                    (if (pair? _%$%tl213323213367%_)
                                                        (let ((_%$%tl213320213354%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl213323213367%_))))
                  (if (null? _%$%tl213320213354%_)
                      (_%$%K213316213346%_)
                      (_%$%try-match213312213341%_)))
                (_%$%try-match213312213341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%try-match213312213341%_))))
                                          (_%$%try-match213312213341%_))))))))
                        (if (pair? _%$%rest213288213296%_)
                            (let ((_%$%hd213293213375%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest213288213296%_)))
                                  (_%$%tl213294213377%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest213288213296%_))))
                              (let* ((_%hd213380%_ _%$%hd213293213375%_)
                                     (_%rest213382%_ _%$%tl213294213377%_))
                                (_%$%K213292213372%_
                                 _%rest213382%_
                                 _%hd213380%_)))
                            (_%$%else213290213304%_)))))))
          (let* ((_%$%g213236213246%_
                  (lambda (_%$%g213237213243%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g213237213243%_))))
                 (_%$%g213235213279%_
                  (lambda (_%$%g213237213249%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g213237213249%_))
                        (let ((_%$%e213239213251%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g213237213249%_))))
                          (let ((_%$%hd213240213254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e213239213251%_)))
                                (_%$%tl213241213256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e213239213251%_))))
                            (let* ((_%body213274%_
                                    (map (lambda (_%$%g213269213271%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self213231%_
                                              _%$%g213269213271%_)))
                                         _%$%tl213241213256%_))
                                   (_%body213276%_
                                    (_%simplify213234%_ _%body213274%_)))
                              (if (let ((__tmp215275 (length _%body213276%_)))
                                    (declare (not safe))
                                    (##fx= __tmp215275 '1))
                                  (car _%body213276%_)
                                  (cons 'begin _%body213276%_)))))
                        (_%$%g213236213246%_ _%$%g213237213249%_)))))
            (_%$%g213235213279%_ _%stx213232%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self213192%_ _%stx213193%_)
        (let* ((_%$%g213195213205%_
                (lambda (_%$%g213196213202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213196213202%_))))
               (_%$%g213194213228%_
                (lambda (_%$%g213196213208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213196213208%_))
                      (let ((_%$%e213198213210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213196213208%_))))
                        (let ((_%$%hd213199213213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213198213210%_)))
                              (_%$%tl213200213215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213198213210%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%$%tl213200213215%_)))))
                      (_%$%g213195213205%_ _%$%g213196213208%_)))))
          (_%$%g213194213228%_ _%stx213193%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self212958%_ _%stx212959%_)
        (let* ((_%__stx213865213866%_ _%stx212959%_)
               (_%$%g212963213015%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx213865213866%_)))))
          (let ((_%__kont213867213868%_
                 (lambda (_%$%g212965213174%_ _%$%g212966213175%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self212958%_ _%$%g212965213174%_))))
                (_%__kont213869213870%_
                 (lambda (_%$%g212976213122%_
                          _%$%g212977213123%_
                          _%$%g212978213124%_)
                   (if (let ((__tmp215276
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g212978213124%_))))
                         (declare (not safe))
                         (##memq __tmp215276 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self212958%_
                          _%$%g212976213122%_)))))
                (_%__kont213873213874%_
                 (lambda (_%$%g213000213044%_ _%$%g213001213045%_)
                   (let ((_%decls213060%_
                          (map gx#syntax->datum _%$%g213001213045%_)))
                     (let ((__tmp215278
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls213060%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self212958%_
                                                   _%$%g213000213044%_))
                                                '())))))
                           (__tmp215277
                            (append _%decls213060%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls)))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp215278
                        gxc#current-compile-decls
                        __tmp215277))))))
            (let* ((_%__match213920213921%_
                    (lambda (_%$%e212979213068%_
                             _%$%hd212980213071%_
                             _%$%tl212981213073%_
                             _%$%e212982213076%_
                             _%$%hd212983213079%_
                             _%$%tl212984213081%_
                             _%$%e212985213084%_
                             _%$%hd212986213087%_
                             _%$%tl212987213089%_
                             _%__splice213871213872%_
                             _%$%target212988213092%_
                             _%$%tl212990213094%_)
                      (letrec ((_%$%loop212991213097%_
                                (lambda (_%$%hd212989213100%_
                                         _%$%param212995213102%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd212989213100%_))
                                      (let ((_%$%e212992213104%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd212989213100%_))))
                                        (let ((_%$%lp-tl212994213109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212992213104%_)))
                                              (_%$%lp-hd212993213107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212992213104%_))))
                                          (_%$%loop212991213097%_
                                           _%$%lp-tl212994213109%_
                                           (cons _%$%lp-hd212993213107%_
                                                 _%$%param212995213102%_))))
                                      (let ((_%$%param212996213112%_
                                             (reverse _%$%param212995213102%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl212984213081%_))
                                            (let ((_%$%e212997213114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl212984213081%_))))
                                              (let ((_%$%tl212999213119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e212997213114%_)))
                                                    (_%$%hd212998213117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e212997213114%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl212999213119%_))
                                                    (let ((_%$%g212976213122%_
                                                           _%$%hd212998213117%_)
                                                          (_%$%g212977213123%_
                                                           _%$%param212996213112%_)
                                                          (_%$%g212978213124%_
                                                           _%$%hd212986213087%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%$%g212978213124%_))
                       (not (let ((__tmp215279
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g212978213124%_))))
                              (declare (not safe))
                              (##memq __tmp215279 gxc#gambit-annotations))))
                  (_%__kont213869213870%_
                   _%$%g212976213122%_
                   _%$%g212977213123%_
                   _%$%g212978213124%_)
                  (_%__kont213873213874%_
                   _%$%hd212998213117%_
                   _%$%hd212983213079%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g212963213015%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g212963213015%_))))))))
                        (_%$%loop212991213097%_
                         _%$%target212988213092%_
                         '()))))
                   (_%__match213894213895%_
                    (lambda (_%$%e212967213150%_
                             _%$%hd212968213153%_
                             _%$%tl212969213155%_
                             _%$%e212970213158%_
                             _%$%hd212971213161%_
                             _%$%tl212972213163%_
                             _%$%e212973213166%_
                             _%$%hd212974213169%_
                             _%$%tl212975213171%_)
                      (let ((_%$%g212965213174%_ _%$%hd212974213169%_)
                            (_%$%g212966213175%_ _%$%hd212971213161%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%g212966213175%_))
                            (_%__kont213867213868%_
                             _%$%g212965213174%_
                             _%$%g212966213175%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd212971213161%_))
                                (let ((_%$%e212985213084%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd212971213161%_))))
                                  (let ((_%$%tl212987213089%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212985213084%_)))
                                        (_%$%hd212986213087%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212985213084%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl212987213089%_))
                                        (let ((_%__splice213871213872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl212987213089%_
                                                  '0))))
                                          (let ((_%$%tl212990213094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice213871213872%_
                                                    '1)))
                                                (_%$%target212988213092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice213871213872%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212990213094%_))
                                                (_%__match213920213921%_
                                                 _%$%e212967213150%_
                                                 _%$%hd212968213153%_
                                                 _%$%tl212969213155%_
                                                 _%$%e212970213158%_
                                                 _%$%hd212971213161%_
                                                 _%$%tl212972213163%_
                                                 _%$%e212985213084%_
                                                 _%$%hd212986213087%_
                                                 _%$%tl212987213089%_
                                                 _%__splice213871213872%_
                                                 _%$%target212988213092%_
                                                 _%$%tl212990213094%_)
                                                (_%__kont213873213874%_
                                                 _%$%hd212974213169%_
                                                 _%$%hd212971213161%_))))
                                        (_%__kont213873213874%_
                                         _%$%hd212974213169%_
                                         _%$%hd212971213161%_))))
                                (_%__kont213873213874%_
                                 _%$%hd212974213169%_
                                 _%$%hd212971213161%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx213865213866%_))
                  (let ((_%$%e212967213150%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx213865213866%_))))
                    (let ((_%$%tl212969213155%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e212967213150%_)))
                          (_%$%hd212968213153%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e212967213150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl212969213155%_))
                          (let ((_%$%e212970213158%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl212969213155%_))))
                            (let ((_%$%tl212972213163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e212970213158%_)))
                                  (_%$%hd212971213161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e212970213158%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl212972213163%_))
                                  (let ((_%$%e212973213166%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl212972213163%_))))
                                    (let ((_%$%tl212975213171%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e212973213166%_)))
                                          (_%$%hd212974213169%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e212973213166%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl212975213171%_))
                                          (_%__match213894213895%_
                                           _%$%e212967213150%_
                                           _%$%hd212968213153%_
                                           _%$%tl212969213155%_
                                           _%$%e212970213158%_
                                           _%$%hd212971213161%_
                                           _%$%tl212972213163%_
                                           _%$%e212973213166%_
                                           _%$%hd212974213169%_
                                           _%$%tl212975213171%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd212971213161%_))
                                              (let ((_%$%e212985213084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd212971213161%_))))
                                                (let ((_%$%tl212987213089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e212985213084%_)))
                                                      (_%$%hd212986213087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e212985213084%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl212987213089%_))
                                                      (let ((_%__splice213871213872%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl212987213089%_
                        '0))))
                (let ((_%$%tl212990213094%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213871213872%_ '1)))
                      (_%$%target212988213092%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice213871213872%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl212990213094%_))
                      (_%__match213920213921%_
                       _%$%e212967213150%_
                       _%$%hd212968213153%_
                       _%$%tl212969213155%_
                       _%$%e212970213158%_
                       _%$%hd212971213161%_
                       _%$%tl212972213163%_
                       _%$%e212985213084%_
                       _%$%hd212986213087%_
                       _%$%tl212987213089%_
                       _%__splice213871213872%_
                       _%$%target212988213092%_
                       _%$%tl212990213094%_)
                      (let () (declare (not safe)) (_%$%g212963213015%_)))))
              (let () (declare (not safe)) (_%$%g212963213015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g212963213015%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd212971213161%_))
                                      (let ((_%$%e212985213084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd212971213161%_))))
                                        (let ((_%$%tl212987213089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212985213084%_)))
                                              (_%$%hd212986213087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212985213084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl212987213089%_))
                                              (let ((_%__splice213871213872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl212987213089%_
                                                        '0))))
                                                (let ((_%$%tl212990213094%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213871213872%_
                                                          '1)))
                                                      (_%$%target212988213092%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice213871213872%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl212990213094%_))
                                                      (_%__match213920213921%_
                                                       _%$%e212967213150%_
                                                       _%$%hd212968213153%_
                                                       _%$%tl212969213155%_
                                                       _%$%e212970213158%_
                                                       _%$%hd212971213161%_
                                                       _%$%tl212972213163%_
                                                       _%$%e212985213084%_
                                                       _%$%hd212986213087%_
                                                       _%$%tl212987213089%_
                                                       _%__splice213871213872%_
                                                       _%$%target212988213092%_
                                                       _%$%tl212990213094%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g212963213015%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g212963213015%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g212963213015%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g212963213015%_)))))
                  (let () (declare (not safe)) (_%$%g212963213015%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self212917%_ _%stx212918%_)
        (let* ((_%$%g212920212930%_
                (lambda (_%$%g212921212927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212921212927%_))))
               (_%$%g212919212955%_
                (lambda (_%$%g212921212933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212921212933%_))
                      (let ((_%$%e212923212935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212921212933%_))))
                        (let ((_%$%hd212924212938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212923212935%_)))
                              (_%$%tl212925212940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212923212935%_))))
                          (let ((_%decls212953%_
                                 (map gx#syntax->datum _%$%tl212925212940%_)))
                            (let ((__tmp215280
                                   (append _%decls212953%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls)))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp215280))
                            (cons 'declare _%decls212953%_))))
                      (_%$%g212920212930%_ _%$%g212921212933%_)))))
          (_%$%g212919212955%_ _%stx212918%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self212664%_ _%stx212665%_)
        (let* ((_%$%g212667212684%_
                (lambda (_%$%g212668212681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212668212681%_))))
               (_%$%g212666212914%_
                (lambda (_%$%g212668212687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212668212687%_))
                      (let ((_%$%e212671212689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212668212687%_))))
                        (let ((_%$%hd212672212692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212671212689%_)))
                              (_%$%tl212673212694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212671212689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212673212694%_))
                              (let ((_%$%e212674212697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212673212694%_))))
                                (let ((_%$%hd212675212700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212674212697%_)))
                                      (_%$%tl212676212702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212674212697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212676212702%_))
                                      (let ((_%$%e212677212705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212676212702%_))))
                                        (let ((_%$%hd212678212708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212677212705%_)))
                                              (_%$%tl212679212710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212677212705%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212679212710%_))
                                              (let* ((_%__stx213973213974%_
                                                      _%$%hd212675212700%_)
                                                     (_%$%g212731212745%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx213973213974%_)))))
                                                (let ((_%__kont213975213976%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self212664%_
                                                            _%$%hd212678212708%_))))
                                                      (_%__kont213977213978%_
                                                       (lambda (_%$%g212737212877%_)
                                                         (let ((_%eid212886%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%$%g212737212877%_))))
                   (let ((_%$%lambda-expr212887212889%_
                          (gxc#apply-find-lambda-expression
                           _%$%hd212678212708%_)))
                     (if _%$%lambda-expr212887212889%_
                         (let* ((_%lambda-expr212891%_
                                 _%$%lambda-expr212887212889%_)
                                (__tmp215281
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp215281
                            _%lambda-expr212891%_
                            _%eid212886%_))
                         '#f))
                   (cons 'define
                         (cons _%eid212886%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self212664%_
                                        _%$%hd212678212708%_))
                                     '()))))))
              (_%__kont213979213980%_
               (lambda ()
                 (let* ((_%tmp212752%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body212861%_
                         (let _%lp212754%_ ((_%rest212756%_
                                             _%$%hd212675212700%_)
                                            (_%k212757%_ '0)
                                            (_%r212758%_ '()))
                           (let* ((_%__stx213943213944%_ _%rest212756%_)
                                  (_%$%g212763212780%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx213943213944%_)))))
                             (let ((_%__kont213945213946%_
                                    (lambda (_%$%g212765212848%_)
                                      (_%lp212754%_
                                       _%$%g212765212848%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k212757%_ '1))
                                       _%r212758%_)))
                                   (_%__kont213947213948%_
                                    (lambda (_%$%g212770212821%_
                                             _%$%g212771212822%_)
                                      (_%lp212754%_
                                       _%$%g212770212821%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k212757%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%$%g212771212822%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp212752%_
                                                                _%k212757%_
                                                                _%$%g212770212821%_)
                                                               '())))
                                             _%r212758%_))))
                                   (_%__kont213949213950%_
                                    (lambda (_%$%g212775212792%_)
                                      (let ((__tmp215282
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%$%g212775212792%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp212752%_
                              _%k212757%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp215282
                                         _%r212758%_))))
                                   (_%__kont213951213952%_
                                    (lambda () (reverse _%r212758%_))))
                               (let ((_%$%g212761212808%_
                                      (lambda ()
                                        (let ((_%$%g212775212792%_
                                               _%__stx213943213944%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%g212775212792%_))
                                              (_%__kont213949213950%_
                                               _%$%g212775212792%_)
                                              (_%__kont213951213952%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx213943213944%_))
                                     (let ((_%$%e212766212837%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx213943213944%_))))
                                       (let ((_%$%tl212768212842%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e212766212837%_)))
                                             (_%$%hd212767212840%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e212766212837%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%$%hd212767212840%_))
                                             (let ((_%$%e212769212845%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%hd212767212840%_))))
                                               (if (equal? _%$%e212769212845%_
                                                           '#f)
                                                   (_%__kont213945213946%_
                                                    _%$%tl212768212842%_)
                                                   (_%__kont213947213948%_
                                                    _%$%tl212768212842%_
                                                    _%$%hd212767212840%_)))
                                             (_%__kont213947213948%_
                                              _%$%tl212768212842%_
                                              _%$%hd212767212840%_))))
                                     (_%$%g212761212808%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp212752%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self212664%_
                                                    _%$%hd212678212708%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp212752%_
                                      _%$%hd212675212700%_
                                      _%$%hd212678212708%_)
                                     _%body212861%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx213973213974%_))
                                                      (let ((_%$%e212733212898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx213973213974%_))))
                (let ((_%$%tl212735212903%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e212733212898%_)))
                      (_%$%hd212734212901%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e212733212898%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd212734212901%_))
                      (let ((_%$%e212736212906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd212734212901%_))))
                        (if (equal? _%$%e212736212906%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212735212903%_))
                                (_%__kont213975213976%_)
                                (_%__kont213979213980%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl212735212903%_))
                                (_%__kont213977213978%_ _%$%hd212734212901%_)
                                (_%__kont213979213980%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl212735212903%_))
                          (_%__kont213977213978%_ _%$%hd212734212901%_)
                          (_%__kont213979213980%_)))))
              (_%__kont213979213980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g212667212684%_
                                               _%$%g212668212687%_))))
                                      (_%$%g212667212684%_
                                       _%$%g212668212687%_))))
                              (_%$%g212667212684%_ _%$%g212668212687%_))))
                      (_%$%g212667212684%_ _%$%g212668212687%_)))))
          (_%$%g212666212914%_ _%stx212665%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals212639%_ _%hd212640%_ _%expr212641%_)
        (let ((_%$e212643%_ (gxc#apply-count-values _%expr212641%_)))
          (if _%$e212643%_
              (let ((_%len212648%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd212640%_)))
                    (_%cmp212649%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd212640%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len212648%_ '0))
                        (_%cmp212649%_ _%$e212643%_ _%len212648%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr212641%_
                       _%hd212640%_))))
              (let* ((_%len212655%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd212640%_)))
                     (_%cmp212657%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd212640%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg212659%_
                      (let ((__tmp215284
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd212640%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp215283 (number->string _%len212655%_)))
                        (declare (not safe))
                        (##string-append __tmp215284 __tmp215283 '" values")))
                     (_%count212661%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd212640%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len212655%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count212661%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals212639%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp212657%_
                                (cons _%count212661%_
                                      (cons _%len212655%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp212657%_
                                                        (cons _%count212661%_
                                                              (cons _%len212655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg212659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count212661%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var212634%_)
        (letrec ((_%generate-inline212636%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var212634%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var212634%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline212636%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline212636%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var212627%_ _%i212628%_ _%rest212629%_)
        (letrec ((_%generate-inline212631%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i212628%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest212629%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var212627%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var212627%_
                                                      (cons '0 '())))
                                          (cons _%var212627%_ '()))))
                        (cons '##values-ref
                              (cons _%var212627%_ (cons _%i212628%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline212631%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline212631%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var212621%_ _%i212622%_)
        (if (let () (declare (not safe)) (##fx= _%i212622%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var212621%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var212621%_ '()))
                                  (cons (cons 'list (cons _%var212621%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var212621%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var212621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var212621%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i212622%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var212621%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var212621%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var212621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var212621%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var212621%_ '()))
                                (cons _%i212622%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var212621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i212622%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self212553%_ _%stx212554%_)
        (let* ((_%$%g212556212573%_
                (lambda (_%$%g212557212570%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212557212570%_))))
               (_%$%g212555212618%_
                (lambda (_%$%g212557212576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212557212576%_))
                      (let ((_%$%e212560212578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212557212576%_))))
                        (let ((_%$%hd212561212581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212560212578%_)))
                              (_%$%tl212562212583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212560212578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212562212583%_))
                              (let ((_%$%e212563212586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212562212583%_))))
                                (let ((_%$%hd212564212589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212563212586%_)))
                                      (_%$%tl212565212591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212563212586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212565212591%_))
                                      (let ((_%$%e212566212594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212565212591%_))))
                                        (let ((_%$%hd212567212597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212566212594%_)))
                                              (_%$%tl212568212599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212566212594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212568212599%_))
                                              (gxc#generate-runtime-lambda-form
                                               _%self212553%_
                                               _%$%hd212564212589%_
                                               _%$%hd212567212597%_)
                                              (_%$%g212556212573%_
                                               _%$%g212557212576%_))))
                                      (_%$%g212556212573%_
                                       _%$%g212557212576%_))))
                              (_%$%g212556212573%_ _%$%g212557212576%_))))
                      (_%$%g212556212573%_ _%$%g212557212576%_)))))
          (_%$%g212555212618%_ _%stx212554%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self212512%_ _%hd212513%_ _%body212514%_)
        (let* ((_%hd212516%_ (gxc#generate-runtime-lambda-head _%hd212513%_))
               (_%body212518%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self212512%_ _%body212514%_)))
               (_%body212550%_
                (let* ((_%$%body212519212527%_ _%body212518%_)
                       (_%$%else212521212535%_
                        (lambda () (cons _%body212518%_ '())))
                       (_%$%K212523212540%_
                        (lambda (_%exprs212538%_) _%exprs212538%_)))
                  (if (pair? _%$%body212519212527%_)
                      (let ((_%$%hd212524212543%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body212519212527%_)))
                            (_%$%tl212525212545%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body212519212527%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd212524212543%_ 'begin))
                            (let ((_%exprs212548%_ _%$%tl212525212545%_))
                              (_%$%K212523212540%_ _%exprs212548%_))
                            (_%$%else212521212535%_)))
                      (_%$%else212521212535%_)))))
          (cons 'lambda (cons _%hd212516%_ _%body212550%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd212510%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd212510%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self211067%_ _%stx211068%_)
        (letrec ((_%dispatch-case?211070%_
                  (lambda (_%hd211748%_ _%body211749%_)
                    (let* ((_%form211751%_
                            (cons _%hd211748%_ (cons _%body211749%_ '())))
                           (_%__stx214005214006%_ _%form211751%_)
                           (_%$%g211756211913%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214005214006%_)))))
                      (let ((_%__kont214007214008%_
                             (lambda (_%$%g211758212430%_
                                      _%$%g211759212431%_
                                      _%$%g211760212432%_)
                               '#t))
                            (_%__kont214013214014%_
                             (lambda (_%$%g211803212222%_
                                      _%$%g211804212223%_
                                      _%$%g211805212224%_
                                      _%$%g211806212225%_
                                      _%$%g211807212226%_
                                      _%$%g211808212227%_)
                               '#t))
                            (_%__kont214019214020%_
                             (lambda (_%$%g211869212021%_
                                      _%$%g211870212022%_
                                      _%$%g211871212023%_
                                      _%$%g211872212024%_)
                               '#t))
                            (_%__kont214021214022%_ (lambda () '#f)))
                        (let* ((_%__match214146214147%_
                                (lambda (_%$%e211873211925%_
                                         _%$%hd211874211928%_
                                         _%$%tl211875211930%_
                                         _%$%e211876211933%_
                                         _%$%hd211877211936%_
                                         _%$%tl211878211938%_
                                         _%$%e211879211941%_
                                         _%$%hd211880211944%_
                                         _%$%tl211881211946%_
                                         _%$%e211882211949%_
                                         _%$%hd211883211952%_
                                         _%$%tl211884211954%_
                                         _%$%e211885211957%_
                                         _%$%hd211886211960%_
                                         _%$%tl211887211962%_
                                         _%$%e211888211965%_
                                         _%$%hd211889211968%_
                                         _%$%tl211890211970%_
                                         _%$%e211891211973%_
                                         _%$%hd211892211976%_
                                         _%$%tl211893211978%_
                                         _%$%e211894211981%_
                                         _%$%hd211895211984%_
                                         _%$%tl211896211986%_
                                         _%$%e211897211989%_
                                         _%$%hd211898211992%_
                                         _%$%tl211899211994%_
                                         _%$%e211900211997%_
                                         _%$%hd211901212000%_
                                         _%$%tl211902212002%_
                                         _%$%e211903212005%_
                                         _%$%hd211904212008%_
                                         _%$%tl211905212010%_
                                         _%$%e211906212013%_
                                         _%$%hd211907212016%_
                                         _%$%tl211908212018%_)
                                  (let ((_%$%g211869212021%_
                                         _%$%hd211907212016%_)
                                        (_%$%g211870212022%_
                                         _%$%hd211898211992%_)
                                        (_%$%g211871212023%_
                                         _%$%hd211889211968%_)
                                        (_%$%g211872212024%_
                                         _%$%hd211874211928%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g211872212024%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%$%g211871212023%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g211872212024%_
                                                _%$%g211869212021%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%$%g211870212022%_
                                                     _%$%g211872212024%_))))
                                        (_%__kont214019214020%_
                                         _%$%g211869212021%_
                                         _%$%g211870212022%_
                                         _%$%g211871212023%_
                                         _%$%g211872212024%_)
                                        (_%__kont214021214022%_)))))
                               (_%__match214118214119%_
                                (lambda (_%$%e211873211925%_
                                         _%$%hd211874211928%_
                                         _%$%tl211875211930%_
                                         _%$%e211876211933%_
                                         _%$%hd211877211936%_
                                         _%$%tl211878211938%_
                                         _%$%e211879211941%_
                                         _%$%hd211880211944%_
                                         _%$%tl211881211946%_
                                         _%$%e211882211949%_
                                         _%$%hd211883211952%_
                                         _%$%tl211884211954%_
                                         _%$%e211885211957%_
                                         _%$%hd211886211960%_
                                         _%$%tl211887211962%_
                                         _%$%e211888211965%_
                                         _%$%hd211889211968%_
                                         _%$%tl211890211970%_
                                         _%$%e211891211973%_
                                         _%$%hd211892211976%_
                                         _%$%tl211893211978%_
                                         _%$%e211894211981%_
                                         _%$%hd211895211984%_
                                         _%$%tl211896211986%_
                                         _%$%e211897211989%_
                                         _%$%hd211898211992%_
                                         _%$%tl211899211994%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl211893211978%_))
                                      (let ((_%$%e211900211997%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl211893211978%_))))
                                        (let ((_%$%tl211902212002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e211900211997%_)))
                                              (_%$%hd211901212000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e211900211997%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd211901212000%_))
                                              (let ((_%$%e211903212005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd211901212000%_))))
                                                (let ((_%$%tl211905212010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211903212005%_)))
                                                      (_%$%hd211904212008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211903212005%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd211904212008%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd211904212008%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl211905212010%_))
                      (let ((_%$%e211906212013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl211905212010%_))))
                        (let ((_%$%tl211908212018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211906212013%_)))
                              (_%$%hd211907212016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211906212013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl211908212018%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl211902212002%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl211878211938%_))
                                      (_%__match214146214147%_
                                       _%$%e211873211925%_
                                       _%$%hd211874211928%_
                                       _%$%tl211875211930%_
                                       _%$%e211876211933%_
                                       _%$%hd211877211936%_
                                       _%$%tl211878211938%_
                                       _%$%e211879211941%_
                                       _%$%hd211880211944%_
                                       _%$%tl211881211946%_
                                       _%$%e211882211949%_
                                       _%$%hd211883211952%_
                                       _%$%tl211884211954%_
                                       _%$%e211885211957%_
                                       _%$%hd211886211960%_
                                       _%$%tl211887211962%_
                                       _%$%e211888211965%_
                                       _%$%hd211889211968%_
                                       _%$%tl211890211970%_
                                       _%$%e211891211973%_
                                       _%$%hd211892211976%_
                                       _%$%tl211893211978%_
                                       _%$%e211894211981%_
                                       _%$%hd211895211984%_
                                       _%$%tl211896211986%_
                                       _%$%e211897211989%_
                                       _%$%hd211898211992%_
                                       _%$%tl211899211994%_
                                       _%$%e211900211997%_
                                       _%$%hd211901212000%_
                                       _%$%tl211902212002%_
                                       _%$%e211903212005%_
                                       _%$%hd211904212008%_
                                       _%$%tl211905212010%_
                                       _%$%e211906212013%_
                                       _%$%hd211907212016%_
                                       _%$%tl211908212018%_)
                                      (_%__kont214021214022%_))
                                  (_%__kont214021214022%_))
                              (_%__kont214021214022%_))))
                      (_%__kont214021214022%_))
                  (_%__kont214021214022%_))
              (_%__kont214021214022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214021214022%_))))
                                      (_%__kont214021214022%_))))
                               (_%__match214048214049%_
                                (lambda (_%$%e211809212066%_
                                         _%$%hd211810212069%_
                                         _%$%tl211811212071%_
                                         _%__splice214015214016%_
                                         _%$%target211812212074%_
                                         _%$%tl211814212076%_)
                                  (letrec ((_%$%loop211815212079%_
                                            (lambda (_%$%hd211813212082%_
                                                     _%$%arg211819212084%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211813212082%_))
                                                  (let ((_%$%e211816212086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211813212082%_))))
                                                    (let ((_%$%lp-tl211818212091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211816212086%_)))
                                                          (_%$%lp-hd211817212089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211816212086%_))))
                                                      (_%$%loop211815212079%_
                                                       _%$%lp-tl211818212091%_
                                                       (cons _%$%lp-hd211817212089%_
                                                             _%$%arg211819212084%_))))
                                                  (let ((_%$%arg211820212094%_
                                                         (reverse _%$%arg211819212084%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211811212071%_))
                                                        (let ((_%$%e211821212096%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211811212071%_))))
                  (let ((_%$%tl211823212101%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211821212096%_)))
                        (_%$%hd211822212099%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211821212096%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211822212099%_))
                        (let ((_%$%e211824212104%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211822212099%_))))
                          (let ((_%$%tl211826212109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211824212104%_)))
                                (_%$%hd211825212107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211824212104%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211825212107%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211825212107%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211826212109%_))
                                        (let ((_%$%e211827212112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211826212109%_))))
                                          (let ((_%$%tl211829212117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211827212112%_)))
                                                (_%$%hd211828212115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211827212112%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211828212115%_))
                                                (let ((_%$%e211830212120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211828212115%_))))
                                                  (let ((_%$%tl211832212125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211830212120%_)))
                                                        (_%$%hd211831212123%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211830212120%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211831212123%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211831212123%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211832212125%_))
                        (let ((_%$%e211833212128%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211832212125%_))))
                          (let ((_%$%tl211835212133%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211833212128%_)))
                                (_%$%hd211834212131%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211833212128%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211835212133%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl211829212117%_))
                                    (let ((_%$%e211836212136%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl211829212117%_))))
                                      (let ((_%$%tl211838212141%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e211836212136%_)))
                                            (_%$%hd211837212139%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e211836212136%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd211837212139%_))
                                            (let ((_%$%e211839212144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd211837212139%_))))
                                              (let ((_%$%tl211841212149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211839212144%_)))
                                                    (_%$%hd211840212147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211839212144%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd211840212147%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd211840212147%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl211841212149%_))
                                                            (let ((_%$%e211842212152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl211841212149%_))))
                      (let ((_%$%tl211844212157%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211842212152%_)))
                            (_%$%hd211843212155%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211842212152%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl211844212157%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl211838212141%_))
                                (if (let ((__tmp215285
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%$%tl211838212141%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp215285 '1))
                                    (let ((_%__splice214017214018%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211838212141%_
                                              '1))))
                                      (let ((_%$%tl211847212162%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214017214018%_
                                                '1)))
                                            (_%$%target211845212160%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214017214018%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211847212162%_))
                                            (let ((_%$%e211854212165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211847212162%_))))
                                              (let ((_%$%tl211856212170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211854212165%_)))
                                                    (_%$%hd211855212168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211854212165%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd211855212168%_))
                                                    (let ((_%$%e211857212173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd211855212168%_))))
                                                      (let ((_%$%tl211859212178%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e211857212173%_)))
                    (_%$%hd211858212176%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e211857212173%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd211858212176%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%$%hd211858212176%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl211859212178%_))
                            (let ((_%$%e211860212181%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl211859212178%_))))
                              (let ((_%$%tl211862212186%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211860212181%_)))
                                    (_%$%hd211861212184%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211860212181%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl211862212186%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl211856212170%_))
                                        (letrec ((_%$%loop211848212189%_
                                                  (lambda (_%$%hd211846212192%_
                                                           _%$%xarg211852212194%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd211846212192%_))
                                                        (let ((_%$%e211849212196%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd211846212192%_))))
                  (let ((_%$%lp-tl211851212201%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211849212196%_)))
                        (_%$%lp-hd211850212199%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211849212196%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd211850212199%_))
                        (let ((_%$%e211863212204%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd211850212199%_))))
                          (let ((_%$%tl211865212209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211863212204%_)))
                                (_%$%hd211864212207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211863212204%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211864212207%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%$%hd211864212207%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211865212209%_))
                                        (let ((_%$%e211866212212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211865212209%_))))
                                          (let ((_%$%tl211868212217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211866212212%_)))
                                                (_%$%hd211867212215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211866212212%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl211868212217%_))
                                                (_%$%loop211848212189%_
                                                 _%$%lp-tl211851212201%_
                                                 (cons _%$%hd211867212215%_
                                                       _%$%xarg211852212194%_))
                                                (_%__match214118214119%_
                                                 _%$%e211809212066%_
                                                 _%$%hd211810212069%_
                                                 _%$%tl211811212071%_
                                                 _%$%e211821212096%_
                                                 _%$%hd211822212099%_
                                                 _%$%tl211823212101%_
                                                 _%$%e211824212104%_
                                                 _%$%hd211825212107%_
                                                 _%$%tl211826212109%_
                                                 _%$%e211827212112%_
                                                 _%$%hd211828212115%_
                                                 _%$%tl211829212117%_
                                                 _%$%e211830212120%_
                                                 _%$%hd211831212123%_
                                                 _%$%tl211832212125%_
                                                 _%$%e211833212128%_
                                                 _%$%hd211834212131%_
                                                 _%$%tl211835212133%_
                                                 _%$%e211836212136%_
                                                 _%$%hd211837212139%_
                                                 _%$%tl211838212141%_
                                                 _%$%e211839212144%_
                                                 _%$%hd211840212147%_
                                                 _%$%tl211841212149%_
                                                 _%$%e211842212152%_
                                                 _%$%hd211843212155%_
                                                 _%$%tl211844212157%_))))
                                        (_%__match214118214119%_
                                         _%$%e211809212066%_
                                         _%$%hd211810212069%_
                                         _%$%tl211811212071%_
                                         _%$%e211821212096%_
                                         _%$%hd211822212099%_
                                         _%$%tl211823212101%_
                                         _%$%e211824212104%_
                                         _%$%hd211825212107%_
                                         _%$%tl211826212109%_
                                         _%$%e211827212112%_
                                         _%$%hd211828212115%_
                                         _%$%tl211829212117%_
                                         _%$%e211830212120%_
                                         _%$%hd211831212123%_
                                         _%$%tl211832212125%_
                                         _%$%e211833212128%_
                                         _%$%hd211834212131%_
                                         _%$%tl211835212133%_
                                         _%$%e211836212136%_
                                         _%$%hd211837212139%_
                                         _%$%tl211838212141%_
                                         _%$%e211839212144%_
                                         _%$%hd211840212147%_
                                         _%$%tl211841212149%_
                                         _%$%e211842212152%_
                                         _%$%hd211843212155%_
                                         _%$%tl211844212157%_))
                                    (_%__match214118214119%_
                                     _%$%e211809212066%_
                                     _%$%hd211810212069%_
                                     _%$%tl211811212071%_
                                     _%$%e211821212096%_
                                     _%$%hd211822212099%_
                                     _%$%tl211823212101%_
                                     _%$%e211824212104%_
                                     _%$%hd211825212107%_
                                     _%$%tl211826212109%_
                                     _%$%e211827212112%_
                                     _%$%hd211828212115%_
                                     _%$%tl211829212117%_
                                     _%$%e211830212120%_
                                     _%$%hd211831212123%_
                                     _%$%tl211832212125%_
                                     _%$%e211833212128%_
                                     _%$%hd211834212131%_
                                     _%$%tl211835212133%_
                                     _%$%e211836212136%_
                                     _%$%hd211837212139%_
                                     _%$%tl211838212141%_
                                     _%$%e211839212144%_
                                     _%$%hd211840212147%_
                                     _%$%tl211841212149%_
                                     _%$%e211842212152%_
                                     _%$%hd211843212155%_
                                     _%$%tl211844212157%_))
                                (_%__match214118214119%_
                                 _%$%e211809212066%_
                                 _%$%hd211810212069%_
                                 _%$%tl211811212071%_
                                 _%$%e211821212096%_
                                 _%$%hd211822212099%_
                                 _%$%tl211823212101%_
                                 _%$%e211824212104%_
                                 _%$%hd211825212107%_
                                 _%$%tl211826212109%_
                                 _%$%e211827212112%_
                                 _%$%hd211828212115%_
                                 _%$%tl211829212117%_
                                 _%$%e211830212120%_
                                 _%$%hd211831212123%_
                                 _%$%tl211832212125%_
                                 _%$%e211833212128%_
                                 _%$%hd211834212131%_
                                 _%$%tl211835212133%_
                                 _%$%e211836212136%_
                                 _%$%hd211837212139%_
                                 _%$%tl211838212141%_
                                 _%$%e211839212144%_
                                 _%$%hd211840212147%_
                                 _%$%tl211841212149%_
                                 _%$%e211842212152%_
                                 _%$%hd211843212155%_
                                 _%$%tl211844212157%_))))
                        (_%__match214118214119%_
                         _%$%e211809212066%_
                         _%$%hd211810212069%_
                         _%$%tl211811212071%_
                         _%$%e211821212096%_
                         _%$%hd211822212099%_
                         _%$%tl211823212101%_
                         _%$%e211824212104%_
                         _%$%hd211825212107%_
                         _%$%tl211826212109%_
                         _%$%e211827212112%_
                         _%$%hd211828212115%_
                         _%$%tl211829212117%_
                         _%$%e211830212120%_
                         _%$%hd211831212123%_
                         _%$%tl211832212125%_
                         _%$%e211833212128%_
                         _%$%hd211834212131%_
                         _%$%tl211835212133%_
                         _%$%e211836212136%_
                         _%$%hd211837212139%_
                         _%$%tl211838212141%_
                         _%$%e211839212144%_
                         _%$%hd211840212147%_
                         _%$%tl211841212149%_
                         _%$%e211842212152%_
                         _%$%hd211843212155%_
                         _%$%tl211844212157%_))))
                (let ((_%$%xarg211853212220%_
                       (reverse _%$%xarg211852212194%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl211823212101%_))
                      (let ((_%$%g211803212222%_ _%$%hd211861212184%_)
                            (_%$%g211804212223%_ _%$%xarg211853212220%_)
                            (_%$%g211805212224%_ _%$%hd211843212155%_)
                            (_%$%g211806212225%_ _%$%hd211834212131%_)
                            (_%$%g211807212226%_ _%$%tl211814212076%_)
                            (_%$%g211808212227%_ _%$%arg211820212094%_))
                        (if (and (let ((__tmp215286
                                        (let ((__tmp215287
                                               (lambda (_%$%g212270212273%_
                                                        _%$%g212271212275%_)
                                                 (cons _%$%g212270212273%_
                                                       _%$%g212271212275%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215287
                                           '()
                                           _%$%g211808212227%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp215286))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%g211807212226%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%$%g211806212225%_
                                    'apply))
                                 (let ((__tmp215290
                                        (length (let ((__tmp215291
                                                       (lambda (_%$%g212277212280%_
                                                                _%$%g212278212282%_)
                                                         (cons _%$%g212277212280%_
                                                               _%$%g212278212282%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215291
                                                   '()
                                                   _%$%g211808212227%_))))
                                       (__tmp215288
                                        (length (let ((__tmp215289
                                                       (lambda (_%$%g212284212287%_
                                                                _%$%g212285212289%_)
                                                         (cons _%$%g212284212287%_
                                                               _%$%g212285212289%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp215289
                                                   '()
                                                   _%$%g211804212223%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp215290 __tmp215288))
                                 (let ((__tmp215294
                                        (let ((__tmp215295
                                               (lambda (_%$%g212291212294%_
                                                        _%$%g212292212296%_)
                                                 (cons _%$%g212291212294%_
                                                       _%$%g212292212296%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215295
                                           '()
                                           _%$%g211808212227%_)))
                                       (__tmp215292
                                        (let ((__tmp215293
                                               (lambda (_%$%g212298212301%_
                                                        _%$%g212299212303%_)
                                                 (cons _%$%g212298212301%_
                                                       _%$%g212299212303%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp215293
                                           '()
                                           _%$%g211804212223%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp215294
                                    __tmp215292))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g211807212226%_
                                    _%$%g211803212222%_))
                                 (not (let ((__tmp215299
                                             (lambda (_%$%g212305212307%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%g212305212307%_
                                                  _%$%g211805212224%_))))
                                            (__tmp215296
                                             (let ((__tmp215298
                                                    (lambda (_%$%g212309212312%_
                                                             _%$%g212310212314%_)
                                                      (cons _%$%g212309212312%_
                                                            _%$%g212310212314%_)))
                                                   (__tmp215297
                                                    (cons _%$%g211807212226%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215298
                                                __tmp215297
                                                _%$%g211808212227%_))))
                                        (declare (not safe))
                                        (__find __tmp215299 __tmp215296))))
                            (_%__kont214013214014%_
                             _%$%g211803212222%_
                             _%$%g211804212223%_
                             _%$%g211805212224%_
                             _%$%g211806212225%_
                             _%$%g211807212226%_
                             _%$%g211808212227%_)
                            (_%__match214118214119%_
                             _%$%e211809212066%_
                             _%$%hd211810212069%_
                             _%$%tl211811212071%_
                             _%$%e211821212096%_
                             _%$%hd211822212099%_
                             _%$%tl211823212101%_
                             _%$%e211824212104%_
                             _%$%hd211825212107%_
                             _%$%tl211826212109%_
                             _%$%e211827212112%_
                             _%$%hd211828212115%_
                             _%$%tl211829212117%_
                             _%$%e211830212120%_
                             _%$%hd211831212123%_
                             _%$%tl211832212125%_
                             _%$%e211833212128%_
                             _%$%hd211834212131%_
                             _%$%tl211835212133%_
                             _%$%e211836212136%_
                             _%$%hd211837212139%_
                             _%$%tl211838212141%_
                             _%$%e211839212144%_
                             _%$%hd211840212147%_
                             _%$%tl211841212149%_
                             _%$%e211842212152%_
                             _%$%hd211843212155%_
                             _%$%tl211844212157%_)))
                      (_%__match214118214119%_
                       _%$%e211809212066%_
                       _%$%hd211810212069%_
                       _%$%tl211811212071%_
                       _%$%e211821212096%_
                       _%$%hd211822212099%_
                       _%$%tl211823212101%_
                       _%$%e211824212104%_
                       _%$%hd211825212107%_
                       _%$%tl211826212109%_
                       _%$%e211827212112%_
                       _%$%hd211828212115%_
                       _%$%tl211829212117%_
                       _%$%e211830212120%_
                       _%$%hd211831212123%_
                       _%$%tl211832212125%_
                       _%$%e211833212128%_
                       _%$%hd211834212131%_
                       _%$%tl211835212133%_
                       _%$%e211836212136%_
                       _%$%hd211837212139%_
                       _%$%tl211838212141%_
                       _%$%e211839212144%_
                       _%$%hd211840212147%_
                       _%$%tl211841212149%_
                       _%$%e211842212152%_
                       _%$%hd211843212155%_
                       _%$%tl211844212157%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop211848212189%_
                                           _%$%target211845212160%_
                                           '()))
                                        (_%__match214118214119%_
                                         _%$%e211809212066%_
                                         _%$%hd211810212069%_
                                         _%$%tl211811212071%_
                                         _%$%e211821212096%_
                                         _%$%hd211822212099%_
                                         _%$%tl211823212101%_
                                         _%$%e211824212104%_
                                         _%$%hd211825212107%_
                                         _%$%tl211826212109%_
                                         _%$%e211827212112%_
                                         _%$%hd211828212115%_
                                         _%$%tl211829212117%_
                                         _%$%e211830212120%_
                                         _%$%hd211831212123%_
                                         _%$%tl211832212125%_
                                         _%$%e211833212128%_
                                         _%$%hd211834212131%_
                                         _%$%tl211835212133%_
                                         _%$%e211836212136%_
                                         _%$%hd211837212139%_
                                         _%$%tl211838212141%_
                                         _%$%e211839212144%_
                                         _%$%hd211840212147%_
                                         _%$%tl211841212149%_
                                         _%$%e211842212152%_
                                         _%$%hd211843212155%_
                                         _%$%tl211844212157%_))
                                    (_%__match214118214119%_
                                     _%$%e211809212066%_
                                     _%$%hd211810212069%_
                                     _%$%tl211811212071%_
                                     _%$%e211821212096%_
                                     _%$%hd211822212099%_
                                     _%$%tl211823212101%_
                                     _%$%e211824212104%_
                                     _%$%hd211825212107%_
                                     _%$%tl211826212109%_
                                     _%$%e211827212112%_
                                     _%$%hd211828212115%_
                                     _%$%tl211829212117%_
                                     _%$%e211830212120%_
                                     _%$%hd211831212123%_
                                     _%$%tl211832212125%_
                                     _%$%e211833212128%_
                                     _%$%hd211834212131%_
                                     _%$%tl211835212133%_
                                     _%$%e211836212136%_
                                     _%$%hd211837212139%_
                                     _%$%tl211838212141%_
                                     _%$%e211839212144%_
                                     _%$%hd211840212147%_
                                     _%$%tl211841212149%_
                                     _%$%e211842212152%_
                                     _%$%hd211843212155%_
                                     _%$%tl211844212157%_))))
                            (_%__match214118214119%_
                             _%$%e211809212066%_
                             _%$%hd211810212069%_
                             _%$%tl211811212071%_
                             _%$%e211821212096%_
                             _%$%hd211822212099%_
                             _%$%tl211823212101%_
                             _%$%e211824212104%_
                             _%$%hd211825212107%_
                             _%$%tl211826212109%_
                             _%$%e211827212112%_
                             _%$%hd211828212115%_
                             _%$%tl211829212117%_
                             _%$%e211830212120%_
                             _%$%hd211831212123%_
                             _%$%tl211832212125%_
                             _%$%e211833212128%_
                             _%$%hd211834212131%_
                             _%$%tl211835212133%_
                             _%$%e211836212136%_
                             _%$%hd211837212139%_
                             _%$%tl211838212141%_
                             _%$%e211839212144%_
                             _%$%hd211840212147%_
                             _%$%tl211841212149%_
                             _%$%e211842212152%_
                             _%$%hd211843212155%_
                             _%$%tl211844212157%_))
                        (_%__match214118214119%_
                         _%$%e211809212066%_
                         _%$%hd211810212069%_
                         _%$%tl211811212071%_
                         _%$%e211821212096%_
                         _%$%hd211822212099%_
                         _%$%tl211823212101%_
                         _%$%e211824212104%_
                         _%$%hd211825212107%_
                         _%$%tl211826212109%_
                         _%$%e211827212112%_
                         _%$%hd211828212115%_
                         _%$%tl211829212117%_
                         _%$%e211830212120%_
                         _%$%hd211831212123%_
                         _%$%tl211832212125%_
                         _%$%e211833212128%_
                         _%$%hd211834212131%_
                         _%$%tl211835212133%_
                         _%$%e211836212136%_
                         _%$%hd211837212139%_
                         _%$%tl211838212141%_
                         _%$%e211839212144%_
                         _%$%hd211840212147%_
                         _%$%tl211841212149%_
                         _%$%e211842212152%_
                         _%$%hd211843212155%_
                         _%$%tl211844212157%_))
                    (_%__match214118214119%_
                     _%$%e211809212066%_
                     _%$%hd211810212069%_
                     _%$%tl211811212071%_
                     _%$%e211821212096%_
                     _%$%hd211822212099%_
                     _%$%tl211823212101%_
                     _%$%e211824212104%_
                     _%$%hd211825212107%_
                     _%$%tl211826212109%_
                     _%$%e211827212112%_
                     _%$%hd211828212115%_
                     _%$%tl211829212117%_
                     _%$%e211830212120%_
                     _%$%hd211831212123%_
                     _%$%tl211832212125%_
                     _%$%e211833212128%_
                     _%$%hd211834212131%_
                     _%$%tl211835212133%_
                     _%$%e211836212136%_
                     _%$%hd211837212139%_
                     _%$%tl211838212141%_
                     _%$%e211839212144%_
                     _%$%hd211840212147%_
                     _%$%tl211841212149%_
                     _%$%e211842212152%_
                     _%$%hd211843212155%_
                     _%$%tl211844212157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match214118214119%_
                                                     _%$%e211809212066%_
                                                     _%$%hd211810212069%_
                                                     _%$%tl211811212071%_
                                                     _%$%e211821212096%_
                                                     _%$%hd211822212099%_
                                                     _%$%tl211823212101%_
                                                     _%$%e211824212104%_
                                                     _%$%hd211825212107%_
                                                     _%$%tl211826212109%_
                                                     _%$%e211827212112%_
                                                     _%$%hd211828212115%_
                                                     _%$%tl211829212117%_
                                                     _%$%e211830212120%_
                                                     _%$%hd211831212123%_
                                                     _%$%tl211832212125%_
                                                     _%$%e211833212128%_
                                                     _%$%hd211834212131%_
                                                     _%$%tl211835212133%_
                                                     _%$%e211836212136%_
                                                     _%$%hd211837212139%_
                                                     _%$%tl211838212141%_
                                                     _%$%e211839212144%_
                                                     _%$%hd211840212147%_
                                                     _%$%tl211841212149%_
                                                     _%$%e211842212152%_
                                                     _%$%hd211843212155%_
                                                     _%$%tl211844212157%_))))
                                            (_%__match214118214119%_
                                             _%$%e211809212066%_
                                             _%$%hd211810212069%_
                                             _%$%tl211811212071%_
                                             _%$%e211821212096%_
                                             _%$%hd211822212099%_
                                             _%$%tl211823212101%_
                                             _%$%e211824212104%_
                                             _%$%hd211825212107%_
                                             _%$%tl211826212109%_
                                             _%$%e211827212112%_
                                             _%$%hd211828212115%_
                                             _%$%tl211829212117%_
                                             _%$%e211830212120%_
                                             _%$%hd211831212123%_
                                             _%$%tl211832212125%_
                                             _%$%e211833212128%_
                                             _%$%hd211834212131%_
                                             _%$%tl211835212133%_
                                             _%$%e211836212136%_
                                             _%$%hd211837212139%_
                                             _%$%tl211838212141%_
                                             _%$%e211839212144%_
                                             _%$%hd211840212147%_
                                             _%$%tl211841212149%_
                                             _%$%e211842212152%_
                                             _%$%hd211843212155%_
                                             _%$%tl211844212157%_))))
                                    (_%__match214118214119%_
                                     _%$%e211809212066%_
                                     _%$%hd211810212069%_
                                     _%$%tl211811212071%_
                                     _%$%e211821212096%_
                                     _%$%hd211822212099%_
                                     _%$%tl211823212101%_
                                     _%$%e211824212104%_
                                     _%$%hd211825212107%_
                                     _%$%tl211826212109%_
                                     _%$%e211827212112%_
                                     _%$%hd211828212115%_
                                     _%$%tl211829212117%_
                                     _%$%e211830212120%_
                                     _%$%hd211831212123%_
                                     _%$%tl211832212125%_
                                     _%$%e211833212128%_
                                     _%$%hd211834212131%_
                                     _%$%tl211835212133%_
                                     _%$%e211836212136%_
                                     _%$%hd211837212139%_
                                     _%$%tl211838212141%_
                                     _%$%e211839212144%_
                                     _%$%hd211840212147%_
                                     _%$%tl211841212149%_
                                     _%$%e211842212152%_
                                     _%$%hd211843212155%_
                                     _%$%tl211844212157%_))
                                (_%__match214118214119%_
                                 _%$%e211809212066%_
                                 _%$%hd211810212069%_
                                 _%$%tl211811212071%_
                                 _%$%e211821212096%_
                                 _%$%hd211822212099%_
                                 _%$%tl211823212101%_
                                 _%$%e211824212104%_
                                 _%$%hd211825212107%_
                                 _%$%tl211826212109%_
                                 _%$%e211827212112%_
                                 _%$%hd211828212115%_
                                 _%$%tl211829212117%_
                                 _%$%e211830212120%_
                                 _%$%hd211831212123%_
                                 _%$%tl211832212125%_
                                 _%$%e211833212128%_
                                 _%$%hd211834212131%_
                                 _%$%tl211835212133%_
                                 _%$%e211836212136%_
                                 _%$%hd211837212139%_
                                 _%$%tl211838212141%_
                                 _%$%e211839212144%_
                                 _%$%hd211840212147%_
                                 _%$%tl211841212149%_
                                 _%$%e211842212152%_
                                 _%$%hd211843212155%_
                                 _%$%tl211844212157%_))
                            (_%__kont214021214022%_))))
                    (_%__kont214021214022%_))
                (_%__kont214021214022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214021214022%_))))
                                            (_%__kont214021214022%_))))
                                    (_%__kont214021214022%_))
                                (_%__kont214021214022%_))))
                        (_%__kont214021214022%_))
                    (_%__kont214021214022%_))
                (_%__kont214021214022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont214021214022%_))))
                                        (_%__kont214021214022%_))
                                    (_%__kont214021214022%_))
                                (_%__kont214021214022%_))))
                        (_%__kont214021214022%_))))
                (_%__kont214021214022%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211815212079%_
                                     _%$%target211812212074%_
                                     '()))))
                               (_%__match214036214037%_
                                (lambda (_%$%e211761212322%_
                                         _%$%hd211762212325%_
                                         _%$%tl211763212327%_
                                         _%__splice214009214010%_
                                         _%$%target211764212330%_
                                         _%$%tl211766212332%_)
                                  (letrec ((_%$%loop211767212335%_
                                            (lambda (_%$%hd211765212338%_
                                                     _%$%arg211771212340%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211765212338%_))
                                                  (let ((_%$%e211768212342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211765212338%_))))
                                                    (let ((_%$%lp-tl211770212347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211768212342%_)))
                                                          (_%$%lp-hd211769212345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211768212342%_))))
                                                      (_%$%loop211767212335%_
                                                       _%$%lp-tl211770212347%_
                                                       (cons _%$%lp-hd211769212345%_
                                                             _%$%arg211771212340%_))))
                                                  (let ((_%$%arg211772212350%_
                                                         (reverse _%$%arg211771212340%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211763212327%_))
                                                        (let ((_%$%e211773212352%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211763212327%_))))
                  (let ((_%$%tl211775212357%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211773212352%_)))
                        (_%$%hd211774212355%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211773212352%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211774212355%_))
                        (let ((_%$%e211776212360%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211774212355%_))))
                          (let ((_%$%tl211778212365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211776212360%_)))
                                (_%$%hd211777212363%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211776212360%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211777212363%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211777212363%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211778212365%_))
                                        (let ((_%$%e211779212368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211778212365%_))))
                                          (let ((_%$%tl211781212373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211779212368%_)))
                                                (_%$%hd211780212371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211779212368%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211780212371%_))
                                                (let ((_%$%e211782212376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211780212371%_))))
                                                  (let ((_%$%tl211784212381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211782212376%_)))
                                                        (_%$%hd211783212379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211782212376%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211783212379%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211783212379%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211784212381%_))
                        (let ((_%$%e211785212384%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211784212381%_))))
                          (let ((_%$%tl211787212389%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211785212384%_)))
                                (_%$%hd211786212387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211785212384%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211787212389%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl211781212373%_))
                                    (let ((_%__splice214011214012%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211781212373%_
                                              '0))))
                                      (let ((_%$%tl211790212394%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214011214012%_
                                                '1)))
                                            (_%$%target211788212392%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214011214012%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl211790212394%_))
                                            (letrec ((_%$%loop211791212397%_
                                                      (lambda (_%$%hd211789212400%_
                                                               _%$%xarg211795212402%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd211789212400%_))
                                                            (let ((_%$%e211792212404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd211789212400%_))))
                      (let ((_%$%lp-tl211794212409%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211792212404%_)))
                            (_%$%lp-hd211793212407%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211792212404%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd211793212407%_))
                            (let ((_%$%e211797212412%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd211793212407%_))))
                              (let ((_%$%tl211799212417%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211797212412%_)))
                                    (_%$%hd211798212415%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211797212412%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd211798212415%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd211798212415%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211799212417%_))
                                            (let ((_%$%e211800212420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211799212417%_))))
                                              (let ((_%$%tl211802212425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211800212420%_)))
                                                    (_%$%hd211801212423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211800212420%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl211802212425%_))
                                                    (_%$%loop211791212397%_
                                                     _%$%lp-tl211794212409%_
                                                     (cons _%$%hd211801212423%_
                                                           _%$%xarg211795212402%_))
                                                    (_%__match214048214049%_
                                                     _%$%e211761212322%_
                                                     _%$%hd211762212325%_
                                                     _%$%tl211763212327%_
                                                     _%__splice214009214010%_
                                                     _%$%target211764212330%_
                                                     _%$%tl211766212332%_))))
                                            (_%__match214048214049%_
                                             _%$%e211761212322%_
                                             _%$%hd211762212325%_
                                             _%$%tl211763212327%_
                                             _%__splice214009214010%_
                                             _%$%target211764212330%_
                                             _%$%tl211766212332%_))
                                        (_%__match214048214049%_
                                         _%$%e211761212322%_
                                         _%$%hd211762212325%_
                                         _%$%tl211763212327%_
                                         _%__splice214009214010%_
                                         _%$%target211764212330%_
                                         _%$%tl211766212332%_))
                                    (_%__match214048214049%_
                                     _%$%e211761212322%_
                                     _%$%hd211762212325%_
                                     _%$%tl211763212327%_
                                     _%__splice214009214010%_
                                     _%$%target211764212330%_
                                     _%$%tl211766212332%_))))
                            (_%__match214048214049%_
                             _%$%e211761212322%_
                             _%$%hd211762212325%_
                             _%$%tl211763212327%_
                             _%__splice214009214010%_
                             _%$%target211764212330%_
                             _%$%tl211766212332%_))))
                    (let ((_%$%xarg211796212428%_
                           (reverse _%$%xarg211795212402%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211775212357%_))
                          (let ((_%$%g211758212430%_ _%$%xarg211796212428%_)
                                (_%$%g211759212431%_ _%$%hd211786212387%_)
                                (_%$%g211760212432%_ _%$%arg211772212350%_))
                            (if (and (let ((__tmp215300
                                            (let ((__tmp215301
                                                   (lambda (_%$%g212460212463%_
                                                            _%$%g212461212465%_)
                                                     (cons _%$%g212460212463%_
                                                           _%$%g212461212465%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215301
                                               '()
                                               _%$%g211760212432%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp215300))
                                     (let ((__tmp215304
                                            (length (let ((__tmp215305
                                                           (lambda (_%$%g212467212470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g212468212472%_)
                     (cons _%$%g212467212470%_ _%$%g212468212472%_))))
              (declare (not safe))
              (foldr__0 __tmp215305 '() _%$%g211760212432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp215302
                                            (length (let ((__tmp215303
                                                           (lambda (_%$%g212474212477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g212475212479%_)
                     (cons _%$%g212474212477%_ _%$%g212475212479%_))))
              (declare (not safe))
              (foldr__0 __tmp215303 '() _%$%g211758212430%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp215304 __tmp215302))
                                     (let ((__tmp215308
                                            (let ((__tmp215309
                                                   (lambda (_%$%g212481212484%_
                                                            _%$%g212482212486%_)
                                                     (cons _%$%g212481212484%_
                                                           _%$%g212482212486%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215309
                                               '()
                                               _%$%g211760212432%_)))
                                           (__tmp215306
                                            (let ((__tmp215307
                                                   (lambda (_%$%g212488212491%_
                                                            _%$%g212489212493%_)
                                                     (cons _%$%g212488212491%_
                                                           _%$%g212489212493%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215307
                                               '()
                                               _%$%g211758212430%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp215308
                                        __tmp215306))
                                     (not (let ((__tmp215312
                                                 (lambda (_%$%g212495212497%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g212495212497%_
                                                      _%$%g211759212431%_))))
                                                (__tmp215310
                                                 (let ((__tmp215311
                                                        (lambda (_%$%g212499212502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g212500212504%_)
                  (cons _%$%g212499212502%_ _%$%g212500212504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp215311
                                                    '()
                                                    _%$%g211760212432%_))))
                                            (declare (not safe))
                                            (__find __tmp215312 __tmp215310))))
                                (_%__kont214007214008%_
                                 _%$%g211758212430%_
                                 _%$%g211759212431%_
                                 _%$%g211760212432%_)
                                (_%__match214048214049%_
                                 _%$%e211761212322%_
                                 _%$%hd211762212325%_
                                 _%$%tl211763212327%_
                                 _%__splice214009214010%_
                                 _%$%target211764212330%_
                                 _%$%tl211766212332%_)))
                          (_%__match214048214049%_
                           _%$%e211761212322%_
                           _%$%hd211762212325%_
                           _%$%tl211763212327%_
                           _%__splice214009214010%_
                           _%$%target211764212330%_
                           _%$%tl211766212332%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop211791212397%_
                                               _%$%target211788212392%_
                                               '()))
                                            (_%__match214048214049%_
                                             _%$%e211761212322%_
                                             _%$%hd211762212325%_
                                             _%$%tl211763212327%_
                                             _%__splice214009214010%_
                                             _%$%target211764212330%_
                                             _%$%tl211766212332%_))))
                                    (_%__match214048214049%_
                                     _%$%e211761212322%_
                                     _%$%hd211762212325%_
                                     _%$%tl211763212327%_
                                     _%__splice214009214010%_
                                     _%$%target211764212330%_
                                     _%$%tl211766212332%_))
                                (_%__match214048214049%_
                                 _%$%e211761212322%_
                                 _%$%hd211762212325%_
                                 _%$%tl211763212327%_
                                 _%__splice214009214010%_
                                 _%$%target211764212330%_
                                 _%$%tl211766212332%_))))
                        (_%__match214048214049%_
                         _%$%e211761212322%_
                         _%$%hd211762212325%_
                         _%$%tl211763212327%_
                         _%__splice214009214010%_
                         _%$%target211764212330%_
                         _%$%tl211766212332%_))
                    (_%__match214048214049%_
                     _%$%e211761212322%_
                     _%$%hd211762212325%_
                     _%$%tl211763212327%_
                     _%__splice214009214010%_
                     _%$%target211764212330%_
                     _%$%tl211766212332%_))
                (_%__match214048214049%_
                 _%$%e211761212322%_
                 _%$%hd211762212325%_
                 _%$%tl211763212327%_
                 _%__splice214009214010%_
                 _%$%target211764212330%_
                 _%$%tl211766212332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214048214049%_
                                                 _%$%e211761212322%_
                                                 _%$%hd211762212325%_
                                                 _%$%tl211763212327%_
                                                 _%__splice214009214010%_
                                                 _%$%target211764212330%_
                                                 _%$%tl211766212332%_))))
                                        (_%__match214048214049%_
                                         _%$%e211761212322%_
                                         _%$%hd211762212325%_
                                         _%$%tl211763212327%_
                                         _%__splice214009214010%_
                                         _%$%target211764212330%_
                                         _%$%tl211766212332%_))
                                    (_%__match214048214049%_
                                     _%$%e211761212322%_
                                     _%$%hd211762212325%_
                                     _%$%tl211763212327%_
                                     _%__splice214009214010%_
                                     _%$%target211764212330%_
                                     _%$%tl211766212332%_))
                                (_%__match214048214049%_
                                 _%$%e211761212322%_
                                 _%$%hd211762212325%_
                                 _%$%tl211763212327%_
                                 _%__splice214009214010%_
                                 _%$%target211764212330%_
                                 _%$%tl211766212332%_))))
                        (_%__match214048214049%_
                         _%$%e211761212322%_
                         _%$%hd211762212325%_
                         _%$%tl211763212327%_
                         _%__splice214009214010%_
                         _%$%target211764212330%_
                         _%$%tl211766212332%_))))
                (_%__match214048214049%_
                 _%$%e211761212322%_
                 _%$%hd211762212325%_
                 _%$%tl211763212327%_
                 _%__splice214009214010%_
                 _%$%target211764212330%_
                 _%$%tl211766212332%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211767212335%_
                                     _%$%target211764212330%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214005214006%_))
                              (let ((_%$%e211761212322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214005214006%_))))
                                (let ((_%$%tl211763212327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211761212322%_)))
                                      (_%$%hd211762212325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211761212322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd211762212325%_))
                                      (let ((_%__splice214009214010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd211762212325%_
                                                '0))))
                                        (let ((_%$%tl211766212332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214009214010%_
                                                  '1)))
                                              (_%$%target211764212330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214009214010%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211766212332%_))
                                              (_%__match214036214037%_
                                               _%$%e211761212322%_
                                               _%$%hd211762212325%_
                                               _%$%tl211763212327%_
                                               _%__splice214009214010%_
                                               _%$%target211764212330%_
                                               _%$%tl211766212332%_)
                                              (_%__match214048214049%_
                                               _%$%e211761212322%_
                                               _%$%hd211762212325%_
                                               _%$%tl211763212327%_
                                               _%__splice214009214010%_
                                               _%$%target211764212330%_
                                               _%$%tl211766212332%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211763212327%_))
                                          (let ((_%$%e211876211933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211763212327%_))))
                                            (let ((_%$%tl211878211938%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e211876211933%_)))
                                                  (_%$%hd211877211936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e211876211933%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211877211936%_))
                                                  (let ((_%$%e211879211941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211877211936%_))))
                                                    (let ((_%$%tl211881211946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211879211941%_)))
                                                          (_%$%hd211880211944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211879211941%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd211880211944%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd211880211944%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl211881211946%_))
                          (let ((_%$%e211882211949%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl211881211946%_))))
                            (let ((_%$%tl211884211954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211882211949%_)))
                                  (_%$%hd211883211952%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211882211949%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd211883211952%_))
                                  (let ((_%$%e211885211957%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd211883211952%_))))
                                    (let ((_%$%tl211887211962%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211885211957%_)))
                                          (_%$%hd211886211960%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211885211957%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd211886211960%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd211886211960%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl211887211962%_))
                                                  (let ((_%$%e211888211965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl211887211962%_))))
                                                    (let ((_%$%tl211890211970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211888211965%_)))
                                                          (_%$%hd211889211968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211888211965%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211890211970%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl211884211954%_))
                      (let ((_%$%e211891211973%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl211884211954%_))))
                        (let ((_%$%tl211893211978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211891211973%_)))
                              (_%$%hd211892211976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211891211973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd211892211976%_))
                              (let ((_%$%e211894211981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd211892211976%_))))
                                (let ((_%$%tl211896211986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211894211981%_)))
                                      (_%$%hd211895211984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211894211981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd211895211984%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd211895211984%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl211896211986%_))
                                              (let ((_%$%e211897211989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl211896211986%_))))
                                                (let ((_%$%tl211899211994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211897211989%_)))
                                                      (_%$%hd211898211992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211897211989%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl211899211994%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl211893211978%_))
                                                          (let ((_%$%e211900211997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl211893211978%_))))
                    (let ((_%$%tl211902212002%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211900211997%_)))
                          (_%$%hd211901212000%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211900211997%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd211901212000%_))
                          (let ((_%$%e211903212005%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd211901212000%_))))
                            (let ((_%$%tl211905212010%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211903212005%_)))
                                  (_%$%hd211904212008%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211903212005%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd211904212008%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#ref
                                         _%$%hd211904212008%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211905212010%_))
                                          (let ((_%$%e211906212013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211905212010%_))))
                                            (let ((_%$%tl211908212018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e211906212013%_)))
                                                  (_%$%hd211907212016%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e211906212013%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl211908212018%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl211902212002%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211878211938%_))
                                                          (_%__match214146214147%_
                                                           _%$%e211761212322%_
                                                           _%$%hd211762212325%_
                                                           _%$%tl211763212327%_
                                                           _%$%e211876211933%_
                                                           _%$%hd211877211936%_
                                                           _%$%tl211878211938%_
                                                           _%$%e211879211941%_
                                                           _%$%hd211880211944%_
                                                           _%$%tl211881211946%_
                                                           _%$%e211882211949%_
                                                           _%$%hd211883211952%_
                                                           _%$%tl211884211954%_
                                                           _%$%e211885211957%_
                                                           _%$%hd211886211960%_
                                                           _%$%tl211887211962%_
                                                           _%$%e211888211965%_
                                                           _%$%hd211889211968%_
                                                           _%$%tl211890211970%_
                                                           _%$%e211891211973%_
                                                           _%$%hd211892211976%_
                                                           _%$%tl211893211978%_
                                                           _%$%e211894211981%_
                                                           _%$%hd211895211984%_
                                                           _%$%tl211896211986%_
                                                           _%$%e211897211989%_
                                                           _%$%hd211898211992%_
                                                           _%$%tl211899211994%_
                                                           _%$%e211900211997%_
                                                           _%$%hd211901212000%_
                                                           _%$%tl211902212002%_
                                                           _%$%e211903212005%_
                                                           _%$%hd211904212008%_
                                                           _%$%tl211905212010%_
                                                           _%$%e211906212013%_
                                                           _%$%hd211907212016%_
                                                           _%$%tl211908212018%_)
                                                          (_%__kont214021214022%_))
                                                      (_%__kont214021214022%_))
                                                  (_%__kont214021214022%_))))
                                          (_%__kont214021214022%_))
                                      (_%__kont214021214022%_))
                                  (_%__kont214021214022%_))))
                          (_%__kont214021214022%_))))
                  (_%__kont214021214022%_))
              (_%__kont214021214022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont214021214022%_))
                                          (_%__kont214021214022%_))
                                      (_%__kont214021214022%_))))
                              (_%__kont214021214022%_))))
                      (_%__kont214021214022%_))
                  (_%__kont214021214022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214021214022%_))
                                              (_%__kont214021214022%_))
                                          (_%__kont214021214022%_))))
                                  (_%__kont214021214022%_))))
                          (_%__kont214021214022%_))
                      (_%__kont214021214022%_))
                  (_%__kont214021214022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214021214022%_))))
                                          (_%__kont214021214022%_)))))
                              (_%__kont214021214022%_)))))))
                 (_%dispatch-case-e211071%_
                  (lambda (_%hd211218%_ _%body211219%_)
                    (let* ((_%form211221%_
                            (cons _%hd211218%_ (cons _%body211219%_ '())))
                           (_%__stx214149214150%_ _%form211221%_)
                           (_%$%g211225211349%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214149214150%_)))))
                      (let ((_%__kont214151214152%_
                             (lambda (_%$%g211227211714%_
                                      _%$%g211228211715%_
                                      _%$%g211229211716%_)
                               (let ((__tmp215313
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211228211715%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211067%_
                                  __tmp215313))))
                            (_%__kont214157214158%_
                             (lambda (_%$%g211272211566%_
                                      _%$%g211273211567%_
                                      _%$%g211274211568%_
                                      _%$%g211275211569%_)
                               (let ((__tmp215314
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211272211566%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211067%_
                                  __tmp215314))))
                            (_%__kont214161214162%_
                             (lambda (_%$%g211312211434%_
                                      _%$%g211313211435%_
                                      _%$%g211314211436%_)
                               (let ((__tmp215315
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%$%g211312211434%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self211067%_
                                  __tmp215315)))))
                        (let* ((_%__match214258214259%_
                                (lambda (_%$%e211315211354%_
                                         _%$%hd211316211357%_
                                         _%$%tl211317211359%_
                                         _%$%e211318211362%_
                                         _%$%hd211319211365%_
                                         _%$%tl211320211367%_
                                         _%$%e211321211370%_
                                         _%$%hd211322211373%_
                                         _%$%tl211323211375%_
                                         _%$%e211324211378%_
                                         _%$%hd211325211381%_
                                         _%$%tl211326211383%_
                                         _%$%e211327211386%_
                                         _%$%hd211328211389%_
                                         _%$%tl211329211391%_
                                         _%$%e211330211394%_
                                         _%$%hd211331211397%_
                                         _%$%tl211332211399%_
                                         _%$%e211333211402%_
                                         _%$%hd211334211405%_
                                         _%$%tl211335211407%_
                                         _%$%e211336211410%_
                                         _%$%hd211337211413%_
                                         _%$%tl211338211415%_
                                         _%$%e211339211418%_
                                         _%$%hd211340211421%_
                                         _%$%tl211341211423%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl211335211407%_))
                                      (let ((_%$%e211342211426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl211335211407%_))))
                                        (let ((_%$%tl211344211431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e211342211426%_)))
                                              (_%$%hd211343211429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e211342211426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211344211431%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl211320211367%_))
                                                  (_%__kont214161214162%_
                                                   _%$%hd211340211421%_
                                                   _%$%hd211331211397%_
                                                   _%$%hd211316211357%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211225211349%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211225211349%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211225211349%_)))))
                               (_%__match214188214189%_
                                (lambda (_%$%e211276211472%_
                                         _%$%hd211277211475%_
                                         _%$%tl211278211477%_
                                         _%__splice214159214160%_
                                         _%$%target211279211480%_
                                         _%$%tl211281211482%_)
                                  (letrec ((_%$%loop211282211485%_
                                            (lambda (_%$%hd211280211488%_
                                                     _%$%arg211286211490%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211280211488%_))
                                                  (let ((_%$%e211283211492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211280211488%_))))
                                                    (let ((_%$%lp-tl211285211497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211283211492%_)))
                                                          (_%$%lp-hd211284211495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211283211492%_))))
                                                      (_%$%loop211282211485%_
                                                       _%$%lp-tl211285211497%_
                                                       (cons _%$%lp-hd211284211495%_
                                                             _%$%arg211286211490%_))))
                                                  (let ((_%$%arg211287211500%_
                                                         (reverse _%$%arg211286211490%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211278211477%_))
                                                        (let ((_%$%e211288211502%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211278211477%_))))
                  (let ((_%$%tl211290211507%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211288211502%_)))
                        (_%$%hd211289211505%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211288211502%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211289211505%_))
                        (let ((_%$%e211291211510%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211289211505%_))))
                          (let ((_%$%tl211293211515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211291211510%_)))
                                (_%$%hd211292211513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211291211510%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211292211513%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211292211513%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211293211515%_))
                                        (let ((_%$%e211294211518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211293211515%_))))
                                          (let ((_%$%tl211296211523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211294211518%_)))
                                                (_%$%hd211295211521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211294211518%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211295211521%_))
                                                (let ((_%$%e211297211526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211295211521%_))))
                                                  (let ((_%$%tl211299211531%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211297211526%_)))
                                                        (_%$%hd211298211529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211297211526%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211298211529%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211298211529%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211299211531%_))
                        (let ((_%$%e211300211534%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211299211531%_))))
                          (let ((_%$%tl211302211539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211300211534%_)))
                                (_%$%hd211301211537%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211300211534%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211302211539%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl211296211523%_))
                                    (let ((_%$%e211303211542%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl211296211523%_))))
                                      (let ((_%$%tl211305211547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e211303211542%_)))
                                            (_%$%hd211304211545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e211303211542%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd211304211545%_))
                                            (let ((_%$%e211306211550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd211304211545%_))))
                                              (let ((_%$%tl211308211555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211306211550%_)))
                                                    (_%$%hd211307211553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211306211550%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd211307211553%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd211307211553%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl211308211555%_))
                                                            (let ((_%$%e211309211558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl211308211555%_))))
                      (let ((_%$%tl211311211563%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211309211558%_)))
                            (_%$%hd211310211561%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211309211558%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl211311211563%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211290211507%_))
                                (_%__kont214157214158%_
                                 _%$%hd211310211561%_
                                 _%$%hd211301211537%_
                                 _%$%tl211281211482%_
                                 _%$%arg211287211500%_)
                                (_%__match214258214259%_
                                 _%$%e211276211472%_
                                 _%$%hd211277211475%_
                                 _%$%tl211278211477%_
                                 _%$%e211288211502%_
                                 _%$%hd211289211505%_
                                 _%$%tl211290211507%_
                                 _%$%e211291211510%_
                                 _%$%hd211292211513%_
                                 _%$%tl211293211515%_
                                 _%$%e211294211518%_
                                 _%$%hd211295211521%_
                                 _%$%tl211296211523%_
                                 _%$%e211297211526%_
                                 _%$%hd211298211529%_
                                 _%$%tl211299211531%_
                                 _%$%e211300211534%_
                                 _%$%hd211301211537%_
                                 _%$%tl211302211539%_
                                 _%$%e211303211542%_
                                 _%$%hd211304211545%_
                                 _%$%tl211305211547%_
                                 _%$%e211306211550%_
                                 _%$%hd211307211553%_
                                 _%$%tl211308211555%_
                                 _%$%e211309211558%_
                                 _%$%hd211310211561%_
                                 _%$%tl211311211563%_))
                            (let ()
                              (declare (not safe))
                              (_%$%g211225211349%_)))))
                    (let () (declare (not safe)) (_%$%g211225211349%_)))
                (let () (declare (not safe)) (_%$%g211225211349%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g211225211349%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g211225211349%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211225211349%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211225211349%_)))))
                        (let () (declare (not safe)) (_%$%g211225211349%_)))
                    (let () (declare (not safe)) (_%$%g211225211349%_)))
                (let () (declare (not safe)) (_%$%g211225211349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g211225211349%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g211225211349%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g211225211349%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g211225211349%_)))))
                        (let () (declare (not safe)) (_%$%g211225211349%_)))))
                (let () (declare (not safe)) (_%$%g211225211349%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211282211485%_
                                     _%$%target211279211480%_
                                     '()))))
                               (_%__match214176214177%_
                                (lambda (_%$%e211230211606%_
                                         _%$%hd211231211609%_
                                         _%$%tl211232211611%_
                                         _%__splice214153214154%_
                                         _%$%target211233211614%_
                                         _%$%tl211235211616%_)
                                  (letrec ((_%$%loop211236211619%_
                                            (lambda (_%$%hd211234211622%_
                                                     _%$%arg211240211624%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211234211622%_))
                                                  (let ((_%$%e211237211626%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211234211622%_))))
                                                    (let ((_%$%lp-tl211239211631%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211237211626%_)))
                                                          (_%$%lp-hd211238211629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211237211626%_))))
                                                      (_%$%loop211236211619%_
                                                       _%$%lp-tl211239211631%_
                                                       (cons _%$%lp-hd211238211629%_
                                                             _%$%arg211240211624%_))))
                                                  (let ((_%$%arg211241211634%_
                                                         (reverse _%$%arg211240211624%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl211232211611%_))
                                                        (let ((_%$%e211242211636%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl211232211611%_))))
                  (let ((_%$%tl211244211641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e211242211636%_)))
                        (_%$%hd211243211639%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e211242211636%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd211243211639%_))
                        (let ((_%$%e211245211644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd211243211639%_))))
                          (let ((_%$%tl211247211649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211245211644%_)))
                                (_%$%hd211246211647%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211245211644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd211246211647%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq?
                                       '%#call
                                       _%$%hd211246211647%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl211247211649%_))
                                        (let ((_%$%e211248211652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl211247211649%_))))
                                          (let ((_%$%tl211250211657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e211248211652%_)))
                                                (_%$%hd211249211655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e211248211652%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd211249211655%_))
                                                (let ((_%$%e211251211660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd211249211655%_))))
                                                  (let ((_%$%tl211253211665%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e211251211660%_)))
                                                        (_%$%hd211252211663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e211251211660%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd211252211663%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd211252211663%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl211253211665%_))
                        (let ((_%$%e211254211668%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl211253211665%_))))
                          (let ((_%$%tl211256211673%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211254211668%_)))
                                (_%$%hd211255211671%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211254211668%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl211256211673%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%$%tl211250211657%_))
                                    (let ((_%__splice214155214156%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%$%tl211250211657%_
                                              '0))))
                                      (let ((_%$%tl211259211678%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214155214156%_
                                                '1)))
                                            (_%$%target211257211676%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice214155214156%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl211259211678%_))
                                            (letrec ((_%$%loop211260211681%_
                                                      (lambda (_%$%hd211258211684%_
                                                               _%$%xarg211264211686%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd211258211684%_))
                                                            (let ((_%$%e211261211688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd211258211684%_))))
                      (let ((_%$%lp-tl211263211693%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e211261211688%_)))
                            (_%$%lp-hd211262211691%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e211261211688%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%lp-hd211262211691%_))
                            (let ((_%$%e211266211696%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%lp-hd211262211691%_))))
                              (let ((_%$%tl211268211701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e211266211696%_)))
                                    (_%$%hd211267211699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e211266211696%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd211267211699%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%$%hd211267211699%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl211268211701%_))
                                            (let ((_%$%e211269211704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl211268211701%_))))
                                              (let ((_%$%tl211271211709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e211269211704%_)))
                                                    (_%$%hd211270211707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e211269211704%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl211271211709%_))
                                                    (_%$%loop211260211681%_
                                                     _%$%lp-tl211263211693%_
                                                     (cons _%$%hd211270211707%_
                                                           _%$%xarg211264211686%_))
                                                    (_%__match214188214189%_
                                                     _%$%e211230211606%_
                                                     _%$%hd211231211609%_
                                                     _%$%tl211232211611%_
                                                     _%__splice214153214154%_
                                                     _%$%target211233211614%_
                                                     _%$%tl211235211616%_))))
                                            (_%__match214188214189%_
                                             _%$%e211230211606%_
                                             _%$%hd211231211609%_
                                             _%$%tl211232211611%_
                                             _%__splice214153214154%_
                                             _%$%target211233211614%_
                                             _%$%tl211235211616%_))
                                        (_%__match214188214189%_
                                         _%$%e211230211606%_
                                         _%$%hd211231211609%_
                                         _%$%tl211232211611%_
                                         _%__splice214153214154%_
                                         _%$%target211233211614%_
                                         _%$%tl211235211616%_))
                                    (_%__match214188214189%_
                                     _%$%e211230211606%_
                                     _%$%hd211231211609%_
                                     _%$%tl211232211611%_
                                     _%__splice214153214154%_
                                     _%$%target211233211614%_
                                     _%$%tl211235211616%_))))
                            (_%__match214188214189%_
                             _%$%e211230211606%_
                             _%$%hd211231211609%_
                             _%$%tl211232211611%_
                             _%__splice214153214154%_
                             _%$%target211233211614%_
                             _%$%tl211235211616%_))))
                    (let ((_%$%xarg211265211712%_
                           (reverse _%$%xarg211264211686%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211244211641%_))
                          (_%__kont214151214152%_
                           _%$%xarg211265211712%_
                           _%$%hd211255211671%_
                           _%$%arg211241211634%_)
                          (_%__match214188214189%_
                           _%$%e211230211606%_
                           _%$%hd211231211609%_
                           _%$%tl211232211611%_
                           _%__splice214153214154%_
                           _%$%target211233211614%_
                           _%$%tl211235211616%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop211260211681%_
                                               _%$%target211257211676%_
                                               '()))
                                            (_%__match214188214189%_
                                             _%$%e211230211606%_
                                             _%$%hd211231211609%_
                                             _%$%tl211232211611%_
                                             _%__splice214153214154%_
                                             _%$%target211233211614%_
                                             _%$%tl211235211616%_))))
                                    (_%__match214188214189%_
                                     _%$%e211230211606%_
                                     _%$%hd211231211609%_
                                     _%$%tl211232211611%_
                                     _%__splice214153214154%_
                                     _%$%target211233211614%_
                                     _%$%tl211235211616%_))
                                (_%__match214188214189%_
                                 _%$%e211230211606%_
                                 _%$%hd211231211609%_
                                 _%$%tl211232211611%_
                                 _%__splice214153214154%_
                                 _%$%target211233211614%_
                                 _%$%tl211235211616%_))))
                        (_%__match214188214189%_
                         _%$%e211230211606%_
                         _%$%hd211231211609%_
                         _%$%tl211232211611%_
                         _%__splice214153214154%_
                         _%$%target211233211614%_
                         _%$%tl211235211616%_))
                    (_%__match214188214189%_
                     _%$%e211230211606%_
                     _%$%hd211231211609%_
                     _%$%tl211232211611%_
                     _%__splice214153214154%_
                     _%$%target211233211614%_
                     _%$%tl211235211616%_))
                (_%__match214188214189%_
                 _%$%e211230211606%_
                 _%$%hd211231211609%_
                 _%$%tl211232211611%_
                 _%__splice214153214154%_
                 _%$%target211233211614%_
                 _%$%tl211235211616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match214188214189%_
                                                 _%$%e211230211606%_
                                                 _%$%hd211231211609%_
                                                 _%$%tl211232211611%_
                                                 _%__splice214153214154%_
                                                 _%$%target211233211614%_
                                                 _%$%tl211235211616%_))))
                                        (_%__match214188214189%_
                                         _%$%e211230211606%_
                                         _%$%hd211231211609%_
                                         _%$%tl211232211611%_
                                         _%__splice214153214154%_
                                         _%$%target211233211614%_
                                         _%$%tl211235211616%_))
                                    (_%__match214188214189%_
                                     _%$%e211230211606%_
                                     _%$%hd211231211609%_
                                     _%$%tl211232211611%_
                                     _%__splice214153214154%_
                                     _%$%target211233211614%_
                                     _%$%tl211235211616%_))
                                (_%__match214188214189%_
                                 _%$%e211230211606%_
                                 _%$%hd211231211609%_
                                 _%$%tl211232211611%_
                                 _%__splice214153214154%_
                                 _%$%target211233211614%_
                                 _%$%tl211235211616%_))))
                        (_%__match214188214189%_
                         _%$%e211230211606%_
                         _%$%hd211231211609%_
                         _%$%tl211232211611%_
                         _%__splice214153214154%_
                         _%$%target211233211614%_
                         _%$%tl211235211616%_))))
                (_%__match214188214189%_
                 _%$%e211230211606%_
                 _%$%hd211231211609%_
                 _%$%tl211232211611%_
                 _%__splice214153214154%_
                 _%$%target211233211614%_
                 _%$%tl211235211616%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop211236211619%_
                                     _%$%target211233211614%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214149214150%_))
                              (let ((_%$%e211230211606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214149214150%_))))
                                (let ((_%$%tl211232211611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211230211606%_)))
                                      (_%$%hd211231211609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211230211606%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd211231211609%_))
                                      (let ((_%__splice214153214154%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%hd211231211609%_
                                                '0))))
                                        (let ((_%$%tl211235211616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214153214154%_
                                                  '1)))
                                              (_%$%target211233211614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice214153214154%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl211235211616%_))
                                              (_%__match214176214177%_
                                               _%$%e211230211606%_
                                               _%$%hd211231211609%_
                                               _%$%tl211232211611%_
                                               _%__splice214153214154%_
                                               _%$%target211233211614%_
                                               _%$%tl211235211616%_)
                                              (_%__match214188214189%_
                                               _%$%e211230211606%_
                                               _%$%hd211231211609%_
                                               _%$%tl211232211611%_
                                               _%__splice214153214154%_
                                               _%$%target211233211614%_
                                               _%$%tl211235211616%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl211232211611%_))
                                          (let ((_%$%e211318211362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl211232211611%_))))
                                            (let ((_%$%tl211320211367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e211318211362%_)))
                                                  (_%$%hd211319211365%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e211318211362%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd211319211365%_))
                                                  (let ((_%$%e211321211370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd211319211365%_))))
                                                    (let ((_%$%tl211323211375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211321211370%_)))
                                                          (_%$%hd211322211373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211321211370%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd211322211373%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%$%hd211322211373%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl211323211375%_))
                          (let ((_%$%e211324211378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl211323211375%_))))
                            (let ((_%$%tl211326211383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211324211378%_)))
                                  (_%$%hd211325211381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211324211378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd211325211381%_))
                                  (let ((_%$%e211327211386%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd211325211381%_))))
                                    (let ((_%$%tl211329211391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211327211386%_)))
                                          (_%$%hd211328211389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211327211386%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd211328211389%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd211328211389%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl211329211391%_))
                                                  (let ((_%$%e211330211394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl211329211391%_))))
                                                    (let ((_%$%tl211332211399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e211330211394%_)))
                                                          (_%$%hd211331211397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e211330211394%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl211332211399%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl211326211383%_))
                      (let ((_%$%e211333211402%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl211326211383%_))))
                        (let ((_%$%tl211335211407%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e211333211402%_)))
                              (_%$%hd211334211405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e211333211402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd211334211405%_))
                              (let ((_%$%e211336211410%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd211334211405%_))))
                                (let ((_%$%tl211338211415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e211336211410%_)))
                                      (_%$%hd211337211413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e211336211410%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd211337211413%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd211337211413%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl211338211415%_))
                                              (let ((_%$%e211339211418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl211338211415%_))))
                                                (let ((_%$%tl211341211423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e211339211418%_)))
                                                      (_%$%hd211340211421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e211339211418%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl211341211423%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl211335211407%_))
                                                          (let ((_%$%e211342211426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl211335211407%_))))
                    (let ((_%$%tl211344211431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211342211426%_)))
                          (_%$%hd211343211429%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211342211426%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl211344211431%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl211320211367%_))
                              (_%__kont214161214162%_
                               _%$%hd211340211421%_
                               _%$%hd211331211397%_
                               _%$%hd211231211609%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g211225211349%_)))
                          (let ()
                            (declare (not safe))
                            (_%$%g211225211349%_)))))
                  (let () (declare (not safe)) (_%$%g211225211349%_)))
              (let () (declare (not safe)) (_%$%g211225211349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211225211349%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211225211349%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g211225211349%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211225211349%_)))))
                      (let () (declare (not safe)) (_%$%g211225211349%_)))
                  (let () (declare (not safe)) (_%$%g211225211349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211225211349%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g211225211349%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211225211349%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g211225211349%_)))))
                          (let () (declare (not safe)) (_%$%g211225211349%_)))
                      (let () (declare (not safe)) (_%$%g211225211349%_)))
                  (let () (declare (not safe)) (_%$%g211225211349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g211225211349%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g211225211349%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g211225211349%_))))))))
                 (_%generate1211072%_
                  (lambda (_%args211203%_
                           _%arglen211204%_
                           _%hd211205%_
                           _%body211206%_)
                    (let* ((_%len211208%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd211205%_)))
                           (_%condition211213%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd211205%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen211204%_
                                                (cons _%len211208%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen211204%_ (cons _%len211208%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len211208%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen211204%_
                                                    (cons _%len211208%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen211204%_ (cons _%len211208%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch211215%_
                            (if (_%dispatch-case?211070%_
                                 _%hd211205%_
                                 _%body211206%_)
                                (_%dispatch-case-e211071%_
                                 _%hd211205%_
                                 _%body211206%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self211067%_
                                 _%hd211205%_
                                 _%body211206%_))))
                      (cons _%condition211213%_
                            (cons (cons 'apply
                                        (cons _%dispatch211215%_
                                              (cons _%args211203%_ '())))
                                  '()))))))
          (let* ((_%$%g211074211102%_
                  (lambda (_%$%g211075211099%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g211075211099%_))))
                 (_%$%g211073211200%_
                  (lambda (_%$%g211075211105%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g211075211105%_))
                        (let ((_%$%e211078211107%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g211075211105%_))))
                          (let ((_%$%hd211079211110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e211078211107%_)))
                                (_%$%tl211080211112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e211078211107%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl211080211112%_))
                                (let ((_g215316_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl211080211112%_
                                          '0))))
                                  (begin
                                    (let ((_g215317_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g215316_)
                                                 (##values-length _g215316_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g215317_ 2)))
                                          (error "Context expects 2 values"
                                                 _g215317_)))
                                    (let ((_%$%target211081211115%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215316_ 0)))
                                          (_%$%tl211083211117%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215316_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211083211117%_))
                                          (letrec ((_%$%loop211084211120%_
                                                    (lambda (_%$%hd211082211123%_
                                                             _%$%body211088211125%_
                                                             _%$%hd211089211126%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd211082211123%_))
                                                          (let ((_%$%e211085211128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd211082211123%_))))
                    (let ((_%$%lp-hd211086211131%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e211085211128%_)))
                          (_%$%lp-tl211087211133%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e211085211128%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd211086211131%_))
                          (let ((_%$%e211092211136%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd211086211131%_))))
                            (let ((_%$%hd211093211139%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e211092211136%_)))
                                  (_%$%tl211094211141%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e211092211136%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl211094211141%_))
                                  (let ((_%$%e211095211144%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl211094211141%_))))
                                    (let ((_%$%hd211096211147%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e211095211144%_)))
                                          (_%$%tl211097211149%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e211095211144%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl211097211149%_))
                                          (_%$%loop211084211120%_
                                           _%$%lp-tl211087211133%_
                                           (cons _%$%hd211096211147%_
                                                 _%$%body211088211125%_)
                                           (cons _%$%hd211093211139%_
                                                 _%$%hd211089211126%_))
                                          (_%$%g211074211102%_
                                           _%$%g211075211105%_))))
                                  (_%$%g211074211102%_ _%$%g211075211105%_))))
                          (_%$%g211074211102%_ _%$%g211075211105%_))))
                  (let ((_%$%body211090211152%_
                         (reverse _%$%body211088211125%_))
                        (_%$%hd211091211153%_ (reverse _%$%hd211089211126%_)))
                    (let ((_%args211175%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen211176%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name211177%_
                           (let ((_%$e211172%_
                                  (let ((__tmp215318
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp215318 _%stx211068%_))))
                             (if _%$e211172%_
                                 _%$e211172%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args211175%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen211176%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args211175%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args211175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp215320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map (lambda (_%$%g211178211181%_
                                             _%$%g211179211183%_)
                                      (_%generate1211072%_
                                       _%args211175%_
                                       _%arglen211176%_
                                       _%$%g211178211181%_
                                       _%$%g211179211183%_))
                                    (let ((__tmp215321
                                           (lambda (_%$%g211185211188%_
                                                    _%$%g211186211190%_)
                                             (cons _%$%g211185211188%_
                                                   _%$%g211186211190%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp215321
                                       '()
                                       _%$%hd211091211153%_))
                                    (let ((__tmp215322
                                           (lambda (_%$%g211192211195%_
                                                    _%$%g211193211197%_)
                                             (cons _%$%g211192211195%_
                                                   _%$%g211193211197%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp215322
                                       '()
                                       _%$%body211090211152%_))))
                              (__tmp215319
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name211177%_
                                                             (cons _%args211175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                          (declare (not safe))
                          (##append __tmp215320 __tmp215319)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop211084211120%_
                                             _%$%target211081211115%_
                                             '()
                                             '()))
                                          (_%$%g211074211102%_
                                           _%$%g211075211105%_)))))
                                (_%$%g211074211102%_ _%$%g211075211105%_))))
                        (_%$%g211074211102%_ _%$%g211075211105%_)))))
            (_%$%g211073211200%_ _%stx211068%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self210304%_ _%stx210305%_ _%compiled-body?210306%_)
        (letrec ((_%generate-simple210308%_
                  (lambda (_%hd211052%_ _%body211053%_)
                    (_%coalesce-boolean210309%_
                     (_%simplify-let210310%_
                      (gxc#generate-runtime-simple-let
                       _%self210304%_
                       'let
                       _%hd211052%_
                       _%body211053%_
                       _%compiled-body?210306%_)))))
                 (_%coalesce-boolean210309%_
                  (lambda (_%code210913%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%$%code210914210940%_ _%code210913%_)
                               (_%$%else210916210948%_
                                (lambda () _%code210913%_))
                               (_%$%K210918210985%_
                                (lambda (_%expr2210951%_
                                         _%expr1210952%_
                                         _%id210953%_)
                                  (let* ((_%$%expr2210954210962%_
                                          _%expr2210951%_)
                                         (_%$%else210956210970%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1210952%_
                                                        (cons _%expr2210951%_
                                                              '())))))
                                         (_%$%K210958210975%_
                                          (lambda (_%exprs210973%_)
                                            (cons 'or
                                                  (cons _%expr1210952%_
                                                        _%exprs210973%_)))))
                                    (if (pair? _%$%expr2210954210962%_)
                                        (let ((_%$%hd210959210978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr2210954210962%_)))
                                              (_%$%tl210960210980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr2210954210962%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd210959210978%_
                                                       'or))
                                              (let ((_%exprs210983%_
                                                     _%$%tl210960210980%_))
                                                (_%$%K210958210975%_
                                                 _%exprs210983%_))
                                              (_%$%else210956210970%_)))
                                        (_%$%else210956210970%_))))))
                          (if (pair? _%$%code210914210940%_)
                              (let ((_%$%hd210919210988%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%code210914210940%_)))
                                    (_%$%tl210920210990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%code210914210940%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%hd210919210988%_ 'let))
                                    (if (pair? _%$%tl210920210990%_)
                                        (let ((_%$%hd210921210993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%tl210920210990%_)))
                                              (_%$%tl210922210995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%tl210920210990%_))))
                                          (if (pair? _%$%hd210921210993%_)
                                              (let ((_%$%hd210933210998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd210921210993%_)))
                                                    (_%$%tl210934211000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd210921210993%_))))
                                                (if (pair? _%$%hd210933210998%_)
                                                    (let ((_%$%hd210935211003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%hd210933210998%_)))
                                                          (_%$%tl210936211005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%hd210933210998%_))))
                                                      (let ((_%id211008%_
                                                             _%$%hd210935211003%_))
                                                        (if (pair? _%$%tl210936211005%_)
                                                            (let ((_%$%hd210937211010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl210936211005%_)))
                          (_%$%tl210938211012%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl210936211005%_))))
                      (let ((_%expr1211015%_ _%$%hd210937211010%_))
                        (if (null? _%$%tl210938211012%_)
                            (if (null? _%$%tl210934211000%_)
                                (if (pair? _%$%tl210922210995%_)
                                    (let ((_%$%hd210923211017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl210922210995%_)))
                                          (_%$%tl210924211019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl210922210995%_))))
                                      (if (pair? _%$%hd210923211017%_)
                                          (let ((_%$%hd210925211022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%hd210923211017%_)))
                                                (_%$%tl210926211024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%hd210923211017%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd210925211022%_
                                                         'if))
                                                (if (pair? _%$%tl210926211024%_)
                                                    (let ((_%$%hd210927211027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl210926211024%_)))
                                                          (_%$%tl210928211029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl210926211024%_))))
                                                      (if (eq? _%$%hd210927211027%_
                                                               _%id211008%_)
                                                          (if (pair? _%$%tl210928211029%_)
                                                              (let ((_%$%hd210929211036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%$%tl210928211029%_)))
                            (_%$%tl210930211038%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tl210928211029%_))))
                        (if (eq? _%$%hd210929211036%_ _%id211008%_)
                            (if (pair? _%$%tl210930211038%_)
                                (let ((_%$%hd210931211045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl210930211038%_)))
                                      (_%$%tl210932211047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl210930211038%_))))
                                  (let ((_%expr2211050%_ _%$%hd210931211045%_))
                                    (if (null? _%$%tl210932211047%_)
                                        (if (null? _%$%tl210924211019%_)
                                            (_%$%K210918210985%_
                                             _%expr2211050%_
                                             _%expr1211015%_
                                             _%id211008%_)
                                            (_%$%else210916210948%_))
                                        (_%$%else210916210948%_))))
                                (_%$%else210916210948%_))
                            (_%$%else210916210948%_)))
                      (_%$%else210916210948%_))
                  (_%$%else210916210948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else210916210948%_))
                                                (_%$%else210916210948%_)))
                                          (_%$%else210916210948%_)))
                                    (_%$%else210916210948%_))
                                (_%$%else210916210948%_))
                            (_%$%else210916210948%_))))
                    (_%$%else210916210948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else210916210948%_)))
                                              (_%$%else210916210948%_)))
                                        (_%$%else210916210948%_))
                                    (_%$%else210916210948%_)))
                              (_%$%else210916210948%_)))
                        _%code210913%_)))
                 (_%simplify-let210310%_
                  (lambda (_%code210612%_)
                    (let* ((_%$%code210613210685%_ _%code210612%_)
                           (_%$%else210618210693%_ (lambda () _%code210612%_)))
                      (let ((_%$%K210677210893%_
                             (lambda (_%expr210891%_) _%expr210891%_))
                            (_%$%K210660210839%_
                             (lambda (_%body210835%_
                                      _%expr210836%_
                                      _%id210837%_)
                               (cons 'let
                                     (cons (cons (cons _%id210837%_
                                                       (cons _%expr210836%_
                                                             '()))
                                                 '())
                                           _%body210835%_))))
                            (_%$%K210637210763%_
                             (lambda (_%body210757%_
                                      _%expr2210758%_
                                      _%id2210759%_
                                      _%expr1210760%_
                                      _%id1210761%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1210761%_
                                                       (cons _%expr1210760%_
                                                             '()))
                                                 (cons (cons _%id2210759%_
                                                             (cons _%expr2210758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body210757%_))))
                            (_%$%K210620210702%_
                             (lambda (_%body210697%_
                                      _%bind210698%_
                                      _%expr1210699%_
                                      _%id1210700%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1210700%_
                                                       (cons _%expr1210699%_
                                                             '()))
                                                 _%bind210698%_)
                                           _%body210697%_)))))
                        (if (pair? _%$%code210613210685%_)
                            (let ((_%$%tl210679210898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%code210613210685%_)))
                                  (_%$%hd210678210896%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%code210613210685%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd210678210896%_ 'let))
                                  (if (pair? _%$%tl210679210898%_)
                                      (let ((_%$%tl210681210903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl210679210898%_)))
                                            (_%$%hd210680210901%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%tl210679210898%_))))
                                        (if (null? _%$%hd210680210901%_)
                                            (if (pair? _%$%tl210681210903%_)
                                                (let ((_%$%tl210683210908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%tl210681210903%_)))
                                                      (_%$%hd210682210906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%tl210681210903%_))))
                                                  (if (null? _%$%tl210683210908%_)
                                                      (let ((_%expr210911%_
                                                             _%$%hd210682210906%_))
                                                        (_%$%K210677210893%_
                                                         _%expr210911%_))
                                                      (_%$%else210618210693%_)))
                                                (_%$%else210618210693%_))
                                            (if (pair? _%$%hd210680210901%_)
                                                (let ((_%$%tl210672210854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd210680210901%_)))
                                                      (_%$%hd210671210852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd210680210901%_))))
                                                  (if (pair? _%$%hd210671210852%_)
                                                      (let ((_%$%tl210674210859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%hd210671210852%_)))
                    (_%$%hd210673210857%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%hd210671210852%_))))
                (if (pair? _%$%tl210674210859%_)
                    (let ((_%$%tl210676210866%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%tl210674210859%_)))
                          (_%$%hd210675210864%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%tl210674210859%_))))
                      (if (null? _%$%tl210676210866%_)
                          (if (null? _%$%tl210672210854%_)
                              (if (pair? _%$%tl210681210903%_)
                                  (let ((_%$%tl210666210873%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl210681210903%_)))
                                        (_%$%hd210665210871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl210681210903%_))))
                                    (if (pair? _%$%hd210665210871%_)
                                        (let ((_%$%tl210668210878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%hd210665210871%_)))
                                              (_%$%hd210667210876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%hd210665210871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd210667210876%_
                                                       'let))
                                              (if (pair? _%$%tl210668210878%_)
                                                  (let ((_%$%tl210670210883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl210668210878%_)))
                                                        (_%$%hd210669210881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl210668210878%_))))
                                                    (if (null? _%$%hd210669210881%_)
                                                        (if (null? _%$%tl210666210873%_)
                                                            (let ((_%id210862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%hd210673210857%_)
                          (_%expr210869%_ _%$%hd210675210864%_)
                          (_%body210886%_ _%$%tl210670210883%_))
                      (_%$%K210660210839%_
                       _%body210886%_
                       _%expr210869%_
                       _%id210862%_))
                    (_%$%else210618210693%_))
                (if (pair? _%$%hd210669210881%_)
                    (let ((_%$%tl210649210812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%hd210669210881%_)))
                          (_%$%hd210648210810%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%hd210669210881%_))))
                      (if (pair? _%$%hd210648210810%_)
                          (let ((_%$%tl210651210817%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd210648210810%_)))
                                (_%$%hd210650210815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd210648210810%_))))
                            (if (pair? _%$%tl210651210817%_)
                                (let ((_%$%tl210653210824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl210651210817%_)))
                                      (_%$%hd210652210822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl210651210817%_))))
                                  (if (null? _%$%tl210653210824%_)
                                      (if (null? _%$%tl210649210812%_)
                                          (if (null? _%$%tl210666210873%_)
                                              (let ((_%id1210786%_
                                                     _%$%hd210673210857%_)
                                                    (_%expr1210793%_
                                                     _%$%hd210675210864%_)
                                                    (_%id2210820%_
                                                     _%$%hd210650210815%_)
                                                    (_%expr2210827%_
                                                     _%$%hd210652210822%_)
                                                    (_%body210829%_
                                                     _%$%tl210670210883%_))
                                                (_%$%K210637210763%_
                                                 _%body210829%_
                                                 _%expr2210827%_
                                                 _%id2210820%_
                                                 _%expr1210793%_
                                                 _%id1210786%_))
                                              (_%$%else210618210693%_))
                                          (_%$%else210618210693%_))
                                      (_%$%else210618210693%_)))
                                (_%$%else210618210693%_)))
                          (_%$%else210618210693%_)))
                    (_%$%else210618210693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else210618210693%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%$%hd210667210876%_
                                                           'let*))
                                                  (if (pair? _%$%tl210668210878%_)
                                                      (let ((_%$%tl210630210746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl210668210878%_)))
                    (_%$%hd210629210744%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl210668210878%_))))
                (if (null? _%$%tl210666210873%_)
                    (let ((_%id1210725%_ _%$%hd210673210857%_)
                          (_%expr1210732%_ _%$%hd210675210864%_)
                          (_%bind210749%_ _%$%hd210629210744%_)
                          (_%body210751%_ _%$%tl210630210746%_))
                      (_%$%K210620210702%_
                       _%body210751%_
                       _%bind210749%_
                       _%expr1210732%_
                       _%id1210725%_))
                    (_%$%else210618210693%_)))
              (_%$%else210618210693%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else210618210693%_))))
                                        (_%$%else210618210693%_)))
                                  (_%$%else210618210693%_))
                              (_%$%else210618210693%_))
                          (_%$%else210618210693%_)))
                    (_%$%else210618210693%_)))
              (_%$%else210618210693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else210618210693%_))))
                                      (_%$%else210618210693%_))
                                  (_%$%else210618210693%_)))
                            (_%$%else210618210693%_))))))
                 (_%generate-values210311%_
                  (lambda (_%hd210425%_ _%body210426%_)
                    (let _%lp210428%_ ((_%rest210430%_ _%hd210425%_)
                                       (_%bind210431%_ '())
                                       (_%check210432%_ '())
                                       (_%post210433%_ '()))
                      (let* ((_%__stx214478214479%_ _%rest210430%_)
                             (_%$%g210436210447%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214478214479%_)))))
                        (let ((_%__kont214480214481%_
                               (lambda (_%$%g210438210474%_
                                        _%$%g210439210475%_)
                                 (let* ((_%__stx214434214435%_
                                         _%$%g210439210475%_)
                                        (_%$%g210490210515%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx214434214435%_)))))
                                   (let ((_%__kont214436214437%_
                                          (lambda (_%$%g210492210588%_
                                                   _%$%g210493210589%_)
                                            (let ((_%eid210603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g210493210589%_)))
                                                  (_%expr210604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210304%_
                                                      _%$%g210492210588%_))))
                                              (_%lp210428%_
                                               _%$%g210438210474%_
                                               (cons (cons _%eid210603%_
                                                           (cons _%expr210604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210431%_)
                                               _%check210432%_
                                               _%post210433%_))))
                                         (_%__kont214438214439%_
                                          (lambda (_%$%g210503210536%_
                                                   _%$%g210504210537%_)
                                            (let* ((_%vals210550%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values210552%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals210550%_
                                                     _%$%g210504210537%_
                                                     _%$%g210503210536%_))
                                                   (_%refs210554%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals210550%_
                                                     _%$%g210504210537%_))
                                                   (_%expr210556%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self210304%_
                                                       _%$%g210503210536%_))))
                                              (_%lp210428%_
                                               _%$%g210438210474%_
                                               (cons (cons _%vals210550%_
                                                           (cons _%expr210556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind210431%_)
                                               (cons _%check-values210552%_
                                                     _%check210432%_)
                                               (cons _%refs210554%_
                                                     _%post210433%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx214434214435%_))
                                         (let ((_%$%e210494210564%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx214434214435%_))))
                                           (let ((_%$%tl210496210569%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e210494210564%_)))
                                                 (_%$%hd210495210567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e210494210564%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd210495210567%_))
                                                 (let ((_%$%e210497210572%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd210495210567%_))))
                                                   (let ((_%$%tl210499210577%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210497210572%_)))
                                                         (_%$%hd210498210575%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210497210572%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl210499210577%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl210496210569%_))
                     (let ((_%$%e210500210580%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210496210569%_))))
                       (let ((_%$%tl210502210585%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210500210580%_)))
                             (_%$%hd210501210583%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210500210580%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210502210585%_))
                             (_%__kont214436214437%_
                              _%$%hd210501210583%_
                              _%$%hd210498210575%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210490210515%_)))))
                     (let () (declare (not safe)) (_%$%g210490210515%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl210496210569%_))
                     (let ((_%$%e210508210528%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210496210569%_))))
                       (let ((_%$%tl210510210533%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210508210528%_)))
                             (_%$%hd210509210531%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210508210528%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210510210533%_))
                             (_%__kont214438214439%_
                              _%$%hd210509210531%_
                              _%$%hd210495210567%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210490210515%_)))))
                     (let () (declare (not safe)) (_%$%g210490210515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl210496210569%_))
                                                     (let ((_%$%e210508210528%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl210496210569%_))))
                                                       (let ((_%$%tl210510210533%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e210508210528%_)))
                     (_%$%hd210509210531%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e210508210528%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl210510210533%_))
                     (_%__kont214438214439%_
                      _%$%hd210509210531%_
                      _%$%hd210495210567%_)
                     (let () (declare (not safe)) (_%$%g210490210515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g210490210515%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g210490210515%_)))))))
                              (_%__kont214482214483%_
                               (lambda ()
                                 (let* ((_%body210454%_
                                         (if _%compiled-body?210306%_
                                             _%body210426%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self210304%_
                                                _%body210426%_))))
                                        (_%body210456%_
                                         (_%generate-values-post210312%_
                                          _%post210433%_
                                          _%body210454%_))
                                        (_%body210458%_
                                         (_%generate-values-check210313%_
                                          _%check210432%_
                                          _%body210456%_)))
                                   (cons 'let
                                         (cons (reverse _%bind210431%_)
                                               (cons _%body210458%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214478214479%_))
                              (let ((_%$%e210440210466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214478214479%_))))
                                (let ((_%$%tl210442210471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e210440210466%_)))
                                      (_%$%hd210441210469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e210440210466%_))))
                                  (_%__kont214480214481%_
                                   _%$%tl210442210471%_
                                   _%$%hd210441210469%_)))
                              (_%__kont214482214483%_)))))))
                 (_%generate-values-post210312%_
                  (lambda (_%post210384%_ _%body210385%_)
                    (let _%lp210387%_ ((_%rest210389%_ _%post210384%_)
                                       (_%body210390%_ _%body210385%_))
                      (let* ((_%$%rest210391210399%_ _%rest210389%_)
                             (_%$%else210393210407%_
                              (lambda () _%body210390%_))
                             (_%$%K210395210413%_
                              (lambda (_%rest210410%_ _%bind210411%_)
                                (_%lp210387%_
                                 _%rest210410%_
                                 (cons 'let
                                       (cons _%bind210411%_
                                             (cons _%body210390%_ '())))))))
                        (if (pair? _%$%rest210391210399%_)
                            (let ((_%$%hd210396210416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest210391210399%_)))
                                  (_%$%tl210397210418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest210391210399%_))))
                              (let* ((_%bind210421%_ _%$%hd210396210416%_)
                                     (_%rest210423%_ _%$%tl210397210418%_))
                                (_%$%K210395210413%_
                                 _%rest210423%_
                                 _%bind210421%_)))
                            (_%$%else210393210407%_))))))
                 (_%generate-values-check210313%_
                  (lambda (_%check210381%_ _%body210382%_)
                    (cons 'begin
                          (let ((__tmp215324 (reverse _%check210381%_))
                                (__tmp215323 (cons _%body210382%_ '())))
                            (declare (not safe))
                            (##append __tmp215324 __tmp215323))))))
          (let* ((_%$%g210315210332%_
                  (lambda (_%$%g210316210329%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g210316210329%_))))
                 (_%$%g210314210378%_
                  (lambda (_%$%g210316210335%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g210316210335%_))
                        (let ((_%$%e210319210337%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g210316210335%_))))
                          (let ((_%$%hd210320210340%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e210319210337%_)))
                                (_%$%tl210321210342%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e210319210337%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl210321210342%_))
                                (let ((_%$%e210322210345%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl210321210342%_))))
                                  (let ((_%$%hd210323210348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e210322210345%_)))
                                        (_%$%tl210324210350%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e210322210345%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl210324210350%_))
                                        (let ((_%$%e210325210353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl210324210350%_))))
                                          (let ((_%$%hd210326210356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e210325210353%_)))
                                                (_%$%tl210327210358%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e210325210353%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl210327210358%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd210323210348%_)
                                                    (_%generate-simple210308%_
                                                     _%$%hd210323210348%_
                                                     _%$%hd210326210356%_)
                                                    (_%generate-values210311%_
                                                     _%$%hd210323210348%_
                                                     _%$%hd210326210356%_))
                                                (_%$%g210315210332%_
                                                 _%$%g210316210335%_))))
                                        (_%$%g210315210332%_
                                         _%$%g210316210335%_))))
                                (_%$%g210315210332%_ _%$%g210316210335%_))))
                        (_%$%g210315210332%_ _%$%g210316210335%_)))))
            (_%$%g210314210378%_ _%stx210305%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self211058%_ _%stx211059%_)
        (let ((_%compiled-body?211061%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self211058%_
           _%stx211059%_
           _%compiled-body?211061%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g215325_
        (let ((_g215326_ (let () (declare (not safe)) (##length _g215325_))))
          (cond ((let () (declare (not safe)) (##fx= _g215326_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g215325_))
                ((let () (declare (not safe)) (##fx= _g215326_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g215325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g215325_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals210198%_ _%hd210199%_)
        (let _%lp210201%_ ((_%rest210203%_ _%hd210199%_)
                           (_%k210204%_ '0)
                           (_%r210205%_ '()))
          (let* ((_%__stx214492214493%_ _%rest210203%_)
                 (_%$%g210210210227%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx214492214493%_)))))
            (let ((_%__kont214494214495%_
                   (lambda (_%$%g210212210290%_)
                     (_%lp210201%_
                      _%$%g210212210290%_
                      (let () (declare (not safe)) (##fx+ _%k210204%_ '1))
                      _%r210205%_)))
                  (_%__kont214496214497%_
                   (lambda (_%$%g210217210263%_ _%$%g210218210264%_)
                     (_%lp210201%_
                      _%$%g210217210263%_
                      (let () (declare (not safe)) (##fx+ _%k210204%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%$%g210218210264%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals210198%_
                                         _%k210204%_
                                         _%$%g210217210263%_)
                                        '()))
                            _%r210205%_))))
                  (_%__kont214498214499%_
                   (lambda (_%$%g210222210239%_)
                     (let ((__tmp215327
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%$%g210222210239%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals210198%_
                                               _%k210204%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp215327 _%r210205%_))))
                  (_%__kont214500214501%_ (lambda () (reverse _%r210205%_))))
              (let ((_%$%g210208210250%_
                     (lambda ()
                       (let ((_%$%g210222210239%_ _%__stx214492214493%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g210222210239%_))
                             (_%__kont214498214499%_ _%$%g210222210239%_)
                             (_%__kont214500214501%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx214492214493%_))
                    (let ((_%$%e210213210279%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx214492214493%_))))
                      (let ((_%$%tl210215210284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e210213210279%_)))
                            (_%$%hd210214210282%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e210213210279%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd210214210282%_))
                            (let ((_%$%e210216210287%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd210214210282%_))))
                              (if (equal? _%$%e210216210287%_ '#f)
                                  (_%__kont214494214495%_ _%$%tl210215210284%_)
                                  (_%__kont214496214497%_
                                   _%$%tl210215210284%_
                                   _%$%hd210214210282%_)))
                            (_%__kont214496214497%_
                             _%$%tl210215210284%_
                             _%$%hd210214210282%_))))
                    (let () (declare (not safe)) (_%$%g210208210250%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self209877%_ _%stx209878%_ _%compiled-body?209879%_)
        (letrec ((_%generate-simple209881%_
                  (lambda (_%hd210183%_ _%body210184%_)
                    (gxc#generate-runtime-simple-let
                     _%self209877%_
                     'letrec
                     _%hd210183%_
                     _%body210184%_
                     _%compiled-body?209879%_)))
                 (_%generate-values209882%_
                  (lambda (_%hd209962%_ _%body209963%_)
                    (let _%lp209965%_ ((_%rest209967%_ _%hd209962%_)
                                       (_%bind209968%_ '())
                                       (_%check209969%_ '())
                                       (_%post209970%_ '()))
                      (let* ((_%__stx214566214567%_ _%rest209967%_)
                             (_%$%g209973209984%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214566214567%_)))))
                        (let ((_%__kont214568214569%_
                               (lambda (_%$%g209975210011%_
                                        _%$%g209976210012%_)
                                 (let* ((_%__stx214522214523%_
                                         _%$%g209976210012%_)
                                        (_%$%g210027210052%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx214522214523%_)))))
                                   (let ((_%__kont214524214525%_
                                          (lambda (_%$%g210029210159%_
                                                   _%$%g210030210160%_)
                                            (let ((_%eid210174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%$%g210030210160%_)))
                                                  (_%expr210175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209877%_
                                                      _%$%g210029210159%_))))
                                              (_%lp209965%_
                                               _%$%g209975210011%_
                                               (cons (cons _%eid210174%_
                                                           (cons _%expr210175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind209968%_)
                                               _%check209969%_
                                               _%post209970%_))))
                                         (_%__kont214526214527%_
                                          (lambda (_%$%g210040210073%_
                                                   _%$%g210041210074%_)
                                            (let* ((_%vals210087%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values210089%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals210087%_
                                                     _%$%g210041210074%_
                                                     _%$%g210040210073%_))
                                                   (_%refs210091%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals210087%_
                                                     _%$%g210041210074%_))
                                                   (_%expr210093%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self209877%_
                                                       _%$%g210040210073%_))))
                                              (_%lp209965%_
                                               _%$%g209975210011%_
                                               (let ((__tmp215329
                                                      (cons (cons _%vals210087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr210093%_ '()))
                    _%bind209968%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp215328
                                                      (map (lambda (_%$%e210095210097%_)
                                                             (let* ((_%$%$%e210095210099210108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e210095210097%_)
                            (_%$%E210101210112%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%$%e210095210099210108%_
                                        '([eid _])))
                               '#!void))
                            (_%$%K210102210117%_
                             (lambda (_%eid210115%_)
                               (cons _%eid210115%_ (cons '#!void '())))))
                       (if (pair? _%$%$%e210095210099210108%_)
                           (let ((_%$%hd210103210120%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$%e210095210099210108%_)))
                                 (_%$%tl210104210122%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$%e210095210099210108%_))))
                             (let ((_%eid210125%_ _%$%hd210103210120%_))
                               (if (pair? _%$%tl210104210122%_)
                                   (let ((_%$%tl210106210127%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%tl210104210122%_))))
                                     (if (null? _%$%tl210106210127%_)
                                         (_%$%K210102210117%_ _%eid210125%_)
                                         (_%$%E210101210112%_)))
                                   (_%$%E210101210112%_))))
                           (_%$%E210101210112%_))))
                   _%refs210091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp215329
                                                  __tmp215328))
                                               (cons _%check-values210089%_
                                                     _%check209969%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs210091%_
                                                  _%post209970%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx214522214523%_))
                                         (let ((_%$%e210031210135%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx214522214523%_))))
                                           (let ((_%$%tl210033210140%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e210031210135%_)))
                                                 (_%$%hd210032210138%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e210031210135%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd210032210138%_))
                                                 (let ((_%$%e210034210143%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd210032210138%_))))
                                                   (let ((_%$%tl210036210148%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e210034210143%_)))
                                                         (_%$%hd210035210146%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e210034210143%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl210036210148%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl210033210140%_))
                     (let ((_%$%e210037210151%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210033210140%_))))
                       (let ((_%$%tl210039210156%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210037210151%_)))
                             (_%$%hd210038210154%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210037210151%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210039210156%_))
                             (_%__kont214524214525%_
                              _%$%hd210038210154%_
                              _%$%hd210035210146%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210027210052%_)))))
                     (let () (declare (not safe)) (_%$%g210027210052%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl210033210140%_))
                     (let ((_%$%e210045210065%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl210033210140%_))))
                       (let ((_%$%tl210047210070%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e210045210065%_)))
                             (_%$%hd210046210068%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e210045210065%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl210047210070%_))
                             (_%__kont214526214527%_
                              _%$%hd210046210068%_
                              _%$%hd210032210138%_)
                             (let ()
                               (declare (not safe))
                               (_%$%g210027210052%_)))))
                     (let () (declare (not safe)) (_%$%g210027210052%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl210033210140%_))
                                                     (let ((_%$%e210045210065%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl210033210140%_))))
                                                       (let ((_%$%tl210047210070%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e210045210065%_)))
                     (_%$%hd210046210068%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e210045210065%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl210047210070%_))
                     (_%__kont214526214527%_
                      _%$%hd210046210068%_
                      _%$%hd210032210138%_)
                     (let () (declare (not safe)) (_%$%g210027210052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g210027210052%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%$%g210027210052%_)))))))
                              (_%__kont214570214571%_
                               (lambda ()
                                 (let* ((_%body209991%_
                                         (if _%compiled-body?209879%_
                                             _%body209963%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self209877%_
                                                _%body209963%_))))
                                        (_%body209993%_
                                         (_%generate-values-post209884%_
                                          _%post209970%_
                                          _%body209991%_))
                                        (_%body209995%_
                                         (_%generate-values-check209883%_
                                          _%check209969%_
                                          _%body209993%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind209968%_)
                                               (cons _%body209995%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214566214567%_))
                              (let ((_%$%e209977210003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214566214567%_))))
                                (let ((_%$%tl209979210008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e209977210003%_)))
                                      (_%$%hd209978210006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e209977210003%_))))
                                  (_%__kont214568214569%_
                                   _%$%tl209979210008%_
                                   _%$%hd209978210006%_)))
                              (_%__kont214570214571%_)))))))
                 (_%generate-values-check209883%_
                  (lambda (_%check209959%_ _%body209960%_)
                    (cons 'begin
                          (let ((__tmp215331 (reverse _%check209959%_))
                                (__tmp215330 (cons _%body209960%_ '())))
                            (declare (not safe))
                            (##append __tmp215331 __tmp215330)))))
                 (_%generate-values-post209884%_
                  (lambda (_%post209952%_ _%body209953%_)
                    (cons 'begin
                          (let ((__tmp215333
                                 (let ((__tmp215335
                                        (lambda (_%$%g209954209956%_)
                                          (cons 'set! _%$%g209954209956%_)))
                                       (__tmp215334 (reverse _%post209952%_)))
                                   (declare (not safe))
                                   (##map __tmp215335 __tmp215334)))
                                (__tmp215332 (cons _%body209953%_ '())))
                            (declare (not safe))
                            (##append __tmp215333 __tmp215332))))))
          (let* ((_%$%g209886209903%_
                  (lambda (_%$%g209887209900%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209887209900%_))))
                 (_%$%g209885209949%_
                  (lambda (_%$%g209887209906%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209887209906%_))
                        (let ((_%$%e209890209908%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209887209906%_))))
                          (let ((_%$%hd209891209911%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209890209908%_)))
                                (_%$%tl209892209913%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209890209908%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209892209913%_))
                                (let ((_%$%e209893209916%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209892209913%_))))
                                  (let ((_%$%hd209894209919%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209893209916%_)))
                                        (_%$%tl209895209921%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209893209916%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209895209921%_))
                                        (let ((_%$%e209896209924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209895209921%_))))
                                          (let ((_%$%hd209897209927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209896209924%_)))
                                                (_%$%tl209898209929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209896209924%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl209898209929%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd209894209919%_)
                                                    (_%generate-simple209881%_
                                                     _%$%hd209894209919%_
                                                     _%$%hd209897209927%_)
                                                    (_%generate-values209882%_
                                                     _%$%hd209894209919%_
                                                     _%$%hd209897209927%_))
                                                (_%$%g209886209903%_
                                                 _%$%g209887209906%_))))
                                        (_%$%g209886209903%_
                                         _%$%g209887209906%_))))
                                (_%$%g209886209903%_ _%$%g209887209906%_))))
                        (_%$%g209886209903%_ _%$%g209887209906%_)))))
            (_%$%g209885209949%_ _%stx209878%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self210189%_ _%stx210190%_)
        (let ((_%compiled-body?210192%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self210189%_
           _%stx210190%_
           _%compiled-body?210192%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g215336_
        (let ((_g215337_ (let () (declare (not safe)) (##length _g215336_))))
          (cond ((let () (declare (not safe)) (##fx= _g215337_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g215336_))
                ((let () (declare (not safe)) (##fx= _g215337_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g215336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g215336_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self209458%_ _%stx209459%_)
        (letrec ((_%generate-values209461%_
                  (lambda (_%hd209704%_ _%body209705%_)
                    (let _%lp209707%_ ((_%rest209709%_ _%hd209704%_)
                                       (_%bind209710%_ '()))
                      (let* ((_%$%rest209711209719%_ _%rest209709%_)
                             (_%$%else209713209730%_
                              (lambda ()
                                (let ((_%bind209727%_ (reverse _%bind209710%_))
                                      (_%body209728%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self209458%_
                                          _%body209705%_))))
                                  (cons 'letrec*
                                        (cons _%bind209727%_
                                              (cons _%body209728%_ '()))))))
                             (_%$%K209715209864%_
                              (lambda (_%rest209733%_ _%hd-bind209734%_)
                                (let* ((_%__stx214580214581%_
                                        _%hd-bind209734%_)
                                       (_%$%g209737209762%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx214580214581%_)))))
                                  (let ((_%__kont214582214583%_
                                         (lambda (_%$%g209739209843%_
                                                  _%$%g209740209844%_)
                                           (let ((_%eid209858%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%$%g209740209844%_)))
                                                 (_%expr209859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self209458%_
                                                     _%$%g209739209843%_))))
                                             (_%lp209707%_
                                              _%rest209733%_
                                              (cons (cons _%eid209858%_
                                                          (cons _%expr209859%_
                                                                '()))
                                                    _%bind209710%_)))))
                                        (_%__kont214584214585%_
                                         (lambda (_%$%g209750209783%_
                                                  _%$%g209751209784%_)
                                           (let* ((_%vals209803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp209805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values209807%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp209805%_
                                                    _%$%g209751209784%_
                                                    _%$%g209750209783%_))
                                                  (_%refs209809%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals209803%_
                                                    _%$%g209751209784%_))
                                                  (_%expr209811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209458%_
                                                      _%$%g209750209783%_))))
                                             (_%lp209707%_
                                              _%rest209733%_
                                              (let ((__tmp215338
                                                     (cons (cons _%vals209803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp209805%_
                                                       (cons _%expr209811%_
                                                             '()))
                                                 '())
                                           (cons _%check-values209807%_
                                                 (cons _%tmp209805%_ '()))))
                               '()))
                   _%bind209710%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp215338
                                                 _%refs209809%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx214580214581%_))
                                        (let ((_%$%e209741209819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx214580214581%_))))
                                          (let ((_%$%tl209743209824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209741209819%_)))
                                                (_%$%hd209742209822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209741209819%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd209742209822%_))
                                                (let ((_%$%e209744209827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd209742209822%_))))
                                                  (let ((_%$%tl209746209832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e209744209827%_)))
                                                        (_%$%hd209745209830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e209744209827%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl209746209832%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl209743209824%_))
                                                            (let ((_%$%e209747209835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl209743209824%_))))
                      (let ((_%$%tl209749209840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e209747209835%_)))
                            (_%$%hd209748209838%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e209747209835%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl209749209840%_))
                            (_%__kont214582214583%_
                             _%$%hd209748209838%_
                             _%$%hd209745209830%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g209737209762%_)))))
                    (let () (declare (not safe)) (_%$%g209737209762%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl209743209824%_))
                    (let ((_%$%e209755209775%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl209743209824%_))))
                      (let ((_%$%tl209757209780%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e209755209775%_)))
                            (_%$%hd209756209778%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e209755209775%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl209757209780%_))
                            (_%__kont214584214585%_
                             _%$%hd209756209778%_
                             _%$%hd209742209822%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g209737209762%_)))))
                    (let () (declare (not safe)) (_%$%g209737209762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl209743209824%_))
                                                    (let ((_%$%e209755209775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl209743209824%_))))
                                                      (let ((_%$%tl209757209780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e209755209775%_)))
                    (_%$%hd209756209778%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e209755209775%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl209757209780%_))
                    (_%__kont214584214585%_
                     _%$%hd209756209778%_
                     _%$%hd209742209822%_)
                    (let () (declare (not safe)) (_%$%g209737209762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g209737209762%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g209737209762%_))))))))
                        (if (pair? _%$%rest209711209719%_)
                            (let ((_%$%hd209716209867%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest209711209719%_)))
                                  (_%$%tl209717209869%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest209711209719%_))))
                              (let* ((_%hd-bind209872%_ _%$%hd209716209867%_)
                                     (_%rest209874%_ _%$%tl209717209869%_))
                                (_%$%K209715209864%_
                                 _%rest209874%_
                                 _%hd-bind209872%_)))
                            (_%$%else209713209730%_))))))
                 (_%generate-letrec?209462%_
                  (lambda (_%hd209594%_)
                    (let _%lp209596%_ ((_%rest209598%_ _%hd209594%_))
                      (let* ((_%$%rest209599209607%_ _%rest209598%_)
                             (_%$%else209601209615%_ (lambda () '#t))
                             (_%$%K209603209692%_
                              (lambda (_%rest209618%_ _%hd-bind209619%_)
                                (let* ((_%$%g209621209638%_
                                        (lambda (_%$%g209622209635%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g209622209635%_))))
                                       (_%$%g209620209689%_
                                        (lambda (_%$%g209622209641%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%g209622209641%_))
                                              (let ((_%$%e209625209643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%g209622209641%_))))
                                                (let ((_%$%hd209626209646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e209625209643%_)))
                                                      (_%$%tl209627209648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e209625209643%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd209626209646%_))
                                                      (let ((_%$%e209628209651%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd209626209646%_))))
                (let ((_%$%hd209629209654%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e209628209651%_)))
                      (_%$%tl209630209656%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e209628209651%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl209630209656%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl209627209648%_))
                          (let ((_%$%e209631209659%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl209627209648%_))))
                            (let ((_%$%hd209632209662%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e209631209659%_)))
                                  (_%$%tl209633209664%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e209631209659%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl209633209664%_))
                                  (if (_%is-lambda-expr?209463%_
                                       _%$%hd209632209662%_)
                                      (_%lp209596%_ _%rest209618%_)
                                      '#f)
                                  (_%$%g209621209638%_ _%$%g209622209641%_))))
                          (_%$%g209621209638%_ _%$%g209622209641%_))
                      (_%$%g209621209638%_ _%$%g209622209641%_))))
              (_%$%g209621209638%_ _%$%g209622209641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g209621209638%_
                                               _%$%g209622209641%_)))))
                                  (_%$%g209620209689%_ _%hd-bind209619%_)))))
                        (if (pair? _%$%rest209599209607%_)
                            (let ((_%$%hd209604209695%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest209599209607%_)))
                                  (_%$%tl209605209697%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest209599209607%_))))
                              (let* ((_%hd-bind209700%_ _%$%hd209604209695%_)
                                     (_%rest209702%_ _%$%tl209605209697%_))
                                (_%$%K209603209692%_
                                 _%rest209702%_
                                 _%hd-bind209700%_)))
                            (_%$%else209601209615%_))))))
                 (_%is-lambda-expr?209463%_
                  (lambda (_%expr209531%_)
                    (let* ((_%__stx214624214625%_ _%expr209531%_)
                           (_%$%g209534209548%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx214624214625%_)))))
                      (let ((_%__kont214626214627%_
                             (lambda (_%$%g209536209576%_ _%$%g209537209577%_)
                               '#t))
                            (_%__kont214628214629%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx214624214625%_))
                            (let ((_%$%e209538209560%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx214624214625%_))))
                              (let ((_%$%tl209540209565%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e209538209560%_)))
                                    (_%$%hd209539209563%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e209538209560%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd209539209563%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%$%hd209539209563%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl209540209565%_))
                                            (let ((_%$%e209541209568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl209540209565%_))))
                                              (let ((_%$%tl209543209573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e209541209568%_)))
                                                    (_%$%hd209542209571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e209541209568%_))))
                                                (_%__kont214626214627%_
                                                 _%$%tl209543209573%_
                                                 _%$%hd209542209571%_)))
                                            (_%__kont214628214629%_))
                                        (_%__kont214628214629%_))
                                    (_%__kont214628214629%_))))
                            (_%__kont214628214629%_)))))))
          (let* ((_%$%g209465209482%_
                  (lambda (_%$%g209466209479%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209466209479%_))))
                 (_%$%g209464209528%_
                  (lambda (_%$%g209466209485%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209466209485%_))
                        (let ((_%$%e209469209487%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209466209485%_))))
                          (let ((_%$%hd209470209490%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209469209487%_)))
                                (_%$%tl209471209492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209469209487%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209471209492%_))
                                (let ((_%$%e209472209495%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209471209492%_))))
                                  (let ((_%$%hd209473209498%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209472209495%_)))
                                        (_%$%tl209474209500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209472209495%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl209474209500%_))
                                        (let ((_%$%e209475209503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl209474209500%_))))
                                          (let ((_%$%hd209476209506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e209475209503%_)))
                                                (_%$%tl209477209508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e209475209503%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl209477209508%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%$%hd209473209498%_)
                                                    (if (_%generate-letrec?209462%_
                                                         _%$%hd209473209498%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self209458%_
                                                         'letrec
                                                         _%$%hd209473209498%_
                                                         _%$%hd209476209506%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self209458%_
                                                         'letrec*
                                                         _%$%hd209473209498%_
                                                         _%$%hd209476209506%_
                                                         '#f))
                                                    (_%generate-values209461%_
                                                     _%$%hd209473209498%_
                                                     _%$%hd209476209506%_))
                                                (_%$%g209465209482%_
                                                 _%$%g209466209485%_))))
                                        (_%$%g209465209482%_
                                         _%$%g209466209485%_))))
                                (_%$%g209465209482%_ _%$%g209466209485%_))))
                        (_%$%g209465209482%_ _%$%g209466209485%_)))))
            (_%$%g209464209528%_ _%stx209459%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd209395%_)
        (let _%lp209397%_ ((_%rest209399%_ _%hd209395%_))
          (let* ((_%$%rest209400209416%_ _%rest209399%_)
                 (_%$%else209403209424%_ (lambda () '#f)))
            (let ((_%$%K209406209437%_
                   (lambda (_%rest209435%_) (_%lp209397%_ _%rest209435%_)))
                  (_%$%K209405209429%_ (lambda () '#t)))
              (let ((_%$%try-match209402209432%_
                     (lambda ()
                       (if (null? _%$%rest209400209416%_)
                           (_%$%K209405209429%_)
                           (_%$%else209403209424%_)))))
                (if (pair? _%$%rest209400209416%_)
                    (let ((_%$%tl209408209442%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest209400209416%_)))
                          (_%$%hd209407209440%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest209400209416%_))))
                      (if (pair? _%$%hd209407209440%_)
                          (let ((_%$%tl209410209447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%hd209407209440%_)))
                                (_%$%hd209409209445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%hd209407209440%_))))
                            (if (pair? _%$%hd209409209445%_)
                                (let ((_%$%tl209414209450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd209409209445%_))))
                                  (if (null? _%$%tl209414209450%_)
                                      (if (pair? _%$%tl209410209447%_)
                                          (let ((_%$%tl209412209453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl209410209447%_))))
                                            (if (null? _%$%tl209412209453%_)
                                                (let ((_%rest209456%_
                                                       _%$%tl209408209442%_))
                                                  (_%lp209397%_
                                                   _%rest209456%_))
                                                (_%$%else209403209424%_)))
                                          (_%$%else209403209424%_))
                                      (_%$%else209403209424%_)))
                                (_%$%else209403209424%_)))
                          (_%$%else209403209424%_)))
                    (_%$%try-match209402209432%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self209307%_
               _%form209308%_
               _%hd209309%_
               _%body209310%_
               _%compiled-body?209311%_)
        (letrec ((_%generate1209313%_
                  (lambda (_%bind209352%_)
                    (let* ((_%$%bind209353209364%_ _%bind209352%_)
                           (_%$%E209355209367%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%bind209353209364%_
                                       '([[id] expr])))
                              '#!void))
                           (_%$%K209356209373%_
                            (lambda (_%expr209370%_ _%id209371%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id209371%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self209307%_
                                             _%expr209370%_))
                                          '())))))
                      (if (pair? _%$%bind209353209364%_)
                          (let ((_%$%hd209357209376%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind209353209364%_)))
                                (_%$%tl209358209378%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind209353209364%_))))
                            (if (pair? _%$%hd209357209376%_)
                                (let ((_%$%hd209361209381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd209357209376%_)))
                                      (_%$%tl209362209383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd209357209376%_))))
                                  (let ((_%id209386%_ _%$%hd209361209381%_))
                                    (if (null? _%$%tl209362209383%_)
                                        (if (pair? _%$%tl209358209378%_)
                                            (let ((_%$%hd209359209388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl209358209378%_)))
                                                  (_%$%tl209360209390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl209358209378%_))))
                                              (let ((_%expr209393%_
                                                     _%$%hd209359209388%_))
                                                (if (null? _%$%tl209360209390%_)
                                                    (_%$%K209356209373%_
                                                     _%expr209393%_
                                                     _%id209386%_)
                                                    (_%$%E209355209367%_))))
                                            (_%$%E209355209367%_))
                                        (_%$%E209355209367%_))))
                                (_%$%E209355209367%_)))
                          (_%$%E209355209367%_))))))
          (let* ((_%bind209315%_ (map _%generate1209313%_ _%hd209309%_))
                 (_%body209317%_
                  (if _%compiled-body?209311%_
                      _%body209310%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self209307%_ _%body209310%_))))
                 (_%body209349%_
                  (let* ((_%$%body209318209326%_ _%body209317%_)
                         (_%$%else209320209334%_
                          (lambda () (cons _%body209317%_ '())))
                         (_%$%K209322209339%_
                          (lambda (_%exprs209337%_) _%exprs209337%_)))
                    (if (pair? _%$%body209318209326%_)
                        (let ((_%$%hd209323209342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body209318209326%_)))
                              (_%$%tl209324209344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body209318209326%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd209323209342%_ 'begin))
                              (let ((_%exprs209347%_ _%$%tl209324209344%_))
                                (_%$%K209322209339%_ _%exprs209347%_))
                              (_%$%else209320209334%_)))
                        (_%$%else209320209334%_)))))
            (cons _%form209308%_ (cons _%bind209315%_ _%body209349%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self209207%_ _%stx209208%_)
        (letrec ((_%generate1209210%_
                  (lambda (_%datum209262%_)
                    (if (or (null? _%datum209262%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum209262%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum209262%_))
                            (eof-object? _%datum209262%_))
                        _%datum209262%_
                        (if (uninterned-symbol? _%datum209262%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum209262%_
                               '#t))
                            (if (pair? _%datum209262%_)
                                (cons (_%generate1209210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum209262%_)))
                                      (_%generate1209210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum209262%_))))
                                (if (box? _%datum209262%_)
                                    (box (_%generate1209210%_
                                          (unbox _%datum209262%_)))
                                    (if (vector? _%datum209262%_)
                                        (vector-map
                                         _%generate1209210%_
                                         _%datum209262%_)
                                        (if (or (s8vector? _%datum209262%_)
                                                (u8vector? _%datum209262%_)
                                                (s16vector? _%datum209262%_)
                                                (u16vector? _%datum209262%_)
                                                (s32vector? _%datum209262%_)
                                                (u32vector? _%datum209262%_)
                                                (s64vector? _%datum209262%_)
                                                (u64vector? _%datum209262%_)
                                                (f32vector? _%datum209262%_)
                                                (f64vector? _%datum209262%_))
                                            _%datum209262%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx209208%_)))))))))))
          (let* ((_%$%g209212209225%_
                  (lambda (_%$%g209213209222%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g209213209222%_))))
                 (_%$%g209211209259%_
                  (lambda (_%$%g209213209228%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g209213209228%_))
                        (let ((_%$%e209215209230%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g209213209228%_))))
                          (let ((_%$%hd209216209233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e209215209230%_)))
                                (_%$%tl209217209235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e209215209230%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl209217209235%_))
                                (let ((_%$%e209218209238%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl209217209235%_))))
                                  (let ((_%$%hd209219209241%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e209218209238%_)))
                                        (_%$%tl209220209243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e209218209238%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl209220209243%_))
                                        (cons 'quote
                                              (cons (_%generate1209210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd209219209241%_)))
                                                    '()))
                                        (_%$%g209212209225%_
                                         _%$%g209213209228%_))))
                                (_%$%g209212209225%_ _%$%g209213209228%_))))
                        (_%$%g209212209225%_ _%$%g209213209228%_)))))
            (_%$%g209211209259%_ _%stx209208%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self208654%_ _%stx208655%_)
        (letrec ((_%compile-call208657%_
                  (lambda (_%rator208944%_ _%rands208945%_)
                    (let ((_%rator208951%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self208654%_
                              _%rator208944%_)))
                          (_%rands208952%_
                           (map (lambda (_%$%g208946208948%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self208654%_
                                     _%$%g208946208948%_)))
                                _%rands208945%_)))
                      (let* ((_%__stx214671214672%_ _%rator208951%_)
                             (_%$%g208955209007%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214671214672%_)))))
                        (let ((_%__kont214673214674%_
                               (lambda (_%$%g208957209127%_
                                        _%$%g208958209128%_
                                        _%$%g208959209129%_
                                        _%$%g208960209130%_)
                                 (if (let ((__tmp215341
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands208952%_)))
                                           (__tmp215339
                                            (length (let ((__tmp215340
                                                           (lambda (_%$%g209166209169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g209167209171%_)
                     (cons _%$%g209166209169%_ _%$%g209167209171%_))))
              (declare (not safe))
              (foldr__0 __tmp215340 '() _%$%g208959209129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp215341 __tmp215339))
                                     (let* ((_%id209174%_ _%$%g208960209130%_)
                                            (_%args209183%_
                                             (let ((__tmp215342
                                                    (lambda (_%$%g209175209178%_
                                                             _%$%g209176209180%_)
                                                      (cons _%$%g209175209178%_
                                                            _%$%g209176209180%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215342
                                                '()
                                                _%$%g208959209129%_)))
                                            (_%body209192%_
                                             (let ((__tmp215343
                                                    (lambda (_%$%g209184209187%_
                                                             _%$%g209185209189%_)
                                                      (cons _%$%g209184209187%_
                                                            _%$%g209185209189%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp215343
                                                '()
                                                _%$%g208958209128%_)))
                                            (_%init209194%_
                                             (map list
                                                  _%args209183%_
                                                  _%rands208952%_)))
                                       (cons 'let
                                             (cons _%id209174%_
                                                   (cons _%init209194%_
                                                         _%body209192%_))))
                                     (let ((__tmp215344
                                            (let ((__tmp215345
                                                   (lambda (_%$%g209196209199%_
                                                            _%$%g209197209201%_)
                                                     (cons _%$%g209196209199%_
                                                           _%$%g209197209201%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215345
                                               '()
                                               _%$%g208959209129%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx208655%_
                                        __tmp215344
                                        _%rands208952%_)))))
                              (_%__kont214679214680%_
                               (lambda ()
                                 (cons _%rator208951%_ _%rands208952%_))))
                          (let ((_%__match214738214739%_
                                 (lambda (_%$%e208961209019%_
                                          _%$%hd208962209022%_
                                          _%$%tl208963209024%_
                                          _%$%e208964209027%_
                                          _%$%hd208965209030%_
                                          _%$%tl208966209032%_
                                          _%$%e208967209035%_
                                          _%$%hd208968209038%_
                                          _%$%tl208969209040%_
                                          _%$%e208970209043%_
                                          _%$%hd208971209046%_
                                          _%$%tl208972209048%_
                                          _%$%e208973209051%_
                                          _%$%hd208974209054%_
                                          _%$%tl208975209056%_
                                          _%$%e208976209059%_
                                          _%$%hd208977209062%_
                                          _%$%tl208978209064%_
                                          _%$%e208979209067%_
                                          _%$%hd208980209070%_
                                          _%$%tl208981209072%_
                                          _%__splice214675214676%_
                                          _%$%target208982209075%_
                                          _%$%tl208984209077%_)
                                   (letrec ((_%$%loop208985209080%_
                                             (lambda (_%$%hd208983209083%_
                                                      _%$%arg208989209085%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%hd208983209083%_))
                                                   (let ((_%$%e208986209087%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd208983209083%_))))
                                                     (let ((_%$%lp-tl208988209092%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e208986209087%_)))
                                                           (_%$%lp-hd208987209090%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e208986209087%_))))
                                                       (_%$%loop208985209080%_
                                                        _%$%lp-tl208988209092%_
                                                        (cons _%$%lp-hd208987209090%_
                                                              _%$%arg208989209085%_))))
                                                   (let ((_%$%arg208990209095%_
                                                          (reverse _%$%arg208989209085%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl208981209072%_))
                                                         (let ((_%__splice214677214678%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl208981209072%_
                           '0))))
                   (let ((_%$%tl208993209099%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice214677214678%_ '1)))
                         (_%$%target208991209097%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice214677214678%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl208993209099%_))
                         (letrec ((_%$%loop208994209102%_
                                   (lambda (_%$%hd208992209105%_
                                            _%$%body208998209107%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd208992209105%_))
                                         (let ((_%$%e208995209109%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd208992209105%_))))
                                           (let ((_%$%lp-tl208997209114%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e208995209109%_)))
                                                 (_%$%lp-hd208996209112%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e208995209109%_))))
                                             (_%$%loop208994209102%_
                                              _%$%lp-tl208997209114%_
                                              (cons _%$%lp-hd208996209112%_
                                                    _%$%body208998209107%_))))
                                         (let ((_%$%body208999209117%_
                                                (reverse _%$%body208998209107%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl208975209056%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl208969209040%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl208966209032%_))
                                                       (let ((_%$%e209000209119%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl208966209032%_))))
                 (let ((_%$%tl209002209124%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e209000209119%_)))
                       (_%$%hd209001209122%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e209000209119%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl209002209124%_))
                       (let ((_%$%g208957209127%_ _%$%hd209001209122%_)
                             (_%$%g208958209128%_ _%$%body208999209117%_)
                             (_%$%g208959209129%_ _%$%arg208990209095%_)
                             (_%$%g208960209130%_ _%$%hd208971209046%_))
                         (if (eq? _%$%g208960209130%_ _%$%g208957209127%_)
                             (_%__kont214673214674%_
                              _%$%g208957209127%_
                              _%$%g208958209128%_
                              _%$%g208959209129%_
                              _%$%g208960209130%_)
                             (_%__kont214679214680%_)))
                       (_%__kont214679214680%_))))
               (_%__kont214679214680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont214679214680%_))
                                               (_%__kont214679214680%_)))))))
                           (_%$%loop208994209102%_
                            _%$%target208991209097%_
                            '()))
                         (_%__kont214679214680%_))))
                 (_%__kont214679214680%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop208985209080%_
                                      _%$%target208982209075%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx214671214672%_))
                                (let ((_%$%e208961209019%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx214671214672%_))))
                                  (let ((_%$%tl208963209024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208961209019%_)))
                                        (_%$%hd208962209022%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208961209019%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd208962209022%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%$%hd208962209022%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl208963209024%_))
                                                (let ((_%$%e208964209027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl208963209024%_))))
                                                  (let ((_%$%tl208966209032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208964209027%_)))
                                                        (_%$%hd208965209030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208964209027%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd208965209030%_))
                                                        (let ((_%$%e208967209035%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd208965209030%_))))
                  (let ((_%$%tl208969209040%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208967209035%_)))
                        (_%$%hd208968209038%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208967209035%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd208968209038%_))
                        (let ((_%$%e208970209043%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd208968209038%_))))
                          (let ((_%$%tl208972209048%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208970209043%_)))
                                (_%$%hd208971209046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208970209043%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208972209048%_))
                                (let ((_%$%e208973209051%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208972209048%_))))
                                  (let ((_%$%tl208975209056%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208973209051%_)))
                                        (_%$%hd208974209054%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208973209051%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd208974209054%_))
                                        (let ((_%$%e208976209059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd208974209054%_))))
                                          (let ((_%$%tl208978209064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208976209059%_)))
                                                (_%$%hd208977209062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208976209059%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd208977209062%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%$%hd208977209062%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208978209064%_))
                                                        (let ((_%$%e208979209067%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208978209064%_))))
                  (let ((_%$%tl208981209072%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208979209067%_)))
                        (_%$%hd208980209070%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208979209067%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%hd208980209070%_))
                        (let ((_%__splice214675214676%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%$%hd208980209070%_
                                  '0))))
                          (let ((_%$%tl208984209077%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice214675214676%_ '1)))
                                (_%$%target208982209075%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice214675214676%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl208984209077%_))
                                (_%__match214738214739%_
                                 _%$%e208961209019%_
                                 _%$%hd208962209022%_
                                 _%$%tl208963209024%_
                                 _%$%e208964209027%_
                                 _%$%hd208965209030%_
                                 _%$%tl208966209032%_
                                 _%$%e208967209035%_
                                 _%$%hd208968209038%_
                                 _%$%tl208969209040%_
                                 _%$%e208970209043%_
                                 _%$%hd208971209046%_
                                 _%$%tl208972209048%_
                                 _%$%e208973209051%_
                                 _%$%hd208974209054%_
                                 _%$%tl208975209056%_
                                 _%$%e208976209059%_
                                 _%$%hd208977209062%_
                                 _%$%tl208978209064%_
                                 _%$%e208979209067%_
                                 _%$%hd208980209070%_
                                 _%$%tl208981209072%_
                                 _%__splice214675214676%_
                                 _%$%target208982209075%_
                                 _%$%tl208984209077%_)
                                (_%__kont214679214680%_))))
                        (_%__kont214679214680%_))))
                (_%__kont214679214680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214679214680%_))
                                                (_%__kont214679214680%_))))
                                        (_%__kont214679214680%_))))
                                (_%__kont214679214680%_))))
                        (_%__kont214679214680%_))))
                (_%__kont214679214680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont214679214680%_))
                                            (_%__kont214679214680%_))
                                        (_%__kont214679214680%_))))
                                (_%__kont214679214680%_)))))))))
          (let* ((_%$%g208659208682%_
                  (lambda (_%$%g208660208679%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208660208679%_))))
                 (_%$%g208658208941%_
                  (lambda (_%$%g208660208685%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208660208685%_))
                        (let ((_%$%e208663208687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208660208685%_))))
                          (let ((_%$%hd208664208690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208663208687%_)))
                                (_%$%tl208665208692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208663208687%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208665208692%_))
                                (let ((_%$%e208666208695%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208665208692%_))))
                                  (let ((_%$%hd208667208698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208666208695%_)))
                                        (_%$%tl208668208700%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208666208695%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl208668208700%_))
                                        (let ((_g215346_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%tl208668208700%_
                                                  '0))))
                                          (begin
                                            (let ((_g215347_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g215346_)
                                                         (##values-length
                                                          _g215346_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g215347_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g215347_)))
                                            (let ((_%$%target208669208703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g215346_
                                                      0)))
                                                  (_%$%tl208671208705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g215346_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl208671208705%_))
                                                  (letrec ((_%$%loop208672208708%_
                                                            (lambda (_%$%hd208670208711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand208676208713%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd208670208711%_))
                          (let ((_%$%e208673208715%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd208670208711%_))))
                            (let ((_%$%lp-hd208674208718%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208673208715%_)))
                                  (_%$%lp-tl208675208720%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208673208715%_))))
                              (_%$%loop208672208708%_
                               _%$%lp-tl208675208720%_
                               (cons _%$%lp-hd208674208718%_
                                     _%$%rand208676208713%_))))
                          (let ((_%$%rand208677208723%_
                                 (reverse _%$%rand208676208713%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call208657%_
                                 _%$%hd208667208698%_
                                 (let ((__tmp215348
                                        (lambda (_%$%g208743208746%_
                                                 _%$%g208744208748%_)
                                          (cons _%$%g208743208746%_
                                                _%$%g208744208748%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp215348
                                    '()
                                    _%$%rand208677208723%_)))
                                (let* ((_%__stx214787214788%_
                                        _%$%hd208667208698%_)
                                       (_%$%g208752208764%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx214787214788%_)))))
                                  (let ((_%__kont214789214790%_
                                         (lambda ()
                                           (let ((_%f208801%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self208654%_
                                                     _%$%hd208667208698%_))))
                                             (if (and (let ((__tmp215349
                                                             (symbol->string
                                                              _%f208801%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp215349))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f208801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp208803%_ ((_%rest208806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp215351
                                             (lambda (_%$%g208923208926%_
                                                      _%$%g208924208928%_)
                                               (cons _%$%g208923208926%_
                                                     _%$%g208924208928%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp215351
                                         '()
                                         _%$%rand208677208723%_))))
                            (_%bind208808%_ '())
                            (_%args208809%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%rest208810208818%_
                                                           _%rest208806%_)
                                                          (_%$%else208812208826%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind208808%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f208801%_ _%args208809%_)
                                             '()))))))
                  (_%$%K208814208912%_
                   (lambda (_%rest208829%_ _%e208830%_)
                     (let* ((_%__stx214741214742%_ _%e208830%_)
                            (_%$%g208835208853%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx214741214742%_)))))
                       (let ((_%__kont214743214744%_
                              (lambda ()
                                (_%lp208803%_
                                 _%rest208829%_
                                 _%bind208808%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e208830%_))
                                       _%args208809%_))))
                             (_%__kont214745214746%_
                              (lambda ()
                                (_%lp208803%_
                                 _%rest208829%_
                                 _%bind208808%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e208830%_))
                                       _%args208809%_))))
                             (_%__kont214747214748%_
                              (lambda ()
                                (let ((_%tmp208860%_
                                       (let ((__tmp215350
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp215350))))
                                  (_%lp208803%_
                                   _%rest208829%_
                                   (cons (cons _%tmp208860%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e208830%_))
                                                     '()))
                                         _%bind208808%_)
                                   (cons _%tmp208860%_ _%args208809%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx214741214742%_))
                             (let ((_%$%e208837208891%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx214741214742%_))))
                               (let ((_%$%tl208839208896%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e208837208891%_)))
                                     (_%$%hd208838208894%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e208837208891%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd208838208894%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd208838208894%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl208839208896%_))
                                             (let ((_%$%e208840208899%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl208839208896%_))))
                                               (let ((_%$%tl208842208904%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e208840208899%_)))
                                                     (_%$%hd208841208902%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e208840208899%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl208842208904%_))
                                                     (_%__kont214743214744%_)
                                                     (_%__kont214747214748%_))))
                                             (_%__kont214747214748%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%$%hd208838208894%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl208839208896%_))
                                                 (let ((_%$%e208846208876%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl208839208896%_))))
                                                   (let ((_%$%tl208848208881%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e208846208876%_)))
                                                         (_%$%hd208847208879%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e208846208876%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl208848208881%_))
                                                         (_%__kont214745214746%_)
                                                         (_%__kont214747214748%_))))
                                                 (_%__kont214747214748%_))
                                             (_%__kont214747214748%_)))
                                     (_%__kont214747214748%_))))
                             (_%__kont214747214748%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%$%rest208810208818%_)
                                                         (let ((_%$%hd208815208915%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%rest208810208818%_)))
                       (_%$%tl208816208917%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%rest208810208818%_))))
                   (let* ((_%e208920%_ _%$%hd208815208915%_)
                          (_%rest208922%_ _%$%tl208816208917%_))
                     (_%$%K208814208912%_ _%rest208922%_ _%e208920%_)))
                 (_%$%else208812208826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call208657%_
                                                  _%$%hd208667208698%_
                                                  (let ((__tmp215352
                                                         (lambda (_%$%g208930208933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g208931208935%_)
                   (cons _%$%g208930208933%_ _%$%g208931208935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp215352
                                                     '()
                                                     _%$%rand208677208723%_)))))))
                                        (_%__kont214791214792%_
                                         (lambda ()
                                           (_%compile-call208657%_
                                            _%$%hd208667208698%_
                                            (let ((__tmp215353
                                                   (lambda (_%$%g208770208773%_
                                                            _%$%g208771208775%_)
                                                     (cons _%$%g208770208773%_
                                                           _%$%g208771208775%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp215353
                                               '()
                                               _%$%rand208677208723%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx214787214788%_))
                                        (let ((_%$%e208754208783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx214787214788%_))))
                                          (let ((_%$%tl208756208788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208754208783%_)))
                                                (_%$%hd208755208786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208754208783%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd208755208786%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd208755208786%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl208756208788%_))
                                                        (let ((_%$%e208757208791%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl208756208788%_))))
                  (let ((_%$%tl208759208796%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e208757208791%_)))
                        (_%$%hd208758208794%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e208757208791%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl208759208796%_))
                        (_%__kont214789214790%_)
                        (_%__kont214791214792%_))))
                (_%__kont214791214792%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont214791214792%_))
                                                (_%__kont214791214792%_))))
                                        (_%__kont214791214792%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop208672208708%_
                                                     _%$%target208669208703%_
                                                     '()))
                                                  (_%$%g208659208682%_
                                                   _%$%g208660208685%_)))))
                                        (_%$%g208659208682%_
                                         _%$%g208660208685%_))))
                                (_%$%g208659208682%_ _%$%g208660208685%_))))
                        (_%$%g208659208682%_ _%$%g208660208685%_)))))
            (_%$%g208658208941%_ _%stx208655%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self208399%_ _%stx208400%_)
        (let* ((_%__stx214859214860%_ _%stx208400%_)
               (_%$%g208403208432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx214859214860%_)))))
          (let ((_%__kont214861214862%_
                 (lambda (_%$%g208405208498%_ _%$%g208406208499%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self208399%_
                        _%stx208400%_)
                       (let ((_%f208521%_
                              (let ((__tmp215354
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%$%g208406208499%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self208399%_
                                 __tmp215354))))
                         (let _%lp208523%_ ((_%rest208526%_
                                             (reverse (let ((__tmp215356
                                                             (lambda (_%$%g208643208646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g208644208648%_)
                       (cons _%$%g208643208646%_ _%$%g208644208648%_))))
                (declare (not safe))
                (foldr__0 __tmp215356 '() _%$%g208405208498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind208528%_ '())
                                            (_%args208529%_ '()))
                           (let* ((_%$%rest208530208538%_ _%rest208526%_)
                                  (_%$%else208532208546%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind208528%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f208521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args208529%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%K208534208632%_
                                   (lambda (_%rest208549%_ _%e208550%_)
                                     (let* ((_%__stx214813214814%_ _%e208550%_)
                                            (_%$%g208555208573%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx214813214814%_)))))
                                       (let ((_%__kont214815214816%_
                                              (lambda ()
                                                (_%lp208523%_
                                                 _%rest208549%_
                                                 _%bind208528%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e208550%_))
                                                       _%args208529%_))))
                                             (_%__kont214817214818%_
                                              (lambda ()
                                                (_%lp208523%_
                                                 _%rest208549%_
                                                 _%bind208528%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e208550%_))
                                                       _%args208529%_))))
                                             (_%__kont214819214820%_
                                              (lambda ()
                                                (let ((_%tmp208580%_
                                                       (let ((__tmp215355
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp215355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp208523%_
                                                   _%rest208549%_
                                                   (cons (cons _%tmp208580%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e208550%_))
                             '()))
                 _%bind208528%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp208580%_
                                                         _%args208529%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx214813214814%_))
                                             (let ((_%$%e208557208611%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx214813214814%_))))
                                               (let ((_%$%tl208559208616%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e208557208611%_)))
                                                     (_%$%hd208558208614%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e208557208611%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd208558208614%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd208558208614%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl208559208616%_))
                     (let ((_%$%e208560208619%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl208559208616%_))))
                       (let ((_%$%tl208562208624%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e208560208619%_)))
                             (_%$%hd208561208622%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e208560208619%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%$%tl208562208624%_))
                             (_%__kont214815214816%_)
                             (_%__kont214819214820%_))))
                     (_%__kont214819214820%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%$%hd208558208614%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl208559208616%_))
                         (let ((_%$%e208566208596%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl208559208616%_))))
                           (let ((_%$%tl208568208601%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e208566208596%_)))
                                 (_%$%hd208567208599%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e208566208596%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl208568208601%_))
                                 (_%__kont214817214818%_)
                                 (_%__kont214819214820%_))))
                         (_%__kont214819214820%_))
                     (_%__kont214819214820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont214819214820%_))))
                                             (_%__kont214819214820%_)))))))
                             (if (pair? _%$%rest208530208538%_)
                                 (let ((_%$%hd208535208635%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest208530208538%_)))
                                       (_%$%tl208536208637%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest208530208538%_))))
                                   (let* ((_%e208640%_ _%$%hd208535208635%_)
                                          (_%rest208642%_
                                           _%$%tl208536208637%_))
                                     (_%$%K208534208632%_
                                      _%rest208642%_
                                      _%e208640%_)))
                                 (_%$%else208532208546%_))))))))
                (_%__kont214865214866%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self208399%_ _%stx208400%_))))
            (let ((_%__match214904214905%_
                   (lambda (_%$%e208407208444%_
                            _%$%hd208408208447%_
                            _%$%tl208409208449%_
                            _%$%e208410208452%_
                            _%$%hd208411208455%_
                            _%$%tl208412208457%_
                            _%$%e208413208460%_
                            _%$%hd208414208463%_
                            _%$%tl208415208465%_
                            _%$%e208416208468%_
                            _%$%hd208417208471%_
                            _%$%tl208418208473%_
                            _%__splice214863214864%_
                            _%$%target208419208476%_
                            _%$%tl208421208478%_)
                     (letrec ((_%$%loop208422208481%_
                               (lambda (_%$%hd208420208484%_
                                        _%$%rand208426208486%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd208420208484%_))
                                     (let ((_%$%e208423208488%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd208420208484%_))))
                                       (let ((_%$%lp-tl208425208493%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e208423208488%_)))
                                             (_%$%lp-hd208424208491%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e208423208488%_))))
                                         (_%$%loop208422208481%_
                                          _%$%lp-tl208425208493%_
                                          (cons _%$%lp-hd208424208491%_
                                                _%$%rand208426208486%_))))
                                     (let ((_%$%rand208427208496%_
                                            (reverse _%$%rand208426208486%_)))
                                       (_%__kont214861214862%_
                                        _%$%rand208427208496%_
                                        _%$%hd208417208471%_))))))
                       (_%$%loop208422208481%_
                        _%$%target208419208476%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx214859214860%_))
                  (let ((_%$%e208407208444%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx214859214860%_))))
                    (let ((_%$%tl208409208449%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e208407208444%_)))
                          (_%$%hd208408208447%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e208407208444%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl208409208449%_))
                          (let ((_%$%e208410208452%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl208409208449%_))))
                            (let ((_%$%tl208412208457%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e208410208452%_)))
                                  (_%$%hd208411208455%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e208410208452%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd208411208455%_))
                                  (let ((_%$%e208413208460%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd208411208455%_))))
                                    (let ((_%$%tl208415208465%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e208413208460%_)))
                                          (_%$%hd208414208463%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e208413208460%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd208414208463%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd208414208463%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208415208465%_))
                                                  (let ((_%$%e208416208468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208415208465%_))))
                                                    (let ((_%$%tl208418208473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208416208468%_)))
                                                          (_%$%hd208417208471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208416208468%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208418208473%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl208412208457%_))
                      (let ((_%__splice214863214864%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl208412208457%_
                                '0))))
                        (let ((_%$%tl208421208478%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214863214864%_ '1)))
                              (_%$%target208419208476%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice214863214864%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl208421208478%_))
                              (_%__match214904214905%_
                               _%$%e208407208444%_
                               _%$%hd208408208447%_
                               _%$%tl208409208449%_
                               _%$%e208410208452%_
                               _%$%hd208411208455%_
                               _%$%tl208412208457%_
                               _%$%e208413208460%_
                               _%$%hd208414208463%_
                               _%$%tl208415208465%_
                               _%$%e208416208468%_
                               _%$%hd208417208471%_
                               _%$%tl208418208473%_
                               _%__splice214863214864%_
                               _%$%target208419208476%_
                               _%$%tl208421208478%_)
                              (_%__kont214865214866%_))))
                      (_%__kont214865214866%_))
                  (_%__kont214865214866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont214865214866%_))
                                              (_%__kont214865214866%_))
                                          (_%__kont214865214866%_))))
                                  (_%__kont214865214866%_))))
                          (_%__kont214865214866%_))))
                  (_%__kont214865214866%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self208211%_ _%stx208212%_)
        (letrec ((_%simplify208214%_
                  (lambda (_%code208299%_)
                    (let* ((_%$%code208300208318%_ _%code208299%_)
                           (_%$%else208302208326%_ (lambda () _%code208299%_))
                           (_%$%K208304208362%_
                            (lambda (_%expr208329%_ _%test208330%_)
                              (let* ((_%$%expr208331208339%_ _%expr208329%_)
                                     (_%$%else208333208347%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test208330%_
                                                    (cons _%expr208329%_
                                                          '())))))
                                     (_%$%K208335208352%_
                                      (lambda (_%exprs208350%_)
                                        (cons 'and
                                              (cons _%test208330%_
                                                    _%exprs208350%_)))))
                                (if (pair? _%$%expr208331208339%_)
                                    (let ((_%$%hd208336208355%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr208331208339%_)))
                                          (_%$%tl208337208357%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr208331208339%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd208336208355%_ 'and))
                                          (let ((_%exprs208360%_
                                                 _%$%tl208337208357%_))
                                            (_%$%K208335208352%_
                                             _%exprs208360%_))
                                          (_%$%else208333208347%_)))
                                    (_%$%else208333208347%_))))))
                      (if (pair? _%$%code208300208318%_)
                          (let ((_%$%hd208305208365%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code208300208318%_)))
                                (_%$%tl208306208367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code208300208318%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd208305208365%_ 'if))
                                (if (pair? _%$%tl208306208367%_)
                                    (let ((_%$%hd208307208370%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl208306208367%_)))
                                          (_%$%tl208308208372%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl208306208367%_))))
                                      (let ((_%test208375%_
                                             _%$%hd208307208370%_))
                                        (if (pair? _%$%tl208308208372%_)
                                            (let ((_%$%hd208309208377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl208308208372%_)))
                                                  (_%$%tl208310208379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl208308208372%_))))
                                              (let ((_%expr208382%_
                                                     _%$%hd208309208377%_))
                                                (if (pair? _%$%tl208310208379%_)
                                                    (let ((_%$%hd208311208384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl208310208379%_)))
                                                          (_%$%tl208312208386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl208310208379%_))))
                                                      (if (pair? _%$%hd208311208384%_)
                                                          (let ((_%$%hd208313208389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd208311208384%_)))
                        (_%$%tl208314208391%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd208311208384%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd208313208389%_ 'quote))
                        (if (pair? _%$%tl208314208391%_)
                            (let ((_%$%hd208315208394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl208314208391%_)))
                                  (_%$%tl208316208396%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl208314208391%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd208315208394%_ '#f))
                                  (if (null? _%$%tl208316208396%_)
                                      (if (null? _%$%tl208312208386%_)
                                          (_%$%K208304208362%_
                                           _%expr208382%_
                                           _%test208375%_)
                                          (_%$%else208302208326%_))
                                      (_%$%else208302208326%_))
                                  (_%$%else208302208326%_)))
                            (_%$%else208302208326%_))
                        (_%$%else208302208326%_)))
                  (_%$%else208302208326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else208302208326%_))))
                                            (_%$%else208302208326%_))))
                                    (_%$%else208302208326%_))
                                (_%$%else208302208326%_)))
                          (_%$%else208302208326%_))))))
          (let* ((_%$%g208216208237%_
                  (lambda (_%$%g208217208234%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g208217208234%_))))
                 (_%$%g208215208296%_
                  (lambda (_%$%g208217208240%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g208217208240%_))
                        (let ((_%$%e208221208242%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g208217208240%_))))
                          (let ((_%$%hd208222208245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e208221208242%_)))
                                (_%$%tl208223208247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e208221208242%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl208223208247%_))
                                (let ((_%$%e208224208250%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl208223208247%_))))
                                  (let ((_%$%hd208225208253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e208224208250%_)))
                                        (_%$%tl208226208255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e208224208250%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl208226208255%_))
                                        (let ((_%$%e208227208258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl208226208255%_))))
                                          (let ((_%$%hd208228208261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e208227208258%_)))
                                                (_%$%tl208229208263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e208227208258%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl208229208263%_))
                                                (let ((_%$%e208230208266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl208229208263%_))))
                                                  (let ((_%$%hd208231208269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e208230208266%_)))
                                                        (_%$%tl208232208271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e208230208266%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl208232208271%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify208214%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self208211%_
                                    _%$%hd208225208253%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self208211%_
                                          _%$%hd208228208261%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self208211%_
                                                _%$%hd208231208269%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp215357
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self208211%_
                                            _%$%hd208225208253%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp215357
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self208211%_
                                         _%$%hd208228208261%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self208211%_
                                               _%$%hd208231208269%_))
                                            '())))))
                (_%$%g208216208237%_ _%$%g208217208240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g208216208237%_
                                                 _%$%g208217208240%_))))
                                        (_%$%g208216208237%_
                                         _%$%g208217208240%_))))
                                (_%$%g208216208237%_ _%$%g208217208240%_))))
                        (_%$%g208216208237%_ _%$%g208217208240%_)))))
            (_%$%g208215208296%_ _%stx208212%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self208159%_ _%stx208160%_)
        (let* ((_%$%g208162208175%_
                (lambda (_%$%g208163208172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208163208172%_))))
               (_%$%g208161208208%_
                (lambda (_%$%g208163208178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208163208178%_))
                      (let ((_%$%e208165208180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208163208178%_))))
                        (let ((_%$%hd208166208183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208165208180%_)))
                              (_%$%tl208167208185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208165208180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208167208185%_))
                              (let ((_%$%e208168208188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208167208185%_))))
                                (let ((_%$%hd208169208191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208168208188%_)))
                                      (_%$%tl208170208193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208168208188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl208170208193%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%$%hd208169208191%_))
                                      (_%$%g208162208175%_
                                       _%$%g208163208178%_))))
                              (_%$%g208162208175%_ _%$%g208163208178%_))))
                      (_%$%g208162208175%_ _%$%g208163208178%_)))))
          (_%$%g208161208208%_ _%stx208160%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self208091%_ _%stx208092%_)
        (let* ((_%$%g208094208111%_
                (lambda (_%$%g208095208108%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g208095208108%_))))
               (_%$%g208093208156%_
                (lambda (_%$%g208095208114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g208095208114%_))
                      (let ((_%$%e208098208116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g208095208114%_))))
                        (let ((_%$%hd208099208119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e208098208116%_)))
                              (_%$%tl208100208121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e208098208116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl208100208121%_))
                              (let ((_%$%e208101208124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl208100208121%_))))
                                (let ((_%$%hd208102208127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208101208124%_)))
                                      (_%$%tl208103208129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208101208124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl208103208129%_))
                                      (let ((_%$%e208104208132%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl208103208129%_))))
                                        (let ((_%$%hd208105208135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e208104208132%_)))
                                              (_%$%tl208106208137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e208104208132%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl208106208137%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%$%hd208102208127%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self208091%_
                           _%$%hd208105208135%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g208094208111%_
                                               _%$%g208095208114%_))))
                                      (_%$%g208094208111%_
                                       _%$%g208095208114%_))))
                              (_%$%g208094208111%_ _%$%g208095208114%_))))
                      (_%$%g208094208111%_ _%$%g208095208114%_)))))
          (_%$%g208093208156%_ _%stx208092%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self207902%_ _%stx207903%_)
        (let* ((_%$%g207905207922%_
                (lambda (_%$%g207906207919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207906207919%_))))
               (_%$%g207904208088%_
                (lambda (_%$%g207906207925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207906207925%_))
                      (let ((_%$%e207909207927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207906207925%_))))
                        (let ((_%$%hd207910207930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207909207927%_)))
                              (_%$%tl207911207932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207909207927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207911207932%_))
                              (let ((_%$%e207912207935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207911207932%_))))
                                (let ((_%$%hd207913207938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207912207935%_)))
                                      (_%$%tl207914207940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207912207935%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207914207940%_))
                                      (let ((_%$%e207915207943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207914207940%_))))
                                        (let ((_%$%hd207916207946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207915207943%_)))
                                              (_%$%tl207917207948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207915207943%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207917207948%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self207902%_ _%$%hd207916207946%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self207902%_
                               _%$%hd207913207938%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp207967%_ ((_%rest207970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd207913207938%_
                                    (cons _%$%hd207916207946%_ '())))
                             (_%bind207972%_ '())
                             (_%args207973%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest207974207982%_
                                                            _%rest207970%_)
                                                           (_%$%else207976207990%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind207972%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args207973%_)
                                              '()))))))
                   (_%$%K207978208076%_
                    (lambda (_%rest207993%_ _%e207994%_)
                      (let* ((_%__stx214907214908%_ _%e207994%_)
                             (_%$%g207999208017%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214907214908%_)))))
                        (let ((_%__kont214909214910%_
                               (lambda ()
                                 (_%lp207967%_
                                  _%rest207993%_
                                  _%bind207972%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207994%_))
                                        _%args207973%_))))
                              (_%__kont214911214912%_
                               (lambda ()
                                 (_%lp207967%_
                                  _%rest207993%_
                                  _%bind207972%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207994%_))
                                        _%args207973%_))))
                              (_%__kont214913214914%_
                               (lambda ()
                                 (let ((_%tmp208024%_
                                        (let ((__tmp215358
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp215358))))
                                   (_%lp207967%_
                                    _%rest207993%_
                                    (cons (cons _%tmp208024%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e207994%_))
                                                      '()))
                                          _%bind207972%_)
                                    (cons _%tmp208024%_ _%args207973%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214907214908%_))
                              (let ((_%$%e208001208055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214907214908%_))))
                                (let ((_%$%tl208003208060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e208001208055%_)))
                                      (_%$%hd208002208058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e208001208055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd208002208058%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd208002208058%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl208003208060%_))
                                              (let ((_%$%e208004208063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl208003208060%_))))
                                                (let ((_%$%tl208006208068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e208004208063%_)))
                                                      (_%$%hd208005208066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e208004208063%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl208006208068%_))
                                                      (_%__kont214909214910%_)
                                                      (_%__kont214913214914%_))))
                                              (_%__kont214913214914%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd208002208058%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl208003208060%_))
                                                  (let ((_%$%e208010208040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl208003208060%_))))
                                                    (let ((_%$%tl208012208045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e208010208040%_)))
                                                          (_%$%hd208011208043%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e208010208040%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl208012208045%_))
                                                          (_%__kont214911214912%_)
                                                          (_%__kont214913214914%_))))
                                                  (_%__kont214913214914%_))
                                              (_%__kont214913214914%_)))
                                      (_%__kont214913214914%_))))
                              (_%__kont214913214914%_)))))))
              (if (pair? _%$%rest207974207982%_)
                  (let ((_%$%hd207979208079%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest207974207982%_)))
                        (_%$%tl207980208081%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest207974207982%_))))
                    (let* ((_%e208084%_ _%$%hd207979208079%_)
                           (_%rest208086%_ _%$%tl207980208081%_))
                      (_%$%K207978208076%_ _%rest208086%_ _%e208084%_)))
                  (_%$%else207976207990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207905207922%_
                                               _%$%g207906207925%_))))
                                      (_%$%g207905207922%_
                                       _%$%g207906207925%_))))
                              (_%$%g207905207922%_ _%$%g207906207925%_))))
                      (_%$%g207905207922%_ _%$%g207906207925%_)))))
          (_%$%g207904208088%_ _%stx207903%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self207713%_ _%stx207714%_)
        (let* ((_%$%g207716207733%_
                (lambda (_%$%g207717207730%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207717207730%_))))
               (_%$%g207715207899%_
                (lambda (_%$%g207717207736%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207717207736%_))
                      (let ((_%$%e207720207738%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207717207736%_))))
                        (let ((_%$%hd207721207741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207720207738%_)))
                              (_%$%tl207722207743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207720207738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207722207743%_))
                              (let ((_%$%e207723207746%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207722207743%_))))
                                (let ((_%$%hd207724207749%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207723207746%_)))
                                      (_%$%tl207725207751%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207723207746%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207725207751%_))
                                      (let ((_%$%e207726207754%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207725207751%_))))
                                        (let ((_%$%hd207727207757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207726207754%_)))
                                              (_%$%tl207728207759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207726207754%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl207728207759%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self207713%_ _%$%hd207727207757%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self207713%_
                               _%$%hd207724207749%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp207778%_ ((_%rest207781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%hd207724207749%_
                                    (cons _%$%hd207727207757%_ '())))
                             (_%bind207783%_ '())
                             (_%args207784%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%rest207785207793%_
                                                            _%rest207781%_)
                                                           (_%$%else207787207801%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind207783%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args207784%_)
                                              '()))))))
                   (_%$%K207789207887%_
                    (lambda (_%rest207804%_ _%e207805%_)
                      (let* ((_%__stx214953214954%_ _%e207805%_)
                             (_%$%g207810207828%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx214953214954%_)))))
                        (let ((_%__kont214955214956%_
                               (lambda ()
                                 (_%lp207778%_
                                  _%rest207804%_
                                  _%bind207783%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207805%_))
                                        _%args207784%_))))
                              (_%__kont214957214958%_
                               (lambda ()
                                 (_%lp207778%_
                                  _%rest207804%_
                                  _%bind207783%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e207805%_))
                                        _%args207784%_))))
                              (_%__kont214959214960%_
                               (lambda ()
                                 (let ((_%tmp207835%_
                                        (let ((__tmp215359
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp215359))))
                                   (_%lp207778%_
                                    _%rest207804%_
                                    (cons (cons _%tmp207835%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e207805%_))
                                                      '()))
                                          _%bind207783%_)
                                    (cons _%tmp207835%_ _%args207784%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx214953214954%_))
                              (let ((_%$%e207812207866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx214953214954%_))))
                                (let ((_%$%tl207814207871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207812207866%_)))
                                      (_%$%hd207813207869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207812207866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd207813207869%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd207813207869%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207814207871%_))
                                              (let ((_%$%e207815207874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207814207871%_))))
                                                (let ((_%$%tl207817207879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207815207874%_)))
                                                      (_%$%hd207816207877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207815207874%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207817207879%_))
                                                      (_%__kont214955214956%_)
                                                      (_%__kont214959214960%_))))
                                              (_%__kont214959214960%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%$%hd207813207869%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl207814207871%_))
                                                  (let ((_%$%e207821207851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl207814207871%_))))
                                                    (let ((_%$%tl207823207856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e207821207851%_)))
                                                          (_%$%hd207822207854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e207821207851%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl207823207856%_))
                                                          (_%__kont214957214958%_)
                                                          (_%__kont214959214960%_))))
                                                  (_%__kont214959214960%_))
                                              (_%__kont214959214960%_)))
                                      (_%__kont214959214960%_))))
                              (_%__kont214959214960%_)))))))
              (if (pair? _%$%rest207785207793%_)
                  (let ((_%$%hd207790207890%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest207785207793%_)))
                        (_%$%tl207791207892%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest207785207793%_))))
                    (let* ((_%e207895%_ _%$%hd207790207890%_)
                           (_%rest207897%_ _%$%tl207791207892%_))
                      (_%$%K207789207887%_ _%rest207897%_ _%e207895%_)))
                  (_%$%else207787207801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207716207733%_
                                               _%$%g207717207736%_))))
                                      (_%$%g207716207733%_
                                       _%$%g207717207736%_))))
                              (_%$%g207716207733%_ _%$%g207717207736%_))))
                      (_%$%g207716207733%_ _%$%g207717207736%_)))))
          (_%$%g207715207899%_ _%stx207714%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self207629%_ _%stx207630%_)
        (let* ((_%$%g207632207653%_
                (lambda (_%$%g207633207650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207633207650%_))))
               (_%$%g207631207710%_
                (lambda (_%$%g207633207656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207633207656%_))
                      (let ((_%$%e207637207658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207633207656%_))))
                        (let ((_%$%hd207638207661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207637207658%_)))
                              (_%$%tl207639207663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207637207658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207639207663%_))
                              (let ((_%$%e207640207666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207639207663%_))))
                                (let ((_%$%hd207641207669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207640207666%_)))
                                      (_%$%tl207642207671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207640207666%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207642207671%_))
                                      (let ((_%$%e207643207674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207642207671%_))))
                                        (let ((_%$%hd207644207677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207643207674%_)))
                                              (_%$%tl207645207679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207643207674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207645207679%_))
                                              (let ((_%$%e207646207682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207645207679%_))))
                                                (let ((_%$%hd207647207685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207646207682%_)))
                                                      (_%$%tl207648207687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207646207682%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207648207687%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self207629%_
                             _%$%hd207647207685%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self207629%_
                                   _%$%hd207644207677%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207629%_
                                         _%$%hd207641207669%_))
                                      (cons ''#f '())))))
              (_%$%g207632207653%_ _%$%g207633207656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207632207653%_
                                               _%$%g207633207656%_))))
                                      (_%$%g207632207653%_
                                       _%$%g207633207656%_))))
                              (_%$%g207632207653%_ _%$%g207633207656%_))))
                      (_%$%g207632207653%_ _%$%g207633207656%_)))))
          (_%$%g207631207710%_ _%stx207630%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self207529%_ _%stx207530%_)
        (let* ((_%$%g207532207557%_
                (lambda (_%$%g207533207554%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207533207554%_))))
               (_%$%g207531207626%_
                (lambda (_%$%g207533207560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207533207560%_))
                      (let ((_%$%e207538207562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207533207560%_))))
                        (let ((_%$%hd207539207565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207538207562%_)))
                              (_%$%tl207540207567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207538207562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207540207567%_))
                              (let ((_%$%e207541207570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207540207567%_))))
                                (let ((_%$%hd207542207573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207541207570%_)))
                                      (_%$%tl207543207575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207541207570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207543207575%_))
                                      (let ((_%$%e207544207578%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207543207575%_))))
                                        (let ((_%$%hd207545207581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207544207578%_)))
                                              (_%$%tl207546207583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207544207578%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207546207583%_))
                                              (let ((_%$%e207547207586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207546207583%_))))
                                                (let ((_%$%hd207548207589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207547207586%_)))
                                                      (_%$%tl207549207591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207547207586%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207549207591%_))
                                                      (let ((_%$%e207550207594%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207549207591%_))))
                (let ((_%$%hd207551207597%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207550207594%_)))
                      (_%$%tl207552207599%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207550207594%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207552207599%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self207529%_
                                     _%$%hd207548207589%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self207529%_
                                           _%$%hd207551207597%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self207529%_
                                                 _%$%hd207545207581%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207529%_
                                                       _%$%hd207542207573%_))
                                                    (cons ''#f '()))))))
                      (_%$%g207532207557%_ _%$%g207533207560%_))))
              (_%$%g207532207557%_ _%$%g207533207560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207532207557%_
                                               _%$%g207533207560%_))))
                                      (_%$%g207532207557%_
                                       _%$%g207533207560%_))))
                              (_%$%g207532207557%_ _%$%g207533207560%_))))
                      (_%$%g207532207557%_ _%$%g207533207560%_)))))
          (_%$%g207531207626%_ _%stx207530%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self207445%_ _%stx207446%_)
        (let* ((_%$%g207448207469%_
                (lambda (_%$%g207449207466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207449207466%_))))
               (_%$%g207447207526%_
                (lambda (_%$%g207449207472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207449207472%_))
                      (let ((_%$%e207453207474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207449207472%_))))
                        (let ((_%$%hd207454207477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207453207474%_)))
                              (_%$%tl207455207479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207453207474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207455207479%_))
                              (let ((_%$%e207456207482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207455207479%_))))
                                (let ((_%$%hd207457207485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207456207482%_)))
                                      (_%$%tl207458207487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207456207482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207458207487%_))
                                      (let ((_%$%e207459207490%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207458207487%_))))
                                        (let ((_%$%hd207460207493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207459207490%_)))
                                              (_%$%tl207461207495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207459207490%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207461207495%_))
                                              (let ((_%$%e207462207498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207461207495%_))))
                                                (let ((_%$%hd207463207501%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207462207498%_)))
                                                      (_%$%tl207464207503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207462207498%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207464207503%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self207445%_
                             _%$%hd207463207501%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self207445%_
                                   _%$%hd207460207493%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self207445%_
                                         _%$%hd207457207485%_))
                                      (cons ''#f '())))))
              (_%$%g207448207469%_ _%$%g207449207472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207448207469%_
                                               _%$%g207449207472%_))))
                                      (_%$%g207448207469%_
                                       _%$%g207449207472%_))))
                              (_%$%g207448207469%_ _%$%g207449207472%_))))
                      (_%$%g207448207469%_ _%$%g207449207472%_)))))
          (_%$%g207447207526%_ _%stx207446%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self207345%_ _%stx207346%_)
        (let* ((_%$%g207348207373%_
                (lambda (_%$%g207349207370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207349207370%_))))
               (_%$%g207347207442%_
                (lambda (_%$%g207349207376%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207349207376%_))
                      (let ((_%$%e207354207378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207349207376%_))))
                        (let ((_%$%hd207355207381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207354207378%_)))
                              (_%$%tl207356207383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207354207378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207356207383%_))
                              (let ((_%$%e207357207386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207356207383%_))))
                                (let ((_%$%hd207358207389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207357207386%_)))
                                      (_%$%tl207359207391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207357207386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207359207391%_))
                                      (let ((_%$%e207360207394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207359207391%_))))
                                        (let ((_%$%hd207361207397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207360207394%_)))
                                              (_%$%tl207362207399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207360207394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207362207399%_))
                                              (let ((_%$%e207363207402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207362207399%_))))
                                                (let ((_%$%hd207364207405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207363207402%_)))
                                                      (_%$%tl207365207407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207363207402%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207365207407%_))
                                                      (let ((_%$%e207366207410%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207365207407%_))))
                (let ((_%$%hd207367207413%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207366207410%_)))
                      (_%$%tl207368207415%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207366207410%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207368207415%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self207345%_
                                     _%$%hd207364207405%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self207345%_
                                           _%$%hd207367207413%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self207345%_
                                                 _%$%hd207361207397%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self207345%_
                                                       _%$%hd207358207389%_))
                                                    (cons ''#f '()))))))
                      (_%$%g207348207373%_ _%$%g207349207376%_))))
              (_%$%g207348207373%_ _%$%g207349207376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207348207373%_
                                               _%$%g207349207376%_))))
                                      (_%$%g207348207373%_
                                       _%$%g207349207376%_))))
                              (_%$%g207348207373%_ _%$%g207349207376%_))))
                      (_%$%g207348207373%_ _%$%g207349207376%_)))))
          (_%$%g207347207442%_ _%stx207346%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self207140%_ _%stx207141%_)
        (let* ((_%$%g207143207164%_
                (lambda (_%$%g207144207161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g207144207161%_))))
               (_%$%g207142207342%_
                (lambda (_%$%g207144207167%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g207144207167%_))
                      (let ((_%$%e207148207169%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g207144207167%_))))
                        (let ((_%$%hd207149207172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207148207169%_)))
                              (_%$%tl207150207174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207148207169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl207150207174%_))
                              (let ((_%$%e207151207177%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl207150207174%_))))
                                (let ((_%$%hd207152207180%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e207151207177%_)))
                                      (_%$%tl207153207182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e207151207177%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl207153207182%_))
                                      (let ((_%$%e207154207185%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl207153207182%_))))
                                        (let ((_%$%hd207155207188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207154207185%_)))
                                              (_%$%tl207156207190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207154207185%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl207156207190%_))
                                              (let ((_%$%e207157207193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl207156207190%_))))
                                                (let ((_%$%hd207158207196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207157207193%_)))
                                                      (_%$%tl207159207198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207157207193%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl207159207198%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207140%_
                                 _%$%hd207158207196%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self207140%_
                                       _%$%hd207155207188%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp207221%_ ((_%rest207224%_
                                      (cons _%$%hd207155207188%_
                                            (cons _%$%hd207158207196%_ '())))
                                     (_%bind207226%_ '())
                                     (_%args207227%_ '()))
                    (let* ((_%$%rest207228207236%_ _%rest207224%_)
                           (_%$%else207230207244%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind207226%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp215360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (##append _%args207227%_ __tmp215360)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%$%K207232207330%_
                            (lambda (_%rest207247%_ _%e207248%_)
                              (let* ((_%__stx214999215000%_ _%e207248%_)
                                     (_%$%g207253207271%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx214999215000%_)))))
                                (let ((_%__kont215001215002%_
                                       (lambda ()
                                         (_%lp207221%_
                                          _%rest207247%_
                                          _%bind207226%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207248%_))
                                                _%args207227%_))))
                                      (_%__kont215003215004%_
                                       (lambda ()
                                         (_%lp207221%_
                                          _%rest207247%_
                                          _%bind207226%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e207248%_))
                                                _%args207227%_))))
                                      (_%__kont215005215006%_
                                       (lambda ()
                                         (let ((_%tmp207278%_
                                                (let ((__tmp215361
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp215361))))
                                           (_%lp207221%_
                                            _%rest207247%_
                                            (cons (cons _%tmp207278%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e207248%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind207226%_)
                                            (cons _%tmp207278%_
                                                  _%args207227%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx214999215000%_))
                                      (let ((_%$%e207255207309%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx214999215000%_))))
                                        (let ((_%$%tl207257207314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e207255207309%_)))
                                              (_%$%hd207256207312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e207255207309%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd207256207312%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd207256207312%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl207257207314%_))
                                                      (let ((_%$%e207258207317%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl207257207314%_))))
                (let ((_%$%tl207260207322%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e207258207317%_)))
                      (_%$%hd207259207320%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e207258207317%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl207260207322%_))
                      (_%__kont215001215002%_)
                      (_%__kont215005215006%_))))
              (_%__kont215005215006%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%$%hd207256207312%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl207257207314%_))
                                                          (let ((_%$%e207264207294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl207257207314%_))))
                    (let ((_%$%tl207266207299%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e207264207294%_)))
                          (_%$%hd207265207297%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e207264207294%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl207266207299%_))
                          (_%__kont215003215004%_)
                          (_%__kont215005215006%_))))
                  (_%__kont215005215006%_))
              (_%__kont215005215006%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215005215006%_))))
                                      (_%__kont215005215006%_)))))))
                      (if (pair? _%$%rest207228207236%_)
                          (let ((_%$%hd207233207333%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest207228207236%_)))
                                (_%$%tl207234207335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest207228207236%_))))
                            (let* ((_%e207338%_ _%$%hd207233207333%_)
                                   (_%rest207340%_ _%$%tl207234207335%_))
                              (_%$%K207232207330%_
                               _%rest207340%_
                               _%e207338%_)))
                          (_%$%else207230207244%_)))))
              (_%$%g207143207164%_ _%$%g207144207167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g207143207164%_
                                               _%$%g207144207167%_))))
                                      (_%$%g207143207164%_
                                       _%$%g207144207167%_))))
                              (_%$%g207143207164%_ _%$%g207144207167%_))))
                      (_%$%g207143207164%_ _%$%g207144207167%_)))))
          (_%$%g207142207342%_ _%stx207141%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self206919%_ _%stx206920%_)
        (let* ((_%$%g206922206947%_
                (lambda (_%$%g206923206944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206923206944%_))))
               (_%$%g206921207137%_
                (lambda (_%$%g206923206950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206923206950%_))
                      (let ((_%$%e206928206952%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206923206950%_))))
                        (let ((_%$%hd206929206955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206928206952%_)))
                              (_%$%tl206930206957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206928206952%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206930206957%_))
                              (let ((_%$%e206931206960%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206930206957%_))))
                                (let ((_%$%hd206932206963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206931206960%_)))
                                      (_%$%tl206933206965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206931206960%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206933206965%_))
                                      (let ((_%$%e206934206968%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206933206965%_))))
                                        (let ((_%$%hd206935206971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206934206968%_)))
                                              (_%$%tl206936206973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206934206968%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl206936206973%_))
                                              (let ((_%$%e206937206976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl206936206973%_))))
                                                (let ((_%$%hd206938206979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e206937206976%_)))
                                                      (_%$%tl206939206981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e206937206976%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl206939206981%_))
                                                      (let ((_%$%e206940206984%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl206939206981%_))))
                (let ((_%$%hd206941206987%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e206940206984%_)))
                      (_%$%tl206942206989%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e206940206984%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl206942206989%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self206919%_
                                         _%$%hd206938206979%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self206919%_
                                               _%$%hd206941206987%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self206919%_
                                                     _%$%hd206935206971%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp207016%_ ((_%rest207019%_
                                              (cons _%$%hd206935206971%_
                                                    (cons _%$%hd206941206987%_
                                                          (cons _%$%hd206938206979%_
                                                                '()))))
                                             (_%bind207021%_ '())
                                             (_%args207022%_ '()))
                            (let* ((_%$%rest207023207031%_ _%rest207019%_)
                                   (_%$%else207025207039%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind207021%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp215362 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (##append _%args207022%_ __tmp215362)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%K207027207125%_
                                    (lambda (_%rest207042%_ _%e207043%_)
                                      (let* ((_%__stx215045215046%_
                                              _%e207043%_)
                                             (_%$%g207048207066%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx215045215046%_)))))
                                        (let ((_%__kont215047215048%_
                                               (lambda ()
                                                 (_%lp207016%_
                                                  _%rest207042%_
                                                  _%bind207021%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207043%_))
                                                        _%args207022%_))))
                                              (_%__kont215049215050%_
                                               (lambda ()
                                                 (_%lp207016%_
                                                  _%rest207042%_
                                                  _%bind207021%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e207043%_))
                                                        _%args207022%_))))
                                              (_%__kont215051215052%_
                                               (lambda ()
                                                 (let ((_%tmp207073%_
                                                        (let ((__tmp215363
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp215363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp207016%_
                                                    _%rest207042%_
                                                    (cons (cons _%tmp207073%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e207043%_))
                              '()))
                  _%bind207021%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp207073%_
                                                          _%args207022%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx215045215046%_))
                                              (let ((_%$%e207050207104%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx215045215046%_))))
                                                (let ((_%$%tl207052207109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e207050207104%_)))
                                                      (_%$%hd207051207107%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e207050207104%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd207051207107%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd207051207107%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl207052207109%_))
                      (let ((_%$%e207053207112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl207052207109%_))))
                        (let ((_%$%tl207055207117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e207053207112%_)))
                              (_%$%hd207054207115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e207053207112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl207055207117%_))
                              (_%__kont215047215048%_)
                              (_%__kont215051215052%_))))
                      (_%__kont215051215052%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%$%hd207051207107%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl207052207109%_))
                          (let ((_%$%e207059207089%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl207052207109%_))))
                            (let ((_%$%tl207061207094%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e207059207089%_)))
                                  (_%$%hd207060207092%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e207059207089%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl207061207094%_))
                                  (_%__kont215049215050%_)
                                  (_%__kont215051215052%_))))
                          (_%__kont215051215052%_))
                      (_%__kont215051215052%_)))
              (_%__kont215051215052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont215051215052%_)))))))
                              (if (pair? _%$%rest207023207031%_)
                                  (let ((_%$%hd207028207128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest207023207031%_)))
                                        (_%$%tl207029207130%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%rest207023207031%_))))
                                    (let* ((_%e207133%_ _%$%hd207028207128%_)
                                           (_%rest207135%_
                                            _%$%tl207029207130%_))
                                      (_%$%K207027207125%_
                                       _%rest207135%_
                                       _%e207133%_)))
                                  (_%$%else207025207039%_)))))
                      (_%$%g206922206947%_ _%$%g206923206950%_))))
              (_%$%g206922206947%_ _%$%g206923206950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206922206947%_
                                               _%$%g206923206950%_))))
                                      (_%$%g206922206947%_
                                       _%$%g206923206950%_))))
                              (_%$%g206922206947%_ _%$%g206923206950%_))))
                      (_%$%g206922206947%_ _%$%g206923206950%_)))))
          (_%$%g206921207137%_ _%stx206920%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self206758%_ _%stx206759%_)
        (letrec ((_%import-set-template206761%_
                  (lambda (_%in206864%_ _%phi206865%_)
                    (let ((_%iphi206867%_
                           (fx+ _%phi206865%_
                                (##direct-structure-ref
                                 _%in206864%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports206868%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in206864%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp206870%_ ((_%rest206872%_ _%imports206868%_)
                                         (_%r206873%_ '()))
                        (let* ((_%$%rest206874206882%_ _%rest206872%_)
                               (_%$%else206876206890%_ (lambda () _%r206873%_))
                               (_%$%K206878206907%_
                                (lambda (_%rest206893%_ _%in206894%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in206894%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi206867%_))
                                          (_%lp206870%_
                                           _%rest206893%_
                                           (cons _%in206894%_ _%r206873%_))
                                          (_%lp206870%_
                                           _%rest206893%_
                                           _%r206873%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in206894%_
                                             'gx#module-import::t))
                                          (let ((_%iphi206898%_
                                                 (fx+ _%phi206865%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in206894%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi206898%_))
                                                (_%lp206870%_
                                                 _%rest206893%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206894%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r206873%_))
                                                (_%lp206870%_
                                                 _%rest206893%_
                                                 _%r206873%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in206894%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi206901%_
                                                     (fx+ _%iphi206867%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in206894%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi206901%_))
                                                    (_%lp206870%_
                                                     _%rest206893%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in206894%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r206873%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi206901%_))
                                                        (_%lp206870%_
                                                         _%rest206893%_
                                                         (let ((__tmp215364
                                                                (_%import-set-template206761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in206894%_
                         _%iphi206867%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r206873%_ __tmp215364)))
                (_%lp206870%_ _%rest206893%_ _%r206873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp206870%_
                                               _%rest206893%_
                                               _%r206873%_)))))))
                          (if (pair? _%$%rest206874206882%_)
                              (let ((_%$%hd206879206910%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest206874206882%_)))
                                    (_%$%tl206880206912%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest206874206882%_))))
                                (let* ((_%in206915%_ _%$%hd206879206910%_)
                                       (_%rest206917%_ _%$%tl206880206912%_))
                                  (_%$%K206878206907%_
                                   _%rest206917%_
                                   _%in206915%_)))
                              (_%$%else206876206890%_))))))))
          (let* ((_%$%g206763206773%_
                  (lambda (_%$%g206764206770%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206764206770%_))))
                 (_%$%g206762206861%_
                  (lambda (_%$%g206764206776%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206764206776%_))
                        (let ((_%$%e206766206778%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206764206776%_))))
                          (let ((_%$%hd206767206781%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206766206778%_)))
                                (_%$%tl206768206783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206766206778%_))))
                            (let ((_%ht206797%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp206799%_ ((_%rest206801%_
                                                  _%$%tl206768206783%_)
                                                 (_%loads206802%_ '()))
                                (letrec ((_%K206804%_
                                          (lambda (_%ctx206854%_
                                                   _%rest206855%_)
                                            (let ((_%id206857%_
                                                   (##structure-ref
                                                    _%ctx206854%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht206797%_
                                                     _%id206857%_))
                                                  (_%lp206799%_
                                                   _%rest206855%_
                                                   _%loads206802%_)
                                                  (let ((_%rt206859%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id206857%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht206797%_
                                                       _%id206857%_
                                                       _%rt206859%_))
                                                    (_%lp206799%_
                                                     _%rest206855%_
                                                     (cons _%rt206859%_
                                                           _%loads206802%_))))))))
                                  (let* ((_%$%rest206805206813%_
                                          _%rest206801%_)
                                         (_%$%else206807206825%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp215366
                                                         (lambda (_%$%g206820206822%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g206820206822%_)))
                (__tmp215365 (reverse _%loads206802%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp215366
                                                           __tmp215365)))))
                                         (_%$%K206809206842%_
                                          (lambda (_%rest206828%_ _%in206829%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in206829%_
                                                   'gx#module-context::t))
                                                (_%K206804%_
                                                 _%in206829%_
                                                 _%rest206828%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in206829%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in206829%_
                            '3
                            '#f
                            '#f)))
                (_%K206804%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in206829%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest206828%_)
                (_%lp206799%_ _%rest206828%_ _%loads206802%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in206829%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi206834%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in206829%_ '2 '#f '#f))))
                  (if (fxzero? _%phi206834%_)
                      (_%K206804%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in206829%_ '1 '#f '#f))
                       _%rest206828%_)
                      (if (fxpositive? _%phi206834%_)
                          (let ((_%deps206838%_
                                 (_%import-set-template206761%_
                                  _%in206829%_
                                  '0)))
                            (_%lp206799%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest206828%_ _%deps206838%_))
                             _%loads206802%_))
                          (_%lp206799%_ _%rest206828%_ _%loads206802%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx206759%_
                   _%in206829%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%rest206805206813%_)
                                        (let ((_%$%hd206810206845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest206805206813%_)))
                                              (_%$%tl206811206847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest206805206813%_))))
                                          (let* ((_%in206850%_
                                                  _%$%hd206810206845%_)
                                                 (_%rest206852%_
                                                  _%$%tl206811206847%_))
                                            (_%$%K206809206842%_
                                             _%rest206852%_
                                             _%in206850%_)))
                                        (_%$%else206807206825%_))))))))
                        (_%$%g206763206773%_ _%$%g206764206776%_)))))
            (_%$%g206762206861%_ _%stx206759%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self206572%_ _%stx206573%_)
        (letrec ((_%add-lift!206575%_
                  (lambda (_%expr206756%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr206756%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote206576%_
                  (lambda (_%id206753%_ _%marks206754%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id206753%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks206754%_
                                                        '()))))))))
                 (_%generate-simple206577%_
                  (lambda (_%stxq206748%_)
                    (let ((_%gid206750%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid206751%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq206748%_))))
                      (_%add-lift!206575%_
                       (cons 'define
                             (cons _%gid206750%_
                                   (cons (_%generate-syntax-quote206576%_
                                          _%qid206751%_
                                          ''())
                                         '()))))
                      (let ((__tmp215367
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp215367 _%stxq206748%_ _%gid206750%_))
                      _%gid206750%_)))
                 (_%generate-serialized206578%_
                  (lambda (_%stxq206738%_ _%marks206739%_)
                    (let* ((_%mark-refs206741%_
                            (map _%generate-mark206579%_ _%marks206739%_))
                           (_%gid206743%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid206745%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq206738%_))))
                      (_%add-lift!206575%_
                       (cons 'define
                             (cons _%gid206743%_
                                   (cons (_%generate-syntax-quote206576%_
                                          _%qid206745%_
                                          (cons 'list _%mark-refs206741%_))
                                         '()))))
                      (let ((__tmp215368
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp215368 _%stxq206738%_ _%gid206743%_))
                      _%gid206743%_)))
                 (_%generate-mark206579%_
                  (lambda (_%mark206723%_)
                    (let ((_%$e206725%_
                           (let ((__tmp215369
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp215369 _%mark206723%_))))
                      (if _%$e206725%_
                          _%$e206725%_
                          (let* ((_%gid206729%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr206731%_
                                  (_%serialize-mark206580%_ _%mark206723%_))
                                 (_%ctx206733%_
                                  (let ((__tmp215370
                                         (##structure-ref
                                          _%mark206723%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp215370)))
                                 (_%ctx-ref206735%_
                                  (if (eq? _%ctx206733%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref206581%_
                                                               _%ctx206733%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp215371
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp215371
                               _%mark206723%_
                               _%gid206729%_))
                            (_%add-lift!206575%_
                             (cons 'define
                                   (cons _%gid206729%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr206731%_ '()))
                   (cons _%ctx-ref206735%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid206729%_)))))
                 (_%serialize-mark206580%_
                  (lambda (_%mark206671%_)
                    (letrec ((_%quote-e206673%_
                              (lambda (_%sym206721%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym206721%_))
                                    _%sym206721%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym206721%_))))))
                      (let* ((_%$%mark206674206683%_ _%mark206671%_)
                             (_%$%E206676206686%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%mark206674206683%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%$%K206677206698%_
                              (lambda (_%trace206689%_
                                       _%phi206690%_
                                       _%ctx206691%_
                                       _%subst206692%_)
                                (let ((_%subs206694%_
                                       (if _%subst206692%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst206692%_))
                                           '())))
                                  (cons _%phi206690%_
                                        (let ((__tmp215372
                                               (lambda (_%pair206696%_)
                                                 (cons (_%quote-e206673%_
                                                        (car _%pair206696%_))
                                                       (_%quote-e206673%_
                                                        (cdr _%pair206696%_))))))
                                          (declare (not safe))
                                          (##map __tmp215372
                                                 _%subs206694%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%mark206674206683%_
                               'gx#expander-mark::t))
                            (let* ((_%$%e206678206701%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206674206683%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst206704%_ _%$%e206678206701%_)
                                   (_%$%e206679206706%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206674206683%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx206709%_ _%$%e206679206706%_)
                                   (_%$%e206680206711%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206674206683%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi206714%_ _%$%e206680206711%_)
                                   (_%$%e206681206716%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%mark206674206683%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace206719%_ _%$%e206681206716%_))
                              (_%$%K206677206698%_
                               _%trace206719%_
                               _%phi206714%_
                               _%ctx206709%_
                               _%subst206704%_))
                            (_%$%E206676206686%_))))))
                 (_%context-ref206581%_
                  (lambda (_%ctx206658%_)
                    (if (let ((__tmp215373
                               (##structure-ref
                                _%ctx206658%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp215373
                           'gx#module-context::t))
                        (let ((_%ctx-ref206660%_
                               (_%context-ref-nested206583%_ _%ctx206658%_))
                              (_%ctx-origin206661%_
                               (_%context-ref-origin206582%_ _%ctx206658%_))
                              (_%origin206662%_
                               (_%context-ref-origin206582%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin206662%_ _%ctx-origin206661%_)
                              (let ((_%ref206664%_
                                     (_%context-ref-nested206583%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp206666%_ ((_%ref206668%_
                                                    (cdr _%ref206664%_))
                                                   (_%ctx-ref206669%_
                                                    (cdr _%ctx-ref206660%_)))
                                  (if (and (pair? _%ref206668%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref206668%_))
                                                (car _%ctx-ref206669%_)))
                                      (_%lp206666%_
                                       (cdr _%ref206668%_)
                                       (cdr _%ctx-ref206669%_))
                                      (cons '#f _%ctx-ref206669%_))))
                              _%ctx-ref206660%_))
                        (let ((__tmp215374
                               (##structure-ref
                                _%ctx206658%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp215374)))))
                 (_%context-ref-origin206582%_
                  (lambda (_%ctx206650%_)
                    (let _%lp206652%_ ((_%ctx206654%_ _%ctx206650%_))
                      (let ((_%super206656%_
                             (##structure-ref
                              _%ctx206654%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super206656%_
                               'gx#module-context::t))
                            (_%lp206652%_ _%super206656%_)
                            _%ctx206654%_)))))
                 (_%context-ref-nested206583%_
                  (lambda (_%ctx206641%_)
                    (let _%lp206643%_ ((_%ctx206645%_ _%ctx206641%_)
                                       (_%r206646%_ '()))
                      (let ((_%super206648%_
                             (##structure-ref
                              _%ctx206645%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super206648%_
                               'gx#module-context::t))
                            (_%lp206643%_
                             _%super206648%_
                             (cons (car (##structure-ref
                                         _%ctx206645%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r206646%_))
                            (cons (let ((__tmp215375
                                         (##structure-ref
                                          _%ctx206645%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp215375))
                                  _%r206646%_)))))))
          (let* ((_%$%g206585206598%_
                  (lambda (_%$%g206586206595%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206586206595%_))))
                 (_%$%g206584206638%_
                  (lambda (_%$%g206586206601%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206586206601%_))
                        (let ((_%$%e206588206603%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206586206601%_))))
                          (let ((_%$%hd206589206606%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206588206603%_)))
                                (_%$%tl206590206608%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206588206603%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl206590206608%_))
                                (let ((_%$%e206591206611%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl206590206608%_))))
                                  (let ((_%$%hd206592206614%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e206591206611%_)))
                                        (_%$%tl206593206616%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e206591206611%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl206593206616%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd206592206614%_))
                                            (let ((_%$e206632%_
                                                   (let ((__tmp215376
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp215376
                                                      _%$%hd206592206614%_))))
                                              (if _%$e206632%_
                                                  _%$e206632%_
                                                  (let ((_%marks206636%_
                                                         (##direct-structure-ref
                                                          _%$%hd206592206614%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks206636%_)
                                                        (_%generate-simple206577%_
                                                         _%$%hd206592206614%_)
                                                        (_%generate-serialized206578%_
                                                         _%$%hd206592206614%_
                                                         _%marks206636%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%$%hd206592206614%_)))
                                        (_%$%g206585206598%_
                                         _%$%g206586206601%_))))
                                (_%$%g206585206598%_ _%$%g206586206601%_))))
                        (_%$%g206585206598%_ _%$%g206586206601%_)))))
            (_%$%g206584206638%_ _%stx206573%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self206504%_ _%stx206505%_)
        (let* ((_%$%g206507206524%_
                (lambda (_%$%g206508206521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206508206521%_))))
               (_%$%g206506206569%_
                (lambda (_%$%g206508206527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206508206527%_))
                      (let ((_%$%e206511206529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206508206527%_))))
                        (let ((_%$%hd206512206532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206511206529%_)))
                              (_%$%tl206513206534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206511206529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206513206534%_))
                              (let ((_%$%e206514206537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206513206534%_))))
                                (let ((_%$%hd206515206540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206514206537%_)))
                                      (_%$%tl206516206542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206514206537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl206516206542%_))
                                      (let ((_%$%e206517206545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl206516206542%_))))
                                        (let ((_%$%hd206518206548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e206517206545%_)))
                                              (_%$%tl206519206550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e206517206545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl206519206550%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd206515206540%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self206504%_
                           _%$%hd206518206548%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g206507206524%_
                                               _%$%g206508206527%_))))
                                      (_%$%g206507206524%_
                                       _%$%g206508206527%_))))
                              (_%$%g206507206524%_ _%$%g206508206527%_))))
                      (_%$%g206507206524%_ _%$%g206508206527%_)))))
          (_%$%g206506206569%_ _%stx206505%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self206453%_ _%stx206454%_)
        (let* ((_%$%g206456206466%_
                (lambda (_%$%g206457206463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206457206463%_))))
               (_%$%g206455206501%_
                (lambda (_%$%g206457206469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206457206469%_))
                      (let ((_%$%e206459206471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206457206469%_))))
                        (let ((_%$%hd206460206474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206459206471%_)))
                              (_%$%tl206461206476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206459206471%_))))
                          (let* ((_%c-body206493%_
                                  (map (lambda (_%$%g206488206490%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self206453%_
                                            _%$%g206488206490%_)))
                                       _%$%tl206461206476%_))
                                 (_%c-body206498%_
                                  (let ((__tmp215377
                                         (lambda (_%$obj206495%_)
                                           (not (eq? _%$obj206495%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp215377 _%c-body206493%_))))
                            (cons '%#begin _%c-body206498%_))))
                      (_%$%g206456206466%_ _%$%g206457206469%_)))))
          (_%$%g206455206501%_ _%stx206454%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self206358%_ _%stx206359%_)
        (let* ((_%$%g206361206371%_
                (lambda (_%$%g206362206368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206362206368%_))))
               (_%$%g206360206450%_
                (lambda (_%$%g206362206374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206362206374%_))
                      (let ((_%$%e206364206376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206362206374%_))))
                        (let ((_%$%hd206365206379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206364206376%_)))
                              (_%$%tl206366206381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206364206376%_))))
                          (let* ((_%phi206394%_
                                  (let ((__tmp215378
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp215378 '1)))
                                 (_%block206396%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self206358%_ 'state))
                                   _%phi206394%_))
                                 (_%compiled206399%_
                                  (let ((__tmp215379
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self206358%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%$%tl206366206381%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp215379
                                     gx#current-expander-phi
                                     _%phi206394%_)))
                                 (_%$%g206402206412%_
                                  (lambda (_%$%g206403206409%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g206403206409%_))))
                                 (_%$%g206401206447%_
                                  (lambda (_%$%g206403206415%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%g206403206415%_))
                                        (let ((_%$%e206405206417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%g206403206415%_))))
                                          (let ((_%$%hd206406206420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e206405206417%_)))
                                                (_%$%tl206407206422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e206405206417%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd206406206420%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%$%hd206406206420%_))
                                                    (let ((_%c-body206442%_
                                                           (filter (lambda (_%$obj206439%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj206439%_ '#!void)))
                           _%$%tl206407206422%_)))
              (if _%block206396%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block206396%_
                                                            '()))
                                                '())))
                              _%c-body206442%_))
                  (if (null? _%c-body206442%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body206442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g206402206412%_
                                                     _%$%g206403206415%_))
                                                (_%$%g206402206412%_
                                                 _%$%g206403206415%_))))
                                        (_%$%g206402206412%_
                                         _%$%g206403206415%_)))))
                            (_%$%g206401206447%_ _%compiled206399%_))))
                      (_%$%g206361206371%_ _%$%g206362206374%_)))))
          (_%$%g206360206450%_ _%stx206359%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self206289%_ _%stx206290%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self206289%_ 'state)))
        (let* ((_%$%g206292206306%_
                (lambda (_%$%g206293206303%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g206293206303%_))))
               (_%$%g206291206355%_
                (lambda (_%$%g206293206309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g206293206309%_))
                      (let ((_%$%e206296206311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g206293206309%_))))
                        (let ((_%$%hd206297206314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e206296206311%_)))
                              (_%$%tl206298206316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e206296206311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl206298206316%_))
                              (let ((_%$%e206299206319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl206298206316%_))))
                                (let ((_%$%hd206300206322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e206299206319%_)))
                                      (_%$%tl206301206324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e206299206319%_))))
                                  (let ((_%key206341%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%$%hd206300206322%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key206341%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx206290%_
                                           _%$%hd206300206322%_
                                           _%key206341%_)))
                                    (let* ((_%ctx206343%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%$%hd206300206322%_)))
                                           (_%code206346%_
                                            (let ((__tmp215380
                                                   (lambda ()
                                                     (let ((__tmp215381
                                                            (##structure-ref
                                                             _%ctx206343%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self206289%_
                                                        __tmp215381)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp215380
                                               gx#current-expander-context
                                               _%ctx206343%_)))
                                           (_%rt206348%_
                                            (let ((__tmp215382
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp215382
                                               _%ctx206343%_)))
                                           (_%loader206350%_
                                            (if _%rt206348%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt206348%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid206352%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd206300206322%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self206289%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid206352%_
                                                  (cons _%code206346%_
                                                        _%loader206350%_)))))))
                              (_%$%g206292206306%_ _%$%g206293206309%_))))
                      (_%$%g206292206306%_ _%$%g206293206309%_)))))
          (_%$%g206291206355%_ _%stx206290%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx206276%_ _%context-chain206277%_)
        (let _%lp206279%_ ((_%ctx206281%_ _%ctx206276%_) (_%path206282%_ '()))
          (let ((_%super206284%_
                 (##structure-ref _%ctx206281%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super206284%_ _%context-chain206277%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx206281%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path206282%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super206284%_
                       'gx#module-context::t))
                    (_%lp206279%_
                     _%super206284%_
                     (cons (car (##structure-ref
                                 _%ctx206281%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path206282%_))
                    (cons (let ((__tmp215383
                                 (##structure-ref
                                  _%ctx206281%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp215383))
                          _%path206282%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp206269%_ ((_%ctx206271%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r206272%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx206271%_ 'gx#module-context::t))
              (_%lp206269%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx206271%_ '3 '#f '#f))
               (cons _%ctx206271%_ _%r206272%_))
              _%r206272%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self206034%_ _%stx206035%_)
        (letrec* ((_%context-chain206037%_ (gxc#current-context-chain))
                  (_%make-import-spec206038%_
                   (lambda (_%in206206%_)
                     (let* ((_%$%in206207206219%_ _%in206206%_)
                            (_%$%E206209206222%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%$%in206207206219%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%$%K206210206232%_
                             (lambda (_%phi206225%_
                                      _%name206226%_
                                      _%src-name206227%_
                                      _%src-phi206228%_
                                      _%src-key206229%_
                                      _%src-ctx206230%_)
                               (cons _%phi206225%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name206226%_))
                                           (cons _%src-phi206228%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name206227%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$%in206207206219%_
                              'gx#module-import::t))
                           (let ((_%$%e206211206235%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%$%in206207206219%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%$%e206211206235%_
                                    'gx#module-export::t))
                                 (let* ((_%$%e206214206238%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206211206235%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx206241%_ _%$%e206214206238%_)
                                        (_%$%e206215206243%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206211206235%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key206246%_ _%$%e206215206243%_)
                                        (_%$%e206216206248%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206211206235%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi206251%_ _%$%e206216206248%_)
                                        (_%$%e206217206253%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%e206211206235%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name206256%_
                                         _%$%e206217206253%_)
                                        (_%$%e206212206258%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206207206219%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name206261%_ _%$%e206212206258%_)
                                        (_%$%e206213206263%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%$%in206207206219%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi206266%_ _%$%e206213206263%_))
                                   (_%$%K206210206232%_
                                    _%phi206266%_
                                    _%name206261%_
                                    _%src-name206256%_
                                    _%src-phi206251%_
                                    _%src-key206246%_
                                    _%src-ctx206241%_))
                                 (_%$%E206209206222%_)))
                           (_%$%E206209206222%_)))))
                  (_%make-import-path206039%_
                   (lambda (_%ctx206204%_)
                     (gxc#generate-meta-import-path
                      _%ctx206204%_
                      _%context-chain206037%_)))
                  (_%make-import-spec-in206040%_
                   (lambda (_%ctx206201%_ _%in206202%_)
                     (cons 'spec:
                           (cons (_%make-import-path206039%_ _%ctx206201%_)
                                 (reverse _%in206202%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self206034%_ 'state)))
          (let* ((_%$%g206042206052%_
                  (lambda (_%$%g206043206049%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g206043206049%_))))
                 (_%$%g206041206198%_
                  (lambda (_%$%g206043206055%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g206043206055%_))
                        (let ((_%$%e206045206057%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g206043206055%_))))
                          (let ((_%$%hd206046206060%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e206045206057%_)))
                                (_%$%tl206047206062%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e206045206057%_))))
                            (let _%lp206076%_ ((_%rest206078%_
                                                _%$%tl206047206062%_)
                                               (_%current-src206079%_ '#f)
                                               (_%current-in206080%_ '())
                                               (_%r206081%_ '()))
                              (let* ((_%$%rest206082206090%_ _%rest206078%_)
                                     (_%$%else206084206100%_
                                      (lambda ()
                                        (let ((_%r206098%_
                                               (if _%current-src206079%_
                                                   (cons (_%make-import-spec-in206040%_
                                                          _%current-src206079%_
                                                          _%current-in206080%_)
                                                         _%r206081%_)
                                                   _%r206081%_)))
                                          (cons '%#import
                                                (reverse _%r206098%_)))))
                                     (_%$%K206086206186%_
                                      (lambda (_%rest206103%_ _%in206104%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in206104%_
                                               'gx#module-import::t))
                                            (let* ((_%$%in206106206113%_
                                                    _%in206104%_)
                                                   (_%$%E206108206116%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%$%in206106206113%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K206109206124%_
                                                    (lambda (_%src-ctx206119%_)
                                                      (if (eq? _%current-src206079%_
                                                               _%src-ctx206119%_)
                                                          (_%lp206076%_
                                                           _%rest206103%_
                                                           _%current-src206079%_
                                                           (cons (_%make-import-spec206038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in206104%_)
                         _%current-in206080%_)
                   _%r206081%_)
                  (if _%current-src206079%_
                      (_%lp206076%_
                       _%rest206103%_
                       _%src-ctx206119%_
                       (cons (_%make-import-spec206038%_ _%in206104%_) '())
                       (cons (_%make-import-spec-in206040%_
                              _%current-src206079%_
                              _%current-in206080%_)
                             _%r206081%_))
                      (_%lp206076%_
                       _%rest206103%_
                       _%src-ctx206119%_
                       (cons (_%make-import-spec206038%_ _%in206104%_) '())
                       _%r206081%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%e206110206127%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%$%in206106206113%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%e206110206127%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e206111206130%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%e206110206127%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx206133%_
                                                          _%$%e206111206130%_))
                                                    (_%$%K206109206124%_
                                                     _%src-ctx206133%_))
                                                  (_%$%E206108206116%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in206104%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi206136%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206104%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src206138%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in206104%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in206178%_
                                                        (let* ((_%$%g206139206148%_
                                                                (_%make-import-path206039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src206138%_))
                       (_%$%E206142206152%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%g206139206148%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%$%K206144206168%_
                         (lambda (_%path206166%_) _%path206166%_))
                        (_%$%K206143206158%_
                         (lambda (_%path206156%_) (cons 'in: _%path206156%_))))
                    (if (pair? _%$%g206139206148%_)
                        (let ((_%$%tl206146206173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%g206139206148%_)))
                              (_%$%hd206145206171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%g206139206148%_))))
                          (if (null? _%$%tl206146206173%_)
                              (let ((_%path206176%_ _%$%hd206145206171%_))
                                (_%$%K206144206168%_ _%path206176%_))
                              (let ((_%path206161%_ _%$%g206139206148%_))
                                (_%$%K206143206158%_ _%path206161%_))))
                        (let ((_%path206161%_ _%$%g206139206148%_))
                          (_%$%K206143206158%_ _%path206161%_))))))
               (_%r206180%_
                (if _%current-src206079%_
                    (cons (_%make-import-spec-in206040%_
                           _%current-src206079%_
                           _%current-in206080%_)
                          _%r206081%_)
                    _%r206081%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp206076%_
                                                   _%rest206103%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi206136%_)
                                                             _%src-in206178%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi206136%_ (cons _%src-in206178%_ '()))))
                 _%r206180%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in206104%_
                                                       'gx#module-context::t))
                                                    (let ((_%r206184%_
                                                           (if _%current-src206079%_
                                                               (cons (_%make-import-spec-in206040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src206079%_
                              _%current-in206080%_)
                             _%r206081%_)
                       _%r206081%_)))
              (_%lp206076%_
               _%rest206103%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path206039%_ _%in206104%_))
                     _%r206184%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%$%rest206082206090%_)
                                    (let ((_%$%hd206087206189%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest206082206090%_)))
                                          (_%$%tl206088206191%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest206082206090%_))))
                                      (let* ((_%in206194%_
                                              _%$%hd206087206189%_)
                                             (_%rest206196%_
                                              _%$%tl206088206191%_))
                                        (_%$%K206086206186%_
                                         _%rest206196%_
                                         _%in206194%_)))
                                    (_%$%else206084206100%_))))))
                        (_%$%g206042206052%_ _%$%g206043206055%_)))))
            (_%$%g206041206198%_ _%stx206035%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self205844%_ _%stx205845%_)
        (letrec* ((_%context-chain205847%_ (gxc#current-context-chain))
                  (_%make-import-path205848%_
                   (lambda (_%ctx206032%_)
                     (gxc#generate-meta-import-path
                      _%ctx206032%_
                      _%context-chain205847%_))))
          (let* ((_%$%g205850205860%_
                  (lambda (_%$%g205851205857%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205851205857%_))))
                 (_%$%g205849206029%_
                  (lambda (_%$%g205851205863%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205851205863%_))
                        (let ((_%$%e205853205865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205851205863%_))))
                          (let ((_%$%hd205854205868%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205853205865%_)))
                                (_%$%tl205855205870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205853205865%_))))
                            (let _%lp205884%_ ((_%rest205886%_
                                                _%$%tl205855205870%_)
                                               (_%r205887%_ '()))
                              (let* ((_%$%rest205888205896%_ _%rest205886%_)
                                     (_%$%else205890205904%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r205887%_))))
                                     (_%$%K205892206017%_
                                      (lambda (_%rest205907%_ _%out205908%_)
                                        (let* ((_%$%out205909205922%_
                                                _%out205908%_)
                                               (_%$%E205912205926%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%$%out205909205922%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%$%K205916205996%_
                                                 (lambda (_%name205992%_
                                                          _%phi205993%_
                                                          _%key205994%_)
                                                   (_%lp205884%_
                                                    _%rest205907%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi205993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key205994%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name205992%_))
                                          '()))))
                  _%r205887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K205913205976%_
                                                 (lambda (_%phi205930%_
                                                          _%src205931%_)
                                                   (let* ((_%out205971%_
                                                           (if _%src205931%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%$%g205932205941%_
                                           (_%make-import-path205848%_
                                            _%src205931%_))
                                          (_%$%E205935205945%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%$%g205932205941%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%$%K205937205961%_
                                            (lambda (_%path205959%_)
                                              _%path205959%_))
                                           (_%$%K205936205951%_
                                            (lambda (_%path205949%_)
                                              (cons 'in: _%path205949%_))))
                                       (if (pair? _%$%g205932205941%_)
                                           (let ((_%$%tl205939205966%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%g205932205941%_)))
                                                 (_%$%hd205938205964%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%g205932205941%_))))
                                             (if (null? _%$%tl205939205966%_)
                                                 (let ((_%path205969%_
                                                        _%$%hd205938205964%_))
                                                   (_%$%K205937205961%_
                                                    _%path205969%_))
                                                 (let ((_%path205954%_
                                                        _%$%g205932205941%_))
                                                   (_%$%K205936205951%_
                                                    _%path205954%_))))
                                           (let ((_%path205954%_
                                                  _%$%g205932205941%_))
                                             (_%$%K205936205951%_
                                              _%path205954%_)))))
                                   '()))
                       '#t))
                  (_%out205973%_
                   (if (fxzero? _%phi205930%_)
                       _%out205971%_
                       (cons 'phi:
                             (cons _%phi205930%_ (cons _%out205971%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp205884%_
                                                      _%rest205907%_
                                                      (cons _%out205973%_
                                                            _%r205887%_))))))
                                            (let ((_%$%try-match205911205989%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%$%out205909205922%_
                                                            'gx#export-set::t))
                                                         (let* ((_%$%e205914205979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out205909205922%_
                            '1
                            '#f
                            '#f)))
                        (_%$%e205915205984%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%$%out205909205922%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src205982%_ _%$%e205914205979%_)
                         (_%phi205987%_ _%$%e205915205984%_))
                     (_%$%K205913205976%_ _%phi205987%_ _%src205982%_)))
                 (_%$%E205912205926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%$%out205909205922%_
                                                     'gx#module-export::t))
                                                  (let* ((_%$%e205917205999%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205909205922%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%$%e205918206002%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205909205922%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%$%e205919206007%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205909205922%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%$%e205920206012%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%$%out205909205922%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key206005%_
                                                           _%$%e205918206002%_)
                                                          (_%phi206010%_
                                                           _%$%e205919206007%_)
                                                          (_%name206015%_
                                                           _%$%e205920206012%_))
                                                      (_%$%K205916205996%_
                                                       _%name206015%_
                                                       _%phi206010%_
                                                       _%key206005%_)))
                                                  (_%$%try-match205911205989%_))))))))
                                (if (pair? _%$%rest205888205896%_)
                                    (let ((_%$%hd205893206020%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest205888205896%_)))
                                          (_%$%tl205894206022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest205888205896%_))))
                                      (let* ((_%out206025%_
                                              _%$%hd205893206020%_)
                                             (_%rest206027%_
                                              _%$%tl205894206022%_))
                                        (_%$%K205892206017%_
                                         _%rest206027%_
                                         _%out206025%_)))
                                    (_%$%else205890205904%_))))))
                        (_%$%g205850205860%_ _%$%g205851205863%_)))))
            (_%$%g205849206029%_ _%stx205845%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self205805%_ _%stx205806%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205805%_ 'state)))
        (let* ((_%$%g205808205818%_
                (lambda (_%$%g205809205815%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205809205815%_))))
               (_%$%g205807205841%_
                (lambda (_%$%g205809205821%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205809205821%_))
                      (let ((_%$%e205811205823%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205809205821%_))))
                        (let ((_%$%hd205812205826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205811205823%_)))
                              (_%$%tl205813205828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205811205823%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%$%tl205813205828%_))))
                      (_%$%g205808205818%_ _%$%g205809205821%_)))))
          (_%$%g205807205841%_ _%stx205806%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self205680%_ _%stx205681%_)
        (letrec ((_%generate1205683%_
                  (lambda (_%id205800%_ _%eid205801%_)
                    (let ((_%eid205803%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid205801%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid205803%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx205681%_
                             _%eid205803%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id205800%_))
                            (cons _%eid205803%_ '()))))))
          (let* ((_%$%g205685205713%_
                  (lambda (_%$%g205686205710%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205686205710%_))))
                 (_%$%g205684205797%_
                  (lambda (_%$%g205686205716%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205686205716%_))
                        (let ((_%$%e205689205718%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205686205716%_))))
                          (let ((_%$%hd205690205721%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205689205718%_)))
                                (_%$%tl205691205723%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205689205718%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%$%tl205691205723%_))
                                (let ((_g215384_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%$%tl205691205723%_
                                          '0))))
                                  (begin
                                    (let ((_g215385_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g215384_)
                                                 (##values-length _g215384_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g215385_ 2)))
                                          (error "Context expects 2 values"
                                                 _g215385_)))
                                    (let ((_%$%target205692205726%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215384_ 0)))
                                          (_%$%tl205694205728%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g215384_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl205694205728%_))
                                          (letrec ((_%$%loop205695205731%_
                                                    (lambda (_%$%hd205693205734%_
                                                             _%$%eid205699205736%_
                                                             _%$%id205700205737%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd205693205734%_))
                                                          (let ((_%$%e205696205739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd205693205734%_))))
                    (let ((_%$%lp-hd205697205742%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e205696205739%_)))
                          (_%$%lp-tl205698205744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e205696205739%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%lp-hd205697205742%_))
                          (let ((_%$%e205703205747%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%lp-hd205697205742%_))))
                            (let ((_%$%hd205704205750%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e205703205747%_)))
                                  (_%$%tl205705205752%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e205703205747%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl205705205752%_))
                                  (let ((_%$%e205706205755%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl205705205752%_))))
                                    (let ((_%$%hd205707205758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e205706205755%_)))
                                          (_%$%tl205708205760%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e205706205755%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl205708205760%_))
                                          (_%$%loop205695205731%_
                                           _%$%lp-tl205698205744%_
                                           (cons _%$%hd205707205758%_
                                                 _%$%eid205699205736%_)
                                           (cons _%$%hd205704205750%_
                                                 _%$%id205700205737%_))
                                          (_%$%g205685205713%_
                                           _%$%g205686205716%_))))
                                  (_%$%g205685205713%_ _%$%g205686205716%_))))
                          (_%$%g205685205713%_ _%$%g205686205716%_))))
                  (let ((_%$%eid205701205763%_ (reverse _%$%eid205699205736%_))
                        (_%$%id205702205764%_ (reverse _%$%id205700205737%_)))
                    (cons '%#extern
                          (map _%generate1205683%_
                               (let ((__tmp215386
                                      (lambda (_%$%g205782205785%_
                                               _%$%g205783205787%_)
                                        (cons _%$%g205782205785%_
                                              _%$%g205783205787%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp215386
                                  '()
                                  _%$%id205702205764%_))
                               (let ((__tmp215387
                                      (lambda (_%$%g205789205792%_
                                               _%$%g205790205794%_)
                                        (cons _%$%g205789205792%_
                                              _%$%g205790205794%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp215387
                                  '()
                                  _%$%eid205701205763%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop205695205731%_
                                             _%$%target205692205726%_
                                             '()
                                             '()))
                                          (_%$%g205685205713%_
                                           _%$%g205686205716%_)))))
                                (_%$%g205685205713%_ _%$%g205686205716%_))))
                        (_%$%g205685205713%_ _%$%g205686205716%_)))))
            (_%$%g205684205797%_ _%stx205681%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self205608%_ _%stx205609%_)
        (let* ((_%$%g205611205628%_
                (lambda (_%$%g205612205625%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205612205625%_))))
               (_%$%g205610205677%_
                (lambda (_%$%g205612205631%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205612205631%_))
                      (let ((_%$%e205615205633%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205612205631%_))))
                        (let ((_%$%hd205616205636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205615205633%_)))
                              (_%$%tl205617205638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205615205633%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205617205638%_))
                              (let ((_%$%e205618205641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205617205638%_))))
                                (let ((_%$%hd205619205644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205618205641%_)))
                                      (_%$%tl205620205646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205618205641%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205620205646%_))
                                      (let ((_%$%e205621205649%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205620205646%_))))
                                        (let ((_%$%hd205622205652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205621205649%_)))
                                              (_%$%tl205623205654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205621205649%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205623205654%_))
                                              (let ((_%ident205673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#generate-runtime-identifier
                                                        _%$%hd205619205644%_)))
                                                    (_%eid205674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd205622205652%_)))
                                                    (_%props205675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier-properties
                                                        _%$%hd205619205644%_))))
                                                (cons '%#define-runtime
                                                      (cons _%ident205673%_
                                                            (cons _%eid205674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%props205675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205611205628%_
                                               _%$%g205612205631%_))))
                                      (_%$%g205611205628%_
                                       _%$%g205612205631%_))))
                              (_%$%g205611205628%_ _%$%g205612205631%_))))
                      (_%$%g205611205628%_ _%$%g205612205631%_)))))
          (_%$%g205610205677%_ _%stx205609%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self205397%_ _%stx205398%_)
        (letrec ((_%generate1205400%_
                  (lambda (_%id205602%_)
                    (let ((_%eid205604%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id205602%_)))
                          (_%ident205605%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id205602%_)))
                          (_%props205606%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id205602%_))))
                      (cons '%#define-runtime
                            (cons _%ident205605%_
                                  (cons _%eid205604%_ _%props205606%_))))))
                 (_%generate*205401%_
                  (lambda (_%all205570%_)
                    (let* ((_%$%all205571205579%_ _%all205570%_)
                           (_%$%else205573205587%_
                            (lambda () (cons '%#begin _%all205570%_)))
                           (_%$%K205575205592%_
                            (lambda (_%one205590%_) _%one205590%_)))
                      (if (pair? _%$%all205571205579%_)
                          (let ((_%$%hd205576205595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all205571205579%_)))
                                (_%$%tl205577205597%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all205571205579%_))))
                            (let ((_%one205600%_ _%$%hd205576205595%_))
                              (if (null? _%$%tl205577205597%_)
                                  (_%$%K205575205592%_ _%one205600%_)
                                  (_%$%else205573205587%_))))
                          (_%$%else205573205587%_))))))
          (let* ((_%$%g205403205420%_
                  (lambda (_%$%g205404205417%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g205404205417%_))))
                 (_%$%g205402205567%_
                  (lambda (_%$%g205404205423%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g205404205423%_))
                        (let ((_%$%e205407205425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g205404205423%_))))
                          (let ((_%$%hd205408205428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e205407205425%_)))
                                (_%$%tl205409205430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e205407205425%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl205409205430%_))
                                (let ((_%$%e205410205433%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl205409205430%_))))
                                  (let ((_%$%hd205411205436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e205410205433%_)))
                                        (_%$%tl205412205438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e205410205433%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl205412205438%_))
                                        (let ((_%$%e205413205441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl205412205438%_))))
                                          (let ((_%$%hd205414205444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e205413205441%_)))
                                                (_%$%tl205415205446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e205413205441%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl205415205446%_))
                                                (let _%lp205466%_ ((_%rest205468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd205411205436%_)
                           (_%r205469%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx215124215125%_
                                                          _%rest205468%_)
                                                         (_%$%g205474205491%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx215124215125%_)))))
                                                    (let ((_%__kont215126215127%_
                                                           (lambda (_%$%g205476205554%_)
                                                             (_%lp205466%_
                                                              _%$%g205476205554%_
                                                              _%r205469%_)))
                                                          (_%__kont215128215129%_
                                                           (lambda (_%$%g205481205527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g205482205528%_)
                     (_%lp205466%_
                      _%$%g205481205527%_
                      (cons (_%generate1205400%_ _%$%g205482205528%_)
                            _%r205469%_))))
                  (_%__kont215130215131%_
                   (lambda (_%$%g205486205503%_)
                     (_%generate*205401%_
                      (let ((__tmp215388
                             (cons (_%generate1205400%_ _%$%g205486205503%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp215388 _%r205469%_)))))
                  (_%__kont215132215133%_
                   (lambda () (_%generate*205401%_ (reverse! _%r205469%_)))))
              (let ((_%$%g205472205514%_
                     (lambda ()
                       (let ((_%$%g205486205503%_ _%__stx215124215125%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%g205486205503%_))
                             (_%__kont215130215131%_ _%$%g205486205503%_)
                             (_%__kont215132215133%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx215124215125%_))
                    (let ((_%$%e205477205543%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx215124215125%_))))
                      (let ((_%$%tl205479205548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e205477205543%_)))
                            (_%$%hd205478205546%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e205477205543%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%$%hd205478205546%_))
                            (let ((_%$%e205480205551%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd205478205546%_))))
                              (if (equal? _%$%e205480205551%_ '#f)
                                  (_%__kont215126215127%_ _%$%tl205479205548%_)
                                  (_%__kont215128215129%_
                                   _%$%tl205479205548%_
                                   _%$%hd205478205546%_)))
                            (_%__kont215128215129%_
                             _%$%tl205479205548%_
                             _%$%hd205478205546%_))))
                    (_%$%g205472205514%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g205403205420%_
                                                 _%$%g205404205423%_))))
                                        (_%$%g205403205420%_
                                         _%$%g205404205423%_))))
                                (_%$%g205403205420%_ _%$%g205404205423%_))))
                        (_%$%g205403205420%_ _%$%g205404205423%_)))))
            (_%$%g205402205567%_ _%stx205398%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self205294%_ _%stx205295%_)
        (let* ((_%$%g205297205314%_
                (lambda (_%$%g205298205311%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205298205311%_))))
               (_%$%g205296205394%_
                (lambda (_%$%g205298205317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205298205317%_))
                      (let ((_%$%e205301205319%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205298205317%_))))
                        (let ((_%$%hd205302205322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205301205319%_)))
                              (_%$%tl205303205324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205301205319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205303205324%_))
                              (let ((_%$%e205304205327%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205303205324%_))))
                                (let ((_%$%hd205305205330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205304205327%_)))
                                      (_%$%tl205306205332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205304205327%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205306205332%_))
                                      (let ((_%$%e205307205335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205306205332%_))))
                                        (let ((_%$%hd205308205338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205307205335%_)))
                                              (_%$%tl205309205340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205307205335%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205309205340%_))
                                              (let* ((_%eid205359%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%$%hd205305205330%_)))
                                                     (_%phi205361%_
                                                      (let ((__tmp215389
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp215389 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block205363%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self205294%_
                                                          'state))
                                                       _%phi205361%_)))
                                                (let* ((_%$%g205366205373%_
                                                        (lambda (_%$%g205367205370%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g205367205370%_))))
                                                       (_%$%g205365205391%_
                                                        (lambda (_%$%g205367205376%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self205294%_
                                                              'state))
                                                           _%phi205361%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%$%g205367205376%_
                               (cons _%$%hd205308205338%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g205365205391%_
                                                   _%eid205359%_))
                                                (if _%block205363%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block205363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%$%hd205305205330%_))
                                          (cons _%eid205359%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205305205330%_))
                        (cons _%eid205359%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205297205314%_
                                               _%$%g205298205317%_))))
                                      (_%$%g205297205314%_
                                       _%$%g205298205317%_))))
                              (_%$%g205297205314%_ _%$%g205298205317%_))))
                      (_%$%g205297205314%_ _%$%g205298205317%_)))))
          (_%$%g205296205394%_ _%stx205295%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self205226%_ _%stx205227%_)
        (let* ((_%$%g205229205246%_
                (lambda (_%$%g205230205243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g205230205243%_))))
               (_%$%g205228205291%_
                (lambda (_%$%g205230205249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g205230205249%_))
                      (let ((_%$%e205233205251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g205230205249%_))))
                        (let ((_%$%hd205234205254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e205233205251%_)))
                              (_%$%tl205235205256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e205233205251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl205235205256%_))
                              (let ((_%$%e205236205259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl205235205256%_))))
                                (let ((_%$%hd205237205262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e205236205259%_)))
                                      (_%$%tl205238205264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e205236205259%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl205238205264%_))
                                      (let ((_%$%e205239205267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl205238205264%_))))
                                        (let ((_%$%hd205240205270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e205239205267%_)))
                                              (_%$%tl205241205272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e205239205267%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl205241205272%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%$%hd205237205262%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier
                           _%$%hd205240205270%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g205229205246%_
                                               _%$%g205230205249%_))))
                                      (_%$%g205229205246%_
                                       _%$%g205230205249%_))))
                              (_%$%g205229205246%_ _%$%g205230205249%_))))
                      (_%$%g205229205246%_ _%$%g205230205249%_)))))
          (_%$%g205228205291%_ _%stx205227%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self205223%_ _%stx205224%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205223%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205224%_)
        (gxc#generate-meta-define-values% _%self205223%_ _%stx205224%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self205220%_ _%stx205221%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self205220%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx205221%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp215391 (list)) (__tmp215390 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp215391
         '(src n open blocks)
         __tmp215390
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args205217%_
        (apply make-instance gxc#meta-state::t _%$args205217%_)))
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
      (lambda (_%self205203%_ _%ctx205204%_)
        (let ((_%self205207%_ _%self205203%_))
          (if (let ((__tmp215392
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205207%_))))
                (declare (not safe))
                (##fx< '4 __tmp215392))
              (begin
                (let ((__tmp215393
                       (let ((__tmp215394
                              (##structure-ref
                               _%ctx205204%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp215394))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205207%_
                   __tmp215393
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205207%_ '1 '2 '#f '#f))
                (let ((__tmp215395
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self205207%_
                   __tmp215395
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self205207%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp215396
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self205207%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self205207%_
                       '4
                       __tmp215396))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp215398 (list)) (__tmp215397 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp215398
         '(ctx phi n code)
         __tmp215397
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args205078%_
        (apply make-instance gxc#meta-state-block::t _%$args205078%_)))
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
      (lambda (_%state205038%_ _%phi205039%_)
        (let* ((_%$%state205040205048%_ _%state205038%_)
               (_%$%E205042205051%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%state205040205048%_
                           '((meta-state src n open))))
                  '#!void))
               (_%$%K205043205060%_
                (lambda (_%open205054%_ _%n205055%_ _%src205056%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open205054%_ _%phi205039%_))
                      '#f
                      (let ((_%block-ref205058%_
                             (let ((__tmp215399 (number->string _%n205055%_)))
                               (declare (not safe))
                               (##string-append
                                _%src205056%_
                                '"~"
                                __tmp215399))))
                        (##structure-set!
                         _%state205038%_
                         (let () (declare (not safe)) (##fx+ _%n205055%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp215400
                               (let ((__tmp215401
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp215401
                                  _%phi205039%_
                                  _%n205055%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open205054%_ _%phi205039%_ __tmp215400))
                        _%block-ref205058%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%$%state205040205048%_
                 'gxc#meta-state::t))
              (let* ((_%$%e205044205063%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205040205048%_
                         '1
                         '#f
                         '#f)))
                     (_%src205066%_ _%$%e205044205063%_)
                     (_%$%e205045205068%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205040205048%_
                         '2
                         '#f
                         '#f)))
                     (_%n205071%_ _%$%e205045205068%_)
                     (_%$%e205046205073%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%$%state205040205048%_
                         '3
                         '#f
                         '#f)))
                     (_%open205076%_ _%$%e205046205073%_))
                (_%$%K205043205060%_ _%open205076%_ _%n205071%_ _%src205066%_))
              (_%$%E205042205051%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state205032%_ _%phi205033%_ _%stx205034%_)
        (let ((_%block205036%_
               (let ((__tmp215402
                      (##structure-ref
                       _%state205032%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp215402 _%phi205033%_))))
          (##structure-set!
           _%block205036%_
           (cons _%stx205034%_
                 (##structure-ref
                  _%block205036%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state205026%_)
        (##structure-set!
         _%state205026%_
         (let ((__tmp215405
                (lambda (_%_205028%_ _%block205029%_ _%r205030%_)
                  (cons _%block205029%_ _%r205030%_)))
               (__tmp215404
                (##structure-ref _%state205026%_ '4 gxc#meta-state::t '#f))
               (__tmp215403
                (##structure-ref _%state205026%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp215405 __tmp215404 __tmp215403))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state205026%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state204979%_)
        (gxc#meta-state-end-phi! _%state204979%_)
        (let ((__tmp215407
               (lambda (_%block204981%_ _%r204982%_)
                 (let* ((_%$%block204983204992%_ _%block204981%_)
                        (_%$%E204985204995%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%$%block204983204992%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%$%K204986205003%_
                         (lambda (_%code204998%_
                                  _%n204999%_
                                  _%phi205000%_
                                  _%ctx205001%_)
                           (if (null? _%code204998%_)
                               _%r204982%_
                               (cons (cons _%ctx205001%_
                                           (cons _%phi205000%_
                                                 (cons _%n204999%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code204998%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r204982%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%$%block204983204992%_
                          'gxc#meta-state-block::t))
                       (let* ((_%$%e204987205006%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204983204992%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx205009%_ _%$%e204987205006%_)
                              (_%$%e204988205011%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204983204992%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi205014%_ _%$%e204988205011%_)
                              (_%$%e204989205016%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204983204992%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n205019%_ _%$%e204989205016%_)
                              (_%$%e204990205021%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%$%block204983204992%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code205024%_ _%$%e204990205021%_))
                         (_%$%K204986205003%_
                          _%code205024%_
                          _%n205019%_
                          _%phi205014%_
                          _%ctx205009%_))
                       (_%$%E204985204995%_)))))
              (__tmp215406
               (##structure-ref _%state204979%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp215407 '() __tmp215406))))
    (define gxc#collect-expression-refs
      (lambda (_%stx204975%_)
        (let ((_%ht204977%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht204977%_ _%stx204975%_)
          _%ht204977%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self204918%_ _%stx204919%_)
        (let* ((_%$%g204921204934%_
                (lambda (_%$%g204922204931%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204922204931%_))))
               (_%$%g204920204972%_
                (lambda (_%$%g204922204937%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204922204937%_))
                      (let ((_%$%e204924204939%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204922204937%_))))
                        (let ((_%$%hd204925204942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204924204939%_)))
                              (_%$%tl204926204944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204924204939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204926204944%_))
                              (let ((_%$%e204927204947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204926204944%_))))
                                (let ((_%$%hd204928204950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204927204947%_)))
                                      (_%$%tl204929204952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204927204947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl204929204952%_))
                                      (let* ((_%bind204967%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%$%hd204928204950%_)))
                                             (_%eid204969%_
                                              (if _%bind204967%_
                                                  (##structure-ref
                                                   _%bind204967%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd204928204950%_))))
                                             (__tmp215408
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self204918%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp215408
                                         _%eid204969%_
                                         _%eid204969%_))
                                      (_%$%g204921204934%_
                                       _%$%g204922204937%_))))
                              (_%$%g204921204934%_ _%$%g204922204937%_))))
                      (_%$%g204921204934%_ _%$%g204922204937%_)))))
          (_%$%g204920204972%_ _%stx204919%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self204845%_ _%stx204846%_)
        (let* ((_%$%g204848204865%_
                (lambda (_%$%g204849204862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204849204862%_))))
               (_%$%g204847204915%_
                (lambda (_%$%g204849204868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204849204868%_))
                      (let ((_%$%e204852204870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204849204868%_))))
                        (let ((_%$%hd204853204873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204852204870%_)))
                              (_%$%tl204854204875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204852204870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204854204875%_))
                              (let ((_%$%e204855204878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204854204875%_))))
                                (let ((_%$%hd204856204881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204855204878%_)))
                                      (_%$%tl204857204883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204855204878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204857204883%_))
                                      (let ((_%$%e204858204886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204857204883%_))))
                                        (let ((_%$%hd204859204889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204858204886%_)))
                                              (_%$%tl204860204891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204858204886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl204860204891%_))
                                              (let* ((_%bind204910%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%$%hd204856204881%_)))
                                                     (_%eid204912%_
                                                      (if _%bind204910%_
                                                          (##structure-ref
                                                           _%bind204910%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%hd204856204881%_)))))
                                                (let ((__tmp215409
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self204845%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp215409
                                                   _%eid204912%_
                                                   _%eid204912%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204845%_
                                                   _%$%hd204859204889%_)))
                                              (_%$%g204848204865%_
                                               _%$%g204849204868%_))))
                                      (_%$%g204848204865%_
                                       _%$%g204849204868%_))))
                              (_%$%g204848204865%_ _%$%g204849204868%_))))
                      (_%$%g204848204865%_ _%$%g204849204868%_)))))
          (_%$%g204847204915%_ _%stx204846%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self204802%_ _%stx204803%_)
        (let* ((_%$%g204805204815%_
                (lambda (_%$%g204806204812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204806204812%_))))
               (_%$%g204804204842%_
                (lambda (_%$%g204806204818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204806204818%_))
                      (let ((_%$%e204808204820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204806204818%_))))
                        (let ((_%$%hd204809204823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204808204820%_)))
                              (_%$%tl204810204825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204808204820%_))))
                          (let ((__tmp215410
                                 (lambda (_%$%g204837204839%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self204802%_
                                      _%$%g204837204839%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp215410 _%$%tl204810204825%_))))
                      (_%$%g204805204815%_ _%$%g204806204818%_)))))
          (_%$%g204804204842%_ _%stx204803%_))))
    (define gxc#count-values-single%
      (lambda (_%self204799%_ _%stx204800%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self204667%_ _%stx204668%_)
        (let* ((_%__stx215154215155%_ _%stx204668%_)
               (_%$%g204671204700%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx215154215155%_)))))
          (let ((_%__kont215156215157%_
                 (lambda (_%$%g204673204766%_ _%$%g204674204767%_)
                   (length (let ((__tmp215411
                                  (lambda (_%$%g204788204791%_
                                           _%$%g204789204793%_)
                                    (cons _%$%g204788204791%_
                                          _%$%g204789204793%_))))
                             (declare (not safe))
                             (foldr__0 __tmp215411 '() _%$%g204673204766%_)))))
                (_%__kont215160215161%_ (lambda () '#f)))
            (let ((_%__match215199215200%_
                   (lambda (_%$%e204675204712%_
                            _%$%hd204676204715%_
                            _%$%tl204677204717%_
                            _%$%e204678204720%_
                            _%$%hd204679204723%_
                            _%$%tl204680204725%_
                            _%$%e204681204728%_
                            _%$%hd204682204731%_
                            _%$%tl204683204733%_
                            _%$%e204684204736%_
                            _%$%hd204685204739%_
                            _%$%tl204686204741%_
                            _%__splice215158215159%_
                            _%$%target204687204744%_
                            _%$%tl204689204746%_)
                     (letrec ((_%$%loop204690204749%_
                               (lambda (_%$%hd204688204752%_
                                        _%$%rand204694204754%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd204688204752%_))
                                     (let ((_%$%e204691204756%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd204688204752%_))))
                                       (let ((_%$%lp-tl204693204761%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e204691204756%_)))
                                             (_%$%lp-hd204692204759%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e204691204756%_))))
                                         (_%$%loop204690204749%_
                                          _%$%lp-tl204693204761%_
                                          (cons _%$%lp-hd204692204759%_
                                                _%$%rand204694204754%_))))
                                     (let ((_%$%rand204695204764%_
                                            (reverse _%$%rand204694204754%_)))
                                       (let ((_%$%g204673204766%_
                                              _%$%rand204695204764%_)
                                             (_%$%g204674204767%_
                                              _%$%hd204685204739%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%$%g204674204767%_
                                                'values))
                                             (_%__kont215156215157%_
                                              _%$%g204673204766%_
                                              _%$%g204674204767%_)
                                             (_%__kont215160215161%_))))))))
                       (_%$%loop204690204749%_
                        _%$%target204687204744%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx215154215155%_))
                  (let ((_%$%e204675204712%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx215154215155%_))))
                    (let ((_%$%tl204677204717%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e204675204712%_)))
                          (_%$%hd204676204715%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e204675204712%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl204677204717%_))
                          (let ((_%$%e204678204720%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl204677204717%_))))
                            (let ((_%$%tl204680204725%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e204678204720%_)))
                                  (_%$%hd204679204723%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e204678204720%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd204679204723%_))
                                  (let ((_%$%e204681204728%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd204679204723%_))))
                                    (let ((_%$%tl204683204733%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e204681204728%_)))
                                          (_%$%hd204682204731%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e204681204728%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd204682204731%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd204682204731%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl204683204733%_))
                                                  (let ((_%$%e204684204736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl204683204733%_))))
                                                    (let ((_%$%tl204686204741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e204684204736%_)))
                                                          (_%$%hd204685204739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e204684204736%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl204686204741%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl204680204725%_))
                      (let ((_%__splice215158215159%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl204680204725%_
                                '0))))
                        (let ((_%$%tl204689204746%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215158215159%_ '1)))
                              (_%$%target204687204744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice215158215159%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl204689204746%_))
                              (_%__match215199215200%_
                               _%$%e204675204712%_
                               _%$%hd204676204715%_
                               _%$%tl204677204717%_
                               _%$%e204678204720%_
                               _%$%hd204679204723%_
                               _%$%tl204680204725%_
                               _%$%e204681204728%_
                               _%$%hd204682204731%_
                               _%$%tl204683204733%_
                               _%$%e204684204736%_
                               _%$%hd204685204739%_
                               _%$%tl204686204741%_
                               _%__splice215158215159%_
                               _%$%target204687204744%_
                               _%$%tl204689204746%_)
                              (_%__kont215160215161%_))))
                      (_%__kont215160215161%_))
                  (_%__kont215160215161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont215160215161%_))
                                              (_%__kont215160215161%_))
                                          (_%__kont215160215161%_))))
                                  (_%__kont215160215161%_))))
                          (_%__kont215160215161%_))))
                  (_%__kont215160215161%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self204572%_ _%stx204573%_)
        (let* ((_%$%g204575204596%_
                (lambda (_%$%g204576204593%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g204576204593%_))))
               (_%$%g204574204664%_
                (lambda (_%$%g204576204599%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g204576204599%_))
                      (let ((_%$%e204580204601%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g204576204599%_))))
                        (let ((_%$%hd204581204604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e204580204601%_)))
                              (_%$%tl204582204606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e204580204601%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl204582204606%_))
                              (let ((_%$%e204583204609%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl204582204606%_))))
                                (let ((_%$%hd204584204612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e204583204609%_)))
                                      (_%$%tl204585204614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e204583204609%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl204585204614%_))
                                      (let ((_%$%e204586204617%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl204585204614%_))))
                                        (let ((_%$%hd204587204620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e204586204617%_)))
                                              (_%$%tl204588204622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e204586204617%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl204588204622%_))
                                              (let ((_%$%e204589204625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl204588204622%_))))
                                                (let ((_%$%hd204590204628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e204589204625%_)))
                                                      (_%$%tl204591204630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e204589204625%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl204591204630%_))
                                                      (let ((_%$%c1204652204654%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1
                        _%self204572%_
                        _%$%hd204587204620%_))))
                (if _%$%c1204652204654%_
                    (let* ((_%c1204656%_ _%$%c1204652204654%_)
                           (_%$%c2204657204659%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self204572%_
                               _%$%hd204590204628%_))))
                      (if _%$%c2204657204659%_
                          (let ((_%c2204661%_ _%$%c2204657204659%_))
                            (if (fx= _%c1204656%_ _%c2204661%_)
                                _%c1204656%_
                                '#f))
                          '#f))
                    '#f))
              (_%$%g204575204596%_ _%$%g204576204599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g204575204596%_
                                               _%$%g204576204599%_))))
                                      (_%$%g204575204596%_
                                       _%$%g204576204599%_))))
                              (_%$%g204575204596%_ _%$%g204576204599%_))))
                      (_%$%g204575204596%_ _%$%g204576204599%_)))))
          (_%$%g204574204664%_ _%stx204573%_))))))
