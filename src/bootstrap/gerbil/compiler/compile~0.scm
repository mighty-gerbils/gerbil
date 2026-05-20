(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1779274772)
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
      (let ((__tmp207084 (list gxc#::void::t))
            (__tmp207083 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp207084
         '()
         __tmp207083
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args205698%_
        (apply make-instance gxc#::collect-bindings::t _%$args205698%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp207085
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
        (__make-atomic-promise __tmp207085)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx205690%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self205693%_
                (let ((__obj207059
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj207059))
               (__tmp207086
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205693%_ _%stx205690%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207086
           gxc#current-compile-method
           _%self205693%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp207088 (list gxc#::void::t))
            (__tmp207087 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp207088
         '(modules)
         __tmp207087
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args205687%_
        (apply make-instance gxc#::lift-modules::t _%$args205687%_)))
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
      (let ((__tmp207089
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
        (__make-atomic-promise __tmp207089)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords205662%_ _%modules205659205663%_ _%stx205664%_)
        (let ((_%modules205667%_
               (if (eq? _%modules205659205663%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules205659205663%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self205669%_
                  (let ((__obj207061
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207061
                       _%modules205667%_
                       '1
                       '#f
                       '#f))
                    __obj207061))
                 (__tmp207090
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205669%_ _%stx205664%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207090
             gxc#current-compile-method
             _%self205669%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords205676%_ . _%args205677%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords205676%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205676%_
                  'modules:
                  absent-value))
               _%args205677%_)))
    (define gxc#apply-lift-modules
      (lambda _%args205660205683%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args205660205683%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp207092 (list)) (__tmp207091 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp207092
         '()
         __tmp207091
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args205655%_
        (apply make-instance gxc#::find-runtime-code::t _%$args205655%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp207093
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
        (__make-atomic-promise __tmp207093)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx205647%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self205650%_
                (let ((__obj207063
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj207063))
               (__tmp207094
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205650%_ _%stx205647%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207094
           gxc#current-compile-method
           _%self205650%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp207096 (list gxc#::false::t))
            (__tmp207095 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp207096
         '()
         __tmp207095
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args205644%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args205644%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp207097
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
        (__make-atomic-promise __tmp207097)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx205636%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self205639%_
                (let ((__obj207065
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj207065))
               (__tmp207098
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205639%_ _%stx205636%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207098
           gxc#current-compile-method
           _%self205639%_))))
    (define gxc#::count-values::t
      (let ((__tmp207100 (list gxc#::false-expression::t))
            (__tmp207099 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp207100
         '()
         __tmp207099
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args205633%_
        (apply make-instance gxc#::count-values::t _%$args205633%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp207101
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
        (__make-atomic-promise __tmp207101)))
    (define gxc#apply-count-values
      (lambda (_%stx205625%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self205628%_
                (let ((__obj207067
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj207067))
               (__tmp207102
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205628%_ _%stx205625%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207102
           gxc#current-compile-method
           _%self205628%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp207103 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp207103
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args205622%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args205622%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp207104
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
        (__make-atomic-promise __tmp207104)))
    (define gxc#::generate-loader::t
      (let ((__tmp207106 (list gxc#::generate-runtime-empty::t))
            (__tmp207105 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp207106
         '()
         __tmp207105
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args205618%_
        (apply make-instance gxc#::generate-loader::t _%$args205618%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp207107
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
        (__make-atomic-promise __tmp207107)))
    (define gxc#apply-generate-loader
      (lambda (_%stx205610%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self205613%_
                (let ((__obj207070
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj207070))
               (__tmp207108
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205613%_ _%stx205610%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207108
           gxc#current-compile-method
           _%self205613%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp207109 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp207109
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args205607%_
        (apply make-instance gxc#::generate-runtime::t _%$args205607%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp207110
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
        (__make-atomic-promise __tmp207110)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx205599%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self205602%_
                (let ((__obj207072
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj207072))
               (__tmp207111
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205602%_ _%stx205599%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207111
           gxc#current-compile-method
           _%self205602%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp207113 (list gxc#::generate-runtime::t))
            (__tmp207112 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp207113
         '()
         __tmp207112
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args205596%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args205596%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp207114
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
        (__make-atomic-promise __tmp207114)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx205588%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self205591%_
                (let ((__obj207074
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj207074))
               (__tmp207115
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205591%_ _%stx205588%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207115
           gxc#current-compile-method
           _%self205591%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp207116 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp207116
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args205585%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args205585%_)))
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
      (let ((__tmp207117
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
        (__make-atomic-promise __tmp207117)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords205560%_ _%table205557205561%_ _%stx205562%_)
        (let ((_%table205565%_
               (if (eq? _%table205557205561%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table205557205561%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self205567%_
                  (let ((__obj207076
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207076
                       _%table205565%_
                       '1
                       '#f
                       '#f))
                    __obj207076))
                 (__tmp207118
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205567%_ _%stx205562%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207118
             gxc#current-compile-method
             _%self205567%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords205574%_ . _%args205575%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords205574%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205574%_
                  'table:
                  absent-value))
               _%args205575%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args205558205581%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args205558205581%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp207120 (list gxc#::void-expression::t))
            (__tmp207119 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp207120
         '(state)
         __tmp207119
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args205553%_
        (apply make-instance gxc#::generate-meta::t _%$args205553%_)))
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
      (let ((__tmp207121
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
        (__make-atomic-promise __tmp207121)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords205528%_ _%state205525205529%_ _%stx205530%_)
        (let ((_%state205533%_
               (if (eq? _%state205525205529%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205525205529%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self205535%_
                  (let ((__obj207078
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207078
                       _%state205533%_
                       '1
                       '#f
                       '#f))
                    __obj207078))
                 (__tmp207122
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205535%_ _%stx205530%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207122
             gxc#current-compile-method
             _%self205535%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords205542%_ . _%args205543%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords205542%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205542%_
                  'state:
                  absent-value))
               _%args205543%_)))
    (define gxc#apply-generate-meta
      (lambda _%args205526205549%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args205526205549%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp207124 (list)) (__tmp207123 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp207124
         '(state)
         __tmp207123
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args205521%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args205521%_)))
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
      (let ((__tmp207125
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
        (__make-atomic-promise __tmp207125)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords205496%_ _%state205493205497%_ _%stx205498%_)
        (let ((_%state205501%_
               (if (eq? _%state205493205497%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205493205497%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self205503%_
                  (let ((__obj207080
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj207080
                       _%state205501%_
                       '1
                       '#f
                       '#f))
                    __obj207080))
                 (__tmp207126
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205503%_ _%stx205498%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207126
             gxc#current-compile-method
             _%self205503%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords205510%_ . _%args205511%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords205510%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205510%_
                  'state:
                  absent-value))
               _%args205511%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args205494205517%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args205494205517%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self205422%_ _%stx205423%_)
        (let* ((_%g205425205442%_
                (lambda (_%g205426205439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205426205439%_))))
               (_%g205424205489%_
                (lambda (_%g205426205445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205426205445%_))
                      (let ((_%e205429205447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205426205445%_))))
                        (let ((_%hd205430205450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205429205447%_)))
                              (_%tl205431205452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205429205447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205431205452%_))
                              (let ((_%e205432205455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205431205452%_))))
                                (let ((_%hd205433205458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205432205455%_)))
                                      (_%tl205434205460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205432205455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205434205460%_))
                                      (let ((_%e205435205463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205434205460%_))))
                                        (let ((_%hd205436205466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205435205463%_)))
                                              (_%tl205437205468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205435205463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205437205468%_))
                                              ((lambda (_%g205427205471%_
                                                        _%g205428205472%_)
                                                 (let ((__tmp207127
                                                        (lambda (_%bind205487%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind205487%_))
                      (gxc#add-module-binding! _%bind205487%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp207127
                                                    _%g205428205472%_)))
                                               _%hd205436205466%_
                                               _%hd205433205458%_)
                                              (_%g205425205442%_
                                               _%g205426205445%_))))
                                      (_%g205425205442%_ _%g205426205445%_))))
                              (_%g205425205442%_ _%g205426205445%_))))
                      (_%g205425205442%_ _%g205426205445%_)))))
          (_%g205424205489%_ _%stx205423%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self205354%_ _%stx205355%_)
        (let* ((_%g205357205374%_
                (lambda (_%g205358205371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205358205371%_))))
               (_%g205356205419%_
                (lambda (_%g205358205377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205358205377%_))
                      (let ((_%e205361205379%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205358205377%_))))
                        (let ((_%hd205362205382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205361205379%_)))
                              (_%tl205363205384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205361205379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205363205384%_))
                              (let ((_%e205364205387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205363205384%_))))
                                (let ((_%hd205365205390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205364205387%_)))
                                      (_%tl205366205392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205364205387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205366205392%_))
                                      (let ((_%e205367205395%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205366205392%_))))
                                        (let ((_%hd205368205398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205367205395%_)))
                                              (_%tl205369205400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205367205395%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205369205400%_))
                                              ((lambda (_%g205359205403%_
                                                        _%g205360205404%_)
                                                 (gxc#add-module-binding!
                                                  _%g205360205404%_
                                                  '#t))
                                               _%hd205368205398%_
                                               _%hd205365205390%_)
                                              (_%g205357205374%_
                                               _%g205358205377%_))))
                                      (_%g205357205374%_ _%g205358205377%_))))
                              (_%g205357205374%_ _%g205358205377%_))))
                      (_%g205357205374%_ _%g205358205377%_)))))
          (_%g205356205419%_ _%stx205355%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self205296%_ _%stx205297%_)
        (let* ((_%g205299205313%_
                (lambda (_%g205300205310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205300205310%_))))
               (_%g205298205351%_
                (lambda (_%g205300205316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205300205316%_))
                      (let ((_%e205303205318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205300205316%_))))
                        (let ((_%hd205304205321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205303205318%_)))
                              (_%tl205305205323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205303205318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205305205323%_))
                              (let ((_%e205306205326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205305205323%_))))
                                (let ((_%hd205307205329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205306205326%_)))
                                      (_%tl205308205331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205306205326%_))))
                                  ((lambda (_%g205301205334%_
                                            _%g205302205335%_)
                                     (let ((_%ctx205348%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g205302205335%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self205296%_
                                           'modules))
                                        (cons _%ctx205348%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self205296%_
                                                        'modules)))))
                                       (let ((__tmp207128
                                              (lambda ()
                                                (let ((__tmp207129
                                                       (##structure-ref
                                                        _%ctx205348%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205296%_
                                                   __tmp207129)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp207128
                                          gx#current-expander-context
                                          _%ctx205348%_))))
                                   _%tl205308205331%_
                                   _%hd205307205329%_)))
                              (_%g205299205313%_ _%g205300205316%_))))
                      (_%g205299205313%_ _%g205300205316%_)))))
          (_%g205298205351%_ _%stx205297%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls205250205252%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls205250205252%_
              (let ((_%decls205254%_ _%decls205250205252%_))
                (let _%lp205256%_ ((_%rest205258%_ _%decls205254%_))
                  (let* ((_%rest205259205267%_ _%rest205258%_)
                         (_%else205261205275%_ (lambda () '#f))
                         (_%K205263205284%_
                          (lambda (_%decls205278%_ _%decl205279%_)
                            (if (equal? _%decl205279%_ '(not safe))
                                '#t
                                (if (equal? _%decl205279%_ '(safe))
                                    '#f
                                    (_%lp205256%_ _%decls205278%_))))))
                    (if (pair? _%rest205259205267%_)
                        (let ((_%hd205264205287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest205259205267%_)))
                              (_%tl205265205289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest205259205267%_))))
                          (let* ((_%decl205292%_ _%hd205264205287%_)
                                 (_%decls205294%_ _%tl205265205289%_))
                            (_%K205263205284%_
                             _%decls205294%_
                             _%decl205292%_)))
                        (_%else205261205275%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id205244%_ _%syntax?205245%_)
        (let ((_%eid205247%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id205244%_))
                '1
                gx#binding::t
                '#f))
              (_%ht205248%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid205247%_))
              '#!void
              (let ((__tmp207130
                     (let ((__tmp207131
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid205247%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp207131 _%syntax?205245%_))))
                (declare (not safe))
                (hash-put! _%ht205248%_ _%eid205247%_ __tmp207130))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self205241%_ _%stx205242%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self205088%_ _%stx205089%_)
        (letrec ((_%simplify205091%_
                  (lambda (_%body205139%_)
                    (let _%lp205141%_ ((_%rest205143%_ _%body205139%_)
                                       (_%r205144%_ '()))
                      (let* ((_%rest205145205153%_ _%rest205143%_)
                             (_%else205147205161%_
                              (lambda () (reverse _%r205144%_)))
                             (_%K205149205229%_
                              (lambda (_%rest205164%_ _%hd205165%_)
                                (let* ((_%hd205166205182%_ _%hd205165%_)
                                       (_%else205170205190%_
                                        (lambda ()
                                          (_%lp205141%_
                                           _%rest205164%_
                                           (cons _%hd205165%_ _%r205144%_)))))
                                  (let ((_%K205178205219%_
                                         (lambda (_%exprs205217%_)
                                           (_%lp205141%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest205164%_
                                               _%exprs205217%_))
                                            _%r205144%_)))
                                        (_%K205173205203%_
                                         (lambda ()
                                           (if (null? _%rest205164%_)
                                               (_%lp205141%_
                                                _%rest205164%_
                                                (cons _%hd205165%_
                                                      _%r205144%_))
                                               (_%lp205141%_
                                                _%rest205164%_
                                                _%r205144%_))))
                                        (_%K205172205195%_
                                         (lambda ()
                                           (if (null? _%rest205164%_)
                                               (_%lp205141%_
                                                _%rest205164%_
                                                (cons _%hd205165%_
                                                      _%r205144%_))
                                               (_%lp205141%_
                                                _%rest205164%_
                                                _%r205144%_)))))
                                    (let ((_%try-match205169205198%_
                                           (lambda ()
                                             (if (symbol? _%hd205166205182%_)
                                                 (_%K205172205195%_)
                                                 (_%else205170205190%_)))))
                                      (if (pair? _%hd205166205182%_)
                                          (let ((_%tl205180205224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd205166205182%_)))
                                                (_%hd205179205222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd205166205182%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd205179205222%_
                                                         'begin))
                                                (let ((_%exprs205227%_
                                                       _%tl205180205224%_))
                                                  (_%K205178205219%_
                                                   _%exprs205227%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd205179205222%_
                                                             'quote))
                                                    (if (pair? _%tl205180205224%_)
                                                        (let ((_%tl205177205211%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl205180205224%_))))
                  (if (null? _%tl205177205211%_)
                      (_%K205173205203%_)
                      (_%try-match205169205198%_)))
                (_%try-match205169205198%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match205169205198%_))))
                                          (_%try-match205169205198%_))))))))
                        (if (pair? _%rest205145205153%_)
                            (let ((_%hd205150205232%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest205145205153%_)))
                                  (_%tl205151205234%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest205145205153%_))))
                              (let* ((_%hd205237%_ _%hd205150205232%_)
                                     (_%rest205239%_ _%tl205151205234%_))
                                (_%K205149205229%_
                                 _%rest205239%_
                                 _%hd205237%_)))
                            (_%else205147205161%_)))))))
          (let* ((_%g205093205103%_
                  (lambda (_%g205094205100%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g205094205100%_))))
                 (_%g205092205136%_
                  (lambda (_%g205094205106%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g205094205106%_))
                        (let ((_%e205096205108%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g205094205106%_))))
                          (let ((_%hd205097205111%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205096205108%_)))
                                (_%tl205098205113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205096205108%_))))
                            ((lambda (_%g205095205116%_)
                               (let* ((_%body205131%_
                                       (map (lambda (_%g205126205128%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self205088%_
                                                 _%g205126205128%_)))
                                            _%g205095205116%_))
                                      (_%body205133%_
                                       (_%simplify205091%_ _%body205131%_)))
                                 (if (let ((__tmp207132
                                            (length _%body205133%_)))
                                       (declare (not safe))
                                       (##fx= __tmp207132 '1))
                                     (car _%body205133%_)
                                     (cons 'begin _%body205133%_))))
                             _%tl205098205113%_)))
                        (_%g205093205103%_ _%g205094205106%_)))))
            (_%g205092205136%_ _%stx205089%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self205049%_ _%stx205050%_)
        (let* ((_%g205052205062%_
                (lambda (_%g205053205059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205053205059%_))))
               (_%g205051205085%_
                (lambda (_%g205053205065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205053205065%_))
                      (let ((_%e205055205067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205053205065%_))))
                        (let ((_%hd205056205070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205055205067%_)))
                              (_%tl205057205072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205055205067%_))))
                          ((lambda (_%g205054205075%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g205054205075%_))))
                           _%tl205057205072%_)))
                      (_%g205052205062%_ _%g205053205065%_)))))
          (_%g205051205085%_ _%stx205050%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self204815%_ _%stx204816%_)
        (let* ((_%__stx205722205723%_ _%stx204816%_)
               (_%g204820204872%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205722205723%_)))))
          (let ((_%__kont205724205725%_
                 (lambda (_%g204822205031%_ _%g204823205032%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self204815%_ _%g204822205031%_))))
                (_%__kont205726205727%_
                 (lambda (_%g204833204979%_
                          _%g204834204980%_
                          _%g204835204981%_)
                   (if (let ((__tmp207133
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g204835204981%_))))
                         (declare (not safe))
                         (##memq __tmp207133 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self204815%_
                          _%g204833204979%_)))))
                (_%__kont205730205731%_
                 (lambda (_%g204857204901%_ _%g204858204902%_)
                   (let ((_%decls204917%_
                          (map gx#syntax->datum _%g204858204902%_)))
                     (let ((__tmp207136
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls204917%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204815%_
                                                   _%g204857204901%_))
                                                '())))))
                           (__tmp207134
                            (let ((__tmp207135
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp207135 _%decls204917%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp207136
                        gxc#current-compile-decls
                        __tmp207134))))))
            (let* ((_%__match205777205778%_
                    (lambda (_%e204836204925%_
                             _%hd204837204928%_
                             _%tl204838204930%_
                             _%e204839204933%_
                             _%hd204840204936%_
                             _%tl204841204938%_
                             _%e204842204941%_
                             _%hd204843204944%_
                             _%tl204844204946%_
                             _%__splice205728205729%_
                             _%target204845204949%_
                             _%tl204847204951%_)
                      (letrec ((_%loop204848204954%_
                                (lambda (_%hd204846204957%_
                                         _%param204852204959%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204846204957%_))
                                      (let ((_%e204849204961%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204846204957%_))))
                                        (let ((_%lp-tl204851204966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204849204961%_)))
                                              (_%lp-hd204850204964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204849204961%_))))
                                          (_%loop204848204954%_
                                           _%lp-tl204851204966%_
                                           (cons _%lp-hd204850204964%_
                                                 _%param204852204959%_))))
                                      (let ((_%param204853204969%_
                                             (reverse _%param204852204959%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204841204938%_))
                                            (let ((_%e204854204971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204841204938%_))))
                                              (let ((_%tl204856204976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204854204971%_)))
                                                    (_%hd204855204974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204854204971%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204856204976%_))
                                                    (let ((_%g204833204979%_
                                                           _%hd204855204974%_)
                                                          (_%g204834204980%_
                                                           _%param204853204969%_)
                                                          (_%g204835204981%_
                                                           _%hd204843204944%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g204835204981%_))
                       (not (let ((__tmp207137
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g204835204981%_))))
                              (declare (not safe))
                              (##memq __tmp207137 gxc#gambit-annotations))))
                  (_%__kont205726205727%_
                   _%g204833204979%_
                   _%g204834204980%_
                   _%g204835204981%_)
                  (_%__kont205730205731%_
                   _%hd204855204974%_
                   _%hd204840204936%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g204820204872%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g204820204872%_))))))))
                        (_%loop204848204954%_ _%target204845204949%_ '()))))
                   (_%__match205751205752%_
                    (lambda (_%e204824205007%_
                             _%hd204825205010%_
                             _%tl204826205012%_
                             _%e204827205015%_
                             _%hd204828205018%_
                             _%tl204829205020%_
                             _%e204830205023%_
                             _%hd204831205026%_
                             _%tl204832205028%_)
                      (let ((_%g204822205031%_ _%hd204831205026%_)
                            (_%g204823205032%_ _%hd204828205018%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g204823205032%_))
                            (_%__kont205724205725%_
                             _%g204822205031%_
                             _%g204823205032%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204828205018%_))
                                (let ((_%e204842204941%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd204828205018%_))))
                                  (let ((_%tl204844204946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204842204941%_)))
                                        (_%hd204843204944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204842204941%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl204844204946%_))
                                        (let ((_%__splice205728205729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl204844204946%_
                                                  '0))))
                                          (let ((_%tl204847204951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice205728205729%_
                                                    '1)))
                                                (_%target204845204949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice205728205729%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204847204951%_))
                                                (_%__match205777205778%_
                                                 _%e204824205007%_
                                                 _%hd204825205010%_
                                                 _%tl204826205012%_
                                                 _%e204827205015%_
                                                 _%hd204828205018%_
                                                 _%tl204829205020%_
                                                 _%e204842204941%_
                                                 _%hd204843204944%_
                                                 _%tl204844204946%_
                                                 _%__splice205728205729%_
                                                 _%target204845204949%_
                                                 _%tl204847204951%_)
                                                (_%__kont205730205731%_
                                                 _%hd204831205026%_
                                                 _%hd204828205018%_))))
                                        (_%__kont205730205731%_
                                         _%hd204831205026%_
                                         _%hd204828205018%_))))
                                (_%__kont205730205731%_
                                 _%hd204831205026%_
                                 _%hd204828205018%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205722205723%_))
                  (let ((_%e204824205007%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205722205723%_))))
                    (let ((_%tl204826205012%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204824205007%_)))
                          (_%hd204825205010%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204824205007%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204826205012%_))
                          (let ((_%e204827205015%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204826205012%_))))
                            (let ((_%tl204829205020%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204827205015%_)))
                                  (_%hd204828205018%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204827205015%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204829205020%_))
                                  (let ((_%e204830205023%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204829205020%_))))
                                    (let ((_%tl204832205028%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204830205023%_)))
                                          (_%hd204831205026%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204830205023%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204832205028%_))
                                          (_%__match205751205752%_
                                           _%e204824205007%_
                                           _%hd204825205010%_
                                           _%tl204826205012%_
                                           _%e204827205015%_
                                           _%hd204828205018%_
                                           _%tl204829205020%_
                                           _%e204830205023%_
                                           _%hd204831205026%_
                                           _%tl204832205028%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd204828205018%_))
                                              (let ((_%e204842204941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204828205018%_))))
                                                (let ((_%tl204844204946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204842204941%_)))
                                                      (_%hd204843204944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204842204941%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204844204946%_))
                                                      (let ((_%__splice205728205729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204844204946%_
                        '0))))
                (let ((_%tl204847204951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205728205729%_ '1)))
                      (_%target204845204949%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205728205729%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204847204951%_))
                      (_%__match205777205778%_
                       _%e204824205007%_
                       _%hd204825205010%_
                       _%tl204826205012%_
                       _%e204827205015%_
                       _%hd204828205018%_
                       _%tl204829205020%_
                       _%e204842204941%_
                       _%hd204843204944%_
                       _%tl204844204946%_
                       _%__splice205728205729%_
                       _%target204845204949%_
                       _%tl204847204951%_)
                      (let () (declare (not safe)) (_%g204820204872%_)))))
              (let () (declare (not safe)) (_%g204820204872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204820204872%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204828205018%_))
                                      (let ((_%e204842204941%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204828205018%_))))
                                        (let ((_%tl204844204946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204842204941%_)))
                                              (_%hd204843204944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204842204941%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204844204946%_))
                                              (let ((_%__splice205728205729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204844204946%_
                                                        '0))))
                                                (let ((_%tl204847204951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205728205729%_
                                                          '1)))
                                                      (_%target204845204949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205728205729%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204847204951%_))
                                                      (_%__match205777205778%_
                                                       _%e204824205007%_
                                                       _%hd204825205010%_
                                                       _%tl204826205012%_
                                                       _%e204827205015%_
                                                       _%hd204828205018%_
                                                       _%tl204829205020%_
                                                       _%e204842204941%_
                                                       _%hd204843204944%_
                                                       _%tl204844204946%_
                                                       _%__splice205728205729%_
                                                       _%target204845204949%_
                                                       _%tl204847204951%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204820204872%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204820204872%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204820204872%_))))))
                          (let () (declare (not safe)) (_%g204820204872%_)))))
                  (let () (declare (not safe)) (_%g204820204872%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self204774%_ _%stx204775%_)
        (let* ((_%g204777204787%_
                (lambda (_%g204778204784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204778204784%_))))
               (_%g204776204812%_
                (lambda (_%g204778204790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204778204790%_))
                      (let ((_%e204780204792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204778204790%_))))
                        (let ((_%hd204781204795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204780204792%_)))
                              (_%tl204782204797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204780204792%_))))
                          ((lambda (_%g204779204800%_)
                             (let ((_%decls204810%_
                                    (map gx#syntax->datum _%g204779204800%_)))
                               (let ((__tmp207138
                                      (let ((__tmp207139
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp207139
                                         _%decls204810%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp207138))
                               (cons 'declare _%decls204810%_)))
                           _%tl204782204797%_)))
                      (_%g204777204787%_ _%g204778204790%_)))))
          (_%g204776204812%_ _%stx204775%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self204521%_ _%stx204522%_)
        (let* ((_%g204524204541%_
                (lambda (_%g204525204538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204525204538%_))))
               (_%g204523204771%_
                (lambda (_%g204525204544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204525204544%_))
                      (let ((_%e204528204546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204525204544%_))))
                        (let ((_%hd204529204549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204528204546%_)))
                              (_%tl204530204551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204528204546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204530204551%_))
                              (let ((_%e204531204554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204530204551%_))))
                                (let ((_%hd204532204557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204531204554%_)))
                                      (_%tl204533204559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204531204554%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204533204559%_))
                                      (let ((_%e204534204562%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204533204559%_))))
                                        (let ((_%hd204535204565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204534204562%_)))
                                              (_%tl204536204567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204534204562%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204536204567%_))
                                              ((lambda (_%g204526204570%_
                                                        _%g204527204571%_)
                                                 (let* ((_%__stx205830205831%_
                                                         _%g204527204571%_)
                                                        (_%g204588204602%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx205830205831%_)))))
                                                   (let ((_%__kont205832205833%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self204521%_
                                                               _%g204526204570%_))))
                                                         (_%__kont205834205835%_
                                                          (lambda (_%g204594204734%_)
                                                            (let ((_%eid204743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g204594204734%_))))
                      (let ((_%lambda-expr204744204746%_
                             (gxc#apply-find-lambda-expression
                              _%g204526204570%_)))
                        (if _%lambda-expr204744204746%_
                            (let* ((_%lambda-expr204748%_
                                    _%lambda-expr204744204746%_)
                                   (__tmp207140
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp207140
                               _%lambda-expr204748%_
                               _%eid204743%_))
                            '#f))
                      (cons 'define
                            (cons _%eid204743%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self204521%_
                                           _%g204526204570%_))
                                        '()))))))
                 (_%__kont205836205837%_
                  (lambda ()
                    (let* ((_%tmp204609%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body204718%_
                            (let _%lp204611%_ ((_%rest204613%_
                                                _%g204527204571%_)
                                               (_%k204614%_ '0)
                                               (_%r204615%_ '()))
                              (let* ((_%__stx205800205801%_ _%rest204613%_)
                                     (_%g204620204637%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx205800205801%_)))))
                                (let ((_%__kont205802205803%_
                                       (lambda (_%g204622204705%_)
                                         (_%lp204611%_
                                          _%g204622204705%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k204614%_ '1))
                                          _%r204615%_)))
                                      (_%__kont205804205805%_
                                       (lambda (_%g204627204678%_
                                                _%g204628204679%_)
                                         (_%lp204611%_
                                          _%g204627204678%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k204614%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g204628204679%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp204609%_
                           _%k204614%_
                           _%g204627204678%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r204615%_))))
                                      (_%__kont205806205807%_
                                       (lambda (_%g204632204649%_)
                                         (let ((__tmp207141
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g204632204649%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp204609%_
                                 _%k204614%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp207141
                                            _%r204615%_))))
                                      (_%__kont205808205809%_
                                       (lambda () (reverse _%r204615%_))))
                                  (let ((_%g204618204665%_
                                         (lambda ()
                                           (let ((_%g204632204649%_
                                                  _%__stx205800205801%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g204632204649%_))
                                                 (_%__kont205806205807%_
                                                  _%g204632204649%_)
                                                 (_%__kont205808205809%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205800205801%_))
                                        (let ((_%e204623204694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205800205801%_))))
                                          (let ((_%tl204625204699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204623204694%_)))
                                                (_%hd204624204697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204623204694%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204624204697%_))
                                                (let ((_%e204626204702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204624204697%_))))
                                                  (if (equal? _%e204626204702%_
                                                              '#f)
                                                      (_%__kont205802205803%_
                                                       _%tl204625204699%_)
                                                      (_%__kont205804205805%_
                                                       _%tl204625204699%_
                                                       _%hd204624204697%_)))
                                                (_%__kont205804205805%_
                                                 _%tl204625204699%_
                                                 _%hd204624204697%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g204618204665%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp204609%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self204521%_
                                                       _%g204526204570%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp204609%_
                                         _%g204527204571%_
                                         _%g204526204570%_)
                                        _%body204718%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx205830205831%_))
                                                         (let ((_%e204590204755%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx205830205831%_))))
                   (let ((_%tl204592204760%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e204590204755%_)))
                         (_%hd204591204758%_
                          (let ()
                            (declare (not safe))
                            (##car _%e204590204755%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd204591204758%_))
                         (let ((_%e204593204763%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd204591204758%_))))
                           (if (equal? _%e204593204763%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl204592204760%_))
                                   (_%__kont205832205833%_)
                                   (_%__kont205836205837%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl204592204760%_))
                                   (_%__kont205834205835%_ _%hd204591204758%_)
                                   (_%__kont205836205837%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl204592204760%_))
                             (_%__kont205834205835%_ _%hd204591204758%_)
                             (_%__kont205836205837%_)))))
                 (_%__kont205836205837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204535204565%_
                                               _%hd204532204557%_)
                                              (_%g204524204541%_
                                               _%g204525204544%_))))
                                      (_%g204524204541%_ _%g204525204544%_))))
                              (_%g204524204541%_ _%g204525204544%_))))
                      (_%g204524204541%_ _%g204525204544%_)))))
          (_%g204523204771%_ _%stx204522%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals204496%_ _%hd204497%_ _%expr204498%_)
        (let ((_%$e204500%_ (gxc#apply-count-values _%expr204498%_)))
          (if _%$e204500%_
              ((lambda (_%count204503%_)
                 (let ((_%len204505%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd204497%_)))
                       (_%cmp204506%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd204497%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len204505%_ '0))
                           (_%cmp204506%_ _%count204503%_ _%len204505%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr204498%_
                          _%hd204497%_)))))
               _%$e204500%_)
              (let* ((_%len204512%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd204497%_)))
                     (_%cmp204514%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd204497%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg204516%_
                      (let ((__tmp207143
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd204497%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp207142 (number->string _%len204512%_)))
                        (declare (not safe))
                        (##string-append __tmp207143 __tmp207142 '" values")))
                     (_%count204518%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd204497%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len204512%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count204518%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals204496%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp204514%_
                                (cons _%count204518%_
                                      (cons _%len204512%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp204514%_
                                                        (cons _%count204518%_
                                                              (cons _%len204512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg204516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count204518%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var204491%_)
        (letrec ((_%generate-inline204493%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var204491%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var204491%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204493%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204493%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var204484%_ _%i204485%_ _%rest204486%_)
        (letrec ((_%generate-inline204488%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i204485%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest204486%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var204484%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var204484%_
                                                      (cons '0 '())))
                                          (cons _%var204484%_ '()))))
                        (cons '##values-ref
                              (cons _%var204484%_ (cons _%i204485%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204488%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204488%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var204478%_ _%i204479%_)
        (if (let () (declare (not safe)) (##fx= _%i204479%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var204478%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var204478%_ '()))
                                  (cons (cons 'list (cons _%var204478%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var204478%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var204478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var204478%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i204479%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var204478%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var204478%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var204478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var204478%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var204478%_ '()))
                                (cons _%i204479%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var204478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i204479%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self204410%_ _%stx204411%_)
        (let* ((_%g204413204430%_
                (lambda (_%g204414204427%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204414204427%_))))
               (_%g204412204475%_
                (lambda (_%g204414204433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204414204433%_))
                      (let ((_%e204417204435%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204414204433%_))))
                        (let ((_%hd204418204438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204417204435%_)))
                              (_%tl204419204440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204417204435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204419204440%_))
                              (let ((_%e204420204443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204419204440%_))))
                                (let ((_%hd204421204446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204420204443%_)))
                                      (_%tl204422204448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204420204443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204422204448%_))
                                      (let ((_%e204423204451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204422204448%_))))
                                        (let ((_%hd204424204454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204423204451%_)))
                                              (_%tl204425204456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204423204451%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204425204456%_))
                                              ((lambda (_%g204415204459%_
                                                        _%g204416204460%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self204410%_
                                                  _%g204416204460%_
                                                  _%g204415204459%_))
                                               _%hd204424204454%_
                                               _%hd204421204446%_)
                                              (_%g204413204430%_
                                               _%g204414204433%_))))
                                      (_%g204413204430%_ _%g204414204433%_))))
                              (_%g204413204430%_ _%g204414204433%_))))
                      (_%g204413204430%_ _%g204414204433%_)))))
          (_%g204412204475%_ _%stx204411%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self204369%_ _%hd204370%_ _%body204371%_)
        (let* ((_%hd204373%_ (gxc#generate-runtime-lambda-head _%hd204370%_))
               (_%body204375%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self204369%_ _%body204371%_)))
               (_%body204407%_
                (let* ((_%body204376204384%_ _%body204375%_)
                       (_%else204378204392%_
                        (lambda () (cons _%body204375%_ '())))
                       (_%K204380204397%_
                        (lambda (_%exprs204395%_) _%exprs204395%_)))
                  (if (pair? _%body204376204384%_)
                      (let ((_%hd204381204400%_
                             (let ()
                               (declare (not safe))
                               (##car _%body204376204384%_)))
                            (_%tl204382204402%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body204376204384%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd204381204400%_ 'begin))
                            (let ((_%exprs204405%_ _%tl204382204402%_))
                              (_%K204380204397%_ _%exprs204405%_))
                            (_%else204378204392%_)))
                      (_%else204378204392%_)))))
          (cons 'lambda (cons _%hd204373%_ _%body204407%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd204367%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd204367%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self202924%_ _%stx202925%_)
        (letrec ((_%dispatch-case?202927%_
                  (lambda (_%hd203605%_ _%body203606%_)
                    (let* ((_%form203608%_
                            (cons _%hd203605%_ (cons _%body203606%_ '())))
                           (_%__stx205862205863%_ _%form203608%_)
                           (_%g203613203770%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205862205863%_)))))
                      (let ((_%__kont205864205865%_
                             (lambda (_%g203615204287%_
                                      _%g203616204288%_
                                      _%g203617204289%_)
                               '#t))
                            (_%__kont205870205871%_
                             (lambda (_%g203660204079%_
                                      _%g203661204080%_
                                      _%g203662204081%_
                                      _%g203663204082%_
                                      _%g203664204083%_
                                      _%g203665204084%_)
                               '#t))
                            (_%__kont205876205877%_
                             (lambda (_%g203726203878%_
                                      _%g203727203879%_
                                      _%g203728203880%_
                                      _%g203729203881%_)
                               '#t))
                            (_%__kont205878205879%_ (lambda () '#f)))
                        (let* ((_%__match206003206004%_
                                (lambda (_%e203730203782%_
                                         _%hd203731203785%_
                                         _%tl203732203787%_
                                         _%e203733203790%_
                                         _%hd203734203793%_
                                         _%tl203735203795%_
                                         _%e203736203798%_
                                         _%hd203737203801%_
                                         _%tl203738203803%_
                                         _%e203739203806%_
                                         _%hd203740203809%_
                                         _%tl203741203811%_
                                         _%e203742203814%_
                                         _%hd203743203817%_
                                         _%tl203744203819%_
                                         _%e203745203822%_
                                         _%hd203746203825%_
                                         _%tl203747203827%_
                                         _%e203748203830%_
                                         _%hd203749203833%_
                                         _%tl203750203835%_
                                         _%e203751203838%_
                                         _%hd203752203841%_
                                         _%tl203753203843%_
                                         _%e203754203846%_
                                         _%hd203755203849%_
                                         _%tl203756203851%_
                                         _%e203757203854%_
                                         _%hd203758203857%_
                                         _%tl203759203859%_
                                         _%e203760203862%_
                                         _%hd203761203865%_
                                         _%tl203762203867%_
                                         _%e203763203870%_
                                         _%hd203764203873%_
                                         _%tl203765203875%_)
                                  (let ((_%g203726203878%_ _%hd203764203873%_)
                                        (_%g203727203879%_ _%hd203755203849%_)
                                        (_%g203728203880%_ _%hd203746203825%_)
                                        (_%g203729203881%_ _%hd203731203785%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g203729203881%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g203728203880%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g203729203881%_
                                                _%g203726203878%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g203727203879%_
                                                     _%g203729203881%_))))
                                        (_%__kont205876205877%_
                                         _%g203726203878%_
                                         _%g203727203879%_
                                         _%g203728203880%_
                                         _%g203729203881%_)
                                        (_%__kont205878205879%_)))))
                               (_%__match205975205976%_
                                (lambda (_%e203730203782%_
                                         _%hd203731203785%_
                                         _%tl203732203787%_
                                         _%e203733203790%_
                                         _%hd203734203793%_
                                         _%tl203735203795%_
                                         _%e203736203798%_
                                         _%hd203737203801%_
                                         _%tl203738203803%_
                                         _%e203739203806%_
                                         _%hd203740203809%_
                                         _%tl203741203811%_
                                         _%e203742203814%_
                                         _%hd203743203817%_
                                         _%tl203744203819%_
                                         _%e203745203822%_
                                         _%hd203746203825%_
                                         _%tl203747203827%_
                                         _%e203748203830%_
                                         _%hd203749203833%_
                                         _%tl203750203835%_
                                         _%e203751203838%_
                                         _%hd203752203841%_
                                         _%tl203753203843%_
                                         _%e203754203846%_
                                         _%hd203755203849%_
                                         _%tl203756203851%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203750203835%_))
                                      (let ((_%e203757203854%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203750203835%_))))
                                        (let ((_%tl203759203859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203757203854%_)))
                                              (_%hd203758203857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203757203854%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203758203857%_))
                                              (let ((_%e203760203862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203758203857%_))))
                                                (let ((_%tl203762203867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203760203862%_)))
                                                      (_%hd203761203865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203760203862%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd203761203865%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd203761203865%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203762203867%_))
                      (let ((_%e203763203870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203762203867%_))))
                        (let ((_%tl203765203875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203763203870%_)))
                              (_%hd203764203873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203763203870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203765203875%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203759203859%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203735203795%_))
                                      (_%__match206003206004%_
                                       _%e203730203782%_
                                       _%hd203731203785%_
                                       _%tl203732203787%_
                                       _%e203733203790%_
                                       _%hd203734203793%_
                                       _%tl203735203795%_
                                       _%e203736203798%_
                                       _%hd203737203801%_
                                       _%tl203738203803%_
                                       _%e203739203806%_
                                       _%hd203740203809%_
                                       _%tl203741203811%_
                                       _%e203742203814%_
                                       _%hd203743203817%_
                                       _%tl203744203819%_
                                       _%e203745203822%_
                                       _%hd203746203825%_
                                       _%tl203747203827%_
                                       _%e203748203830%_
                                       _%hd203749203833%_
                                       _%tl203750203835%_
                                       _%e203751203838%_
                                       _%hd203752203841%_
                                       _%tl203753203843%_
                                       _%e203754203846%_
                                       _%hd203755203849%_
                                       _%tl203756203851%_
                                       _%e203757203854%_
                                       _%hd203758203857%_
                                       _%tl203759203859%_
                                       _%e203760203862%_
                                       _%hd203761203865%_
                                       _%tl203762203867%_
                                       _%e203763203870%_
                                       _%hd203764203873%_
                                       _%tl203765203875%_)
                                      (_%__kont205878205879%_))
                                  (_%__kont205878205879%_))
                              (_%__kont205878205879%_))))
                      (_%__kont205878205879%_))
                  (_%__kont205878205879%_))
              (_%__kont205878205879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205878205879%_))))
                                      (_%__kont205878205879%_))))
                               (_%__match205905205906%_
                                (lambda (_%e203666203923%_
                                         _%hd203667203926%_
                                         _%tl203668203928%_
                                         _%__splice205872205873%_
                                         _%target203669203931%_
                                         _%tl203671203933%_)
                                  (letrec ((_%loop203672203936%_
                                            (lambda (_%hd203670203939%_
                                                     _%arg203676203941%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203670203939%_))
                                                  (let ((_%e203673203943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203670203939%_))))
                                                    (let ((_%lp-tl203675203948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203673203943%_)))
                                                          (_%lp-hd203674203946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203673203943%_))))
                                                      (_%loop203672203936%_
                                                       _%lp-tl203675203948%_
                                                       (cons _%lp-hd203674203946%_
                                                             _%arg203676203941%_))))
                                                  (let ((_%arg203677203951%_
                                                         (reverse _%arg203676203941%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203668203928%_))
                                                        (let ((_%e203678203953%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203668203928%_))))
                  (let ((_%tl203680203958%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203678203953%_)))
                        (_%hd203679203956%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203678203953%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203679203956%_))
                        (let ((_%e203681203961%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203679203956%_))))
                          (let ((_%tl203683203966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203681203961%_)))
                                (_%hd203682203964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203681203961%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203682203964%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203682203964%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203683203966%_))
                                        (let ((_%e203684203969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203683203966%_))))
                                          (let ((_%tl203686203974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203684203969%_)))
                                                (_%hd203685203972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203684203969%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203685203972%_))
                                                (let ((_%e203687203977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203685203972%_))))
                                                  (let ((_%tl203689203982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203687203977%_)))
                                                        (_%hd203688203980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203687203977%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203688203980%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203688203980%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203689203982%_))
                        (let ((_%e203690203985%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203689203982%_))))
                          (let ((_%tl203692203990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203690203985%_)))
                                (_%hd203691203988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203690203985%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203692203990%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203686203974%_))
                                    (let ((_%e203693203993%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl203686203974%_))))
                                      (let ((_%tl203695203998%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203693203993%_)))
                                            (_%hd203694203996%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203693203993%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203694203996%_))
                                            (let ((_%e203696204001%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd203694203996%_))))
                                              (let ((_%tl203698204006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203696204001%_)))
                                                    (_%hd203697204004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203696204001%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203697204004%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd203697204004%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203698204006%_))
                                                            (let ((_%e203699204009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl203698204006%_))))
                      (let ((_%tl203701204014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203699204009%_)))
                            (_%hd203700204012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203699204009%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203701204014%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl203695203998%_))
                                (if (let ((__tmp207144
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl203695203998%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp207144 '1))
                                    (let ((_%__splice205874205875%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203695203998%_
                                              '1))))
                                      (let ((_%tl203704204019%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205874205875%_
                                                '1)))
                                            (_%target203702204017%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205874205875%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203704204019%_))
                                            (let ((_%e203711204022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203704204019%_))))
                                              (let ((_%tl203713204027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203711204022%_)))
                                                    (_%hd203712204025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203711204022%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd203712204025%_))
                                                    (let ((_%e203714204030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd203712204025%_))))
                                                      (let ((_%tl203716204035%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e203714204030%_)))
                    (_%hd203715204033%_
                     (let () (declare (not safe)) (##car _%e203714204030%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd203715204033%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd203715204033%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203716204035%_))
                            (let ((_%e203717204038%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl203716204035%_))))
                              (let ((_%tl203719204043%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203717204038%_)))
                                    (_%hd203718204041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203717204038%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl203719204043%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203713204027%_))
                                        (letrec ((_%loop203705204046%_
                                                  (lambda (_%hd203703204049%_
                                                           _%xarg203709204051%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203703204049%_))
                                                        (let ((_%e203706204053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd203703204049%_))))
                  (let ((_%lp-tl203708204058%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203706204053%_)))
                        (_%lp-hd203707204056%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203706204053%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203707204056%_))
                        (let ((_%e203720204061%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd203707204056%_))))
                          (let ((_%tl203722204066%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203720204061%_)))
                                (_%hd203721204064%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203720204061%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203721204064%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd203721204064%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203722204066%_))
                                        (let ((_%e203723204069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203722204066%_))))
                                          (let ((_%tl203725204074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203723204069%_)))
                                                (_%hd203724204072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203723204069%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203725204074%_))
                                                (_%loop203705204046%_
                                                 _%lp-tl203708204058%_
                                                 (cons _%hd203724204072%_
                                                       _%xarg203709204051%_))
                                                (_%__match205975205976%_
                                                 _%e203666203923%_
                                                 _%hd203667203926%_
                                                 _%tl203668203928%_
                                                 _%e203678203953%_
                                                 _%hd203679203956%_
                                                 _%tl203680203958%_
                                                 _%e203681203961%_
                                                 _%hd203682203964%_
                                                 _%tl203683203966%_
                                                 _%e203684203969%_
                                                 _%hd203685203972%_
                                                 _%tl203686203974%_
                                                 _%e203687203977%_
                                                 _%hd203688203980%_
                                                 _%tl203689203982%_
                                                 _%e203690203985%_
                                                 _%hd203691203988%_
                                                 _%tl203692203990%_
                                                 _%e203693203993%_
                                                 _%hd203694203996%_
                                                 _%tl203695203998%_
                                                 _%e203696204001%_
                                                 _%hd203697204004%_
                                                 _%tl203698204006%_
                                                 _%e203699204009%_
                                                 _%hd203700204012%_
                                                 _%tl203701204014%_))))
                                        (_%__match205975205976%_
                                         _%e203666203923%_
                                         _%hd203667203926%_
                                         _%tl203668203928%_
                                         _%e203678203953%_
                                         _%hd203679203956%_
                                         _%tl203680203958%_
                                         _%e203681203961%_
                                         _%hd203682203964%_
                                         _%tl203683203966%_
                                         _%e203684203969%_
                                         _%hd203685203972%_
                                         _%tl203686203974%_
                                         _%e203687203977%_
                                         _%hd203688203980%_
                                         _%tl203689203982%_
                                         _%e203690203985%_
                                         _%hd203691203988%_
                                         _%tl203692203990%_
                                         _%e203693203993%_
                                         _%hd203694203996%_
                                         _%tl203695203998%_
                                         _%e203696204001%_
                                         _%hd203697204004%_
                                         _%tl203698204006%_
                                         _%e203699204009%_
                                         _%hd203700204012%_
                                         _%tl203701204014%_))
                                    (_%__match205975205976%_
                                     _%e203666203923%_
                                     _%hd203667203926%_
                                     _%tl203668203928%_
                                     _%e203678203953%_
                                     _%hd203679203956%_
                                     _%tl203680203958%_
                                     _%e203681203961%_
                                     _%hd203682203964%_
                                     _%tl203683203966%_
                                     _%e203684203969%_
                                     _%hd203685203972%_
                                     _%tl203686203974%_
                                     _%e203687203977%_
                                     _%hd203688203980%_
                                     _%tl203689203982%_
                                     _%e203690203985%_
                                     _%hd203691203988%_
                                     _%tl203692203990%_
                                     _%e203693203993%_
                                     _%hd203694203996%_
                                     _%tl203695203998%_
                                     _%e203696204001%_
                                     _%hd203697204004%_
                                     _%tl203698204006%_
                                     _%e203699204009%_
                                     _%hd203700204012%_
                                     _%tl203701204014%_))
                                (_%__match205975205976%_
                                 _%e203666203923%_
                                 _%hd203667203926%_
                                 _%tl203668203928%_
                                 _%e203678203953%_
                                 _%hd203679203956%_
                                 _%tl203680203958%_
                                 _%e203681203961%_
                                 _%hd203682203964%_
                                 _%tl203683203966%_
                                 _%e203684203969%_
                                 _%hd203685203972%_
                                 _%tl203686203974%_
                                 _%e203687203977%_
                                 _%hd203688203980%_
                                 _%tl203689203982%_
                                 _%e203690203985%_
                                 _%hd203691203988%_
                                 _%tl203692203990%_
                                 _%e203693203993%_
                                 _%hd203694203996%_
                                 _%tl203695203998%_
                                 _%e203696204001%_
                                 _%hd203697204004%_
                                 _%tl203698204006%_
                                 _%e203699204009%_
                                 _%hd203700204012%_
                                 _%tl203701204014%_))))
                        (_%__match205975205976%_
                         _%e203666203923%_
                         _%hd203667203926%_
                         _%tl203668203928%_
                         _%e203678203953%_
                         _%hd203679203956%_
                         _%tl203680203958%_
                         _%e203681203961%_
                         _%hd203682203964%_
                         _%tl203683203966%_
                         _%e203684203969%_
                         _%hd203685203972%_
                         _%tl203686203974%_
                         _%e203687203977%_
                         _%hd203688203980%_
                         _%tl203689203982%_
                         _%e203690203985%_
                         _%hd203691203988%_
                         _%tl203692203990%_
                         _%e203693203993%_
                         _%hd203694203996%_
                         _%tl203695203998%_
                         _%e203696204001%_
                         _%hd203697204004%_
                         _%tl203698204006%_
                         _%e203699204009%_
                         _%hd203700204012%_
                         _%tl203701204014%_))))
                (let ((_%xarg203710204077%_ (reverse _%xarg203709204051%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203680203958%_))
                      (let ((_%g203660204079%_ _%hd203718204041%_)
                            (_%g203661204080%_ _%xarg203710204077%_)
                            (_%g203662204081%_ _%hd203700204012%_)
                            (_%g203663204082%_ _%hd203691203988%_)
                            (_%g203664204083%_ _%tl203671203933%_)
                            (_%g203665204084%_ _%arg203677203951%_))
                        (if (and (let ((__tmp207145
                                        (let ((__tmp207146
                                               (lambda (_%g204127204130%_
                                                        _%g204128204132%_)
                                                 (cons _%g204127204130%_
                                                       _%g204128204132%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp207146
                                           '()
                                           _%g203665204084%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp207145))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g203664204083%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g203663204082%_
                                    'apply))
                                 (let ((__tmp207149
                                        (length (let ((__tmp207150
                                                       (lambda (_%g204134204137%_
                                                                _%g204135204139%_)
                                                         (cons _%g204134204137%_
                                                               _%g204135204139%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp207150
                                                   '()
                                                   _%g203665204084%_))))
                                       (__tmp207147
                                        (length (let ((__tmp207148
                                                       (lambda (_%g204141204144%_
                                                                _%g204142204146%_)
                                                         (cons _%g204141204144%_
                                                               _%g204142204146%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp207148
                                                   '()
                                                   _%g203661204080%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp207149 __tmp207147))
                                 (let ((__tmp207153
                                        (let ((__tmp207154
                                               (lambda (_%g204148204151%_
                                                        _%g204149204153%_)
                                                 (cons _%g204148204151%_
                                                       _%g204149204153%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp207154
                                           '()
                                           _%g203665204084%_)))
                                       (__tmp207151
                                        (let ((__tmp207152
                                               (lambda (_%g204155204158%_
                                                        _%g204156204160%_)
                                                 (cons _%g204155204158%_
                                                       _%g204156204160%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp207152
                                           '()
                                           _%g203661204080%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp207153
                                    __tmp207151))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g203664204083%_
                                    _%g203660204079%_))
                                 (not (let ((__tmp207158
                                             (lambda (_%g204162204164%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g204162204164%_
                                                  _%g203662204081%_))))
                                            (__tmp207155
                                             (let ((__tmp207157
                                                    (lambda (_%g204166204169%_
                                                             _%g204167204171%_)
                                                      (cons _%g204166204169%_
                                                            _%g204167204171%_)))
                                                   (__tmp207156
                                                    (cons _%g203664204083%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp207157
                                                __tmp207156
                                                _%g203665204084%_))))
                                        (declare (not safe))
                                        (__find __tmp207158 __tmp207155))))
                            (_%__kont205870205871%_
                             _%g203660204079%_
                             _%g203661204080%_
                             _%g203662204081%_
                             _%g203663204082%_
                             _%g203664204083%_
                             _%g203665204084%_)
                            (_%__match205975205976%_
                             _%e203666203923%_
                             _%hd203667203926%_
                             _%tl203668203928%_
                             _%e203678203953%_
                             _%hd203679203956%_
                             _%tl203680203958%_
                             _%e203681203961%_
                             _%hd203682203964%_
                             _%tl203683203966%_
                             _%e203684203969%_
                             _%hd203685203972%_
                             _%tl203686203974%_
                             _%e203687203977%_
                             _%hd203688203980%_
                             _%tl203689203982%_
                             _%e203690203985%_
                             _%hd203691203988%_
                             _%tl203692203990%_
                             _%e203693203993%_
                             _%hd203694203996%_
                             _%tl203695203998%_
                             _%e203696204001%_
                             _%hd203697204004%_
                             _%tl203698204006%_
                             _%e203699204009%_
                             _%hd203700204012%_
                             _%tl203701204014%_)))
                      (_%__match205975205976%_
                       _%e203666203923%_
                       _%hd203667203926%_
                       _%tl203668203928%_
                       _%e203678203953%_
                       _%hd203679203956%_
                       _%tl203680203958%_
                       _%e203681203961%_
                       _%hd203682203964%_
                       _%tl203683203966%_
                       _%e203684203969%_
                       _%hd203685203972%_
                       _%tl203686203974%_
                       _%e203687203977%_
                       _%hd203688203980%_
                       _%tl203689203982%_
                       _%e203690203985%_
                       _%hd203691203988%_
                       _%tl203692203990%_
                       _%e203693203993%_
                       _%hd203694203996%_
                       _%tl203695203998%_
                       _%e203696204001%_
                       _%hd203697204004%_
                       _%tl203698204006%_
                       _%e203699204009%_
                       _%hd203700204012%_
                       _%tl203701204014%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203705204046%_
                                           _%target203702204017%_
                                           '()))
                                        (_%__match205975205976%_
                                         _%e203666203923%_
                                         _%hd203667203926%_
                                         _%tl203668203928%_
                                         _%e203678203953%_
                                         _%hd203679203956%_
                                         _%tl203680203958%_
                                         _%e203681203961%_
                                         _%hd203682203964%_
                                         _%tl203683203966%_
                                         _%e203684203969%_
                                         _%hd203685203972%_
                                         _%tl203686203974%_
                                         _%e203687203977%_
                                         _%hd203688203980%_
                                         _%tl203689203982%_
                                         _%e203690203985%_
                                         _%hd203691203988%_
                                         _%tl203692203990%_
                                         _%e203693203993%_
                                         _%hd203694203996%_
                                         _%tl203695203998%_
                                         _%e203696204001%_
                                         _%hd203697204004%_
                                         _%tl203698204006%_
                                         _%e203699204009%_
                                         _%hd203700204012%_
                                         _%tl203701204014%_))
                                    (_%__match205975205976%_
                                     _%e203666203923%_
                                     _%hd203667203926%_
                                     _%tl203668203928%_
                                     _%e203678203953%_
                                     _%hd203679203956%_
                                     _%tl203680203958%_
                                     _%e203681203961%_
                                     _%hd203682203964%_
                                     _%tl203683203966%_
                                     _%e203684203969%_
                                     _%hd203685203972%_
                                     _%tl203686203974%_
                                     _%e203687203977%_
                                     _%hd203688203980%_
                                     _%tl203689203982%_
                                     _%e203690203985%_
                                     _%hd203691203988%_
                                     _%tl203692203990%_
                                     _%e203693203993%_
                                     _%hd203694203996%_
                                     _%tl203695203998%_
                                     _%e203696204001%_
                                     _%hd203697204004%_
                                     _%tl203698204006%_
                                     _%e203699204009%_
                                     _%hd203700204012%_
                                     _%tl203701204014%_))))
                            (_%__match205975205976%_
                             _%e203666203923%_
                             _%hd203667203926%_
                             _%tl203668203928%_
                             _%e203678203953%_
                             _%hd203679203956%_
                             _%tl203680203958%_
                             _%e203681203961%_
                             _%hd203682203964%_
                             _%tl203683203966%_
                             _%e203684203969%_
                             _%hd203685203972%_
                             _%tl203686203974%_
                             _%e203687203977%_
                             _%hd203688203980%_
                             _%tl203689203982%_
                             _%e203690203985%_
                             _%hd203691203988%_
                             _%tl203692203990%_
                             _%e203693203993%_
                             _%hd203694203996%_
                             _%tl203695203998%_
                             _%e203696204001%_
                             _%hd203697204004%_
                             _%tl203698204006%_
                             _%e203699204009%_
                             _%hd203700204012%_
                             _%tl203701204014%_))
                        (_%__match205975205976%_
                         _%e203666203923%_
                         _%hd203667203926%_
                         _%tl203668203928%_
                         _%e203678203953%_
                         _%hd203679203956%_
                         _%tl203680203958%_
                         _%e203681203961%_
                         _%hd203682203964%_
                         _%tl203683203966%_
                         _%e203684203969%_
                         _%hd203685203972%_
                         _%tl203686203974%_
                         _%e203687203977%_
                         _%hd203688203980%_
                         _%tl203689203982%_
                         _%e203690203985%_
                         _%hd203691203988%_
                         _%tl203692203990%_
                         _%e203693203993%_
                         _%hd203694203996%_
                         _%tl203695203998%_
                         _%e203696204001%_
                         _%hd203697204004%_
                         _%tl203698204006%_
                         _%e203699204009%_
                         _%hd203700204012%_
                         _%tl203701204014%_))
                    (_%__match205975205976%_
                     _%e203666203923%_
                     _%hd203667203926%_
                     _%tl203668203928%_
                     _%e203678203953%_
                     _%hd203679203956%_
                     _%tl203680203958%_
                     _%e203681203961%_
                     _%hd203682203964%_
                     _%tl203683203966%_
                     _%e203684203969%_
                     _%hd203685203972%_
                     _%tl203686203974%_
                     _%e203687203977%_
                     _%hd203688203980%_
                     _%tl203689203982%_
                     _%e203690203985%_
                     _%hd203691203988%_
                     _%tl203692203990%_
                     _%e203693203993%_
                     _%hd203694203996%_
                     _%tl203695203998%_
                     _%e203696204001%_
                     _%hd203697204004%_
                     _%tl203698204006%_
                     _%e203699204009%_
                     _%hd203700204012%_
                     _%tl203701204014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match205975205976%_
                                                     _%e203666203923%_
                                                     _%hd203667203926%_
                                                     _%tl203668203928%_
                                                     _%e203678203953%_
                                                     _%hd203679203956%_
                                                     _%tl203680203958%_
                                                     _%e203681203961%_
                                                     _%hd203682203964%_
                                                     _%tl203683203966%_
                                                     _%e203684203969%_
                                                     _%hd203685203972%_
                                                     _%tl203686203974%_
                                                     _%e203687203977%_
                                                     _%hd203688203980%_
                                                     _%tl203689203982%_
                                                     _%e203690203985%_
                                                     _%hd203691203988%_
                                                     _%tl203692203990%_
                                                     _%e203693203993%_
                                                     _%hd203694203996%_
                                                     _%tl203695203998%_
                                                     _%e203696204001%_
                                                     _%hd203697204004%_
                                                     _%tl203698204006%_
                                                     _%e203699204009%_
                                                     _%hd203700204012%_
                                                     _%tl203701204014%_))))
                                            (_%__match205975205976%_
                                             _%e203666203923%_
                                             _%hd203667203926%_
                                             _%tl203668203928%_
                                             _%e203678203953%_
                                             _%hd203679203956%_
                                             _%tl203680203958%_
                                             _%e203681203961%_
                                             _%hd203682203964%_
                                             _%tl203683203966%_
                                             _%e203684203969%_
                                             _%hd203685203972%_
                                             _%tl203686203974%_
                                             _%e203687203977%_
                                             _%hd203688203980%_
                                             _%tl203689203982%_
                                             _%e203690203985%_
                                             _%hd203691203988%_
                                             _%tl203692203990%_
                                             _%e203693203993%_
                                             _%hd203694203996%_
                                             _%tl203695203998%_
                                             _%e203696204001%_
                                             _%hd203697204004%_
                                             _%tl203698204006%_
                                             _%e203699204009%_
                                             _%hd203700204012%_
                                             _%tl203701204014%_))))
                                    (_%__match205975205976%_
                                     _%e203666203923%_
                                     _%hd203667203926%_
                                     _%tl203668203928%_
                                     _%e203678203953%_
                                     _%hd203679203956%_
                                     _%tl203680203958%_
                                     _%e203681203961%_
                                     _%hd203682203964%_
                                     _%tl203683203966%_
                                     _%e203684203969%_
                                     _%hd203685203972%_
                                     _%tl203686203974%_
                                     _%e203687203977%_
                                     _%hd203688203980%_
                                     _%tl203689203982%_
                                     _%e203690203985%_
                                     _%hd203691203988%_
                                     _%tl203692203990%_
                                     _%e203693203993%_
                                     _%hd203694203996%_
                                     _%tl203695203998%_
                                     _%e203696204001%_
                                     _%hd203697204004%_
                                     _%tl203698204006%_
                                     _%e203699204009%_
                                     _%hd203700204012%_
                                     _%tl203701204014%_))
                                (_%__match205975205976%_
                                 _%e203666203923%_
                                 _%hd203667203926%_
                                 _%tl203668203928%_
                                 _%e203678203953%_
                                 _%hd203679203956%_
                                 _%tl203680203958%_
                                 _%e203681203961%_
                                 _%hd203682203964%_
                                 _%tl203683203966%_
                                 _%e203684203969%_
                                 _%hd203685203972%_
                                 _%tl203686203974%_
                                 _%e203687203977%_
                                 _%hd203688203980%_
                                 _%tl203689203982%_
                                 _%e203690203985%_
                                 _%hd203691203988%_
                                 _%tl203692203990%_
                                 _%e203693203993%_
                                 _%hd203694203996%_
                                 _%tl203695203998%_
                                 _%e203696204001%_
                                 _%hd203697204004%_
                                 _%tl203698204006%_
                                 _%e203699204009%_
                                 _%hd203700204012%_
                                 _%tl203701204014%_))
                            (_%__kont205878205879%_))))
                    (_%__kont205878205879%_))
                (_%__kont205878205879%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205878205879%_))))
                                            (_%__kont205878205879%_))))
                                    (_%__kont205878205879%_))
                                (_%__kont205878205879%_))))
                        (_%__kont205878205879%_))
                    (_%__kont205878205879%_))
                (_%__kont205878205879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205878205879%_))))
                                        (_%__kont205878205879%_))
                                    (_%__kont205878205879%_))
                                (_%__kont205878205879%_))))
                        (_%__kont205878205879%_))))
                (_%__kont205878205879%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203672203936%_
                                     _%target203669203931%_
                                     '()))))
                               (_%__match205893205894%_
                                (lambda (_%e203618204179%_
                                         _%hd203619204182%_
                                         _%tl203620204184%_
                                         _%__splice205866205867%_
                                         _%target203621204187%_
                                         _%tl203623204189%_)
                                  (letrec ((_%loop203624204192%_
                                            (lambda (_%hd203622204195%_
                                                     _%arg203628204197%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203622204195%_))
                                                  (let ((_%e203625204199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203622204195%_))))
                                                    (let ((_%lp-tl203627204204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203625204199%_)))
                                                          (_%lp-hd203626204202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203625204199%_))))
                                                      (_%loop203624204192%_
                                                       _%lp-tl203627204204%_
                                                       (cons _%lp-hd203626204202%_
                                                             _%arg203628204197%_))))
                                                  (let ((_%arg203629204207%_
                                                         (reverse _%arg203628204197%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203620204184%_))
                                                        (let ((_%e203630204209%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203620204184%_))))
                  (let ((_%tl203632204214%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203630204209%_)))
                        (_%hd203631204212%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203630204209%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203631204212%_))
                        (let ((_%e203633204217%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203631204212%_))))
                          (let ((_%tl203635204222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203633204217%_)))
                                (_%hd203634204220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203633204217%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203634204220%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203634204220%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203635204222%_))
                                        (let ((_%e203636204225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203635204222%_))))
                                          (let ((_%tl203638204230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203636204225%_)))
                                                (_%hd203637204228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203636204225%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203637204228%_))
                                                (let ((_%e203639204233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203637204228%_))))
                                                  (let ((_%tl203641204238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203639204233%_)))
                                                        (_%hd203640204236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203639204233%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203640204236%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203640204236%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203641204238%_))
                        (let ((_%e203642204241%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203641204238%_))))
                          (let ((_%tl203644204246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203642204241%_)))
                                (_%hd203643204244%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203642204241%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203644204246%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl203638204230%_))
                                    (let ((_%__splice205868205869%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203638204230%_
                                              '0))))
                                      (let ((_%tl203647204251%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205868205869%_
                                                '1)))
                                            (_%target203645204249%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205868205869%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203647204251%_))
                                            (letrec ((_%loop203648204254%_
                                                      (lambda (_%hd203646204257%_
                                                               _%xarg203652204259%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd203646204257%_))
                                                            (let ((_%e203649204261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd203646204257%_))))
                      (let ((_%lp-tl203651204266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203649204261%_)))
                            (_%lp-hd203650204264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203649204261%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd203650204264%_))
                            (let ((_%e203654204269%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd203650204264%_))))
                              (let ((_%tl203656204274%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203654204269%_)))
                                    (_%hd203655204272%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203654204269%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd203655204272%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd203655204272%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203656204274%_))
                                            (let ((_%e203657204277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203656204274%_))))
                                              (let ((_%tl203659204282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203657204277%_)))
                                                    (_%hd203658204280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203657204277%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203659204282%_))
                                                    (_%loop203648204254%_
                                                     _%lp-tl203651204266%_
                                                     (cons _%hd203658204280%_
                                                           _%xarg203652204259%_))
                                                    (_%__match205905205906%_
                                                     _%e203618204179%_
                                                     _%hd203619204182%_
                                                     _%tl203620204184%_
                                                     _%__splice205866205867%_
                                                     _%target203621204187%_
                                                     _%tl203623204189%_))))
                                            (_%__match205905205906%_
                                             _%e203618204179%_
                                             _%hd203619204182%_
                                             _%tl203620204184%_
                                             _%__splice205866205867%_
                                             _%target203621204187%_
                                             _%tl203623204189%_))
                                        (_%__match205905205906%_
                                         _%e203618204179%_
                                         _%hd203619204182%_
                                         _%tl203620204184%_
                                         _%__splice205866205867%_
                                         _%target203621204187%_
                                         _%tl203623204189%_))
                                    (_%__match205905205906%_
                                     _%e203618204179%_
                                     _%hd203619204182%_
                                     _%tl203620204184%_
                                     _%__splice205866205867%_
                                     _%target203621204187%_
                                     _%tl203623204189%_))))
                            (_%__match205905205906%_
                             _%e203618204179%_
                             _%hd203619204182%_
                             _%tl203620204184%_
                             _%__splice205866205867%_
                             _%target203621204187%_
                             _%tl203623204189%_))))
                    (let ((_%xarg203653204285%_
                           (reverse _%xarg203652204259%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203632204214%_))
                          (let ((_%g203615204287%_ _%xarg203653204285%_)
                                (_%g203616204288%_ _%hd203643204244%_)
                                (_%g203617204289%_ _%arg203629204207%_))
                            (if (and (let ((__tmp207159
                                            (let ((__tmp207160
                                                   (lambda (_%g204317204320%_
                                                            _%g204318204322%_)
                                                     (cons _%g204317204320%_
                                                           _%g204318204322%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207160
                                               '()
                                               _%g203617204289%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp207159))
                                     (let ((__tmp207163
                                            (length (let ((__tmp207164
                                                           (lambda (_%g204324204327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204325204329%_)
                     (cons _%g204324204327%_ _%g204325204329%_))))
              (declare (not safe))
              (foldr__0 __tmp207164 '() _%g203617204289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp207161
                                            (length (let ((__tmp207162
                                                           (lambda (_%g204331204334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204332204336%_)
                     (cons _%g204331204334%_ _%g204332204336%_))))
              (declare (not safe))
              (foldr__0 __tmp207162 '() _%g203615204287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp207163 __tmp207161))
                                     (let ((__tmp207167
                                            (let ((__tmp207168
                                                   (lambda (_%g204338204341%_
                                                            _%g204339204343%_)
                                                     (cons _%g204338204341%_
                                                           _%g204339204343%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207168
                                               '()
                                               _%g203617204289%_)))
                                           (__tmp207165
                                            (let ((__tmp207166
                                                   (lambda (_%g204345204348%_
                                                            _%g204346204350%_)
                                                     (cons _%g204345204348%_
                                                           _%g204346204350%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207166
                                               '()
                                               _%g203615204287%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp207167
                                        __tmp207165))
                                     (not (let ((__tmp207171
                                                 (lambda (_%g204352204354%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g204352204354%_
                                                      _%g203616204288%_))))
                                                (__tmp207169
                                                 (let ((__tmp207170
                                                        (lambda (_%g204356204359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g204357204361%_)
                  (cons _%g204356204359%_ _%g204357204361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp207170
                                                    '()
                                                    _%g203617204289%_))))
                                            (declare (not safe))
                                            (__find __tmp207171 __tmp207169))))
                                (_%__kont205864205865%_
                                 _%g203615204287%_
                                 _%g203616204288%_
                                 _%g203617204289%_)
                                (_%__match205905205906%_
                                 _%e203618204179%_
                                 _%hd203619204182%_
                                 _%tl203620204184%_
                                 _%__splice205866205867%_
                                 _%target203621204187%_
                                 _%tl203623204189%_)))
                          (_%__match205905205906%_
                           _%e203618204179%_
                           _%hd203619204182%_
                           _%tl203620204184%_
                           _%__splice205866205867%_
                           _%target203621204187%_
                           _%tl203623204189%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop203648204254%_
                                               _%target203645204249%_
                                               '()))
                                            (_%__match205905205906%_
                                             _%e203618204179%_
                                             _%hd203619204182%_
                                             _%tl203620204184%_
                                             _%__splice205866205867%_
                                             _%target203621204187%_
                                             _%tl203623204189%_))))
                                    (_%__match205905205906%_
                                     _%e203618204179%_
                                     _%hd203619204182%_
                                     _%tl203620204184%_
                                     _%__splice205866205867%_
                                     _%target203621204187%_
                                     _%tl203623204189%_))
                                (_%__match205905205906%_
                                 _%e203618204179%_
                                 _%hd203619204182%_
                                 _%tl203620204184%_
                                 _%__splice205866205867%_
                                 _%target203621204187%_
                                 _%tl203623204189%_))))
                        (_%__match205905205906%_
                         _%e203618204179%_
                         _%hd203619204182%_
                         _%tl203620204184%_
                         _%__splice205866205867%_
                         _%target203621204187%_
                         _%tl203623204189%_))
                    (_%__match205905205906%_
                     _%e203618204179%_
                     _%hd203619204182%_
                     _%tl203620204184%_
                     _%__splice205866205867%_
                     _%target203621204187%_
                     _%tl203623204189%_))
                (_%__match205905205906%_
                 _%e203618204179%_
                 _%hd203619204182%_
                 _%tl203620204184%_
                 _%__splice205866205867%_
                 _%target203621204187%_
                 _%tl203623204189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205905205906%_
                                                 _%e203618204179%_
                                                 _%hd203619204182%_
                                                 _%tl203620204184%_
                                                 _%__splice205866205867%_
                                                 _%target203621204187%_
                                                 _%tl203623204189%_))))
                                        (_%__match205905205906%_
                                         _%e203618204179%_
                                         _%hd203619204182%_
                                         _%tl203620204184%_
                                         _%__splice205866205867%_
                                         _%target203621204187%_
                                         _%tl203623204189%_))
                                    (_%__match205905205906%_
                                     _%e203618204179%_
                                     _%hd203619204182%_
                                     _%tl203620204184%_
                                     _%__splice205866205867%_
                                     _%target203621204187%_
                                     _%tl203623204189%_))
                                (_%__match205905205906%_
                                 _%e203618204179%_
                                 _%hd203619204182%_
                                 _%tl203620204184%_
                                 _%__splice205866205867%_
                                 _%target203621204187%_
                                 _%tl203623204189%_))))
                        (_%__match205905205906%_
                         _%e203618204179%_
                         _%hd203619204182%_
                         _%tl203620204184%_
                         _%__splice205866205867%_
                         _%target203621204187%_
                         _%tl203623204189%_))))
                (_%__match205905205906%_
                 _%e203618204179%_
                 _%hd203619204182%_
                 _%tl203620204184%_
                 _%__splice205866205867%_
                 _%target203621204187%_
                 _%tl203623204189%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203624204192%_
                                     _%target203621204187%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205862205863%_))
                              (let ((_%e203618204179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205862205863%_))))
                                (let ((_%tl203620204184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203618204179%_)))
                                      (_%hd203619204182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203618204179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd203619204182%_))
                                      (let ((_%__splice205866205867%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd203619204182%_
                                                '0))))
                                        (let ((_%tl203623204189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205866205867%_
                                                  '1)))
                                              (_%target203621204187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205866205867%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203623204189%_))
                                              (_%__match205893205894%_
                                               _%e203618204179%_
                                               _%hd203619204182%_
                                               _%tl203620204184%_
                                               _%__splice205866205867%_
                                               _%target203621204187%_
                                               _%tl203623204189%_)
                                              (_%__match205905205906%_
                                               _%e203618204179%_
                                               _%hd203619204182%_
                                               _%tl203620204184%_
                                               _%__splice205866205867%_
                                               _%target203621204187%_
                                               _%tl203623204189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203620204184%_))
                                          (let ((_%e203733203790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203620204184%_))))
                                            (let ((_%tl203735203795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203733203790%_)))
                                                  (_%hd203734203793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203733203790%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203734203793%_))
                                                  (let ((_%e203736203798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203734203793%_))))
                                                    (let ((_%tl203738203803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203736203798%_)))
                                                          (_%hd203737203801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203736203798%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203737203801%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd203737203801%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203738203803%_))
                          (let ((_%e203739203806%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203738203803%_))))
                            (let ((_%tl203741203811%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203739203806%_)))
                                  (_%hd203740203809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203739203806%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd203740203809%_))
                                  (let ((_%e203742203814%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd203740203809%_))))
                                    (let ((_%tl203744203819%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203742203814%_)))
                                          (_%hd203743203817%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203742203814%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd203743203817%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd203743203817%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203744203819%_))
                                                  (let ((_%e203745203822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl203744203819%_))))
                                                    (let ((_%tl203747203827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203745203822%_)))
                                                          (_%hd203746203825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203745203822%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203747203827%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203741203811%_))
                      (let ((_%e203748203830%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203741203811%_))))
                        (let ((_%tl203750203835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203748203830%_)))
                              (_%hd203749203833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203748203830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203749203833%_))
                              (let ((_%e203751203838%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd203749203833%_))))
                                (let ((_%tl203753203843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203751203838%_)))
                                      (_%hd203752203841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203751203838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203752203841%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd203752203841%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203753203843%_))
                                              (let ((_%e203754203846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl203753203843%_))))
                                                (let ((_%tl203756203851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203754203846%_)))
                                                      (_%hd203755203849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203754203846%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203756203851%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203750203835%_))
                                                          (let ((_%e203757203854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl203750203835%_))))
                    (let ((_%tl203759203859%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203757203854%_)))
                          (_%hd203758203857%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203757203854%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd203758203857%_))
                          (let ((_%e203760203862%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd203758203857%_))))
                            (let ((_%tl203762203867%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203760203862%_)))
                                  (_%hd203761203865%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203760203862%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd203761203865%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd203761203865%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203762203867%_))
                                          (let ((_%e203763203870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203762203867%_))))
                                            (let ((_%tl203765203875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203763203870%_)))
                                                  (_%hd203764203873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203763203870%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl203765203875%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203759203859%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203735203795%_))
                                                          (_%__match206003206004%_
                                                           _%e203618204179%_
                                                           _%hd203619204182%_
                                                           _%tl203620204184%_
                                                           _%e203733203790%_
                                                           _%hd203734203793%_
                                                           _%tl203735203795%_
                                                           _%e203736203798%_
                                                           _%hd203737203801%_
                                                           _%tl203738203803%_
                                                           _%e203739203806%_
                                                           _%hd203740203809%_
                                                           _%tl203741203811%_
                                                           _%e203742203814%_
                                                           _%hd203743203817%_
                                                           _%tl203744203819%_
                                                           _%e203745203822%_
                                                           _%hd203746203825%_
                                                           _%tl203747203827%_
                                                           _%e203748203830%_
                                                           _%hd203749203833%_
                                                           _%tl203750203835%_
                                                           _%e203751203838%_
                                                           _%hd203752203841%_
                                                           _%tl203753203843%_
                                                           _%e203754203846%_
                                                           _%hd203755203849%_
                                                           _%tl203756203851%_
                                                           _%e203757203854%_
                                                           _%hd203758203857%_
                                                           _%tl203759203859%_
                                                           _%e203760203862%_
                                                           _%hd203761203865%_
                                                           _%tl203762203867%_
                                                           _%e203763203870%_
                                                           _%hd203764203873%_
                                                           _%tl203765203875%_)
                                                          (_%__kont205878205879%_))
                                                      (_%__kont205878205879%_))
                                                  (_%__kont205878205879%_))))
                                          (_%__kont205878205879%_))
                                      (_%__kont205878205879%_))
                                  (_%__kont205878205879%_))))
                          (_%__kont205878205879%_))))
                  (_%__kont205878205879%_))
              (_%__kont205878205879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205878205879%_))
                                          (_%__kont205878205879%_))
                                      (_%__kont205878205879%_))))
                              (_%__kont205878205879%_))))
                      (_%__kont205878205879%_))
                  (_%__kont205878205879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205878205879%_))
                                              (_%__kont205878205879%_))
                                          (_%__kont205878205879%_))))
                                  (_%__kont205878205879%_))))
                          (_%__kont205878205879%_))
                      (_%__kont205878205879%_))
                  (_%__kont205878205879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205878205879%_))))
                                          (_%__kont205878205879%_)))))
                              (_%__kont205878205879%_)))))))
                 (_%dispatch-case-e202928%_
                  (lambda (_%hd203075%_ _%body203076%_)
                    (let* ((_%form203078%_
                            (cons _%hd203075%_ (cons _%body203076%_ '())))
                           (_%__stx206006206007%_ _%form203078%_)
                           (_%g203082203206%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206006206007%_)))))
                      (let ((_%__kont206008206009%_
                             (lambda (_%g203084203571%_
                                      _%g203085203572%_
                                      _%g203086203573%_)
                               (let ((__tmp207172
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g203085203572%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202924%_
                                  __tmp207172))))
                            (_%__kont206014206015%_
                             (lambda (_%g203129203423%_
                                      _%g203130203424%_
                                      _%g203131203425%_
                                      _%g203132203426%_)
                               (let ((__tmp207173
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g203129203423%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202924%_
                                  __tmp207173))))
                            (_%__kont206018206019%_
                             (lambda (_%g203169203291%_
                                      _%g203170203292%_
                                      _%g203171203293%_)
                               (let ((__tmp207174
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g203169203291%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202924%_
                                  __tmp207174)))))
                        (let* ((_%__match206115206116%_
                                (lambda (_%e203172203211%_
                                         _%hd203173203214%_
                                         _%tl203174203216%_
                                         _%e203175203219%_
                                         _%hd203176203222%_
                                         _%tl203177203224%_
                                         _%e203178203227%_
                                         _%hd203179203230%_
                                         _%tl203180203232%_
                                         _%e203181203235%_
                                         _%hd203182203238%_
                                         _%tl203183203240%_
                                         _%e203184203243%_
                                         _%hd203185203246%_
                                         _%tl203186203248%_
                                         _%e203187203251%_
                                         _%hd203188203254%_
                                         _%tl203189203256%_
                                         _%e203190203259%_
                                         _%hd203191203262%_
                                         _%tl203192203264%_
                                         _%e203193203267%_
                                         _%hd203194203270%_
                                         _%tl203195203272%_
                                         _%e203196203275%_
                                         _%hd203197203278%_
                                         _%tl203198203280%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203192203264%_))
                                      (let ((_%e203199203283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203192203264%_))))
                                        (let ((_%tl203201203288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203199203283%_)))
                                              (_%hd203200203286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203199203283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203201203288%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl203177203224%_))
                                                  (_%__kont206018206019%_
                                                   _%hd203197203278%_
                                                   _%hd203188203254%_
                                                   _%hd203173203214%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203082203206%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203082203206%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203082203206%_)))))
                               (_%__match206045206046%_
                                (lambda (_%e203133203329%_
                                         _%hd203134203332%_
                                         _%tl203135203334%_
                                         _%__splice206016206017%_
                                         _%target203136203337%_
                                         _%tl203138203339%_)
                                  (letrec ((_%loop203139203342%_
                                            (lambda (_%hd203137203345%_
                                                     _%arg203143203347%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203137203345%_))
                                                  (let ((_%e203140203349%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203137203345%_))))
                                                    (let ((_%lp-tl203142203354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203140203349%_)))
                                                          (_%lp-hd203141203352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203140203349%_))))
                                                      (_%loop203139203342%_
                                                       _%lp-tl203142203354%_
                                                       (cons _%lp-hd203141203352%_
                                                             _%arg203143203347%_))))
                                                  (let ((_%arg203144203357%_
                                                         (reverse _%arg203143203347%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203135203334%_))
                                                        (let ((_%e203145203359%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203135203334%_))))
                  (let ((_%tl203147203364%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203145203359%_)))
                        (_%hd203146203362%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203145203359%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203146203362%_))
                        (let ((_%e203148203367%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203146203362%_))))
                          (let ((_%tl203150203372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203148203367%_)))
                                (_%hd203149203370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203148203367%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203149203370%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203149203370%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203150203372%_))
                                        (let ((_%e203151203375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203150203372%_))))
                                          (let ((_%tl203153203380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203151203375%_)))
                                                (_%hd203152203378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203151203375%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203152203378%_))
                                                (let ((_%e203154203383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203152203378%_))))
                                                  (let ((_%tl203156203388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203154203383%_)))
                                                        (_%hd203155203386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203154203383%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203155203386%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203155203386%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203156203388%_))
                        (let ((_%e203157203391%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203156203388%_))))
                          (let ((_%tl203159203396%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203157203391%_)))
                                (_%hd203158203394%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203157203391%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203159203396%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203153203380%_))
                                    (let ((_%e203160203399%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl203153203380%_))))
                                      (let ((_%tl203162203404%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203160203399%_)))
                                            (_%hd203161203402%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203160203399%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203161203402%_))
                                            (let ((_%e203163203407%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd203161203402%_))))
                                              (let ((_%tl203165203412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203163203407%_)))
                                                    (_%hd203164203410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203163203407%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203164203410%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd203164203410%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203165203412%_))
                                                            (let ((_%e203166203415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl203165203412%_))))
                      (let ((_%tl203168203420%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203166203415%_)))
                            (_%hd203167203418%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203166203415%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203168203420%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203147203364%_))
                                (_%__kont206014206015%_
                                 _%hd203167203418%_
                                 _%hd203158203394%_
                                 _%tl203138203339%_
                                 _%arg203144203357%_)
                                (_%__match206115206116%_
                                 _%e203133203329%_
                                 _%hd203134203332%_
                                 _%tl203135203334%_
                                 _%e203145203359%_
                                 _%hd203146203362%_
                                 _%tl203147203364%_
                                 _%e203148203367%_
                                 _%hd203149203370%_
                                 _%tl203150203372%_
                                 _%e203151203375%_
                                 _%hd203152203378%_
                                 _%tl203153203380%_
                                 _%e203154203383%_
                                 _%hd203155203386%_
                                 _%tl203156203388%_
                                 _%e203157203391%_
                                 _%hd203158203394%_
                                 _%tl203159203396%_
                                 _%e203160203399%_
                                 _%hd203161203402%_
                                 _%tl203162203404%_
                                 _%e203163203407%_
                                 _%hd203164203410%_
                                 _%tl203165203412%_
                                 _%e203166203415%_
                                 _%hd203167203418%_
                                 _%tl203168203420%_))
                            (let ()
                              (declare (not safe))
                              (_%g203082203206%_)))))
                    (let () (declare (not safe)) (_%g203082203206%_)))
                (let () (declare (not safe)) (_%g203082203206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203082203206%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203082203206%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203082203206%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g203082203206%_)))))
                        (let () (declare (not safe)) (_%g203082203206%_)))
                    (let () (declare (not safe)) (_%g203082203206%_)))
                (let () (declare (not safe)) (_%g203082203206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g203082203206%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g203082203206%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203082203206%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g203082203206%_)))))
                        (let () (declare (not safe)) (_%g203082203206%_)))))
                (let () (declare (not safe)) (_%g203082203206%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203139203342%_
                                     _%target203136203337%_
                                     '()))))
                               (_%__match206033206034%_
                                (lambda (_%e203087203463%_
                                         _%hd203088203466%_
                                         _%tl203089203468%_
                                         _%__splice206010206011%_
                                         _%target203090203471%_
                                         _%tl203092203473%_)
                                  (letrec ((_%loop203093203476%_
                                            (lambda (_%hd203091203479%_
                                                     _%arg203097203481%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203091203479%_))
                                                  (let ((_%e203094203483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203091203479%_))))
                                                    (let ((_%lp-tl203096203488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203094203483%_)))
                                                          (_%lp-hd203095203486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203094203483%_))))
                                                      (_%loop203093203476%_
                                                       _%lp-tl203096203488%_
                                                       (cons _%lp-hd203095203486%_
                                                             _%arg203097203481%_))))
                                                  (let ((_%arg203098203491%_
                                                         (reverse _%arg203097203481%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203089203468%_))
                                                        (let ((_%e203099203493%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203089203468%_))))
                  (let ((_%tl203101203498%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203099203493%_)))
                        (_%hd203100203496%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203099203493%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203100203496%_))
                        (let ((_%e203102203501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203100203496%_))))
                          (let ((_%tl203104203506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203102203501%_)))
                                (_%hd203103203504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203102203501%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203103203504%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203103203504%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203104203506%_))
                                        (let ((_%e203105203509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203104203506%_))))
                                          (let ((_%tl203107203514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203105203509%_)))
                                                (_%hd203106203512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203105203509%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203106203512%_))
                                                (let ((_%e203108203517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203106203512%_))))
                                                  (let ((_%tl203110203522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203108203517%_)))
                                                        (_%hd203109203520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203108203517%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203109203520%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203109203520%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203110203522%_))
                        (let ((_%e203111203525%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203110203522%_))))
                          (let ((_%tl203113203530%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203111203525%_)))
                                (_%hd203112203528%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203111203525%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203113203530%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl203107203514%_))
                                    (let ((_%__splice206012206013%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203107203514%_
                                              '0))))
                                      (let ((_%tl203116203535%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206012206013%_
                                                '1)))
                                            (_%target203114203533%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206012206013%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203116203535%_))
                                            (letrec ((_%loop203117203538%_
                                                      (lambda (_%hd203115203541%_
                                                               _%xarg203121203543%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd203115203541%_))
                                                            (let ((_%e203118203545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd203115203541%_))))
                      (let ((_%lp-tl203120203550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203118203545%_)))
                            (_%lp-hd203119203548%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203118203545%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd203119203548%_))
                            (let ((_%e203123203553%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd203119203548%_))))
                              (let ((_%tl203125203558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203123203553%_)))
                                    (_%hd203124203556%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203123203553%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd203124203556%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd203124203556%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203125203558%_))
                                            (let ((_%e203126203561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203125203558%_))))
                                              (let ((_%tl203128203566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203126203561%_)))
                                                    (_%hd203127203564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203126203561%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203128203566%_))
                                                    (_%loop203117203538%_
                                                     _%lp-tl203120203550%_
                                                     (cons _%hd203127203564%_
                                                           _%xarg203121203543%_))
                                                    (_%__match206045206046%_
                                                     _%e203087203463%_
                                                     _%hd203088203466%_
                                                     _%tl203089203468%_
                                                     _%__splice206010206011%_
                                                     _%target203090203471%_
                                                     _%tl203092203473%_))))
                                            (_%__match206045206046%_
                                             _%e203087203463%_
                                             _%hd203088203466%_
                                             _%tl203089203468%_
                                             _%__splice206010206011%_
                                             _%target203090203471%_
                                             _%tl203092203473%_))
                                        (_%__match206045206046%_
                                         _%e203087203463%_
                                         _%hd203088203466%_
                                         _%tl203089203468%_
                                         _%__splice206010206011%_
                                         _%target203090203471%_
                                         _%tl203092203473%_))
                                    (_%__match206045206046%_
                                     _%e203087203463%_
                                     _%hd203088203466%_
                                     _%tl203089203468%_
                                     _%__splice206010206011%_
                                     _%target203090203471%_
                                     _%tl203092203473%_))))
                            (_%__match206045206046%_
                             _%e203087203463%_
                             _%hd203088203466%_
                             _%tl203089203468%_
                             _%__splice206010206011%_
                             _%target203090203471%_
                             _%tl203092203473%_))))
                    (let ((_%xarg203122203569%_
                           (reverse _%xarg203121203543%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203101203498%_))
                          (_%__kont206008206009%_
                           _%xarg203122203569%_
                           _%hd203112203528%_
                           _%arg203098203491%_)
                          (_%__match206045206046%_
                           _%e203087203463%_
                           _%hd203088203466%_
                           _%tl203089203468%_
                           _%__splice206010206011%_
                           _%target203090203471%_
                           _%tl203092203473%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop203117203538%_
                                               _%target203114203533%_
                                               '()))
                                            (_%__match206045206046%_
                                             _%e203087203463%_
                                             _%hd203088203466%_
                                             _%tl203089203468%_
                                             _%__splice206010206011%_
                                             _%target203090203471%_
                                             _%tl203092203473%_))))
                                    (_%__match206045206046%_
                                     _%e203087203463%_
                                     _%hd203088203466%_
                                     _%tl203089203468%_
                                     _%__splice206010206011%_
                                     _%target203090203471%_
                                     _%tl203092203473%_))
                                (_%__match206045206046%_
                                 _%e203087203463%_
                                 _%hd203088203466%_
                                 _%tl203089203468%_
                                 _%__splice206010206011%_
                                 _%target203090203471%_
                                 _%tl203092203473%_))))
                        (_%__match206045206046%_
                         _%e203087203463%_
                         _%hd203088203466%_
                         _%tl203089203468%_
                         _%__splice206010206011%_
                         _%target203090203471%_
                         _%tl203092203473%_))
                    (_%__match206045206046%_
                     _%e203087203463%_
                     _%hd203088203466%_
                     _%tl203089203468%_
                     _%__splice206010206011%_
                     _%target203090203471%_
                     _%tl203092203473%_))
                (_%__match206045206046%_
                 _%e203087203463%_
                 _%hd203088203466%_
                 _%tl203089203468%_
                 _%__splice206010206011%_
                 _%target203090203471%_
                 _%tl203092203473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match206045206046%_
                                                 _%e203087203463%_
                                                 _%hd203088203466%_
                                                 _%tl203089203468%_
                                                 _%__splice206010206011%_
                                                 _%target203090203471%_
                                                 _%tl203092203473%_))))
                                        (_%__match206045206046%_
                                         _%e203087203463%_
                                         _%hd203088203466%_
                                         _%tl203089203468%_
                                         _%__splice206010206011%_
                                         _%target203090203471%_
                                         _%tl203092203473%_))
                                    (_%__match206045206046%_
                                     _%e203087203463%_
                                     _%hd203088203466%_
                                     _%tl203089203468%_
                                     _%__splice206010206011%_
                                     _%target203090203471%_
                                     _%tl203092203473%_))
                                (_%__match206045206046%_
                                 _%e203087203463%_
                                 _%hd203088203466%_
                                 _%tl203089203468%_
                                 _%__splice206010206011%_
                                 _%target203090203471%_
                                 _%tl203092203473%_))))
                        (_%__match206045206046%_
                         _%e203087203463%_
                         _%hd203088203466%_
                         _%tl203089203468%_
                         _%__splice206010206011%_
                         _%target203090203471%_
                         _%tl203092203473%_))))
                (_%__match206045206046%_
                 _%e203087203463%_
                 _%hd203088203466%_
                 _%tl203089203468%_
                 _%__splice206010206011%_
                 _%target203090203471%_
                 _%tl203092203473%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203093203476%_
                                     _%target203090203471%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206006206007%_))
                              (let ((_%e203087203463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206006206007%_))))
                                (let ((_%tl203089203468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203087203463%_)))
                                      (_%hd203088203466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203087203463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd203088203466%_))
                                      (let ((_%__splice206010206011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd203088203466%_
                                                '0))))
                                        (let ((_%tl203092203473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206010206011%_
                                                  '1)))
                                              (_%target203090203471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206010206011%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203092203473%_))
                                              (_%__match206033206034%_
                                               _%e203087203463%_
                                               _%hd203088203466%_
                                               _%tl203089203468%_
                                               _%__splice206010206011%_
                                               _%target203090203471%_
                                               _%tl203092203473%_)
                                              (_%__match206045206046%_
                                               _%e203087203463%_
                                               _%hd203088203466%_
                                               _%tl203089203468%_
                                               _%__splice206010206011%_
                                               _%target203090203471%_
                                               _%tl203092203473%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203089203468%_))
                                          (let ((_%e203175203219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203089203468%_))))
                                            (let ((_%tl203177203224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203175203219%_)))
                                                  (_%hd203176203222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203175203219%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203176203222%_))
                                                  (let ((_%e203178203227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203176203222%_))))
                                                    (let ((_%tl203180203232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203178203227%_)))
                                                          (_%hd203179203230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203178203227%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203179203230%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd203179203230%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203180203232%_))
                          (let ((_%e203181203235%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203180203232%_))))
                            (let ((_%tl203183203240%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203181203235%_)))
                                  (_%hd203182203238%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203181203235%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd203182203238%_))
                                  (let ((_%e203184203243%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd203182203238%_))))
                                    (let ((_%tl203186203248%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203184203243%_)))
                                          (_%hd203185203246%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203184203243%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd203185203246%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd203185203246%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203186203248%_))
                                                  (let ((_%e203187203251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl203186203248%_))))
                                                    (let ((_%tl203189203256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203187203251%_)))
                                                          (_%hd203188203254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203187203251%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203189203256%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203183203240%_))
                      (let ((_%e203190203259%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203183203240%_))))
                        (let ((_%tl203192203264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203190203259%_)))
                              (_%hd203191203262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203190203259%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203191203262%_))
                              (let ((_%e203193203267%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd203191203262%_))))
                                (let ((_%tl203195203272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203193203267%_)))
                                      (_%hd203194203270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203193203267%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203194203270%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd203194203270%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203195203272%_))
                                              (let ((_%e203196203275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl203195203272%_))))
                                                (let ((_%tl203198203280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203196203275%_)))
                                                      (_%hd203197203278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203196203275%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203198203280%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203192203264%_))
                                                          (let ((_%e203199203283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl203192203264%_))))
                    (let ((_%tl203201203288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203199203283%_)))
                          (_%hd203200203286%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203199203283%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203201203288%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203177203224%_))
                              (_%__kont206018206019%_
                               _%hd203197203278%_
                               _%hd203188203254%_
                               _%hd203088203466%_)
                              (let ()
                                (declare (not safe))
                                (_%g203082203206%_)))
                          (let () (declare (not safe)) (_%g203082203206%_)))))
                  (let () (declare (not safe)) (_%g203082203206%_)))
              (let () (declare (not safe)) (_%g203082203206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203082203206%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203082203206%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203082203206%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203082203206%_)))))
                      (let () (declare (not safe)) (_%g203082203206%_)))
                  (let () (declare (not safe)) (_%g203082203206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203082203206%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203082203206%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203082203206%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g203082203206%_)))))
                          (let () (declare (not safe)) (_%g203082203206%_)))
                      (let () (declare (not safe)) (_%g203082203206%_)))
                  (let () (declare (not safe)) (_%g203082203206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203082203206%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203082203206%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g203082203206%_))))))))
                 (_%generate1202929%_
                  (lambda (_%args203060%_
                           _%arglen203061%_
                           _%hd203062%_
                           _%body203063%_)
                    (let* ((_%len203065%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd203062%_)))
                           (_%condition203070%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd203062%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen203061%_
                                                (cons _%len203065%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen203061%_ (cons _%len203065%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len203065%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen203061%_
                                                    (cons _%len203065%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen203061%_ (cons _%len203065%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch203072%_
                            (if (_%dispatch-case?202927%_
                                 _%hd203062%_
                                 _%body203063%_)
                                (_%dispatch-case-e202928%_
                                 _%hd203062%_
                                 _%body203063%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self202924%_
                                 _%hd203062%_
                                 _%body203063%_))))
                      (cons _%condition203070%_
                            (cons (cons 'apply
                                        (cons _%dispatch203072%_
                                              (cons _%args203060%_ '())))
                                  '()))))))
          (let* ((_%g202931202959%_
                  (lambda (_%g202932202956%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202932202956%_))))
                 (_%g202930203057%_
                  (lambda (_%g202932202962%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202932202962%_))
                        (let ((_%e202935202964%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202932202962%_))))
                          (let ((_%hd202936202967%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202935202964%_)))
                                (_%tl202937202969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202935202964%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202937202969%_))
                                (let ((_g207175_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl202937202969%_
                                          '0))))
                                  (begin
                                    (let ((_g207176_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g207175_)
                                                 (##values-length _g207175_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g207176_ 2)))
                                          (error "Context expects 2 values"
                                                 _g207176_)))
                                    (let ((_%target202938202972%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207175_ 0)))
                                          (_%tl202940202974%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207175_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202940202974%_))
                                          (letrec ((_%loop202941202977%_
                                                    (lambda (_%hd202939202980%_
                                                             _%body202945202982%_
                                                             _%hd202946202983%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202939202980%_))
                                                          (let ((_%e202942202985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd202939202980%_))))
                    (let ((_%lp-hd202943202988%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202942202985%_)))
                          (_%lp-tl202944202990%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202942202985%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd202943202988%_))
                          (let ((_%e202949202993%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd202943202988%_))))
                            (let ((_%hd202950202996%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202949202993%_)))
                                  (_%tl202951202998%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202949202993%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202951202998%_))
                                  (let ((_%e202952203001%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202951202998%_))))
                                    (let ((_%hd202953203004%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202952203001%_)))
                                          (_%tl202954203006%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202952203001%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202954203006%_))
                                          (_%loop202941202977%_
                                           _%lp-tl202944202990%_
                                           (cons _%hd202953203004%_
                                                 _%body202945202982%_)
                                           (cons _%hd202950202996%_
                                                 _%hd202946202983%_))
                                          (_%g202931202959%_
                                           _%g202932202962%_))))
                                  (_%g202931202959%_ _%g202932202962%_))))
                          (_%g202931202959%_ _%g202932202962%_))))
                  (let ((_%body202947203009%_ (reverse _%body202945202982%_))
                        (_%hd202948203010%_ (reverse _%hd202946202983%_)))
                    ((lambda (_%g202933203012%_ _%g202934203013%_)
                       (let ((_%args203032%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen203033%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name203034%_
                              (let ((_%$e203029%_
                                     (let ((__tmp207177
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp207177 _%stx202925%_))))
                                (if _%$e203029%_
                                    _%$e203029%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args203032%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen203033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args203032%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args203032%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp207181
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name203034%_
                                                                (cons _%args203032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp207178
                                  (map (lambda (_%g203035203038%_
                                                _%g203036203040%_)
                                         (_%generate1202929%_
                                          _%args203032%_
                                          _%arglen203033%_
                                          _%g203035203038%_
                                          _%g203036203040%_))
                                       (let ((__tmp207179
                                              (lambda (_%g203042203045%_
                                                       _%g203043203047%_)
                                                (cons _%g203042203045%_
                                                      _%g203043203047%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp207179
                                          '()
                                          _%g202934203013%_))
                                       (let ((__tmp207180
                                              (lambda (_%g203049203052%_
                                                       _%g203050203054%_)
                                                (cons _%g203049203052%_
                                                      _%g203050203054%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp207180
                                          '()
                                          _%g202933203012%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp207181 __tmp207178)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body202947203009%_
                     _%hd202948203010%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop202941202977%_
                                             _%target202938202972%_
                                             '()
                                             '()))
                                          (_%g202931202959%_
                                           _%g202932202962%_)))))
                                (_%g202931202959%_ _%g202932202962%_))))
                        (_%g202931202959%_ _%g202932202962%_)))))
            (_%g202930203057%_ _%stx202925%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self202161%_ _%stx202162%_ _%compiled-body?202163%_)
        (letrec ((_%generate-simple202165%_
                  (lambda (_%hd202909%_ _%body202910%_)
                    (_%coalesce-boolean202166%_
                     (_%simplify-let202167%_
                      (gxc#generate-runtime-simple-let
                       _%self202161%_
                       'let
                       _%hd202909%_
                       _%body202910%_
                       _%compiled-body?202163%_)))))
                 (_%coalesce-boolean202166%_
                  (lambda (_%code202770%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code202771202797%_ _%code202770%_)
                               (_%else202773202805%_
                                (lambda () _%code202770%_))
                               (_%K202775202842%_
                                (lambda (_%expr2202808%_
                                         _%expr1202809%_
                                         _%id202810%_)
                                  (let* ((_%expr2202811202819%_
                                          _%expr2202808%_)
                                         (_%else202813202827%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1202809%_
                                                        (cons _%expr2202808%_
                                                              '())))))
                                         (_%K202815202832%_
                                          (lambda (_%exprs202830%_)
                                            (cons 'or
                                                  (cons _%expr1202809%_
                                                        _%exprs202830%_)))))
                                    (if (pair? _%expr2202811202819%_)
                                        (let ((_%hd202816202835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2202811202819%_)))
                                              (_%tl202817202837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2202811202819%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd202816202835%_ 'or))
                                              (let ((_%exprs202840%_
                                                     _%tl202817202837%_))
                                                (_%K202815202832%_
                                                 _%exprs202840%_))
                                              (_%else202813202827%_)))
                                        (_%else202813202827%_))))))
                          (if (pair? _%code202771202797%_)
                              (let ((_%hd202776202845%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code202771202797%_)))
                                    (_%tl202777202847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code202771202797%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd202776202845%_ 'let))
                                    (if (pair? _%tl202777202847%_)
                                        (let ((_%hd202778202850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl202777202847%_)))
                                              (_%tl202779202852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl202777202847%_))))
                                          (if (pair? _%hd202778202850%_)
                                              (let ((_%hd202790202855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd202778202850%_)))
                                                    (_%tl202791202857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd202778202850%_))))
                                                (if (pair? _%hd202790202855%_)
                                                    (let ((_%hd202792202860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd202790202855%_)))
                                                          (_%tl202793202862%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd202790202855%_))))
                                                      (let ((_%id202865%_
                                                             _%hd202792202860%_))
                                                        (if (pair? _%tl202793202862%_)
                                                            (let ((_%hd202794202867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl202793202862%_)))
                          (_%tl202795202869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl202793202862%_))))
                      (let ((_%expr1202872%_ _%hd202794202867%_))
                        (if (null? _%tl202795202869%_)
                            (if (null? _%tl202791202857%_)
                                (if (pair? _%tl202779202852%_)
                                    (let ((_%hd202780202874%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl202779202852%_)))
                                          (_%tl202781202876%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl202779202852%_))))
                                      (if (pair? _%hd202780202874%_)
                                          (let ((_%hd202782202879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd202780202874%_)))
                                                (_%tl202783202881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd202780202874%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd202782202879%_
                                                         'if))
                                                (if (pair? _%tl202783202881%_)
                                                    (let ((_%hd202784202884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl202783202881%_)))
                                                          (_%tl202785202886%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl202783202881%_))))
                                                      (if ((lambda (_%g202888202890%_)
                                                             (eq? _%g202888202890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id202865%_))
                   _%hd202784202884%_)
                  (if (pair? _%tl202785202886%_)
                      (let ((_%hd202786202893%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl202785202886%_)))
                            (_%tl202787202895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl202785202886%_))))
                        (if ((lambda (_%g202897202899%_)
                               (eq? _%g202897202899%_ _%id202865%_))
                             _%hd202786202893%_)
                            (if (pair? _%tl202787202895%_)
                                (let ((_%hd202788202902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202787202895%_)))
                                      (_%tl202789202904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202787202895%_))))
                                  (let ((_%expr2202907%_ _%hd202788202902%_))
                                    (if (null? _%tl202789202904%_)
                                        (if (null? _%tl202781202876%_)
                                            (_%K202775202842%_
                                             _%expr2202907%_
                                             _%expr1202872%_
                                             _%id202865%_)
                                            (_%else202773202805%_))
                                        (_%else202773202805%_))))
                                (_%else202773202805%_))
                            (_%else202773202805%_)))
                      (_%else202773202805%_))
                  (_%else202773202805%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else202773202805%_))
                                                (_%else202773202805%_)))
                                          (_%else202773202805%_)))
                                    (_%else202773202805%_))
                                (_%else202773202805%_))
                            (_%else202773202805%_))))
                    (_%else202773202805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else202773202805%_)))
                                              (_%else202773202805%_)))
                                        (_%else202773202805%_))
                                    (_%else202773202805%_)))
                              (_%else202773202805%_)))
                        _%code202770%_)))
                 (_%simplify-let202167%_
                  (lambda (_%code202469%_)
                    (let* ((_%code202470202542%_ _%code202469%_)
                           (_%else202475202550%_ (lambda () _%code202469%_)))
                      (let ((_%K202534202750%_
                             (lambda (_%expr202748%_) _%expr202748%_))
                            (_%K202517202696%_
                             (lambda (_%body202692%_
                                      _%expr202693%_
                                      _%id202694%_)
                               (cons 'let
                                     (cons (cons (cons _%id202694%_
                                                       (cons _%expr202693%_
                                                             '()))
                                                 '())
                                           _%body202692%_))))
                            (_%K202494202620%_
                             (lambda (_%body202614%_
                                      _%expr2202615%_
                                      _%id2202616%_
                                      _%expr1202617%_
                                      _%id1202618%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1202618%_
                                                       (cons _%expr1202617%_
                                                             '()))
                                                 (cons (cons _%id2202616%_
                                                             (cons _%expr2202615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body202614%_))))
                            (_%K202477202559%_
                             (lambda (_%body202554%_
                                      _%bind202555%_
                                      _%expr1202556%_
                                      _%id1202557%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1202557%_
                                                       (cons _%expr1202556%_
                                                             '()))
                                                 _%bind202555%_)
                                           _%body202554%_)))))
                        (if (pair? _%code202470202542%_)
                            (let ((_%tl202536202755%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code202470202542%_)))
                                  (_%hd202535202753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code202470202542%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd202535202753%_ 'let))
                                  (if (pair? _%tl202536202755%_)
                                      (let ((_%tl202538202760%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl202536202755%_)))
                                            (_%hd202537202758%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl202536202755%_))))
                                        (if (null? _%hd202537202758%_)
                                            (if (pair? _%tl202538202760%_)
                                                (let ((_%tl202540202765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl202538202760%_)))
                                                      (_%hd202539202763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl202538202760%_))))
                                                  (if (null? _%tl202540202765%_)
                                                      (let ((_%expr202768%_
                                                             _%hd202539202763%_))
                                                        (_%K202534202750%_
                                                         _%expr202768%_))
                                                      (_%else202475202550%_)))
                                                (_%else202475202550%_))
                                            (if (pair? _%hd202537202758%_)
                                                (let ((_%tl202529202711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd202537202758%_)))
                                                      (_%hd202528202709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd202537202758%_))))
                                                  (if (pair? _%hd202528202709%_)
                                                      (let ((_%tl202531202716%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd202528202709%_)))
                    (_%hd202530202714%_
                     (let () (declare (not safe)) (##car _%hd202528202709%_))))
                (if (pair? _%tl202531202716%_)
                    (let ((_%tl202533202723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl202531202716%_)))
                          (_%hd202532202721%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl202531202716%_))))
                      (if (null? _%tl202533202723%_)
                          (if (null? _%tl202529202711%_)
                              (if (pair? _%tl202538202760%_)
                                  (let ((_%tl202523202730%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202538202760%_)))
                                        (_%hd202522202728%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202538202760%_))))
                                    (if (pair? _%hd202522202728%_)
                                        (let ((_%tl202525202735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd202522202728%_)))
                                              (_%hd202524202733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd202522202728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd202524202733%_
                                                       'let))
                                              (if (pair? _%tl202525202735%_)
                                                  (let ((_%tl202527202740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202525202735%_)))
                                                        (_%hd202526202738%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202525202735%_))))
                                                    (if (null? _%hd202526202738%_)
                                                        (if (null? _%tl202523202730%_)
                                                            (let ((_%id202719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd202530202714%_)
                          (_%expr202726%_ _%hd202532202721%_)
                          (_%body202743%_ _%tl202527202740%_))
                      (_%K202517202696%_
                       _%body202743%_
                       _%expr202726%_
                       _%id202719%_))
                    (_%else202475202550%_))
                (if (pair? _%hd202526202738%_)
                    (let ((_%tl202506202669%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd202526202738%_)))
                          (_%hd202505202667%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd202526202738%_))))
                      (if (pair? _%hd202505202667%_)
                          (let ((_%tl202508202674%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd202505202667%_)))
                                (_%hd202507202672%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd202505202667%_))))
                            (if (pair? _%tl202508202674%_)
                                (let ((_%tl202510202681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202508202674%_)))
                                      (_%hd202509202679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202508202674%_))))
                                  (if (null? _%tl202510202681%_)
                                      (if (null? _%tl202506202669%_)
                                          (if (null? _%tl202523202730%_)
                                              (let ((_%id1202643%_
                                                     _%hd202530202714%_)
                                                    (_%expr1202650%_
                                                     _%hd202532202721%_)
                                                    (_%id2202677%_
                                                     _%hd202507202672%_)
                                                    (_%expr2202684%_
                                                     _%hd202509202679%_)
                                                    (_%body202686%_
                                                     _%tl202527202740%_))
                                                (_%K202494202620%_
                                                 _%body202686%_
                                                 _%expr2202684%_
                                                 _%id2202677%_
                                                 _%expr1202650%_
                                                 _%id1202643%_))
                                              (_%else202475202550%_))
                                          (_%else202475202550%_))
                                      (_%else202475202550%_)))
                                (_%else202475202550%_)))
                          (_%else202475202550%_)))
                    (_%else202475202550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202475202550%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd202524202733%_
                                                           'let*))
                                                  (if (pair? _%tl202525202735%_)
                                                      (let ((_%tl202487202603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl202525202735%_)))
                    (_%hd202486202601%_
                     (let () (declare (not safe)) (##car _%tl202525202735%_))))
                (if (null? _%tl202523202730%_)
                    (let ((_%id1202582%_ _%hd202530202714%_)
                          (_%expr1202589%_ _%hd202532202721%_)
                          (_%bind202606%_ _%hd202486202601%_)
                          (_%body202608%_ _%tl202487202603%_))
                      (_%K202477202559%_
                       _%body202608%_
                       _%bind202606%_
                       _%expr1202589%_
                       _%id1202582%_))
                    (_%else202475202550%_)))
              (_%else202475202550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202475202550%_))))
                                        (_%else202475202550%_)))
                                  (_%else202475202550%_))
                              (_%else202475202550%_))
                          (_%else202475202550%_)))
                    (_%else202475202550%_)))
              (_%else202475202550%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else202475202550%_))))
                                      (_%else202475202550%_))
                                  (_%else202475202550%_)))
                            (_%else202475202550%_))))))
                 (_%generate-values202168%_
                  (lambda (_%hd202282%_ _%body202283%_)
                    (let _%lp202285%_ ((_%rest202287%_ _%hd202282%_)
                                       (_%bind202288%_ '())
                                       (_%check202289%_ '())
                                       (_%post202290%_ '()))
                      (let* ((_%__stx206335206336%_ _%rest202287%_)
                             (_%g202293202304%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206335206336%_)))))
                        (let ((_%__kont206337206338%_
                               (lambda (_%g202295202331%_ _%g202296202332%_)
                                 (let* ((_%__stx206291206292%_
                                         _%g202296202332%_)
                                        (_%g202347202372%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206291206292%_)))))
                                   (let ((_%__kont206293206294%_
                                          (lambda (_%g202349202445%_
                                                   _%g202350202446%_)
                                            (let ((_%eid202460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g202350202446%_)))
                                                  (_%expr202461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self202161%_
                                                      _%g202349202445%_))))
                                              (_%lp202285%_
                                               _%g202295202331%_
                                               (cons (cons _%eid202460%_
                                                           (cons _%expr202461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202288%_)
                                               _%check202289%_
                                               _%post202290%_))))
                                         (_%__kont206295206296%_
                                          (lambda (_%g202360202393%_
                                                   _%g202361202394%_)
                                            (let* ((_%vals202407%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values202409%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals202407%_
                                                     _%g202361202394%_
                                                     _%g202360202393%_))
                                                   (_%refs202411%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals202407%_
                                                     _%g202361202394%_))
                                                   (_%expr202413%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self202161%_
                                                       _%g202360202393%_))))
                                              (_%lp202285%_
                                               _%g202295202331%_
                                               (cons (cons _%vals202407%_
                                                           (cons _%expr202413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202288%_)
                                               (cons _%check-values202409%_
                                                     _%check202289%_)
                                               (cons _%refs202411%_
                                                     _%post202290%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206291206292%_))
                                         (let ((_%e202351202421%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206291206292%_))))
                                           (let ((_%tl202353202426%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202351202421%_)))
                                                 (_%hd202352202424%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202351202421%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd202352202424%_))
                                                 (let ((_%e202354202429%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd202352202424%_))))
                                                   (let ((_%tl202356202434%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202354202429%_)))
                                                         (_%hd202355202432%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202354202429%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202356202434%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202353202426%_))
                     (let ((_%e202357202437%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202353202426%_))))
                       (let ((_%tl202359202442%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202357202437%_)))
                             (_%hd202358202440%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202357202437%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202359202442%_))
                             (_%__kont206293206294%_
                              _%hd202358202440%_
                              _%hd202355202432%_)
                             (let ()
                               (declare (not safe))
                               (_%g202347202372%_)))))
                     (let () (declare (not safe)) (_%g202347202372%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl202353202426%_))
                     (let ((_%e202365202385%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202353202426%_))))
                       (let ((_%tl202367202390%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202365202385%_)))
                             (_%hd202366202388%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202365202385%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202367202390%_))
                             (_%__kont206295206296%_
                              _%hd202366202388%_
                              _%hd202352202424%_)
                             (let ()
                               (declare (not safe))
                               (_%g202347202372%_)))))
                     (let () (declare (not safe)) (_%g202347202372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl202353202426%_))
                                                     (let ((_%e202365202385%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl202353202426%_))))
                                                       (let ((_%tl202367202390%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e202365202385%_)))
                     (_%hd202366202388%_
                      (let () (declare (not safe)) (##car _%e202365202385%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl202367202390%_))
                     (_%__kont206295206296%_
                      _%hd202366202388%_
                      _%hd202352202424%_)
                     (let () (declare (not safe)) (_%g202347202372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g202347202372%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g202347202372%_)))))))
                              (_%__kont206339206340%_
                               (lambda ()
                                 (let* ((_%body202311%_
                                         (if _%compiled-body?202163%_
                                             _%body202283%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self202161%_
                                                _%body202283%_))))
                                        (_%body202313%_
                                         (_%generate-values-post202169%_
                                          _%post202290%_
                                          _%body202311%_))
                                        (_%body202315%_
                                         (_%generate-values-check202170%_
                                          _%check202289%_
                                          _%body202313%_)))
                                   (cons 'let
                                         (cons (reverse _%bind202288%_)
                                               (cons _%body202315%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206335206336%_))
                              (let ((_%e202297202323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206335206336%_))))
                                (let ((_%tl202299202328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202297202323%_)))
                                      (_%hd202298202326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202297202323%_))))
                                  (_%__kont206337206338%_
                                   _%tl202299202328%_
                                   _%hd202298202326%_)))
                              (_%__kont206339206340%_)))))))
                 (_%generate-values-post202169%_
                  (lambda (_%post202241%_ _%body202242%_)
                    (let _%lp202244%_ ((_%rest202246%_ _%post202241%_)
                                       (_%body202247%_ _%body202242%_))
                      (let* ((_%rest202248202256%_ _%rest202246%_)
                             (_%else202250202264%_ (lambda () _%body202247%_))
                             (_%K202252202270%_
                              (lambda (_%rest202267%_ _%bind202268%_)
                                (_%lp202244%_
                                 _%rest202267%_
                                 (cons 'let
                                       (cons _%bind202268%_
                                             (cons _%body202247%_ '())))))))
                        (if (pair? _%rest202248202256%_)
                            (let ((_%hd202253202273%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202248202256%_)))
                                  (_%tl202254202275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202248202256%_))))
                              (let* ((_%bind202278%_ _%hd202253202273%_)
                                     (_%rest202280%_ _%tl202254202275%_))
                                (_%K202252202270%_
                                 _%rest202280%_
                                 _%bind202278%_)))
                            (_%else202250202264%_))))))
                 (_%generate-values-check202170%_
                  (lambda (_%check202238%_ _%body202239%_)
                    (cons 'begin
                          (let ((__tmp207183 (cons _%body202239%_ '()))
                                (__tmp207182 (reverse _%check202238%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp207183 __tmp207182))))))
          (let* ((_%g202172202189%_
                  (lambda (_%g202173202186%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202173202186%_))))
                 (_%g202171202235%_
                  (lambda (_%g202173202192%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202173202192%_))
                        (let ((_%e202176202194%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202173202192%_))))
                          (let ((_%hd202177202197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202176202194%_)))
                                (_%tl202178202199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202176202194%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202178202199%_))
                                (let ((_%e202179202202%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl202178202199%_))))
                                  (let ((_%hd202180202205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202179202202%_)))
                                        (_%tl202181202207%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202179202202%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202181202207%_))
                                        (let ((_%e202182202210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202181202207%_))))
                                          (let ((_%hd202183202213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202182202210%_)))
                                                (_%tl202184202215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202182202210%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202184202215%_))
                                                ((lambda (_%g202174202218%_
                                                          _%g202175202219%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g202175202219%_)
                                                       (_%generate-simple202165%_
                                                        _%g202175202219%_
                                                        _%g202174202218%_)
                                                       (_%generate-values202168%_
                                                        _%g202175202219%_
                                                        _%g202174202218%_)))
                                                 _%hd202183202213%_
                                                 _%hd202180202205%_)
                                                (_%g202172202189%_
                                                 _%g202173202192%_))))
                                        (_%g202172202189%_
                                         _%g202173202192%_))))
                                (_%g202172202189%_ _%g202173202192%_))))
                        (_%g202172202189%_ _%g202173202192%_)))))
            (_%g202171202235%_ _%stx202162%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self202915%_ _%stx202916%_)
        (let ((_%compiled-body?202918%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self202915%_
           _%stx202916%_
           _%compiled-body?202918%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g207184_
        (let ((_g207185_ (let () (declare (not safe)) (##length _g207184_))))
          (cond ((let () (declare (not safe)) (##fx= _g207185_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g207184_))
                ((let () (declare (not safe)) (##fx= _g207185_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g207184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g207184_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals202055%_ _%hd202056%_)
        (let _%lp202058%_ ((_%rest202060%_ _%hd202056%_)
                           (_%k202061%_ '0)
                           (_%r202062%_ '()))
          (let* ((_%__stx206349206350%_ _%rest202060%_)
                 (_%g202067202084%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx206349206350%_)))))
            (let ((_%__kont206351206352%_
                   (lambda (_%g202069202147%_)
                     (_%lp202058%_
                      _%g202069202147%_
                      (let () (declare (not safe)) (##fx+ _%k202061%_ '1))
                      _%r202062%_)))
                  (_%__kont206353206354%_
                   (lambda (_%g202074202120%_ _%g202075202121%_)
                     (_%lp202058%_
                      _%g202074202120%_
                      (let () (declare (not safe)) (##fx+ _%k202061%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g202075202121%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals202055%_
                                         _%k202061%_
                                         _%g202074202120%_)
                                        '()))
                            _%r202062%_))))
                  (_%__kont206355206356%_
                   (lambda (_%g202079202096%_)
                     (let ((__tmp207186
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g202079202096%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals202055%_
                                               _%k202061%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp207186 _%r202062%_))))
                  (_%__kont206357206358%_ (lambda () (reverse _%r202062%_))))
              (let ((_%g202065202107%_
                     (lambda ()
                       (let ((_%g202079202096%_ _%__stx206349206350%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g202079202096%_))
                             (_%__kont206355206356%_ _%g202079202096%_)
                             (_%__kont206357206358%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx206349206350%_))
                    (let ((_%e202070202136%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx206349206350%_))))
                      (let ((_%tl202072202141%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202070202136%_)))
                            (_%hd202071202139%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202070202136%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd202071202139%_))
                            (let ((_%e202073202144%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd202071202139%_))))
                              (if (equal? _%e202073202144%_ '#f)
                                  (_%__kont206351206352%_ _%tl202072202141%_)
                                  (_%__kont206353206354%_
                                   _%tl202072202141%_
                                   _%hd202071202139%_)))
                            (_%__kont206353206354%_
                             _%tl202072202141%_
                             _%hd202071202139%_))))
                    (let () (declare (not safe)) (_%g202065202107%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self201734%_ _%stx201735%_ _%compiled-body?201736%_)
        (letrec ((_%generate-simple201738%_
                  (lambda (_%hd202040%_ _%body202041%_)
                    (gxc#generate-runtime-simple-let
                     _%self201734%_
                     'letrec
                     _%hd202040%_
                     _%body202041%_
                     _%compiled-body?201736%_)))
                 (_%generate-values201739%_
                  (lambda (_%hd201819%_ _%body201820%_)
                    (let _%lp201822%_ ((_%rest201824%_ _%hd201819%_)
                                       (_%bind201825%_ '())
                                       (_%check201826%_ '())
                                       (_%post201827%_ '()))
                      (let* ((_%__stx206423206424%_ _%rest201824%_)
                             (_%g201830201841%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206423206424%_)))))
                        (let ((_%__kont206425206426%_
                               (lambda (_%g201832201868%_ _%g201833201869%_)
                                 (let* ((_%__stx206379206380%_
                                         _%g201833201869%_)
                                        (_%g201884201909%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206379206380%_)))))
                                   (let ((_%__kont206381206382%_
                                          (lambda (_%g201886202016%_
                                                   _%g201887202017%_)
                                            (let ((_%eid202031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201887202017%_)))
                                                  (_%expr202032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201734%_
                                                      _%g201886202016%_))))
                                              (_%lp201822%_
                                               _%g201832201868%_
                                               (cons (cons _%eid202031%_
                                                           (cons _%expr202032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201825%_)
                                               _%check201826%_
                                               _%post201827%_))))
                                         (_%__kont206383206384%_
                                          (lambda (_%g201897201930%_
                                                   _%g201898201931%_)
                                            (let* ((_%vals201944%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201946%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201944%_
                                                     _%g201898201931%_
                                                     _%g201897201930%_))
                                                   (_%refs201948%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201944%_
                                                     _%g201898201931%_))
                                                   (_%expr201950%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201734%_
                                                       _%g201897201930%_))))
                                              (_%lp201822%_
                                               _%g201832201868%_
                                               (let ((__tmp207188
                                                      (cons (cons _%vals201944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr201950%_ '()))
                    _%bind201825%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp207187
                                                      (map (lambda (_%e201952201954%_)
                                                             (let* ((_%e201952201956201965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e201952201954%_)
                            (_%E201958201969%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e201952201956201965%_
                                        '([eid _])))
                               '#!void))
                            (_%K201959201974%_
                             (lambda (_%eid201972%_)
                               (cons _%eid201972%_ (cons '#!void '())))))
                       (if (pair? _%e201952201956201965%_)
                           (let ((_%hd201960201977%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201952201956201965%_)))
                                 (_%tl201961201979%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201952201956201965%_))))
                             (let ((_%eid201982%_ _%hd201960201977%_))
                               (if (pair? _%tl201961201979%_)
                                   (let ((_%tl201963201984%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl201961201979%_))))
                                     (if (null? _%tl201963201984%_)
                                         (_%K201959201974%_ _%eid201982%_)
                                         (_%E201958201969%_)))
                                   (_%E201958201969%_))))
                           (_%E201958201969%_))))
                   _%refs201948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp207188
                                                  __tmp207187))
                                               (cons _%check-values201946%_
                                                     _%check201826%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs201948%_
                                                  _%post201827%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206379206380%_))
                                         (let ((_%e201888201992%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206379206380%_))))
                                           (let ((_%tl201890201997%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201888201992%_)))
                                                 (_%hd201889201995%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201888201992%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201889201995%_))
                                                 (let ((_%e201891202000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201889201995%_))))
                                                   (let ((_%tl201893202005%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201891202000%_)))
                                                         (_%hd201892202003%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201891202000%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201893202005%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201890201997%_))
                     (let ((_%e201894202008%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201890201997%_))))
                       (let ((_%tl201896202013%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201894202008%_)))
                             (_%hd201895202011%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201894202008%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201896202013%_))
                             (_%__kont206381206382%_
                              _%hd201895202011%_
                              _%hd201892202003%_)
                             (let ()
                               (declare (not safe))
                               (_%g201884201909%_)))))
                     (let () (declare (not safe)) (_%g201884201909%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201890201997%_))
                     (let ((_%e201902201922%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201890201997%_))))
                       (let ((_%tl201904201927%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201902201922%_)))
                             (_%hd201903201925%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201902201922%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201904201927%_))
                             (_%__kont206383206384%_
                              _%hd201903201925%_
                              _%hd201889201995%_)
                             (let ()
                               (declare (not safe))
                               (_%g201884201909%_)))))
                     (let () (declare (not safe)) (_%g201884201909%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201890201997%_))
                                                     (let ((_%e201902201922%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201890201997%_))))
                                                       (let ((_%tl201904201927%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201902201922%_)))
                     (_%hd201903201925%_
                      (let () (declare (not safe)) (##car _%e201902201922%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201904201927%_))
                     (_%__kont206383206384%_
                      _%hd201903201925%_
                      _%hd201889201995%_)
                     (let () (declare (not safe)) (_%g201884201909%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201884201909%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201884201909%_)))))))
                              (_%__kont206427206428%_
                               (lambda ()
                                 (let* ((_%body201848%_
                                         (if _%compiled-body?201736%_
                                             _%body201820%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201734%_
                                                _%body201820%_))))
                                        (_%body201850%_
                                         (_%generate-values-post201741%_
                                          _%post201827%_
                                          _%body201848%_))
                                        (_%body201852%_
                                         (_%generate-values-check201740%_
                                          _%check201826%_
                                          _%body201850%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind201825%_)
                                               (cons _%body201852%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206423206424%_))
                              (let ((_%e201834201860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206423206424%_))))
                                (let ((_%tl201836201865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201834201860%_)))
                                      (_%hd201835201863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201834201860%_))))
                                  (_%__kont206425206426%_
                                   _%tl201836201865%_
                                   _%hd201835201863%_)))
                              (_%__kont206427206428%_)))))))
                 (_%generate-values-check201740%_
                  (lambda (_%check201816%_ _%body201817%_)
                    (cons 'begin
                          (let ((__tmp207190 (cons _%body201817%_ '()))
                                (__tmp207189 (reverse _%check201816%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp207190 __tmp207189)))))
                 (_%generate-values-post201741%_
                  (lambda (_%post201809%_ _%body201810%_)
                    (cons 'begin
                          (let ((__tmp207194 (cons _%body201810%_ '()))
                                (__tmp207191
                                 (let ((__tmp207193
                                        (lambda (_%g201811201813%_)
                                          (cons 'set! _%g201811201813%_)))
                                       (__tmp207192 (reverse _%post201809%_)))
                                   (declare (not safe))
                                   (##map __tmp207193 __tmp207192))))
                            (declare (not safe))
                            (foldr__0 cons __tmp207194 __tmp207191))))))
          (let* ((_%g201743201760%_
                  (lambda (_%g201744201757%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201744201757%_))))
                 (_%g201742201806%_
                  (lambda (_%g201744201763%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201744201763%_))
                        (let ((_%e201747201765%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201744201763%_))))
                          (let ((_%hd201748201768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201747201765%_)))
                                (_%tl201749201770%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201747201765%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201749201770%_))
                                (let ((_%e201750201773%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201749201770%_))))
                                  (let ((_%hd201751201776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201750201773%_)))
                                        (_%tl201752201778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201750201773%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201752201778%_))
                                        (let ((_%e201753201781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201752201778%_))))
                                          (let ((_%hd201754201784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201753201781%_)))
                                                (_%tl201755201786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201753201781%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201755201786%_))
                                                ((lambda (_%g201745201789%_
                                                          _%g201746201790%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201746201790%_)
                                                       (_%generate-simple201738%_
                                                        _%g201746201790%_
                                                        _%g201745201789%_)
                                                       (_%generate-values201739%_
                                                        _%g201746201790%_
                                                        _%g201745201789%_)))
                                                 _%hd201754201784%_
                                                 _%hd201751201776%_)
                                                (_%g201743201760%_
                                                 _%g201744201763%_))))
                                        (_%g201743201760%_
                                         _%g201744201763%_))))
                                (_%g201743201760%_ _%g201744201763%_))))
                        (_%g201743201760%_ _%g201744201763%_)))))
            (_%g201742201806%_ _%stx201735%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self202046%_ _%stx202047%_)
        (let ((_%compiled-body?202049%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self202046%_
           _%stx202047%_
           _%compiled-body?202049%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g207195_
        (let ((_g207196_ (let () (declare (not safe)) (##length _g207195_))))
          (cond ((let () (declare (not safe)) (##fx= _g207196_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g207195_))
                ((let () (declare (not safe)) (##fx= _g207196_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g207195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g207195_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self201315%_ _%stx201316%_)
        (letrec ((_%generate-values201318%_
                  (lambda (_%hd201561%_ _%body201562%_)
                    (let _%lp201564%_ ((_%rest201566%_ _%hd201561%_)
                                       (_%bind201567%_ '()))
                      (let* ((_%rest201568201576%_ _%rest201566%_)
                             (_%else201570201587%_
                              (lambda ()
                                (let ((_%bind201584%_ (reverse _%bind201567%_))
                                      (_%body201585%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self201315%_
                                          _%body201562%_))))
                                  (cons 'letrec*
                                        (cons _%bind201584%_
                                              (cons _%body201585%_ '()))))))
                             (_%K201572201721%_
                              (lambda (_%rest201590%_ _%hd-bind201591%_)
                                (let* ((_%__stx206437206438%_
                                        _%hd-bind201591%_)
                                       (_%g201594201619%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx206437206438%_)))))
                                  (let ((_%__kont206439206440%_
                                         (lambda (_%g201596201700%_
                                                  _%g201597201701%_)
                                           (let ((_%eid201715%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g201597201701%_)))
                                                 (_%expr201716%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self201315%_
                                                     _%g201596201700%_))))
                                             (_%lp201564%_
                                              _%rest201590%_
                                              (cons (cons _%eid201715%_
                                                          (cons _%expr201716%_
                                                                '()))
                                                    _%bind201567%_)))))
                                        (_%__kont206441206442%_
                                         (lambda (_%g201607201640%_
                                                  _%g201608201641%_)
                                           (let* ((_%vals201660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp201662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values201664%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp201662%_
                                                    _%g201608201641%_
                                                    _%g201607201640%_))
                                                  (_%refs201666%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals201660%_
                                                    _%g201608201641%_))
                                                  (_%expr201668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201315%_
                                                      _%g201607201640%_))))
                                             (_%lp201564%_
                                              _%rest201590%_
                                              (let ((__tmp207197
                                                     (cons (cons _%vals201660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp201662%_
                                                       (cons _%expr201668%_
                                                             '()))
                                                 '())
                                           (cons _%check-values201664%_
                                                 (cons _%tmp201662%_ '()))))
                               '()))
                   _%bind201567%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp207197
                                                 _%refs201666%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx206437206438%_))
                                        (let ((_%e201598201676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx206437206438%_))))
                                          (let ((_%tl201600201681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201598201676%_)))
                                                (_%hd201599201679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201598201676%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201599201679%_))
                                                (let ((_%e201601201684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201599201679%_))))
                                                  (let ((_%tl201603201689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201601201684%_)))
                                                        (_%hd201602201687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201601201684%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201603201689%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201600201681%_))
                                                            (let ((_%e201604201692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201600201681%_))))
                      (let ((_%tl201606201697%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201604201692%_)))
                            (_%hd201605201695%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201604201692%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201606201697%_))
                            (_%__kont206439206440%_
                             _%hd201605201695%_
                             _%hd201602201687%_)
                            (let ()
                              (declare (not safe))
                              (_%g201594201619%_)))))
                    (let () (declare (not safe)) (_%g201594201619%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl201600201681%_))
                    (let ((_%e201612201632%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201600201681%_))))
                      (let ((_%tl201614201637%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201612201632%_)))
                            (_%hd201613201635%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201612201632%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201614201637%_))
                            (_%__kont206441206442%_
                             _%hd201613201635%_
                             _%hd201599201679%_)
                            (let ()
                              (declare (not safe))
                              (_%g201594201619%_)))))
                    (let () (declare (not safe)) (_%g201594201619%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl201600201681%_))
                                                    (let ((_%e201612201632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl201600201681%_))))
                                                      (let ((_%tl201614201637%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e201612201632%_)))
                    (_%hd201613201635%_
                     (let () (declare (not safe)) (##car _%e201612201632%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl201614201637%_))
                    (_%__kont206441206442%_
                     _%hd201613201635%_
                     _%hd201599201679%_)
                    (let () (declare (not safe)) (_%g201594201619%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201594201619%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201594201619%_))))))))
                        (if (pair? _%rest201568201576%_)
                            (let ((_%hd201573201724%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201568201576%_)))
                                  (_%tl201574201726%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201568201576%_))))
                              (let* ((_%hd-bind201729%_ _%hd201573201724%_)
                                     (_%rest201731%_ _%tl201574201726%_))
                                (_%K201572201721%_
                                 _%rest201731%_
                                 _%hd-bind201729%_)))
                            (_%else201570201587%_))))))
                 (_%generate-letrec?201319%_
                  (lambda (_%hd201451%_)
                    (let _%lp201453%_ ((_%rest201455%_ _%hd201451%_))
                      (let* ((_%rest201456201464%_ _%rest201455%_)
                             (_%else201458201472%_ (lambda () '#t))
                             (_%K201460201549%_
                              (lambda (_%rest201475%_ _%hd-bind201476%_)
                                (let* ((_%g201478201495%_
                                        (lambda (_%g201479201492%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g201479201492%_))))
                                       (_%g201477201546%_
                                        (lambda (_%g201479201498%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g201479201498%_))
                                              (let ((_%e201482201500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g201479201498%_))))
                                                (let ((_%hd201483201503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201482201500%_)))
                                                      (_%tl201484201505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201482201500%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd201483201503%_))
                                                      (let ((_%e201485201508%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd201483201503%_))))
                (let ((_%hd201486201511%_
                       (let () (declare (not safe)) (##car _%e201485201508%_)))
                      (_%tl201487201513%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201485201508%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201487201513%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201484201505%_))
                          (let ((_%e201488201516%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201484201505%_))))
                            (let ((_%hd201489201519%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201488201516%_)))
                                  (_%tl201490201521%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201488201516%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201490201521%_))
                                  ((lambda (_%g201480201524%_
                                            _%g201481201525%_)
                                     (if (_%is-lambda-expr?201320%_
                                          _%g201480201524%_)
                                         (_%lp201453%_ _%rest201475%_)
                                         '#f))
                                   _%hd201489201519%_
                                   _%hd201486201511%_)
                                  (_%g201478201495%_ _%g201479201498%_))))
                          (_%g201478201495%_ _%g201479201498%_))
                      (_%g201478201495%_ _%g201479201498%_))))
              (_%g201478201495%_ _%g201479201498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201478201495%_
                                               _%g201479201498%_)))))
                                  (_%g201477201546%_ _%hd-bind201476%_)))))
                        (if (pair? _%rest201456201464%_)
                            (let ((_%hd201461201552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201456201464%_)))
                                  (_%tl201462201554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201456201464%_))))
                              (let* ((_%hd-bind201557%_ _%hd201461201552%_)
                                     (_%rest201559%_ _%tl201462201554%_))
                                (_%K201460201549%_
                                 _%rest201559%_
                                 _%hd-bind201557%_)))
                            (_%else201458201472%_))))))
                 (_%is-lambda-expr?201320%_
                  (lambda (_%expr201388%_)
                    (let* ((_%__stx206481206482%_ _%expr201388%_)
                           (_%g201391201405%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206481206482%_)))))
                      (let ((_%__kont206483206484%_
                             (lambda (_%g201393201433%_ _%g201394201434%_)
                               '#t))
                            (_%__kont206485206486%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx206481206482%_))
                            (let ((_%e201395201417%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx206481206482%_))))
                              (let ((_%tl201397201422%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201395201417%_)))
                                    (_%hd201396201420%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201395201417%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201396201420%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd201396201420%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201397201422%_))
                                            (let ((_%e201398201425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201397201422%_))))
                                              (let ((_%tl201400201430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201398201425%_)))
                                                    (_%hd201399201428%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201398201425%_))))
                                                (_%__kont206483206484%_
                                                 _%tl201400201430%_
                                                 _%hd201399201428%_)))
                                            (_%__kont206485206486%_))
                                        (_%__kont206485206486%_))
                                    (_%__kont206485206486%_))))
                            (_%__kont206485206486%_)))))))
          (let* ((_%g201322201339%_
                  (lambda (_%g201323201336%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201323201336%_))))
                 (_%g201321201385%_
                  (lambda (_%g201323201342%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201323201342%_))
                        (let ((_%e201326201344%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201323201342%_))))
                          (let ((_%hd201327201347%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201326201344%_)))
                                (_%tl201328201349%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201326201344%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201328201349%_))
                                (let ((_%e201329201352%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201328201349%_))))
                                  (let ((_%hd201330201355%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201329201352%_)))
                                        (_%tl201331201357%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201329201352%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201331201357%_))
                                        (let ((_%e201332201360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201331201357%_))))
                                          (let ((_%hd201333201363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201332201360%_)))
                                                (_%tl201334201365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201332201360%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201334201365%_))
                                                ((lambda (_%g201324201368%_
                                                          _%g201325201369%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201325201369%_)
                                                       (if (_%generate-letrec?201319%_
                                                            _%g201325201369%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self201315%_
                                                            'letrec
                                                            _%g201325201369%_
                                                            _%g201324201368%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self201315%_
                                                            'letrec*
                                                            _%g201325201369%_
                                                            _%g201324201368%_
                                                            '#f))
                                                       (_%generate-values201318%_
                                                        _%g201325201369%_
                                                        _%g201324201368%_)))
                                                 _%hd201333201363%_
                                                 _%hd201330201355%_)
                                                (_%g201322201339%_
                                                 _%g201323201342%_))))
                                        (_%g201322201339%_
                                         _%g201323201342%_))))
                                (_%g201322201339%_ _%g201323201342%_))))
                        (_%g201322201339%_ _%g201323201342%_)))))
            (_%g201321201385%_ _%stx201316%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd201252%_)
        (let _%lp201254%_ ((_%rest201256%_ _%hd201252%_))
          (let* ((_%rest201257201273%_ _%rest201256%_)
                 (_%else201260201281%_ (lambda () '#f)))
            (let ((_%K201263201294%_
                   (lambda (_%rest201292%_) (_%lp201254%_ _%rest201292%_)))
                  (_%K201262201286%_ (lambda () '#t)))
              (let ((_%try-match201259201289%_
                     (lambda ()
                       (if (null? _%rest201257201273%_)
                           (_%K201262201286%_)
                           (_%else201260201281%_)))))
                (if (pair? _%rest201257201273%_)
                    (let ((_%tl201265201299%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest201257201273%_)))
                          (_%hd201264201297%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest201257201273%_))))
                      (if (pair? _%hd201264201297%_)
                          (let ((_%tl201267201304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd201264201297%_)))
                                (_%hd201266201302%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd201264201297%_))))
                            (if (pair? _%hd201266201302%_)
                                (let ((_%tl201271201307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd201266201302%_))))
                                  (if (null? _%tl201271201307%_)
                                      (if (pair? _%tl201267201304%_)
                                          (let ((_%tl201269201310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl201267201304%_))))
                                            (if (null? _%tl201269201310%_)
                                                (let ((_%rest201313%_
                                                       _%tl201265201299%_))
                                                  (_%lp201254%_
                                                   _%rest201313%_))
                                                (_%else201260201281%_)))
                                          (_%else201260201281%_))
                                      (_%else201260201281%_)))
                                (_%else201260201281%_)))
                          (_%else201260201281%_)))
                    (_%try-match201259201289%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self201164%_
               _%form201165%_
               _%hd201166%_
               _%body201167%_
               _%compiled-body?201168%_)
        (letrec ((_%generate1201170%_
                  (lambda (_%bind201209%_)
                    (let* ((_%bind201210201221%_ _%bind201209%_)
                           (_%E201212201224%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind201210201221%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K201213201230%_
                            (lambda (_%expr201227%_ _%id201228%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id201228%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self201164%_
                                             _%expr201227%_))
                                          '())))))
                      (if (pair? _%bind201210201221%_)
                          (let ((_%hd201214201233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind201210201221%_)))
                                (_%tl201215201235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind201210201221%_))))
                            (if (pair? _%hd201214201233%_)
                                (let ((_%hd201218201238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd201214201233%_)))
                                      (_%tl201219201240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd201214201233%_))))
                                  (let ((_%id201243%_ _%hd201218201238%_))
                                    (if (null? _%tl201219201240%_)
                                        (if (pair? _%tl201215201235%_)
                                            (let ((_%hd201216201245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl201215201235%_)))
                                                  (_%tl201217201247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl201215201235%_))))
                                              (let ((_%expr201250%_
                                                     _%hd201216201245%_))
                                                (if (null? _%tl201217201247%_)
                                                    (_%K201213201230%_
                                                     _%expr201250%_
                                                     _%id201243%_)
                                                    (_%E201212201224%_))))
                                            (_%E201212201224%_))
                                        (_%E201212201224%_))))
                                (_%E201212201224%_)))
                          (_%E201212201224%_))))))
          (let* ((_%bind201172%_ (map _%generate1201170%_ _%hd201166%_))
                 (_%body201174%_
                  (if _%compiled-body?201168%_
                      _%body201167%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self201164%_ _%body201167%_))))
                 (_%body201206%_
                  (let* ((_%body201175201183%_ _%body201174%_)
                         (_%else201177201191%_
                          (lambda () (cons _%body201174%_ '())))
                         (_%K201179201196%_
                          (lambda (_%exprs201194%_) _%exprs201194%_)))
                    (if (pair? _%body201175201183%_)
                        (let ((_%hd201180201199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body201175201183%_)))
                              (_%tl201181201201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body201175201183%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd201180201199%_ 'begin))
                              (let ((_%exprs201204%_ _%tl201181201201%_))
                                (_%K201179201196%_ _%exprs201204%_))
                              (_%else201177201191%_)))
                        (_%else201177201191%_)))))
            (cons _%form201165%_ (cons _%bind201172%_ _%body201206%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self201064%_ _%stx201065%_)
        (letrec ((_%generate1201067%_
                  (lambda (_%datum201119%_)
                    (if (or (null? _%datum201119%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum201119%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum201119%_))
                            (eof-object? _%datum201119%_))
                        _%datum201119%_
                        (if (uninterned-symbol? _%datum201119%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum201119%_
                               '#t))
                            (if (pair? _%datum201119%_)
                                (cons (_%generate1201067%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum201119%_)))
                                      (_%generate1201067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum201119%_))))
                                (if (box? _%datum201119%_)
                                    (box (_%generate1201067%_
                                          (unbox _%datum201119%_)))
                                    (if (vector? _%datum201119%_)
                                        (vector-map
                                         _%generate1201067%_
                                         _%datum201119%_)
                                        (if (or (s8vector? _%datum201119%_)
                                                (u8vector? _%datum201119%_)
                                                (s16vector? _%datum201119%_)
                                                (u16vector? _%datum201119%_)
                                                (s32vector? _%datum201119%_)
                                                (u32vector? _%datum201119%_)
                                                (s64vector? _%datum201119%_)
                                                (u64vector? _%datum201119%_)
                                                (f32vector? _%datum201119%_)
                                                (f64vector? _%datum201119%_))
                                            _%datum201119%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx201065%_)))))))))))
          (let* ((_%g201069201082%_
                  (lambda (_%g201070201079%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201070201079%_))))
                 (_%g201068201116%_
                  (lambda (_%g201070201085%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201070201085%_))
                        (let ((_%e201072201087%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201070201085%_))))
                          (let ((_%hd201073201090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201072201087%_)))
                                (_%tl201074201092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201072201087%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201074201092%_))
                                (let ((_%e201075201095%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201074201092%_))))
                                  (let ((_%hd201076201098%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201075201095%_)))
                                        (_%tl201077201100%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201075201095%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201077201100%_))
                                        ((lambda (_%g201071201103%_)
                                           (cons 'quote
                                                 (cons (_%generate1201067%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g201071201103%_)))
                                                       '())))
                                         _%hd201076201098%_)
                                        (_%g201069201082%_
                                         _%g201070201085%_))))
                                (_%g201069201082%_ _%g201070201085%_))))
                        (_%g201069201082%_ _%g201070201085%_)))))
            (_%g201068201116%_ _%stx201065%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self200511%_ _%stx200512%_)
        (letrec ((_%compile-call200514%_
                  (lambda (_%rator200801%_ _%rands200802%_)
                    (let ((_%rator200808%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self200511%_
                              _%rator200801%_)))
                          (_%rands200809%_
                           (map (lambda (_%g200803200805%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200511%_
                                     _%g200803200805%_)))
                                _%rands200802%_)))
                      (let* ((_%__stx206528206529%_ _%rator200808%_)
                             (_%g200812200864%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206528206529%_)))))
                        (let ((_%__kont206530206531%_
                               (lambda (_%g200814200984%_
                                        _%g200815200985%_
                                        _%g200816200986%_
                                        _%g200817200987%_)
                                 (if (let ((__tmp207200
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands200809%_)))
                                           (__tmp207198
                                            (length (let ((__tmp207199
                                                           (lambda (_%g201023201026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g201024201028%_)
                     (cons _%g201023201026%_ _%g201024201028%_))))
              (declare (not safe))
              (foldr__0 __tmp207199 '() _%g200816200986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp207200 __tmp207198))
                                     (let* ((_%id201031%_ _%g200817200987%_)
                                            (_%args201040%_
                                             (let ((__tmp207201
                                                    (lambda (_%g201032201035%_
                                                             _%g201033201037%_)
                                                      (cons _%g201032201035%_
                                                            _%g201033201037%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp207201
                                                '()
                                                _%g200816200986%_)))
                                            (_%body201049%_
                                             (let ((__tmp207202
                                                    (lambda (_%g201041201044%_
                                                             _%g201042201046%_)
                                                      (cons _%g201041201044%_
                                                            _%g201042201046%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp207202
                                                '()
                                                _%g200815200985%_)))
                                            (_%init201051%_
                                             (map list
                                                  _%args201040%_
                                                  _%rands200809%_)))
                                       (cons 'let
                                             (cons _%id201031%_
                                                   (cons _%init201051%_
                                                         _%body201049%_))))
                                     (let ((__tmp207203
                                            (let ((__tmp207204
                                                   (lambda (_%g201053201056%_
                                                            _%g201054201058%_)
                                                     (cons _%g201053201056%_
                                                           _%g201054201058%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp207204
                                               '()
                                               _%g200816200986%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx200512%_
                                        __tmp207203
                                        _%rands200809%_)))))
                              (_%__kont206536206537%_
                               (lambda ()
                                 (cons _%rator200808%_ _%rands200809%_))))
                          (let ((_%__match206595206596%_
                                 (lambda (_%e200818200876%_
                                          _%hd200819200879%_
                                          _%tl200820200881%_
                                          _%e200821200884%_
                                          _%hd200822200887%_
                                          _%tl200823200889%_
                                          _%e200824200892%_
                                          _%hd200825200895%_
                                          _%tl200826200897%_
                                          _%e200827200900%_
                                          _%hd200828200903%_
                                          _%tl200829200905%_
                                          _%e200830200908%_
                                          _%hd200831200911%_
                                          _%tl200832200913%_
                                          _%e200833200916%_
                                          _%hd200834200919%_
                                          _%tl200835200921%_
                                          _%e200836200924%_
                                          _%hd200837200927%_
                                          _%tl200838200929%_
                                          _%__splice206532206533%_
                                          _%target200839200932%_
                                          _%tl200841200934%_)
                                   (letrec ((_%loop200842200937%_
                                             (lambda (_%hd200840200940%_
                                                      _%arg200846200942%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd200840200940%_))
                                                   (let ((_%e200843200944%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd200840200940%_))))
                                                     (let ((_%lp-tl200845200949%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200843200944%_)))
                                                           (_%lp-hd200844200947%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200843200944%_))))
                                                       (_%loop200842200937%_
                                                        _%lp-tl200845200949%_
                                                        (cons _%lp-hd200844200947%_
                                                              _%arg200846200942%_))))
                                                   (let ((_%arg200847200952%_
                                                          (reverse _%arg200846200942%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl200838200929%_))
                                                         (let ((_%__splice206534206535%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl200838200929%_
                           '0))))
                   (let ((_%tl200850200956%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206534206535%_ '1)))
                         (_%target200848200954%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206534206535%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200850200956%_))
                         (letrec ((_%loop200851200959%_
                                   (lambda (_%hd200849200962%_
                                            _%body200855200964%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd200849200962%_))
                                         (let ((_%e200852200966%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200849200962%_))))
                                           (let ((_%lp-tl200854200971%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200852200966%_)))
                                                 (_%lp-hd200853200969%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200852200966%_))))
                                             (_%loop200851200959%_
                                              _%lp-tl200854200971%_
                                              (cons _%lp-hd200853200969%_
                                                    _%body200855200964%_))))
                                         (let ((_%body200856200974%_
                                                (reverse _%body200855200964%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl200832200913%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl200826200897%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200823200889%_))
                                                       (let ((_%e200857200976%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl200823200889%_))))
                 (let ((_%tl200859200981%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200857200976%_)))
                       (_%hd200858200979%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200857200976%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200859200981%_))
                       (let ((_%g200814200984%_ _%hd200858200979%_)
                             (_%g200815200985%_ _%body200856200974%_)
                             (_%g200816200986%_ _%arg200847200952%_)
                             (_%g200817200987%_ _%hd200828200903%_))
                         (if (eq? _%g200817200987%_ _%g200814200984%_)
                             (_%__kont206530206531%_
                              _%g200814200984%_
                              _%g200815200985%_
                              _%g200816200986%_
                              _%g200817200987%_)
                             (_%__kont206536206537%_)))
                       (_%__kont206536206537%_))))
               (_%__kont206536206537%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont206536206537%_))
                                               (_%__kont206536206537%_)))))))
                           (_%loop200851200959%_ _%target200848200954%_ '()))
                         (_%__kont206536206537%_))))
                 (_%__kont206536206537%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop200842200937%_
                                      _%target200839200932%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx206528206529%_))
                                (let ((_%e200818200876%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx206528206529%_))))
                                  (let ((_%tl200820200881%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200818200876%_)))
                                        (_%hd200819200879%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200818200876%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200819200879%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd200819200879%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200820200881%_))
                                                (let ((_%e200821200884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200820200881%_))))
                                                  (let ((_%tl200823200889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200821200884%_)))
                                                        (_%hd200822200887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200821200884%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200822200887%_))
                                                        (let ((_%e200824200892%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd200822200887%_))))
                  (let ((_%tl200826200897%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200824200892%_)))
                        (_%hd200825200895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200824200892%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200825200895%_))
                        (let ((_%e200827200900%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd200825200895%_))))
                          (let ((_%tl200829200905%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200827200900%_)))
                                (_%hd200828200903%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200827200900%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200829200905%_))
                                (let ((_%e200830200908%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200829200905%_))))
                                  (let ((_%tl200832200913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200830200908%_)))
                                        (_%hd200831200911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200830200908%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200831200911%_))
                                        (let ((_%e200833200916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd200831200911%_))))
                                          (let ((_%tl200835200921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200833200916%_)))
                                                (_%hd200834200919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200833200916%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd200834200919%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd200834200919%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200835200921%_))
                                                        (let ((_%e200836200924%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200835200921%_))))
                  (let ((_%tl200838200929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200836200924%_)))
                        (_%hd200837200927%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200836200924%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd200837200927%_))
                        (let ((_%__splice206532206533%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd200837200927%_
                                  '0))))
                          (let ((_%tl200841200934%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice206532206533%_ '1)))
                                (_%target200839200932%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice206532206533%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200841200934%_))
                                (_%__match206595206596%_
                                 _%e200818200876%_
                                 _%hd200819200879%_
                                 _%tl200820200881%_
                                 _%e200821200884%_
                                 _%hd200822200887%_
                                 _%tl200823200889%_
                                 _%e200824200892%_
                                 _%hd200825200895%_
                                 _%tl200826200897%_
                                 _%e200827200900%_
                                 _%hd200828200903%_
                                 _%tl200829200905%_
                                 _%e200830200908%_
                                 _%hd200831200911%_
                                 _%tl200832200913%_
                                 _%e200833200916%_
                                 _%hd200834200919%_
                                 _%tl200835200921%_
                                 _%e200836200924%_
                                 _%hd200837200927%_
                                 _%tl200838200929%_
                                 _%__splice206532206533%_
                                 _%target200839200932%_
                                 _%tl200841200934%_)
                                (_%__kont206536206537%_))))
                        (_%__kont206536206537%_))))
                (_%__kont206536206537%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206536206537%_))
                                                (_%__kont206536206537%_))))
                                        (_%__kont206536206537%_))))
                                (_%__kont206536206537%_))))
                        (_%__kont206536206537%_))))
                (_%__kont206536206537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont206536206537%_))
                                            (_%__kont206536206537%_))
                                        (_%__kont206536206537%_))))
                                (_%__kont206536206537%_)))))))))
          (let* ((_%g200516200539%_
                  (lambda (_%g200517200536%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200517200536%_))))
                 (_%g200515200798%_
                  (lambda (_%g200517200542%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200517200542%_))
                        (let ((_%e200520200544%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200517200542%_))))
                          (let ((_%hd200521200547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200520200544%_)))
                                (_%tl200522200549%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200520200544%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200522200549%_))
                                (let ((_%e200523200552%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200522200549%_))))
                                  (let ((_%hd200524200555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200523200552%_)))
                                        (_%tl200525200557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200523200552%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200525200557%_))
                                        (let ((_g207205_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200525200557%_
                                                  '0))))
                                          (begin
                                            (let ((_g207206_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g207205_)
                                                         (##values-length
                                                          _g207205_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g207206_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g207206_)))
                                            (let ((_%target200526200560%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g207205_
                                                      0)))
                                                  (_%tl200528200562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g207205_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200528200562%_))
                                                  (letrec ((_%loop200529200565%_
                                                            (lambda (_%hd200527200568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand200533200570%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200527200568%_))
                          (let ((_%e200530200572%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200527200568%_))))
                            (let ((_%lp-hd200531200575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200530200572%_)))
                                  (_%lp-tl200532200577%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200530200572%_))))
                              (_%loop200529200565%_
                               _%lp-tl200532200577%_
                               (cons _%lp-hd200531200575%_
                                     _%rand200533200570%_))))
                          (let ((_%rand200534200580%_
                                 (reverse _%rand200533200570%_)))
                            ((lambda (_%g200518200582%_ _%g200519200583%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call200514%_
                                    _%g200519200583%_
                                    (let ((__tmp207207
                                           (lambda (_%g200600200603%_
                                                    _%g200601200605%_)
                                             (cons _%g200600200603%_
                                                   _%g200601200605%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp207207
                                       '()
                                       _%g200518200582%_)))
                                   (let* ((_%__stx206644206645%_
                                           _%g200519200583%_)
                                          (_%g200609200621%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx206644206645%_)))))
                                     (let ((_%__kont206646206647%_
                                            (lambda ()
                                              (let ((_%f200658%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self200511%_
                                                        _%g200519200583%_))))
                                                (if (and (let ((__tmp207208
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f200658%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp207208))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f200658%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp200660%_ ((_%rest200663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp207210
                                                (lambda (_%g200780200783%_
                                                         _%g200781200785%_)
                                                  (cons _%g200780200783%_
                                                        _%g200781200785%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp207210
                                            '()
                                            _%g200518200582%_))))
                               (_%bind200665%_ '())
                               (_%args200666%_ '()))
              (let* ((_%rest200667200675%_ _%rest200663%_)
                     (_%else200669200683%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind200665%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f200658%_
                                                      _%args200666%_)
                                                '()))))))
                     (_%K200671200769%_
                      (lambda (_%rest200686%_ _%e200687%_)
                        (let* ((_%__stx206598206599%_ _%e200687%_)
                               (_%g200692200710%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx206598206599%_)))))
                          (let ((_%__kont206600206601%_
                                 (lambda ()
                                   (_%lp200660%_
                                    _%rest200686%_
                                    _%bind200665%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e200687%_))
                                          _%args200666%_))))
                                (_%__kont206602206603%_
                                 (lambda ()
                                   (_%lp200660%_
                                    _%rest200686%_
                                    _%bind200665%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e200687%_))
                                          _%args200666%_))))
                                (_%__kont206604206605%_
                                 (lambda ()
                                   (let ((_%tmp200717%_
                                          (let ((__tmp207209
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp207209))))
                                     (_%lp200660%_
                                      _%rest200686%_
                                      (cons (cons _%tmp200717%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e200687%_))
                                                        '()))
                                            _%bind200665%_)
                                      (cons _%tmp200717%_ _%args200666%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx206598206599%_))
                                (let ((_%e200694200748%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx206598206599%_))))
                                  (let ((_%tl200696200753%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200694200748%_)))
                                        (_%hd200695200751%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200694200748%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200695200751%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd200695200751%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200696200753%_))
                                                (let ((_%e200697200756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200696200753%_))))
                                                  (let ((_%tl200699200761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200697200756%_)))
                                                        (_%hd200698200759%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200697200756%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200699200761%_))
                                                        (_%__kont206600206601%_)
                                                        (_%__kont206604206605%_))))
                                                (_%__kont206604206605%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd200695200751%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200696200753%_))
                                                    (let ((_%e200703200733%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200696200753%_))))
                                                      (let ((_%tl200705200738%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200703200733%_)))
                    (_%hd200704200736%_
                     (let () (declare (not safe)) (##car _%e200703200733%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200705200738%_))
                    (_%__kont206602206603%_)
                    (_%__kont206604206605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206604206605%_))
                                                (_%__kont206604206605%_)))
                                        (_%__kont206604206605%_))))
                                (_%__kont206604206605%_)))))))
                (if (pair? _%rest200667200675%_)
                    (let ((_%hd200672200772%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200667200675%_)))
                          (_%tl200673200774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200667200675%_))))
                      (let* ((_%e200777%_ _%hd200672200772%_)
                             (_%rest200779%_ _%tl200673200774%_))
                        (_%K200671200769%_ _%rest200779%_ _%e200777%_)))
                    (_%else200669200683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call200514%_
                                                     _%g200519200583%_
                                                     (let ((__tmp207211
                                                            (lambda (_%g200787200790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g200788200792%_)
                      (cons _%g200787200790%_ _%g200788200792%_))))
               (declare (not safe))
               (foldr__0 __tmp207211 '() _%g200518200582%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont206648206649%_
                                            (lambda ()
                                              (_%compile-call200514%_
                                               _%g200519200583%_
                                               (let ((__tmp207212
                                                      (lambda (_%g200627200630%_
                                                               _%g200628200632%_)
                                                        (cons _%g200627200630%_
                                                              _%g200628200632%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp207212
                                                  '()
                                                  _%g200518200582%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx206644206645%_))
                                           (let ((_%e200611200640%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx206644206645%_))))
                                             (let ((_%tl200613200645%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e200611200640%_)))
                                                   (_%hd200612200643%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e200611200640%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd200612200643%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd200612200643%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200613200645%_))
                                                           (let ((_%e200614200648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl200613200645%_))))
                     (let ((_%tl200616200653%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200614200648%_)))
                           (_%hd200615200651%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200614200648%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl200616200653%_))
                           (_%__kont206646206647%_)
                           (_%__kont206648206649%_))))
                   (_%__kont206648206649%_))
               (_%__kont206648206649%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont206648206649%_))))
                                           (_%__kont206648206649%_))))))
                             _%rand200534200580%_
                             _%hd200524200555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200529200565%_
                                                     _%target200526200560%_
                                                     '()))
                                                  (_%g200516200539%_
                                                   _%g200517200542%_)))))
                                        (_%g200516200539%_
                                         _%g200517200542%_))))
                                (_%g200516200539%_ _%g200517200542%_))))
                        (_%g200516200539%_ _%g200517200542%_)))))
            (_%g200515200798%_ _%stx200512%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self200256%_ _%stx200257%_)
        (let* ((_%__stx206716206717%_ _%stx200257%_)
               (_%g200260200289%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206716206717%_)))))
          (let ((_%__kont206718206719%_
                 (lambda (_%g200262200355%_ _%g200263200356%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self200256%_
                        _%stx200257%_)
                       (let ((_%f200378%_
                              (let ((__tmp207213
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g200263200356%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self200256%_
                                 __tmp207213))))
                         (let _%lp200380%_ ((_%rest200383%_
                                             (reverse (let ((__tmp207215
                                                             (lambda (_%g200500200503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g200501200505%_)
                       (cons _%g200500200503%_ _%g200501200505%_))))
                (declare (not safe))
                (foldr__0 __tmp207215 '() _%g200262200355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind200385%_ '())
                                            (_%args200386%_ '()))
                           (let* ((_%rest200387200395%_ _%rest200383%_)
                                  (_%else200389200403%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind200385%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f200378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args200386%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K200391200489%_
                                   (lambda (_%rest200406%_ _%e200407%_)
                                     (let* ((_%__stx206670206671%_ _%e200407%_)
                                            (_%g200412200430%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx206670206671%_)))))
                                       (let ((_%__kont206672206673%_
                                              (lambda ()
                                                (_%lp200380%_
                                                 _%rest200406%_
                                                 _%bind200385%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200407%_))
                                                       _%args200386%_))))
                                             (_%__kont206674206675%_
                                              (lambda ()
                                                (_%lp200380%_
                                                 _%rest200406%_
                                                 _%bind200385%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200407%_))
                                                       _%args200386%_))))
                                             (_%__kont206676206677%_
                                              (lambda ()
                                                (let ((_%tmp200437%_
                                                       (let ((__tmp207214
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp207214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp200380%_
                                                   _%rest200406%_
                                                   (cons (cons _%tmp200437%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e200407%_))
                             '()))
                 _%bind200385%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp200437%_
                                                         _%args200386%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx206670206671%_))
                                             (let ((_%e200414200468%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx206670206671%_))))
                                               (let ((_%tl200416200473%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200414200468%_)))
                                                     (_%hd200415200471%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200414200468%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200415200471%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd200415200471%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200416200473%_))
                     (let ((_%e200417200476%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200416200473%_))))
                       (let ((_%tl200419200481%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200417200476%_)))
                             (_%hd200418200479%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200417200476%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200419200481%_))
                             (_%__kont206672206673%_)
                             (_%__kont206676206677%_))))
                     (_%__kont206676206677%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd200415200471%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200416200473%_))
                         (let ((_%e200423200453%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl200416200473%_))))
                           (let ((_%tl200425200458%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200423200453%_)))
                                 (_%hd200424200456%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200423200453%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl200425200458%_))
                                 (_%__kont206674206675%_)
                                 (_%__kont206676206677%_))))
                         (_%__kont206676206677%_))
                     (_%__kont206676206677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206676206677%_))))
                                             (_%__kont206676206677%_)))))))
                             (if (pair? _%rest200387200395%_)
                                 (let ((_%hd200392200492%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest200387200395%_)))
                                       (_%tl200393200494%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200387200395%_))))
                                   (let* ((_%e200497%_ _%hd200392200492%_)
                                          (_%rest200499%_ _%tl200393200494%_))
                                     (_%K200391200489%_
                                      _%rest200499%_
                                      _%e200497%_)))
                                 (_%else200389200403%_))))))))
                (_%__kont206722206723%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self200256%_ _%stx200257%_))))
            (let ((_%__match206761206762%_
                   (lambda (_%e200264200301%_
                            _%hd200265200304%_
                            _%tl200266200306%_
                            _%e200267200309%_
                            _%hd200268200312%_
                            _%tl200269200314%_
                            _%e200270200317%_
                            _%hd200271200320%_
                            _%tl200272200322%_
                            _%e200273200325%_
                            _%hd200274200328%_
                            _%tl200275200330%_
                            _%__splice206720206721%_
                            _%target200276200333%_
                            _%tl200278200335%_)
                     (letrec ((_%loop200279200338%_
                               (lambda (_%hd200277200341%_
                                        _%rand200283200343%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd200277200341%_))
                                     (let ((_%e200280200345%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd200277200341%_))))
                                       (let ((_%lp-tl200282200350%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200280200345%_)))
                                             (_%lp-hd200281200348%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200280200345%_))))
                                         (_%loop200279200338%_
                                          _%lp-tl200282200350%_
                                          (cons _%lp-hd200281200348%_
                                                _%rand200283200343%_))))
                                     (let ((_%rand200284200353%_
                                            (reverse _%rand200283200343%_)))
                                       (_%__kont206718206719%_
                                        _%rand200284200353%_
                                        _%hd200274200328%_))))))
                       (_%loop200279200338%_ _%target200276200333%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206716206717%_))
                  (let ((_%e200264200301%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206716206717%_))))
                    (let ((_%tl200266200306%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200264200301%_)))
                          (_%hd200265200304%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200264200301%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200266200306%_))
                          (let ((_%e200267200309%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200266200306%_))))
                            (let ((_%tl200269200314%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200267200309%_)))
                                  (_%hd200268200312%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200267200309%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200268200312%_))
                                  (let ((_%e200270200317%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200268200312%_))))
                                    (let ((_%tl200272200322%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200270200317%_)))
                                          (_%hd200271200320%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200270200317%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200271200320%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200271200320%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200272200322%_))
                                                  (let ((_%e200273200325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200272200322%_))))
                                                    (let ((_%tl200275200330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200273200325%_)))
                                                          (_%hd200274200328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200273200325%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200275200330%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl200269200314%_))
                      (let ((_%__splice206720206721%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl200269200314%_
                                '0))))
                        (let ((_%tl200278200335%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206720206721%_ '1)))
                              (_%target200276200333%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206720206721%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200278200335%_))
                              (_%__match206761206762%_
                               _%e200264200301%_
                               _%hd200265200304%_
                               _%tl200266200306%_
                               _%e200267200309%_
                               _%hd200268200312%_
                               _%tl200269200314%_
                               _%e200270200317%_
                               _%hd200271200320%_
                               _%tl200272200322%_
                               _%e200273200325%_
                               _%hd200274200328%_
                               _%tl200275200330%_
                               _%__splice206720206721%_
                               _%target200276200333%_
                               _%tl200278200335%_)
                              (_%__kont206722206723%_))))
                      (_%__kont206722206723%_))
                  (_%__kont206722206723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206722206723%_))
                                              (_%__kont206722206723%_))
                                          (_%__kont206722206723%_))))
                                  (_%__kont206722206723%_))))
                          (_%__kont206722206723%_))))
                  (_%__kont206722206723%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self200068%_ _%stx200069%_)
        (letrec ((_%simplify200071%_
                  (lambda (_%code200156%_)
                    (let* ((_%code200157200175%_ _%code200156%_)
                           (_%else200159200183%_ (lambda () _%code200156%_))
                           (_%K200161200219%_
                            (lambda (_%expr200186%_ _%test200187%_)
                              (let* ((_%expr200188200196%_ _%expr200186%_)
                                     (_%else200190200204%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test200187%_
                                                    (cons _%expr200186%_
                                                          '())))))
                                     (_%K200192200209%_
                                      (lambda (_%exprs200207%_)
                                        (cons 'and
                                              (cons _%test200187%_
                                                    _%exprs200207%_)))))
                                (if (pair? _%expr200188200196%_)
                                    (let ((_%hd200193200212%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr200188200196%_)))
                                          (_%tl200194200214%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr200188200196%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd200193200212%_ 'and))
                                          (let ((_%exprs200217%_
                                                 _%tl200194200214%_))
                                            (_%K200192200209%_
                                             _%exprs200217%_))
                                          (_%else200190200204%_)))
                                    (_%else200190200204%_))))))
                      (if (pair? _%code200157200175%_)
                          (let ((_%hd200162200222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code200157200175%_)))
                                (_%tl200163200224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code200157200175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd200162200222%_ 'if))
                                (if (pair? _%tl200163200224%_)
                                    (let ((_%hd200164200227%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl200163200224%_)))
                                          (_%tl200165200229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl200163200224%_))))
                                      (let ((_%test200232%_
                                             _%hd200164200227%_))
                                        (if (pair? _%tl200165200229%_)
                                            (let ((_%hd200166200234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl200165200229%_)))
                                                  (_%tl200167200236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl200165200229%_))))
                                              (let ((_%expr200239%_
                                                     _%hd200166200234%_))
                                                (if (pair? _%tl200167200236%_)
                                                    (let ((_%hd200168200241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl200167200236%_)))
                                                          (_%tl200169200243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl200167200236%_))))
                                                      (if (pair? _%hd200168200241%_)
                                                          (let ((_%hd200170200246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd200168200241%_)))
                        (_%tl200171200248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd200168200241%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd200170200246%_ 'quote))
                        (if (pair? _%tl200171200248%_)
                            (let ((_%hd200172200251%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl200171200248%_)))
                                  (_%tl200173200253%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl200171200248%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd200172200251%_ '#f))
                                  (if (null? _%tl200173200253%_)
                                      (if (null? _%tl200169200243%_)
                                          (_%K200161200219%_
                                           _%expr200239%_
                                           _%test200232%_)
                                          (_%else200159200183%_))
                                      (_%else200159200183%_))
                                  (_%else200159200183%_)))
                            (_%else200159200183%_))
                        (_%else200159200183%_)))
                  (_%else200159200183%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else200159200183%_))))
                                            (_%else200159200183%_))))
                                    (_%else200159200183%_))
                                (_%else200159200183%_)))
                          (_%else200159200183%_))))))
          (let* ((_%g200073200094%_
                  (lambda (_%g200074200091%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200074200091%_))))
                 (_%g200072200153%_
                  (lambda (_%g200074200097%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200074200097%_))
                        (let ((_%e200078200099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200074200097%_))))
                          (let ((_%hd200079200102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200078200099%_)))
                                (_%tl200080200104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200078200099%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200080200104%_))
                                (let ((_%e200081200107%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200080200104%_))))
                                  (let ((_%hd200082200110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200081200107%_)))
                                        (_%tl200083200112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200081200107%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200083200112%_))
                                        (let ((_%e200084200115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200083200112%_))))
                                          (let ((_%hd200085200118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200084200115%_)))
                                                (_%tl200086200120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200084200115%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200086200120%_))
                                                (let ((_%e200087200123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200086200120%_))))
                                                  (let ((_%hd200088200126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200087200123%_)))
                                                        (_%tl200089200128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200087200123%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200089200128%_))
                                                        ((lambda (_%g200075200131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g200076200132%_
                          _%g200077200133%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify200071%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self200068%_
                                       _%g200077200133%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self200068%_
                                             _%g200076200132%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self200068%_
                                                   _%g200075200131%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp207216
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self200068%_
                                               _%g200077200133%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp207216
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self200068%_
                                            _%g200076200132%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self200068%_
                                                  _%g200075200131%_))
                                               '()))))))
                 _%hd200088200126%_
                 _%hd200085200118%_
                 _%hd200082200110%_)
                (_%g200073200094%_ _%g200074200097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200073200094%_
                                                 _%g200074200097%_))))
                                        (_%g200073200094%_
                                         _%g200074200097%_))))
                                (_%g200073200094%_ _%g200074200097%_))))
                        (_%g200073200094%_ _%g200074200097%_)))))
            (_%g200072200153%_ _%stx200069%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self200016%_ _%stx200017%_)
        (let* ((_%g200019200032%_
                (lambda (_%g200020200029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200020200029%_))))
               (_%g200018200065%_
                (lambda (_%g200020200035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200020200035%_))
                      (let ((_%e200022200037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200020200035%_))))
                        (let ((_%hd200023200040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200022200037%_)))
                              (_%tl200024200042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200022200037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200024200042%_))
                              (let ((_%e200025200045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200024200042%_))))
                                (let ((_%hd200026200048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200025200045%_)))
                                      (_%tl200027200050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200025200045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200027200050%_))
                                      ((lambda (_%g200021200053%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g200021200053%_)))
                                       _%hd200026200048%_)
                                      (_%g200019200032%_ _%g200020200035%_))))
                              (_%g200019200032%_ _%g200020200035%_))))
                      (_%g200019200032%_ _%g200020200035%_)))))
          (_%g200018200065%_ _%stx200017%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self199948%_ _%stx199949%_)
        (let* ((_%g199951199968%_
                (lambda (_%g199952199965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199952199965%_))))
               (_%g199950200013%_
                (lambda (_%g199952199971%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199952199971%_))
                      (let ((_%e199955199973%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199952199971%_))))
                        (let ((_%hd199956199976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199955199973%_)))
                              (_%tl199957199978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199955199973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199957199978%_))
                              (let ((_%e199958199981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199957199978%_))))
                                (let ((_%hd199959199984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199958199981%_)))
                                      (_%tl199960199986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199958199981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199960199986%_))
                                      (let ((_%e199961199989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199960199986%_))))
                                        (let ((_%hd199962199992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199961199989%_)))
                                              (_%tl199963199994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199961199989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199963199994%_))
                                              ((lambda (_%g199953199997%_
                                                        _%g199954199998%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g199954199998%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199948%_
                              _%g199953199997%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199962199992%_
                                               _%hd199959199984%_)
                                              (_%g199951199968%_
                                               _%g199952199971%_))))
                                      (_%g199951199968%_ _%g199952199971%_))))
                              (_%g199951199968%_ _%g199952199971%_))))
                      (_%g199951199968%_ _%g199952199971%_)))))
          (_%g199950200013%_ _%stx199949%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self199759%_ _%stx199760%_)
        (let* ((_%g199762199779%_
                (lambda (_%g199763199776%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199763199776%_))))
               (_%g199761199945%_
                (lambda (_%g199763199782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199763199782%_))
                      (let ((_%e199766199784%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199763199782%_))))
                        (let ((_%hd199767199787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199766199784%_)))
                              (_%tl199768199789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199766199784%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199768199789%_))
                              (let ((_%e199769199792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199768199789%_))))
                                (let ((_%hd199770199795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199769199792%_)))
                                      (_%tl199771199797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199769199792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199771199797%_))
                                      (let ((_%e199772199800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199771199797%_))))
                                        (let ((_%hd199773199803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199772199800%_)))
                                              (_%tl199774199805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199772199800%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199774199805%_))
                                              ((lambda (_%g199764199808%_
                                                        _%g199765199809%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self199759%_ _%g199764199808%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199759%_
                                  _%g199765199809%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp199824%_ ((_%rest199827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g199765199809%_
                                       (cons _%g199764199808%_ '())))
                                (_%bind199829%_ '())
                                (_%args199830%_ '()))
               (let* ((_%rest199831199839%_ _%rest199827%_)
                      (_%else199833199847%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind199829%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args199830%_)
                                                 '()))))))
                      (_%K199835199933%_
                       (lambda (_%rest199850%_ _%e199851%_)
                         (let* ((_%__stx206764206765%_ _%e199851%_)
                                (_%g199856199874%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx206764206765%_)))))
                           (let ((_%__kont206766206767%_
                                  (lambda ()
                                    (_%lp199824%_
                                     _%rest199850%_
                                     _%bind199829%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199851%_))
                                           _%args199830%_))))
                                 (_%__kont206768206769%_
                                  (lambda ()
                                    (_%lp199824%_
                                     _%rest199850%_
                                     _%bind199829%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199851%_))
                                           _%args199830%_))))
                                 (_%__kont206770206771%_
                                  (lambda ()
                                    (let ((_%tmp199881%_
                                           (let ((__tmp207217
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp207217))))
                                      (_%lp199824%_
                                       _%rest199850%_
                                       (cons (cons _%tmp199881%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e199851%_))
                                                         '()))
                                             _%bind199829%_)
                                       (cons _%tmp199881%_ _%args199830%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx206764206765%_))
                                 (let ((_%e199858199912%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx206764206765%_))))
                                   (let ((_%tl199860199917%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199858199912%_)))
                                         (_%hd199859199915%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199858199912%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd199859199915%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd199859199915%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199860199917%_))
                                                 (let ((_%e199861199920%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl199860199917%_))))
                                                   (let ((_%tl199863199925%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199861199920%_)))
                                                         (_%hd199862199923%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199861199920%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199863199925%_))
                                                         (_%__kont206766206767%_)
                                                         (_%__kont206770206771%_))))
                                                 (_%__kont206770206771%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd199859199915%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199860199917%_))
                                                     (let ((_%e199867199897%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199860199917%_))))
                                                       (let ((_%tl199869199902%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199867199897%_)))
                     (_%hd199868199900%_
                      (let () (declare (not safe)) (##car _%e199867199897%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199869199902%_))
                     (_%__kont206768206769%_)
                     (_%__kont206770206771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206770206771%_))
                                                 (_%__kont206770206771%_)))
                                         (_%__kont206770206771%_))))
                                 (_%__kont206770206771%_)))))))
                 (if (pair? _%rest199831199839%_)
                     (let ((_%hd199836199936%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest199831199839%_)))
                           (_%tl199837199938%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest199831199839%_))))
                       (let* ((_%e199941%_ _%hd199836199936%_)
                              (_%rest199943%_ _%tl199837199938%_))
                         (_%K199835199933%_ _%rest199943%_ _%e199941%_)))
                     (_%else199833199847%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199773199803%_
                                               _%hd199770199795%_)
                                              (_%g199762199779%_
                                               _%g199763199782%_))))
                                      (_%g199762199779%_ _%g199763199782%_))))
                              (_%g199762199779%_ _%g199763199782%_))))
                      (_%g199762199779%_ _%g199763199782%_)))))
          (_%g199761199945%_ _%stx199760%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self199570%_ _%stx199571%_)
        (let* ((_%g199573199590%_
                (lambda (_%g199574199587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199574199587%_))))
               (_%g199572199756%_
                (lambda (_%g199574199593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199574199593%_))
                      (let ((_%e199577199595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199574199593%_))))
                        (let ((_%hd199578199598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199577199595%_)))
                              (_%tl199579199600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199577199595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199579199600%_))
                              (let ((_%e199580199603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199579199600%_))))
                                (let ((_%hd199581199606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199580199603%_)))
                                      (_%tl199582199608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199580199603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199582199608%_))
                                      (let ((_%e199583199611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199582199608%_))))
                                        (let ((_%hd199584199614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199583199611%_)))
                                              (_%tl199585199616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199583199611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199585199616%_))
                                              ((lambda (_%g199575199619%_
                                                        _%g199576199620%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self199570%_ _%g199575199619%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199570%_
                                  _%g199576199620%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp199635%_ ((_%rest199638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g199576199620%_
                                       (cons _%g199575199619%_ '())))
                                (_%bind199640%_ '())
                                (_%args199641%_ '()))
               (let* ((_%rest199642199650%_ _%rest199638%_)
                      (_%else199644199658%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind199640%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args199641%_)
                                                 '()))))))
                      (_%K199646199744%_
                       (lambda (_%rest199661%_ _%e199662%_)
                         (let* ((_%__stx206810206811%_ _%e199662%_)
                                (_%g199667199685%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx206810206811%_)))))
                           (let ((_%__kont206812206813%_
                                  (lambda ()
                                    (_%lp199635%_
                                     _%rest199661%_
                                     _%bind199640%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199662%_))
                                           _%args199641%_))))
                                 (_%__kont206814206815%_
                                  (lambda ()
                                    (_%lp199635%_
                                     _%rest199661%_
                                     _%bind199640%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199662%_))
                                           _%args199641%_))))
                                 (_%__kont206816206817%_
                                  (lambda ()
                                    (let ((_%tmp199692%_
                                           (let ((__tmp207218
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp207218))))
                                      (_%lp199635%_
                                       _%rest199661%_
                                       (cons (cons _%tmp199692%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e199662%_))
                                                         '()))
                                             _%bind199640%_)
                                       (cons _%tmp199692%_ _%args199641%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx206810206811%_))
                                 (let ((_%e199669199723%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx206810206811%_))))
                                   (let ((_%tl199671199728%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199669199723%_)))
                                         (_%hd199670199726%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199669199723%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd199670199726%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd199670199726%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199671199728%_))
                                                 (let ((_%e199672199731%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl199671199728%_))))
                                                   (let ((_%tl199674199736%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199672199731%_)))
                                                         (_%hd199673199734%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199672199731%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199674199736%_))
                                                         (_%__kont206812206813%_)
                                                         (_%__kont206816206817%_))))
                                                 (_%__kont206816206817%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd199670199726%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199671199728%_))
                                                     (let ((_%e199678199708%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199671199728%_))))
                                                       (let ((_%tl199680199713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199678199708%_)))
                     (_%hd199679199711%_
                      (let () (declare (not safe)) (##car _%e199678199708%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199680199713%_))
                     (_%__kont206814206815%_)
                     (_%__kont206816206817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206816206817%_))
                                                 (_%__kont206816206817%_)))
                                         (_%__kont206816206817%_))))
                                 (_%__kont206816206817%_)))))))
                 (if (pair? _%rest199642199650%_)
                     (let ((_%hd199647199747%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest199642199650%_)))
                           (_%tl199648199749%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest199642199650%_))))
                       (let* ((_%e199752%_ _%hd199647199747%_)
                              (_%rest199754%_ _%tl199648199749%_))
                         (_%K199646199744%_ _%rest199754%_ _%e199752%_)))
                     (_%else199644199658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199584199614%_
                                               _%hd199581199606%_)
                                              (_%g199573199590%_
                                               _%g199574199593%_))))
                                      (_%g199573199590%_ _%g199574199593%_))))
                              (_%g199573199590%_ _%g199574199593%_))))
                      (_%g199573199590%_ _%g199574199593%_)))))
          (_%g199572199756%_ _%stx199571%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self199486%_ _%stx199487%_)
        (let* ((_%g199489199510%_
                (lambda (_%g199490199507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199490199507%_))))
               (_%g199488199567%_
                (lambda (_%g199490199513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199490199513%_))
                      (let ((_%e199494199515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199490199513%_))))
                        (let ((_%hd199495199518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199494199515%_)))
                              (_%tl199496199520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199494199515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199496199520%_))
                              (let ((_%e199497199523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199496199520%_))))
                                (let ((_%hd199498199526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199497199523%_)))
                                      (_%tl199499199528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199497199523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199499199528%_))
                                      (let ((_%e199500199531%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199499199528%_))))
                                        (let ((_%hd199501199534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199500199531%_)))
                                              (_%tl199502199536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199500199531%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199502199536%_))
                                              (let ((_%e199503199539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199502199536%_))))
                                                (let ((_%hd199504199542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199503199539%_)))
                                                      (_%tl199505199544%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199503199539%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199505199544%_))
                                                      ((lambda (_%g199491199547%_
                                                                _%g199492199548%_
                                                                _%g199493199549%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self199486%_
                                _%g199491199547%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self199486%_
                                      _%g199492199548%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199486%_
                                            _%g199493199549%_))
                                         (cons ''#f '()))))))
               _%hd199504199542%_
               _%hd199501199534%_
               _%hd199498199526%_)
              (_%g199489199510%_ _%g199490199513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199489199510%_
                                               _%g199490199513%_))))
                                      (_%g199489199510%_ _%g199490199513%_))))
                              (_%g199489199510%_ _%g199490199513%_))))
                      (_%g199489199510%_ _%g199490199513%_)))))
          (_%g199488199567%_ _%stx199487%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self199386%_ _%stx199387%_)
        (let* ((_%g199389199414%_
                (lambda (_%g199390199411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199390199411%_))))
               (_%g199388199483%_
                (lambda (_%g199390199417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199390199417%_))
                      (let ((_%e199395199419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199390199417%_))))
                        (let ((_%hd199396199422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199395199419%_)))
                              (_%tl199397199424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199395199419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199397199424%_))
                              (let ((_%e199398199427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199397199424%_))))
                                (let ((_%hd199399199430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199398199427%_)))
                                      (_%tl199400199432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199398199427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199400199432%_))
                                      (let ((_%e199401199435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199400199432%_))))
                                        (let ((_%hd199402199438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199401199435%_)))
                                              (_%tl199403199440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199401199435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199403199440%_))
                                              (let ((_%e199404199443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199403199440%_))))
                                                (let ((_%hd199405199446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199404199443%_)))
                                                      (_%tl199406199448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199404199443%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199406199448%_))
                                                      (let ((_%e199407199451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199406199448%_))))
                (let ((_%hd199408199454%_
                       (let () (declare (not safe)) (##car _%e199407199451%_)))
                      (_%tl199409199456%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199407199451%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199409199456%_))
                      ((lambda (_%g199391199459%_
                                _%g199392199460%_
                                _%g199393199461%_
                                _%g199394199462%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self199386%_
                                        _%g199392199460%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self199386%_
                                              _%g199391199459%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self199386%_
                                                    _%g199393199461%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self199386%_
                                                          _%g199394199462%_))
                                                       (cons ''#f '())))))))
                       _%hd199408199454%_
                       _%hd199405199446%_
                       _%hd199402199438%_
                       _%hd199399199430%_)
                      (_%g199389199414%_ _%g199390199417%_))))
              (_%g199389199414%_ _%g199390199417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199389199414%_
                                               _%g199390199417%_))))
                                      (_%g199389199414%_ _%g199390199417%_))))
                              (_%g199389199414%_ _%g199390199417%_))))
                      (_%g199389199414%_ _%g199390199417%_)))))
          (_%g199388199483%_ _%stx199387%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self199302%_ _%stx199303%_)
        (let* ((_%g199305199326%_
                (lambda (_%g199306199323%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199306199323%_))))
               (_%g199304199383%_
                (lambda (_%g199306199329%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199306199329%_))
                      (let ((_%e199310199331%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199306199329%_))))
                        (let ((_%hd199311199334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199310199331%_)))
                              (_%tl199312199336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199310199331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199312199336%_))
                              (let ((_%e199313199339%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199312199336%_))))
                                (let ((_%hd199314199342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199313199339%_)))
                                      (_%tl199315199344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199313199339%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199315199344%_))
                                      (let ((_%e199316199347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199315199344%_))))
                                        (let ((_%hd199317199350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199316199347%_)))
                                              (_%tl199318199352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199316199347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199318199352%_))
                                              (let ((_%e199319199355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199318199352%_))))
                                                (let ((_%hd199320199358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199319199355%_)))
                                                      (_%tl199321199360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199319199355%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199321199360%_))
                                                      ((lambda (_%g199307199363%_
                                                                _%g199308199364%_
                                                                _%g199309199365%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self199302%_
                                _%g199307199363%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self199302%_
                                      _%g199308199364%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199302%_
                                            _%g199309199365%_))
                                         (cons ''#f '()))))))
               _%hd199320199358%_
               _%hd199317199350%_
               _%hd199314199342%_)
              (_%g199305199326%_ _%g199306199329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199305199326%_
                                               _%g199306199329%_))))
                                      (_%g199305199326%_ _%g199306199329%_))))
                              (_%g199305199326%_ _%g199306199329%_))))
                      (_%g199305199326%_ _%g199306199329%_)))))
          (_%g199304199383%_ _%stx199303%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self199202%_ _%stx199203%_)
        (let* ((_%g199205199230%_
                (lambda (_%g199206199227%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199206199227%_))))
               (_%g199204199299%_
                (lambda (_%g199206199233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199206199233%_))
                      (let ((_%e199211199235%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199206199233%_))))
                        (let ((_%hd199212199238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199211199235%_)))
                              (_%tl199213199240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199211199235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199213199240%_))
                              (let ((_%e199214199243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199213199240%_))))
                                (let ((_%hd199215199246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199214199243%_)))
                                      (_%tl199216199248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199214199243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199216199248%_))
                                      (let ((_%e199217199251%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199216199248%_))))
                                        (let ((_%hd199218199254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199217199251%_)))
                                              (_%tl199219199256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199217199251%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199219199256%_))
                                              (let ((_%e199220199259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199219199256%_))))
                                                (let ((_%hd199221199262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199220199259%_)))
                                                      (_%tl199222199264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199220199259%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199222199264%_))
                                                      (let ((_%e199223199267%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199222199264%_))))
                (let ((_%hd199224199270%_
                       (let () (declare (not safe)) (##car _%e199223199267%_)))
                      (_%tl199225199272%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199223199267%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199225199272%_))
                      ((lambda (_%g199207199275%_
                                _%g199208199276%_
                                _%g199209199277%_
                                _%g199210199278%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self199202%_
                                        _%g199208199276%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self199202%_
                                              _%g199207199275%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self199202%_
                                                    _%g199209199277%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self199202%_
                                                          _%g199210199278%_))
                                                       (cons ''#f '())))))))
                       _%hd199224199270%_
                       _%hd199221199262%_
                       _%hd199218199254%_
                       _%hd199215199246%_)
                      (_%g199205199230%_ _%g199206199233%_))))
              (_%g199205199230%_ _%g199206199233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199205199230%_
                                               _%g199206199233%_))))
                                      (_%g199205199230%_ _%g199206199233%_))))
                              (_%g199205199230%_ _%g199206199233%_))))
                      (_%g199205199230%_ _%g199206199233%_)))))
          (_%g199204199299%_ _%stx199203%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self198997%_ _%stx198998%_)
        (let* ((_%g199000199021%_
                (lambda (_%g199001199018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199001199018%_))))
               (_%g198999199199%_
                (lambda (_%g199001199024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199001199024%_))
                      (let ((_%e199005199026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199001199024%_))))
                        (let ((_%hd199006199029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199005199026%_)))
                              (_%tl199007199031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199005199026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199007199031%_))
                              (let ((_%e199008199034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199007199031%_))))
                                (let ((_%hd199009199037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199008199034%_)))
                                      (_%tl199010199039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199008199034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199010199039%_))
                                      (let ((_%e199011199042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199010199039%_))))
                                        (let ((_%hd199012199045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199011199042%_)))
                                              (_%tl199013199047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199011199042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199013199047%_))
                                              (let ((_%e199014199050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199013199047%_))))
                                                (let ((_%hd199015199053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199014199050%_)))
                                                      (_%tl199016199055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199014199050%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199016199055%_))
                                                      ((lambda (_%g199002199058%_
                                                                _%g199003199059%_
                                                                _%g199004199060%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self198997%_
                                    _%g199002199058%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198997%_
                                          _%g199003199059%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp199078%_ ((_%rest199081%_
                                         (cons _%g199003199059%_
                                               (cons _%g199002199058%_ '())))
                                        (_%bind199083%_ '())
                                        (_%args199084%_ '()))
                       (let* ((_%rest199085199093%_ _%rest199081%_)
                              (_%else199087199101%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind199083%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp207219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp207219 _%args199084%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K199089199187%_
                               (lambda (_%rest199104%_ _%e199105%_)
                                 (let* ((_%__stx206856206857%_ _%e199105%_)
                                        (_%g199110199128%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206856206857%_)))))
                                   (let ((_%__kont206858206859%_
                                          (lambda ()
                                            (_%lp199078%_
                                             _%rest199104%_
                                             _%bind199083%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e199105%_))
                                                   _%args199084%_))))
                                         (_%__kont206860206861%_
                                          (lambda ()
                                            (_%lp199078%_
                                             _%rest199104%_
                                             _%bind199083%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e199105%_))
                                                   _%args199084%_))))
                                         (_%__kont206862206863%_
                                          (lambda ()
                                            (let ((_%tmp199135%_
                                                   (let ((__tmp207220
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp207220))))
                                              (_%lp199078%_
                                               _%rest199104%_
                                               (cons (cons _%tmp199135%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e199105%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind199083%_)
                                               (cons _%tmp199135%_
                                                     _%args199084%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206856206857%_))
                                         (let ((_%e199112199166%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206856206857%_))))
                                           (let ((_%tl199114199171%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199112199166%_)))
                                                 (_%hd199113199169%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199112199166%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd199113199169%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd199113199169%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl199114199171%_))
                                                         (let ((_%e199115199174%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl199114199171%_))))
                   (let ((_%tl199117199179%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e199115199174%_)))
                         (_%hd199116199177%_
                          (let ()
                            (declare (not safe))
                            (##car _%e199115199174%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl199117199179%_))
                         (_%__kont206858206859%_)
                         (_%__kont206862206863%_))))
                 (_%__kont206862206863%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd199113199169%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199114199171%_))
                     (let ((_%e199121199151%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199114199171%_))))
                       (let ((_%tl199123199156%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199121199151%_)))
                             (_%hd199122199154%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199121199151%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199123199156%_))
                             (_%__kont206860206861%_)
                             (_%__kont206862206863%_))))
                     (_%__kont206862206863%_))
                 (_%__kont206862206863%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206862206863%_))))
                                         (_%__kont206862206863%_)))))))
                         (if (pair? _%rest199085199093%_)
                             (let ((_%hd199090199190%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest199085199093%_)))
                                   (_%tl199091199192%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest199085199093%_))))
                               (let* ((_%e199195%_ _%hd199090199190%_)
                                      (_%rest199197%_ _%tl199091199192%_))
                                 (_%K199089199187%_
                                  _%rest199197%_
                                  _%e199195%_)))
                             (_%else199087199101%_))))))
               _%hd199015199053%_
               _%hd199012199045%_
               _%hd199009199037%_)
              (_%g199000199021%_ _%g199001199024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199000199021%_
                                               _%g199001199024%_))))
                                      (_%g199000199021%_ _%g199001199024%_))))
                              (_%g199000199021%_ _%g199001199024%_))))
                      (_%g199000199021%_ _%g199001199024%_)))))
          (_%g198999199199%_ _%stx198998%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self198776%_ _%stx198777%_)
        (let* ((_%g198779198804%_
                (lambda (_%g198780198801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198780198801%_))))
               (_%g198778198994%_
                (lambda (_%g198780198807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198780198807%_))
                      (let ((_%e198785198809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198780198807%_))))
                        (let ((_%hd198786198812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198785198809%_)))
                              (_%tl198787198814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198785198809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198787198814%_))
                              (let ((_%e198788198817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198787198814%_))))
                                (let ((_%hd198789198820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198788198817%_)))
                                      (_%tl198790198822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198788198817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198790198822%_))
                                      (let ((_%e198791198825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198790198822%_))))
                                        (let ((_%hd198792198828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198791198825%_)))
                                              (_%tl198793198830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198791198825%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198793198830%_))
                                              (let ((_%e198794198833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198793198830%_))))
                                                (let ((_%hd198795198836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198794198833%_)))
                                                      (_%tl198796198838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198794198833%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198796198838%_))
                                                      (let ((_%e198797198841%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198796198838%_))))
                (let ((_%hd198798198844%_
                       (let () (declare (not safe)) (##car _%e198797198841%_)))
                      (_%tl198799198846%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198797198841%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198799198846%_))
                      ((lambda (_%g198781198849%_
                                _%g198782198850%_
                                _%g198783198851%_
                                _%g198784198852%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198776%_
                                            _%g198782198850%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198776%_
                                                  _%g198781198849%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self198776%_
                                                        _%g198783198851%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp198873%_ ((_%rest198876%_
                                                 (cons _%g198783198851%_
                                                       (cons _%g198781198849%_
                                                             (cons _%g198782198850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind198878%_ '())
                                                (_%args198879%_ '()))
                               (let* ((_%rest198880198888%_ _%rest198876%_)
                                      (_%else198882198896%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind198878%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp207221 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp207221 _%args198879%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K198884198982%_
                                       (lambda (_%rest198899%_ _%e198900%_)
                                         (let* ((_%__stx206902206903%_
                                                 _%e198900%_)
                                                (_%g198905198923%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx206902206903%_)))))
                                           (let ((_%__kont206904206905%_
                                                  (lambda ()
                                                    (_%lp198873%_
                                                     _%rest198899%_
                                                     _%bind198878%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198900%_))
                                                           _%args198879%_))))
                                                 (_%__kont206906206907%_
                                                  (lambda ()
                                                    (_%lp198873%_
                                                     _%rest198899%_
                                                     _%bind198878%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198900%_))
                                                           _%args198879%_))))
                                                 (_%__kont206908206909%_
                                                  (lambda ()
                                                    (let ((_%tmp198930%_
                                                           (let ((__tmp207222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp207222))))
              (_%lp198873%_
               _%rest198899%_
               (cons (cons _%tmp198930%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e198900%_))
                                 '()))
                     _%bind198878%_)
               (cons _%tmp198930%_ _%args198879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx206902206903%_))
                                                 (let ((_%e198907198961%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx206902206903%_))))
                                                   (let ((_%tl198909198966%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198907198961%_)))
                                                         (_%hd198908198964%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198907198961%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd198908198964%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd198908198964%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl198909198966%_))
                         (let ((_%e198910198969%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl198909198966%_))))
                           (let ((_%tl198912198974%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198910198969%_)))
                                 (_%hd198911198972%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198910198969%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl198912198974%_))
                                 (_%__kont206904206905%_)
                                 (_%__kont206908206909%_))))
                         (_%__kont206908206909%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd198908198964%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl198909198966%_))
                             (let ((_%e198916198946%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl198909198966%_))))
                               (let ((_%tl198918198951%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e198916198946%_)))
                                     (_%hd198917198949%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e198916198946%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl198918198951%_))
                                     (_%__kont206906206907%_)
                                     (_%__kont206908206909%_))))
                             (_%__kont206908206909%_))
                         (_%__kont206908206909%_)))
                 (_%__kont206908206909%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206908206909%_)))))))
                                 (if (pair? _%rest198880198888%_)
                                     (let ((_%hd198885198985%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest198880198888%_)))
                                           (_%tl198886198987%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest198880198888%_))))
                                       (let* ((_%e198990%_ _%hd198885198985%_)
                                              (_%rest198992%_
                                               _%tl198886198987%_))
                                         (_%K198884198982%_
                                          _%rest198992%_
                                          _%e198990%_)))
                                     (_%else198882198896%_))))))
                       _%hd198798198844%_
                       _%hd198795198836%_
                       _%hd198792198828%_
                       _%hd198789198820%_)
                      (_%g198779198804%_ _%g198780198807%_))))
              (_%g198779198804%_ _%g198780198807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198779198804%_
                                               _%g198780198807%_))))
                                      (_%g198779198804%_ _%g198780198807%_))))
                              (_%g198779198804%_ _%g198780198807%_))))
                      (_%g198779198804%_ _%g198780198807%_)))))
          (_%g198778198994%_ _%stx198777%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self198615%_ _%stx198616%_)
        (letrec ((_%import-set-template198618%_
                  (lambda (_%in198721%_ _%phi198722%_)
                    (let ((_%iphi198724%_
                           (fx+ _%phi198722%_
                                (##direct-structure-ref
                                 _%in198721%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports198725%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in198721%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp198727%_ ((_%rest198729%_ _%imports198725%_)
                                         (_%r198730%_ '()))
                        (let* ((_%rest198731198739%_ _%rest198729%_)
                               (_%else198733198747%_ (lambda () _%r198730%_))
                               (_%K198735198764%_
                                (lambda (_%rest198750%_ _%in198751%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in198751%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi198724%_))
                                          (_%lp198727%_
                                           _%rest198750%_
                                           (cons _%in198751%_ _%r198730%_))
                                          (_%lp198727%_
                                           _%rest198750%_
                                           _%r198730%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in198751%_
                                             'gx#module-import::t))
                                          (let ((_%iphi198755%_
                                                 (fx+ _%phi198722%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in198751%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi198755%_))
                                                (_%lp198727%_
                                                 _%rest198750%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in198751%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r198730%_))
                                                (_%lp198727%_
                                                 _%rest198750%_
                                                 _%r198730%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in198751%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi198758%_
                                                     (fx+ _%iphi198724%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in198751%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi198758%_))
                                                    (_%lp198727%_
                                                     _%rest198750%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in198751%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r198730%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi198758%_))
                                                        (_%lp198727%_
                                                         _%rest198750%_
                                                         (let ((__tmp207223
                                                                (_%import-set-template198618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in198751%_
                         _%iphi198724%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r198730%_ __tmp207223)))
                (_%lp198727%_ _%rest198750%_ _%r198730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp198727%_
                                               _%rest198750%_
                                               _%r198730%_)))))))
                          (if (pair? _%rest198731198739%_)
                              (let ((_%hd198736198767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest198731198739%_)))
                                    (_%tl198737198769%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest198731198739%_))))
                                (let* ((_%in198772%_ _%hd198736198767%_)
                                       (_%rest198774%_ _%tl198737198769%_))
                                  (_%K198735198764%_
                                   _%rest198774%_
                                   _%in198772%_)))
                              (_%else198733198747%_))))))))
          (let* ((_%g198620198630%_
                  (lambda (_%g198621198627%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198621198627%_))))
                 (_%g198619198718%_
                  (lambda (_%g198621198633%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198621198633%_))
                        (let ((_%e198623198635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198621198633%_))))
                          (let ((_%hd198624198638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198623198635%_)))
                                (_%tl198625198640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198623198635%_))))
                            ((lambda (_%g198622198643%_)
                               (let ((_%ht198654%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp198656%_ ((_%rest198658%_
                                                     _%g198622198643%_)
                                                    (_%loads198659%_ '()))
                                   (letrec ((_%K198661%_
                                             (lambda (_%ctx198711%_
                                                      _%rest198712%_)
                                               (let ((_%id198714%_
                                                      (##structure-ref
                                                       _%ctx198711%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht198654%_
                                                        _%id198714%_))
                                                     (_%lp198656%_
                                                      _%rest198712%_
                                                      _%loads198659%_)
                                                     (let ((_%rt198716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id198714%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht198654%_
                                                          _%id198714%_
                                                          _%rt198716%_))
                                                       (_%lp198656%_
                                                        _%rest198712%_
                                                        (cons _%rt198716%_
                                                              _%loads198659%_))))))))
                                     (let* ((_%rest198662198670%_
                                             _%rest198658%_)
                                            (_%else198664198682%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp207225
                                                            (lambda (_%g198677198679%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g198677198679%_)))
                   (__tmp207224 (reverse _%loads198659%_)))
               (declare (not safe))
               (##map __tmp207225 __tmp207224)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K198666198699%_
                                             (lambda (_%rest198685%_
                                                      _%in198686%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in198686%_
                                                      'gx#module-context::t))
                                                   (_%K198661%_
                                                    _%in198686%_
                                                    _%rest198685%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in198686%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in198686%_
                               '3
                               '#f
                               '#f)))
                   (_%K198661%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in198686%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest198685%_)
                   (_%lp198656%_ _%rest198685%_ _%loads198659%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in198686%_
                      'gx#import-set::t))
                   (let ((_%phi198691%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in198686%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi198691%_)
                         (_%K198661%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in198686%_
                             '1
                             '#f
                             '#f))
                          _%rest198685%_)
                         (if (fxpositive? _%phi198691%_)
                             (let ((_%deps198695%_
                                    (_%import-set-template198618%_
                                     _%in198686%_
                                     '0)))
                               (_%lp198656%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest198685%_
                                   _%deps198695%_))
                                _%loads198659%_))
                             (_%lp198656%_ _%rest198685%_ _%loads198659%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx198616%_
                      _%in198686%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest198662198670%_)
                                           (let ((_%hd198667198702%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest198662198670%_)))
                                                 (_%tl198668198704%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest198662198670%_))))
                                             (let* ((_%in198707%_
                                                     _%hd198667198702%_)
                                                    (_%rest198709%_
                                                     _%tl198668198704%_))
                                               (_%K198666198699%_
                                                _%rest198709%_
                                                _%in198707%_)))
                                           (_%else198664198682%_)))))))
                             _%tl198625198640%_)))
                        (_%g198620198630%_ _%g198621198633%_)))))
            (_%g198619198718%_ _%stx198616%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self198429%_ _%stx198430%_)
        (letrec ((_%add-lift!198432%_
                  (lambda (_%expr198613%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr198613%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote198433%_
                  (lambda (_%id198610%_ _%marks198611%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id198610%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks198611%_
                                                        '()))))))))
                 (_%generate-simple198434%_
                  (lambda (_%stxq198605%_)
                    (let ((_%gid198607%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid198608%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq198605%_))))
                      (_%add-lift!198432%_
                       (cons 'define
                             (cons _%gid198607%_
                                   (cons (_%generate-syntax-quote198433%_
                                          _%qid198608%_
                                          ''())
                                         '()))))
                      (let ((__tmp207226
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp207226 _%stxq198605%_ _%gid198607%_))
                      _%gid198607%_)))
                 (_%generate-serialized198435%_
                  (lambda (_%stxq198595%_ _%marks198596%_)
                    (let* ((_%mark-refs198598%_
                            (map _%generate-mark198436%_ _%marks198596%_))
                           (_%gid198600%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid198602%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq198595%_))))
                      (_%add-lift!198432%_
                       (cons 'define
                             (cons _%gid198600%_
                                   (cons (_%generate-syntax-quote198433%_
                                          _%qid198602%_
                                          (cons 'list _%mark-refs198598%_))
                                         '()))))
                      (let ((__tmp207227
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp207227 _%stxq198595%_ _%gid198600%_))
                      _%gid198600%_)))
                 (_%generate-mark198436%_
                  (lambda (_%mark198580%_)
                    (let ((_%$e198582%_
                           (let ((__tmp207228
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp207228 _%mark198580%_))))
                      (if _%$e198582%_
                          _%$e198582%_
                          (let* ((_%gid198586%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr198588%_
                                  (_%serialize-mark198437%_ _%mark198580%_))
                                 (_%ctx198590%_
                                  (let ((__tmp207229
                                         (##structure-ref
                                          _%mark198580%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp207229)))
                                 (_%ctx-ref198592%_
                                  (if (eq? _%ctx198590%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref198438%_
                                                               _%ctx198590%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp207230
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp207230
                               _%mark198580%_
                               _%gid198586%_))
                            (_%add-lift!198432%_
                             (cons 'define
                                   (cons _%gid198586%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr198588%_ '()))
                   (cons _%ctx-ref198592%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid198586%_)))))
                 (_%serialize-mark198437%_
                  (lambda (_%mark198528%_)
                    (letrec ((_%quote-e198530%_
                              (lambda (_%sym198578%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym198578%_))
                                    _%sym198578%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym198578%_))))))
                      (let* ((_%mark198531198540%_ _%mark198528%_)
                             (_%E198533198543%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark198531198540%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K198534198555%_
                              (lambda (_%trace198546%_
                                       _%phi198547%_
                                       _%ctx198548%_
                                       _%subst198549%_)
                                (let ((_%subs198551%_
                                       (if _%subst198549%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst198549%_))
                                           '())))
                                  (cons _%phi198547%_
                                        (let ((__tmp207231
                                               (lambda (_%pair198553%_)
                                                 (cons (_%quote-e198530%_
                                                        (car _%pair198553%_))
                                                       (_%quote-e198530%_
                                                        (cdr _%pair198553%_))))))
                                          (declare (not safe))
                                          (##map __tmp207231
                                                 _%subs198551%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark198531198540%_
                               'gx#expander-mark::t))
                            (let* ((_%e198535198558%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198531198540%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst198561%_ _%e198535198558%_)
                                   (_%e198536198563%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198531198540%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx198566%_ _%e198536198563%_)
                                   (_%e198537198568%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198531198540%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi198571%_ _%e198537198568%_)
                                   (_%e198538198573%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198531198540%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace198576%_ _%e198538198573%_))
                              (_%K198534198555%_
                               _%trace198576%_
                               _%phi198571%_
                               _%ctx198566%_
                               _%subst198561%_))
                            (_%E198533198543%_))))))
                 (_%context-ref198438%_
                  (lambda (_%ctx198515%_)
                    (if (let ((__tmp207232
                               (##structure-ref
                                _%ctx198515%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp207232
                           'gx#module-context::t))
                        (let ((_%ctx-ref198517%_
                               (_%context-ref-nested198440%_ _%ctx198515%_))
                              (_%ctx-origin198518%_
                               (_%context-ref-origin198439%_ _%ctx198515%_))
                              (_%origin198519%_
                               (_%context-ref-origin198439%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin198519%_ _%ctx-origin198518%_)
                              (let ((_%ref198521%_
                                     (_%context-ref-nested198440%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp198523%_ ((_%ref198525%_
                                                    (cdr _%ref198521%_))
                                                   (_%ctx-ref198526%_
                                                    (cdr _%ctx-ref198517%_)))
                                  (if (and (pair? _%ref198525%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref198525%_))
                                                (car _%ctx-ref198526%_)))
                                      (_%lp198523%_
                                       (cdr _%ref198525%_)
                                       (cdr _%ctx-ref198526%_))
                                      (cons '#f _%ctx-ref198526%_))))
                              _%ctx-ref198517%_))
                        (let ((__tmp207233
                               (##structure-ref
                                _%ctx198515%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp207233)))))
                 (_%context-ref-origin198439%_
                  (lambda (_%ctx198507%_)
                    (let _%lp198509%_ ((_%ctx198511%_ _%ctx198507%_))
                      (let ((_%super198513%_
                             (##structure-ref
                              _%ctx198511%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198513%_
                               'gx#module-context::t))
                            (_%lp198509%_ _%super198513%_)
                            _%ctx198511%_)))))
                 (_%context-ref-nested198440%_
                  (lambda (_%ctx198498%_)
                    (let _%lp198500%_ ((_%ctx198502%_ _%ctx198498%_)
                                       (_%r198503%_ '()))
                      (let ((_%super198505%_
                             (##structure-ref
                              _%ctx198502%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198505%_
                               'gx#module-context::t))
                            (_%lp198500%_
                             _%super198505%_
                             (cons (car (##structure-ref
                                         _%ctx198502%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r198503%_))
                            (cons (let ((__tmp207234
                                         (##structure-ref
                                          _%ctx198502%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp207234))
                                  _%r198503%_)))))))
          (let* ((_%g198442198455%_
                  (lambda (_%g198443198452%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198443198452%_))))
                 (_%g198441198495%_
                  (lambda (_%g198443198458%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198443198458%_))
                        (let ((_%e198445198460%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198443198458%_))))
                          (let ((_%hd198446198463%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198445198460%_)))
                                (_%tl198447198465%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198445198460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198447198465%_))
                                (let ((_%e198448198468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198447198465%_))))
                                  (let ((_%hd198449198471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198448198468%_)))
                                        (_%tl198450198473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198448198468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198450198473%_))
                                        ((lambda (_%g198444198476%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g198444198476%_))
                                               (let ((_%$e198489%_
                                                      (let ((__tmp207235
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp207235 _%g198444198476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198489%_
                                                     _%$e198489%_
                                                     (let ((_%marks198493%_
                                                            (##direct-structure-ref
                                                             _%g198444198476%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks198493%_)
                                                           (_%generate-simple198434%_
                                                            _%g198444198476%_)
                                                           (_%generate-serialized198435%_
                                                            _%g198444198476%_
                                                            _%marks198493%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g198444198476%_))))
                                         _%hd198449198471%_)
                                        (_%g198442198455%_
                                         _%g198443198458%_))))
                                (_%g198442198455%_ _%g198443198458%_))))
                        (_%g198442198455%_ _%g198443198458%_)))))
            (_%g198441198495%_ _%stx198430%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self198361%_ _%stx198362%_)
        (let* ((_%g198364198381%_
                (lambda (_%g198365198378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198365198378%_))))
               (_%g198363198426%_
                (lambda (_%g198365198384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198365198384%_))
                      (let ((_%e198368198386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198365198384%_))))
                        (let ((_%hd198369198389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198368198386%_)))
                              (_%tl198370198391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198368198386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198370198391%_))
                              (let ((_%e198371198394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198370198391%_))))
                                (let ((_%hd198372198397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198371198394%_)))
                                      (_%tl198373198399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198371198394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198373198399%_))
                                      (let ((_%e198374198402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198373198399%_))))
                                        (let ((_%hd198375198405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198374198402%_)))
                                              (_%tl198376198407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198374198402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198376198407%_))
                                              ((lambda (_%g198366198410%_
                                                        _%g198367198411%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g198367198411%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self198361%_
                              _%g198366198410%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198375198405%_
                                               _%hd198372198397%_)
                                              (_%g198364198381%_
                                               _%g198365198384%_))))
                                      (_%g198364198381%_ _%g198365198384%_))))
                              (_%g198364198381%_ _%g198365198384%_))))
                      (_%g198364198381%_ _%g198365198384%_)))))
          (_%g198363198426%_ _%stx198362%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self198310%_ _%stx198311%_)
        (let* ((_%g198313198323%_
                (lambda (_%g198314198320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198314198320%_))))
               (_%g198312198358%_
                (lambda (_%g198314198326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198314198326%_))
                      (let ((_%e198316198328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198314198326%_))))
                        (let ((_%hd198317198331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198316198328%_)))
                              (_%tl198318198333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198316198328%_))))
                          ((lambda (_%g198315198336%_)
                             (let* ((_%c-body198350%_
                                     (map (lambda (_%g198345198347%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self198310%_
                                               _%g198345198347%_)))
                                          _%g198315198336%_))
                                    (_%c-body198355%_
                                     (let ((__tmp207236
                                            (lambda (_%$obj198352%_)
                                              (not (eq? _%$obj198352%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp207236
                                        _%c-body198350%_))))
                               (cons '%#begin _%c-body198355%_)))
                           _%tl198318198333%_)))
                      (_%g198313198323%_ _%g198314198326%_)))))
          (_%g198312198358%_ _%stx198311%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self198215%_ _%stx198216%_)
        (let* ((_%g198218198228%_
                (lambda (_%g198219198225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198219198225%_))))
               (_%g198217198307%_
                (lambda (_%g198219198231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198219198231%_))
                      (let ((_%e198221198233%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198219198231%_))))
                        (let ((_%hd198222198236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198221198233%_)))
                              (_%tl198223198238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198221198233%_))))
                          ((lambda (_%g198220198241%_)
                             (let* ((_%phi198251%_
                                     (let ((__tmp207237
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp207237 '1)))
                                    (_%block198253%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self198215%_ 'state))
                                      _%phi198251%_))
                                    (_%compiled198256%_
                                     (let ((__tmp207238
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self198215%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g198220198241%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp207238
                                        gx#current-expander-phi
                                        _%phi198251%_)))
                                    (_%g198259198269%_
                                     (lambda (_%g198260198266%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g198260198266%_))))
                                    (_%g198258198304%_
                                     (lambda (_%g198260198272%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g198260198272%_))
                                           (let ((_%e198262198274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g198260198272%_))))
                                             (let ((_%hd198263198277%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198262198274%_)))
                                                   (_%tl198264198279%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198262198274%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd198263198277%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd198263198277%_))
                                                       ((lambda (_%g198261198282%_)
                                                          (let ((_%c-body198299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj198296%_)
                                   (not (eq? _%$obj198296%_ '#!void)))
                                 _%g198261198282%_)))
                    (if _%block198253%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block198253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body198299%_))
                        (if (null? _%c-body198299%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body198299%_)))))
                _%tl198264198279%_)
               (_%g198259198269%_ _%g198260198272%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198259198269%_
                                                    _%g198260198272%_))))
                                           (_%g198259198269%_
                                            _%g198260198272%_)))))
                               (_%g198258198304%_ _%compiled198256%_)))
                           _%tl198223198238%_)))
                      (_%g198218198228%_ _%g198219198231%_)))))
          (_%g198217198307%_ _%stx198216%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self198146%_ _%stx198147%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198146%_ 'state)))
        (let* ((_%g198149198163%_
                (lambda (_%g198150198160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198150198160%_))))
               (_%g198148198212%_
                (lambda (_%g198150198166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198150198166%_))
                      (let ((_%e198153198168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198150198166%_))))
                        (let ((_%hd198154198171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198153198168%_)))
                              (_%tl198155198173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198153198168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198155198173%_))
                              (let ((_%e198156198176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198155198173%_))))
                                (let ((_%hd198157198179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198156198176%_)))
                                      (_%tl198158198181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198156198176%_))))
                                  ((lambda (_%g198151198184%_
                                            _%g198152198185%_)
                                     (let ((_%key198198%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g198152198185%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key198198%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx198147%_
                                              _%g198152198185%_
                                              _%key198198%_)))
                                       (let* ((_%ctx198200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g198152198185%_)))
                                              (_%code198203%_
                                               (let ((__tmp207239
                                                      (lambda ()
                                                        (let ((__tmp207240
                                                               (##structure-ref
                                                                _%ctx198200%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self198146%_
                                                           __tmp207240)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp207239
                                                  gx#current-expander-context
                                                  _%ctx198200%_)))
                                              (_%rt198205%_
                                               (let ((__tmp207241
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp207241
                                                  _%ctx198200%_)))
                                              (_%loader198207%_
                                               (if _%rt198205%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt198205%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid198209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g198152198185%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self198146%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid198209%_
                                                     (cons _%code198203%_
                                                           _%loader198207%_))))))
                                   _%tl198158198181%_
                                   _%hd198157198179%_)))
                              (_%g198149198163%_ _%g198150198166%_))))
                      (_%g198149198163%_ _%g198150198166%_)))))
          (_%g198148198212%_ _%stx198147%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx198133%_ _%context-chain198134%_)
        (let _%lp198136%_ ((_%ctx198138%_ _%ctx198133%_) (_%path198139%_ '()))
          (let ((_%super198141%_
                 (##structure-ref _%ctx198138%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super198141%_ _%context-chain198134%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx198138%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path198139%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super198141%_
                       'gx#module-context::t))
                    (_%lp198136%_
                     _%super198141%_
                     (cons (car (##structure-ref
                                 _%ctx198138%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path198139%_))
                    (cons (let ((__tmp207242
                                 (##structure-ref
                                  _%ctx198138%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp207242))
                          _%path198139%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp198126%_ ((_%ctx198128%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r198129%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx198128%_ 'gx#module-context::t))
              (_%lp198126%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx198128%_ '3 '#f '#f))
               (cons _%ctx198128%_ _%r198129%_))
              _%r198129%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self197891%_ _%stx197892%_)
        (letrec* ((_%context-chain197894%_ (gxc#current-context-chain))
                  (_%make-import-spec197895%_
                   (lambda (_%in198063%_)
                     (let* ((_%in198064198076%_ _%in198063%_)
                            (_%E198066198079%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in198064198076%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K198067198089%_
                             (lambda (_%phi198082%_
                                      _%name198083%_
                                      _%src-name198084%_
                                      _%src-phi198085%_
                                      _%src-key198086%_
                                      _%src-ctx198087%_)
                               (cons _%phi198082%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name198083%_))
                                           (cons _%src-phi198085%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name198084%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in198064198076%_
                              'gx#module-import::t))
                           (let ((_%e198068198092%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in198064198076%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e198068198092%_
                                    'gx#module-export::t))
                                 (let* ((_%e198071198095%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198068198092%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx198098%_ _%e198071198095%_)
                                        (_%e198072198100%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198068198092%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key198103%_ _%e198072198100%_)
                                        (_%e198073198105%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198068198092%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi198108%_ _%e198073198105%_)
                                        (_%e198074198110%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e198068198092%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name198113%_ _%e198074198110%_)
                                        (_%e198069198115%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in198064198076%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name198118%_ _%e198069198115%_)
                                        (_%e198070198120%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in198064198076%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi198123%_ _%e198070198120%_))
                                   (_%K198067198089%_
                                    _%phi198123%_
                                    _%name198118%_
                                    _%src-name198113%_
                                    _%src-phi198108%_
                                    _%src-key198103%_
                                    _%src-ctx198098%_))
                                 (_%E198066198079%_)))
                           (_%E198066198079%_)))))
                  (_%make-import-path197896%_
                   (lambda (_%ctx198061%_)
                     (gxc#generate-meta-import-path
                      _%ctx198061%_
                      _%context-chain197894%_)))
                  (_%make-import-spec-in197897%_
                   (lambda (_%ctx198058%_ _%in198059%_)
                     (cons 'spec:
                           (cons (_%make-import-path197896%_ _%ctx198058%_)
                                 (reverse _%in198059%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self197891%_ 'state)))
          (let* ((_%g197899197909%_
                  (lambda (_%g197900197906%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197900197906%_))))
                 (_%g197898198055%_
                  (lambda (_%g197900197912%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197900197912%_))
                        (let ((_%e197902197914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197900197912%_))))
                          (let ((_%hd197903197917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197902197914%_)))
                                (_%tl197904197919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197902197914%_))))
                            ((lambda (_%g197901197922%_)
                               (let _%lp197933%_ ((_%rest197935%_
                                                   _%g197901197922%_)
                                                  (_%current-src197936%_ '#f)
                                                  (_%current-in197937%_ '())
                                                  (_%r197938%_ '()))
                                 (let* ((_%rest197939197947%_ _%rest197935%_)
                                        (_%else197941197957%_
                                         (lambda ()
                                           (let ((_%r197955%_
                                                  (if _%current-src197936%_
                                                      (cons (_%make-import-spec-in197897%_
                                                             _%current-src197936%_
                                                             _%current-in197937%_)
                                                            _%r197938%_)
                                                      _%r197938%_)))
                                             (cons '%#import
                                                   (reverse _%r197955%_)))))
                                        (_%K197943198043%_
                                         (lambda (_%rest197960%_ _%in197961%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in197961%_
                                                  'gx#module-import::t))
                                               (let* ((_%in197963197970%_
                                                       _%in197961%_)
                                                      (_%E197965197973%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in197963197970%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K197966197981%_
               (lambda (_%src-ctx197976%_)
                 (if (eq? _%current-src197936%_ _%src-ctx197976%_)
                     (_%lp197933%_
                      _%rest197960%_
                      _%current-src197936%_
                      (cons (_%make-import-spec197895%_ _%in197961%_)
                            _%current-in197937%_)
                      _%r197938%_)
                     (if _%current-src197936%_
                         (_%lp197933%_
                          _%rest197960%_
                          _%src-ctx197976%_
                          (cons (_%make-import-spec197895%_ _%in197961%_) '())
                          (cons (_%make-import-spec-in197897%_
                                 _%current-src197936%_
                                 _%current-in197937%_)
                                _%r197938%_))
                         (_%lp197933%_
                          _%rest197960%_
                          _%src-ctx197976%_
                          (cons (_%make-import-spec197895%_ _%in197961%_) '())
                          _%r197938%_)))))
              (_%e197967197984%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in197963197970%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e197967197984%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197968197987%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e197967197984%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx197990%_ _%e197968197987%_))
               (_%K197966197981%_ _%src-ctx197990%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E197965197973%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in197961%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi197993%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197961%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src197995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197961%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in198035%_
                                                           (let* ((_%g197996198005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path197896%_ _%src197995%_))
                          (_%E197999198009%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g197996198005%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K198001198025%_
                            (lambda (_%path198023%_) _%path198023%_))
                           (_%K198000198015%_
                            (lambda (_%path198013%_)
                              (cons 'in: _%path198013%_))))
                       (if (pair? _%g197996198005%_)
                           (let ((_%tl198003198030%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g197996198005%_)))
                                 (_%hd198002198028%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g197996198005%_))))
                             (if (null? _%tl198003198030%_)
                                 (let ((_%path198033%_ _%hd198002198028%_))
                                   (_%K198001198025%_ _%path198033%_))
                                 (let ((_%path198018%_ _%g197996198005%_))
                                   (_%K198000198015%_ _%path198018%_))))
                           (let ((_%path198018%_ _%g197996198005%_))
                             (_%K198000198015%_ _%path198018%_))))))
                  (_%r198037%_
                   (if _%current-src197936%_
                       (cons (_%make-import-spec-in197897%_
                              _%current-src197936%_
                              _%current-in197937%_)
                             _%r197938%_)
                       _%r197938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp197933%_
                                                      _%rest197960%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi197993%_)
                                                                _%src-in198035%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi197993%_
                                    (cons _%src-in198035%_ '()))))
                    _%r198037%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in197961%_
                                                          'gx#module-context::t))
                                                       (let ((_%r198041%_
                                                              (if _%current-src197936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in197897%_
                                 _%current-src197936%_
                                 _%current-in197937%_)
                                _%r197938%_)
                          _%r197938%_)))
                 (_%lp197933%_
                  _%rest197960%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path197896%_ _%in197961%_))
                        _%r198041%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest197939197947%_)
                                       (let ((_%hd197944198046%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197939197947%_)))
                                             (_%tl197945198048%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197939197947%_))))
                                         (let* ((_%in198051%_
                                                 _%hd197944198046%_)
                                                (_%rest198053%_
                                                 _%tl197945198048%_))
                                           (_%K197943198043%_
                                            _%rest198053%_
                                            _%in198051%_)))
                                       (_%else197941197957%_)))))
                             _%tl197904197919%_)))
                        (_%g197899197909%_ _%g197900197912%_)))))
            (_%g197898198055%_ _%stx197892%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self197701%_ _%stx197702%_)
        (letrec* ((_%context-chain197704%_ (gxc#current-context-chain))
                  (_%make-import-path197705%_
                   (lambda (_%ctx197889%_)
                     (gxc#generate-meta-import-path
                      _%ctx197889%_
                      _%context-chain197704%_))))
          (let* ((_%g197707197717%_
                  (lambda (_%g197708197714%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197708197714%_))))
                 (_%g197706197886%_
                  (lambda (_%g197708197720%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197708197720%_))
                        (let ((_%e197710197722%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197708197720%_))))
                          (let ((_%hd197711197725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197710197722%_)))
                                (_%tl197712197727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197710197722%_))))
                            ((lambda (_%g197709197730%_)
                               (let _%lp197741%_ ((_%rest197743%_
                                                   _%g197709197730%_)
                                                  (_%r197744%_ '()))
                                 (let* ((_%rest197745197753%_ _%rest197743%_)
                                        (_%else197747197761%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r197744%_))))
                                        (_%K197749197874%_
                                         (lambda (_%rest197764%_ _%out197765%_)
                                           (let* ((_%out197766197779%_
                                                   _%out197765%_)
                                                  (_%E197769197783%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out197766197779%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K197773197853%_
                                                    (lambda (_%name197849%_
                                                             _%phi197850%_
                                                             _%key197851%_)
                                                      (_%lp197741%_
                                                       _%rest197764%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi197850%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key197851%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name197849%_))
                                             '()))))
                     _%r197744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K197770197833%_
                                                    (lambda (_%phi197787%_
                                                             _%src197788%_)
                                                      (let* ((_%out197828%_
                                                              (if _%src197788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g197789197798%_
                                              (_%make-import-path197705%_
                                               _%src197788%_))
                                             (_%E197792197802%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g197789197798%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K197794197818%_
                                               (lambda (_%path197816%_)
                                                 _%path197816%_))
                                              (_%K197793197808%_
                                               (lambda (_%path197806%_)
                                                 (cons 'in: _%path197806%_))))
                                          (if (pair? _%g197789197798%_)
                                              (let ((_%tl197796197823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g197789197798%_)))
                                                    (_%hd197795197821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g197789197798%_))))
                                                (if (null? _%tl197796197823%_)
                                                    (let ((_%path197826%_
                                                           _%hd197795197821%_))
                                                      (_%K197794197818%_
                                                       _%path197826%_))
                                                    (let ((_%path197811%_
                                                           _%g197789197798%_))
                                                      (_%K197793197808%_
                                                       _%path197811%_))))
                                              (let ((_%path197811%_
                                                     _%g197789197798%_))
                                                (_%K197793197808%_
                                                 _%path197811%_)))))
                                      '()))
                          '#t))
                     (_%out197830%_
                      (if (fxzero? _%phi197787%_)
                          _%out197828%_
                          (cons 'phi:
                                (cons _%phi197787%_
                                      (cons _%out197828%_ '()))))))
                (_%lp197741%_
                 _%rest197764%_
                 (cons _%out197830%_ _%r197744%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match197768197846%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out197766197779%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e197771197836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out197766197779%_
                               '1
                               '#f
                               '#f)))
                           (_%e197772197841%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out197766197779%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src197839%_ _%e197771197836%_)
                            (_%phi197844%_ _%e197772197841%_))
                        (_%K197770197833%_ _%phi197844%_ _%src197839%_)))
                    (_%E197769197783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out197766197779%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197774197856%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out197766197779%_
                        '1
                        '#f
                        '#f)))
                    (_%e197775197859%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197766197779%_
                        '2
                        '#f
                        '#f)))
                    (_%e197776197864%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197766197779%_
                        '3
                        '#f
                        '#f)))
                    (_%e197777197869%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197766197779%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key197862%_ _%e197775197859%_)
                     (_%phi197867%_ _%e197776197864%_)
                     (_%name197872%_ _%e197777197869%_))
                 (_%K197773197853%_
                  _%name197872%_
                  _%phi197867%_
                  _%key197862%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match197768197846%_))))))))
                                   (if (pair? _%rest197745197753%_)
                                       (let ((_%hd197750197877%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197745197753%_)))
                                             (_%tl197751197879%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197745197753%_))))
                                         (let* ((_%out197882%_
                                                 _%hd197750197877%_)
                                                (_%rest197884%_
                                                 _%tl197751197879%_))
                                           (_%K197749197874%_
                                            _%rest197884%_
                                            _%out197882%_)))
                                       (_%else197747197761%_)))))
                             _%tl197712197727%_)))
                        (_%g197707197717%_ _%g197708197720%_)))))
            (_%g197706197886%_ _%stx197702%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self197662%_ _%stx197663%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197662%_ 'state)))
        (let* ((_%g197665197675%_
                (lambda (_%g197666197672%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197666197672%_))))
               (_%g197664197698%_
                (lambda (_%g197666197678%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197666197678%_))
                      (let ((_%e197668197680%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197666197678%_))))
                        (let ((_%hd197669197683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197668197680%_)))
                              (_%tl197670197685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197668197680%_))))
                          ((lambda (_%g197667197688%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g197667197688%_)))
                           _%tl197670197685%_)))
                      (_%g197665197675%_ _%g197666197678%_)))))
          (_%g197664197698%_ _%stx197663%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self197537%_ _%stx197538%_)
        (letrec ((_%generate1197540%_
                  (lambda (_%id197657%_ _%eid197658%_)
                    (let ((_%eid197660%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid197658%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid197660%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx197538%_
                             _%eid197660%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id197657%_))
                            (cons _%eid197660%_ '()))))))
          (let* ((_%g197542197570%_
                  (lambda (_%g197543197567%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197543197567%_))))
                 (_%g197541197654%_
                  (lambda (_%g197543197573%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197543197573%_))
                        (let ((_%e197546197575%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197543197573%_))))
                          (let ((_%hd197547197578%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197546197575%_)))
                                (_%tl197548197580%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197546197575%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl197548197580%_))
                                (let ((_g207243_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl197548197580%_
                                          '0))))
                                  (begin
                                    (let ((_g207244_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g207243_)
                                                 (##values-length _g207243_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g207244_ 2)))
                                          (error "Context expects 2 values"
                                                 _g207244_)))
                                    (let ((_%target197549197583%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207243_ 0)))
                                          (_%tl197551197585%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g207243_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197551197585%_))
                                          (letrec ((_%loop197552197588%_
                                                    (lambda (_%hd197550197591%_
                                                             _%eid197556197593%_
                                                             _%id197557197594%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197550197591%_))
                                                          (let ((_%e197553197596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197550197591%_))))
                    (let ((_%lp-hd197554197599%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197553197596%_)))
                          (_%lp-tl197555197601%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197553197596%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd197554197599%_))
                          (let ((_%e197560197604%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd197554197599%_))))
                            (let ((_%hd197561197607%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197560197604%_)))
                                  (_%tl197562197609%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197560197604%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197562197609%_))
                                  (let ((_%e197563197612%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197562197609%_))))
                                    (let ((_%hd197564197615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197563197612%_)))
                                          (_%tl197565197617%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197563197612%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197565197617%_))
                                          (_%loop197552197588%_
                                           _%lp-tl197555197601%_
                                           (cons _%hd197564197615%_
                                                 _%eid197556197593%_)
                                           (cons _%hd197561197607%_
                                                 _%id197557197594%_))
                                          (_%g197542197570%_
                                           _%g197543197573%_))))
                                  (_%g197542197570%_ _%g197543197573%_))))
                          (_%g197542197570%_ _%g197543197573%_))))
                  (let ((_%eid197558197620%_ (reverse _%eid197556197593%_))
                        (_%id197559197621%_ (reverse _%id197557197594%_)))
                    ((lambda (_%g197544197623%_ _%g197545197624%_)
                       (cons '%#extern
                             (map _%generate1197540%_
                                  (let ((__tmp207245
                                         (lambda (_%g197639197642%_
                                                  _%g197640197644%_)
                                           (cons _%g197639197642%_
                                                 _%g197640197644%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp207245
                                     '()
                                     _%g197545197624%_))
                                  (let ((__tmp207246
                                         (lambda (_%g197646197649%_
                                                  _%g197647197651%_)
                                           (cons _%g197646197649%_
                                                 _%g197647197651%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp207246
                                     '()
                                     _%g197544197623%_)))))
                     _%eid197558197620%_
                     _%id197559197621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop197552197588%_
                                             _%target197549197583%_
                                             '()
                                             '()))
                                          (_%g197542197570%_
                                           _%g197543197573%_)))))
                                (_%g197542197570%_ _%g197543197573%_))))
                        (_%g197542197570%_ _%g197543197573%_)))))
            (_%g197541197654%_ _%stx197538%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self197326%_ _%stx197327%_)
        (letrec ((_%generate1197329%_
                  (lambda (_%id197531%_)
                    (let ((_%eid197533%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id197531%_)))
                          (_%ident197534%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id197531%_)))
                          (_%props197535%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id197531%_))))
                      (cons '%#define-runtime
                            (cons _%ident197534%_
                                  (cons _%eid197533%_ _%props197535%_))))))
                 (_%generate*197330%_
                  (lambda (_%all197499%_)
                    (let* ((_%all197500197508%_ _%all197499%_)
                           (_%else197502197516%_
                            (lambda () (cons '%#begin _%all197499%_)))
                           (_%K197504197521%_
                            (lambda (_%one197519%_) _%one197519%_)))
                      (if (pair? _%all197500197508%_)
                          (let ((_%hd197505197524%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all197500197508%_)))
                                (_%tl197506197526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all197500197508%_))))
                            (let ((_%one197529%_ _%hd197505197524%_))
                              (if (null? _%tl197506197526%_)
                                  (_%K197504197521%_ _%one197529%_)
                                  (_%else197502197516%_))))
                          (_%else197502197516%_))))))
          (let* ((_%g197332197349%_
                  (lambda (_%g197333197346%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197333197346%_))))
                 (_%g197331197496%_
                  (lambda (_%g197333197352%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197333197352%_))
                        (let ((_%e197336197354%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197333197352%_))))
                          (let ((_%hd197337197357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197336197354%_)))
                                (_%tl197338197359%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197336197354%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197338197359%_))
                                (let ((_%e197339197362%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197338197359%_))))
                                  (let ((_%hd197340197365%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197339197362%_)))
                                        (_%tl197341197367%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197339197362%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197341197367%_))
                                        (let ((_%e197342197370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197341197367%_))))
                                          (let ((_%hd197343197373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197342197370%_)))
                                                (_%tl197344197375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197342197370%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197344197375%_))
                                                ((lambda (_%g197334197378%_
                                                          _%g197335197379%_)
                                                   (let _%lp197395%_ ((_%rest197397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g197335197379%_)
                              (_%r197398%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx206981206982%_
                                                             _%rest197397%_)
                                                            (_%g197403197420%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx206981206982%_)))))
               (let ((_%__kont206983206984%_
                      (lambda (_%g197405197483%_)
                        (_%lp197395%_ _%g197405197483%_ _%r197398%_)))
                     (_%__kont206985206986%_
                      (lambda (_%g197410197456%_ _%g197411197457%_)
                        (_%lp197395%_
                         _%g197410197456%_
                         (cons (_%generate1197329%_ _%g197411197457%_)
                               _%r197398%_))))
                     (_%__kont206987206988%_
                      (lambda (_%g197415197432%_)
                        (_%generate*197330%_
                         (let ((__tmp207247
                                (cons (_%generate1197329%_ _%g197415197432%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp207247 _%r197398%_)))))
                     (_%__kont206989206990%_
                      (lambda ()
                        (_%generate*197330%_ (reverse! _%r197398%_)))))
                 (let ((_%g197401197443%_
                        (lambda ()
                          (let ((_%g197415197432%_ _%__stx206981206982%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g197415197432%_))
                                (_%__kont206987206988%_ _%g197415197432%_)
                                (_%__kont206989206990%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx206981206982%_))
                       (let ((_%e197406197472%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx206981206982%_))))
                         (let ((_%tl197408197477%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e197406197472%_)))
                               (_%hd197407197475%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e197406197472%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd197407197475%_))
                               (let ((_%e197409197480%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd197407197475%_))))
                                 (if (equal? _%e197409197480%_ '#f)
                                     (_%__kont206983206984%_
                                      _%tl197408197477%_)
                                     (_%__kont206985206986%_
                                      _%tl197408197477%_
                                      _%hd197407197475%_)))
                               (_%__kont206985206986%_
                                _%tl197408197477%_
                                _%hd197407197475%_))))
                       (let () (declare (not safe)) (_%g197401197443%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd197343197373%_
                                                 _%hd197340197365%_)
                                                (_%g197332197349%_
                                                 _%g197333197352%_))))
                                        (_%g197332197349%_
                                         _%g197333197352%_))))
                                (_%g197332197349%_ _%g197333197352%_))))
                        (_%g197332197349%_ _%g197333197352%_)))))
            (_%g197331197496%_ _%stx197327%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self197223%_ _%stx197224%_)
        (let* ((_%g197226197243%_
                (lambda (_%g197227197240%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197227197240%_))))
               (_%g197225197323%_
                (lambda (_%g197227197246%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197227197246%_))
                      (let ((_%e197230197248%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197227197246%_))))
                        (let ((_%hd197231197251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197230197248%_)))
                              (_%tl197232197253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197230197248%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197232197253%_))
                              (let ((_%e197233197256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197232197253%_))))
                                (let ((_%hd197234197259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197233197256%_)))
                                      (_%tl197235197261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197233197256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197235197261%_))
                                      (let ((_%e197236197264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197235197261%_))))
                                        (let ((_%hd197237197267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197236197264%_)))
                                              (_%tl197238197269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197236197264%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197238197269%_))
                                              ((lambda (_%g197228197272%_
                                                        _%g197229197273%_)
                                                 (let* ((_%eid197288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g197229197273%_)))
                                                        (_%phi197290%_
                                                         (let ((__tmp207248
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp207248 '1)))
                (_%block197292%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self197223%_ 'state))
                  _%phi197290%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g197295197302%_
                                                           (lambda (_%g197296197299%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g197296197299%_))))
                  (_%g197294197320%_
                   (lambda (_%g197296197305%_)
                     ((lambda (_%g197297197307%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self197223%_ 'state))
                         _%phi197290%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g197297197307%_
                                     (cons _%g197228197272%_ '())))))
                      _%g197296197305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g197294197320%_
                                                      _%eid197288%_))
                                                   (if _%block197292%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block197292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g197229197273%_))
                                             (cons _%eid197288%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g197229197273%_))
                           (cons _%eid197288%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197237197267%_
                                               _%hd197234197259%_)
                                              (_%g197226197243%_
                                               _%g197227197246%_))))
                                      (_%g197226197243%_ _%g197227197246%_))))
                              (_%g197226197243%_ _%g197227197246%_))))
                      (_%g197226197243%_ _%g197227197246%_)))))
          (_%g197225197323%_ _%stx197224%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self197155%_ _%stx197156%_)
        (let* ((_%g197158197175%_
                (lambda (_%g197159197172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197159197172%_))))
               (_%g197157197220%_
                (lambda (_%g197159197178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197159197178%_))
                      (let ((_%e197162197180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197159197178%_))))
                        (let ((_%hd197163197183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197162197180%_)))
                              (_%tl197164197185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197162197180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197164197185%_))
                              (let ((_%e197165197188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197164197185%_))))
                                (let ((_%hd197166197191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197165197188%_)))
                                      (_%tl197167197193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197165197188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197167197193%_))
                                      (let ((_%e197168197196%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197167197193%_))))
                                        (let ((_%hd197169197199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197168197196%_)))
                                              (_%tl197170197201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197168197196%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197170197201%_))
                                              ((lambda (_%g197160197204%_
                                                        _%g197161197205%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g197161197205%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g197160197204%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197169197199%_
                                               _%hd197166197191%_)
                                              (_%g197158197175%_
                                               _%g197159197178%_))))
                                      (_%g197158197175%_ _%g197159197178%_))))
                              (_%g197158197175%_ _%g197159197178%_))))
                      (_%g197158197175%_ _%g197159197178%_)))))
          (_%g197157197220%_ _%stx197156%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self197152%_ _%stx197153%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197152%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx197153%_)
        (gxc#generate-meta-define-values% _%self197152%_ _%stx197153%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self197149%_ _%stx197150%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197149%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx197150%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp207250 (list)) (__tmp207249 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp207250
         '(src n open blocks)
         __tmp207249
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args197146%_
        (apply make-instance gxc#meta-state::t _%$args197146%_)))
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
      (lambda (_%self197132%_ _%ctx197133%_)
        (let ((_%self197136%_ _%self197132%_))
          (if (let ((__tmp207251
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197136%_))))
                (declare (not safe))
                (##fx< '4 __tmp207251))
              (begin
                (let ((__tmp207252
                       (let ((__tmp207253
                              (##structure-ref
                               _%ctx197133%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp207253))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197136%_
                   __tmp207252
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self197136%_ '1 '2 '#f '#f))
                (let ((__tmp207254
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197136%_
                   __tmp207254
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self197136%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp207255
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197136%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self197136%_
                       '4
                       __tmp207255))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp207257 (list)) (__tmp207256 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp207257
         '(ctx phi n code)
         __tmp207256
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args197007%_
        (apply make-instance gxc#meta-state-block::t _%$args197007%_)))
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
      (lambda (_%state196967%_ _%phi196968%_)
        (let* ((_%state196969196977%_ _%state196967%_)
               (_%E196971196980%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state196969196977%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K196972196989%_
                (lambda (_%open196983%_ _%n196984%_ _%src196985%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open196983%_ _%phi196968%_))
                      '#f
                      (let ((_%block-ref196987%_
                             (let ((__tmp207258 (number->string _%n196984%_)))
                               (declare (not safe))
                               (##string-append
                                _%src196985%_
                                '"~"
                                __tmp207258))))
                        (##structure-set!
                         _%state196967%_
                         (let () (declare (not safe)) (##fx+ _%n196984%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp207259
                               (let ((__tmp207260
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp207260
                                  _%phi196968%_
                                  _%n196984%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open196983%_ _%phi196968%_ __tmp207259))
                        _%block-ref196987%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state196969196977%_
                 'gxc#meta-state::t))
              (let* ((_%e196973196992%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196969196977%_
                         '1
                         '#f
                         '#f)))
                     (_%src196995%_ _%e196973196992%_)
                     (_%e196974196997%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196969196977%_
                         '2
                         '#f
                         '#f)))
                     (_%n197000%_ _%e196974196997%_)
                     (_%e196975197002%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196969196977%_
                         '3
                         '#f
                         '#f)))
                     (_%open197005%_ _%e196975197002%_))
                (_%K196972196989%_ _%open197005%_ _%n197000%_ _%src196995%_))
              (_%E196971196980%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state196961%_ _%phi196962%_ _%stx196963%_)
        (let ((_%block196965%_
               (let ((__tmp207261
                      (##structure-ref
                       _%state196961%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp207261 _%phi196962%_))))
          (##structure-set!
           _%block196965%_
           (cons _%stx196963%_
                 (##structure-ref
                  _%block196965%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state196955%_)
        (##structure-set!
         _%state196955%_
         (let ((__tmp207264
                (lambda (_%_196957%_ _%block196958%_ _%r196959%_)
                  (cons _%block196958%_ _%r196959%_)))
               (__tmp207263
                (##structure-ref _%state196955%_ '4 gxc#meta-state::t '#f))
               (__tmp207262
                (##structure-ref _%state196955%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp207264 __tmp207263 __tmp207262))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state196955%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state196908%_)
        (gxc#meta-state-end-phi! _%state196908%_)
        (let ((__tmp207266
               (lambda (_%block196910%_ _%r196911%_)
                 (let* ((_%block196912196921%_ _%block196910%_)
                        (_%E196914196924%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block196912196921%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K196915196932%_
                         (lambda (_%code196927%_
                                  _%n196928%_
                                  _%phi196929%_
                                  _%ctx196930%_)
                           (if (null? _%code196927%_)
                               _%r196911%_
                               (cons (cons _%ctx196930%_
                                           (cons _%phi196929%_
                                                 (cons _%n196928%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code196927%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r196911%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block196912196921%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e196916196935%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196912196921%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx196938%_ _%e196916196935%_)
                              (_%e196917196940%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196912196921%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi196943%_ _%e196917196940%_)
                              (_%e196918196945%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196912196921%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n196948%_ _%e196918196945%_)
                              (_%e196919196950%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196912196921%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code196953%_ _%e196919196950%_))
                         (_%K196915196932%_
                          _%code196953%_
                          _%n196948%_
                          _%phi196943%_
                          _%ctx196938%_))
                       (_%E196914196924%_)))))
              (__tmp207265
               (##structure-ref _%state196908%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp207266 '() __tmp207265))))
    (define gxc#collect-expression-refs
      (lambda (_%stx196904%_)
        (let ((_%ht196906%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht196906%_ _%stx196904%_)
          _%ht196906%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self196847%_ _%stx196848%_)
        (let* ((_%g196850196863%_
                (lambda (_%g196851196860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196851196860%_))))
               (_%g196849196901%_
                (lambda (_%g196851196866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196851196866%_))
                      (let ((_%e196853196868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196851196866%_))))
                        (let ((_%hd196854196871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196853196868%_)))
                              (_%tl196855196873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196853196868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196855196873%_))
                              (let ((_%e196856196876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196855196873%_))))
                                (let ((_%hd196857196879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196856196876%_)))
                                      (_%tl196858196881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196856196876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196858196881%_))
                                      ((lambda (_%g196852196884%_)
                                         (let* ((_%bind196896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g196852196884%_)))
                                                (_%eid196898%_
                                                 (if _%bind196896%_
                                                     (##structure-ref
                                                      _%bind196896%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g196852196884%_))))
                                                (__tmp207267
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self196847%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp207267
                                            _%eid196898%_
                                            _%eid196898%_)))
                                       _%hd196857196879%_)
                                      (_%g196850196863%_ _%g196851196866%_))))
                              (_%g196850196863%_ _%g196851196866%_))))
                      (_%g196850196863%_ _%g196851196866%_)))))
          (_%g196849196901%_ _%stx196848%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self196774%_ _%stx196775%_)
        (let* ((_%g196777196794%_
                (lambda (_%g196778196791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196778196791%_))))
               (_%g196776196844%_
                (lambda (_%g196778196797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196778196797%_))
                      (let ((_%e196781196799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196778196797%_))))
                        (let ((_%hd196782196802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196781196799%_)))
                              (_%tl196783196804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196781196799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196783196804%_))
                              (let ((_%e196784196807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196783196804%_))))
                                (let ((_%hd196785196810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196784196807%_)))
                                      (_%tl196786196812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196784196807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196786196812%_))
                                      (let ((_%e196787196815%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196786196812%_))))
                                        (let ((_%hd196788196818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196787196815%_)))
                                              (_%tl196789196820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196787196815%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196789196820%_))
                                              ((lambda (_%g196779196823%_
                                                        _%g196780196824%_)
                                                 (let* ((_%bind196839%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g196780196824%_)))
                                                        (_%eid196841%_
                                                         (if _%bind196839%_
                                                             (##structure-ref
                                                              _%bind196839%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g196780196824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp207268
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196774%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp207268
                                                      _%eid196841%_
                                                      _%eid196841%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196774%_
                                                      _%g196779196823%_))))
                                               _%hd196788196818%_
                                               _%hd196785196810%_)
                                              (_%g196777196794%_
                                               _%g196778196797%_))))
                                      (_%g196777196794%_ _%g196778196797%_))))
                              (_%g196777196794%_ _%g196778196797%_))))
                      (_%g196777196794%_ _%g196778196797%_)))))
          (_%g196776196844%_ _%stx196775%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self196731%_ _%stx196732%_)
        (let* ((_%g196734196744%_
                (lambda (_%g196735196741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196735196741%_))))
               (_%g196733196771%_
                (lambda (_%g196735196747%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196735196747%_))
                      (let ((_%e196737196749%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196735196747%_))))
                        (let ((_%hd196738196752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196737196749%_)))
                              (_%tl196739196754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196737196749%_))))
                          ((lambda (_%g196736196757%_)
                             (let ((__tmp207269
                                    (lambda (_%g196766196768%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self196731%_
                                         _%g196766196768%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp207269 _%g196736196757%_)))
                           _%tl196739196754%_)))
                      (_%g196734196744%_ _%g196735196747%_)))))
          (_%g196733196771%_ _%stx196732%_))))
    (define gxc#count-values-single%
      (lambda (_%self196728%_ _%stx196729%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self196596%_ _%stx196597%_)
        (let* ((_%__stx207011207012%_ _%stx196597%_)
               (_%g196600196629%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207011207012%_)))))
          (let ((_%__kont207013207014%_
                 (lambda (_%g196602196695%_ _%g196603196696%_)
                   (length (let ((__tmp207270
                                  (lambda (_%g196717196720%_ _%g196718196722%_)
                                    (cons _%g196717196720%_
                                          _%g196718196722%_))))
                             (declare (not safe))
                             (foldr__0 __tmp207270 '() _%g196602196695%_)))))
                (_%__kont207017207018%_ (lambda () '#f)))
            (let ((_%__match207056207057%_
                   (lambda (_%e196604196641%_
                            _%hd196605196644%_
                            _%tl196606196646%_
                            _%e196607196649%_
                            _%hd196608196652%_
                            _%tl196609196654%_
                            _%e196610196657%_
                            _%hd196611196660%_
                            _%tl196612196662%_
                            _%e196613196665%_
                            _%hd196614196668%_
                            _%tl196615196670%_
                            _%__splice207015207016%_
                            _%target196616196673%_
                            _%tl196618196675%_)
                     (letrec ((_%loop196619196678%_
                               (lambda (_%hd196617196681%_
                                        _%rand196623196683%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196617196681%_))
                                     (let ((_%e196620196685%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196617196681%_))))
                                       (let ((_%lp-tl196622196690%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196620196685%_)))
                                             (_%lp-hd196621196688%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196620196685%_))))
                                         (_%loop196619196678%_
                                          _%lp-tl196622196690%_
                                          (cons _%lp-hd196621196688%_
                                                _%rand196623196683%_))))
                                     (let ((_%rand196624196693%_
                                            (reverse _%rand196623196683%_)))
                                       (let ((_%g196602196695%_
                                              _%rand196624196693%_)
                                             (_%g196603196696%_
                                              _%hd196614196668%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g196603196696%_
                                                'values))
                                             (_%__kont207013207014%_
                                              _%g196602196695%_
                                              _%g196603196696%_)
                                             (_%__kont207017207018%_))))))))
                       (_%loop196619196678%_ _%target196616196673%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207011207012%_))
                  (let ((_%e196604196641%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx207011207012%_))))
                    (let ((_%tl196606196646%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196604196641%_)))
                          (_%hd196605196644%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196604196641%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196606196646%_))
                          (let ((_%e196607196649%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196606196646%_))))
                            (let ((_%tl196609196654%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196607196649%_)))
                                  (_%hd196608196652%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196607196649%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196608196652%_))
                                  (let ((_%e196610196657%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196608196652%_))))
                                    (let ((_%tl196612196662%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196610196657%_)))
                                          (_%hd196611196660%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196610196657%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196611196660%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196611196660%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196612196662%_))
                                                  (let ((_%e196613196665%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196612196662%_))))
                                                    (let ((_%tl196615196670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196613196665%_)))
                                                          (_%hd196614196668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196613196665%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196615196670%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196609196654%_))
                      (let ((_%__splice207015207016%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl196609196654%_
                                '0))))
                        (let ((_%tl196618196675%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207015207016%_ '1)))
                              (_%target196616196673%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207015207016%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196618196675%_))
                              (_%__match207056207057%_
                               _%e196604196641%_
                               _%hd196605196644%_
                               _%tl196606196646%_
                               _%e196607196649%_
                               _%hd196608196652%_
                               _%tl196609196654%_
                               _%e196610196657%_
                               _%hd196611196660%_
                               _%tl196612196662%_
                               _%e196613196665%_
                               _%hd196614196668%_
                               _%tl196615196670%_
                               _%__splice207015207016%_
                               _%target196616196673%_
                               _%tl196618196675%_)
                              (_%__kont207017207018%_))))
                      (_%__kont207017207018%_))
                  (_%__kont207017207018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207017207018%_))
                                              (_%__kont207017207018%_))
                                          (_%__kont207017207018%_))))
                                  (_%__kont207017207018%_))))
                          (_%__kont207017207018%_))))
                  (_%__kont207017207018%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self196501%_ _%stx196502%_)
        (let* ((_%g196504196525%_
                (lambda (_%g196505196522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196505196522%_))))
               (_%g196503196593%_
                (lambda (_%g196505196528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196505196528%_))
                      (let ((_%e196509196530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196505196528%_))))
                        (let ((_%hd196510196533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196509196530%_)))
                              (_%tl196511196535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196509196530%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196511196535%_))
                              (let ((_%e196512196538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196511196535%_))))
                                (let ((_%hd196513196541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196512196538%_)))
                                      (_%tl196514196543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196512196538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196514196543%_))
                                      (let ((_%e196515196546%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196514196543%_))))
                                        (let ((_%hd196516196549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196515196546%_)))
                                              (_%tl196517196551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196515196546%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196517196551%_))
                                              (let ((_%e196518196554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196517196551%_))))
                                                (let ((_%hd196519196557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196518196554%_)))
                                                      (_%tl196520196559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196518196554%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196520196559%_))
                                                      ((lambda (_%g196506196562%_
                                                                _%g196507196563%_
                                                                _%g196508196564%_)
                                                         (let ((_%c1196581196583%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self196501%_
                           _%g196507196563%_))))
                   (if _%c1196581196583%_
                       (let* ((_%c1196585%_ _%c1196581196583%_)
                              (_%c2196586196588%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self196501%_
                                  _%g196506196562%_))))
                         (if _%c2196586196588%_
                             (let ((_%c2196590%_ _%c2196586196588%_))
                               (if (fx= _%c1196585%_ _%c2196590%_)
                                   _%c1196585%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd196519196557%_
               _%hd196516196549%_
               _%hd196513196541%_)
              (_%g196504196525%_ _%g196505196528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196504196525%_
                                               _%g196505196528%_))))
                                      (_%g196504196525%_ _%g196505196528%_))))
                              (_%g196504196525%_ _%g196505196528%_))))
                      (_%g196504196525%_ _%g196505196528%_)))))
          (_%g196503196593%_ _%stx196502%_))))))
