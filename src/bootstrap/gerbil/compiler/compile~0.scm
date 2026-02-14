(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771101404)
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
      (let ((__tmp206153 (list gxc#::void::t))
            (__tmp206152 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp206153
         '()
         __tmp206152
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args204767%_
        (apply make-instance gxc#::collect-bindings::t _%$args204767%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp206154
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
        (__make-atomic-promise __tmp206154)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx204759%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self204762%_
                (let ((__obj206128
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj206128))
               (__tmp206155
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204762%_ _%stx204759%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206155
           gxc#current-compile-method
           _%self204762%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp206157 (list gxc#::void::t))
            (__tmp206156 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp206157
         '(modules)
         __tmp206156
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args204756%_
        (apply make-instance gxc#::lift-modules::t _%$args204756%_)))
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
      (let ((__tmp206158
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
        (__make-atomic-promise __tmp206158)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords204731%_ _%modules204728204732%_ _%stx204733%_)
        (let ((_%modules204736%_
               (if (eq? _%modules204728204732%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules204728204732%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self204738%_
                  (let ((__obj206130
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206130
                       _%modules204736%_
                       '1
                       '#f
                       '#f))
                    __obj206130))
                 (__tmp206159
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204738%_ _%stx204733%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206159
             gxc#current-compile-method
             _%self204738%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords204745%_ . _%args204746%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords204745%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204745%_
                  'modules:
                  absent-value))
               _%args204746%_)))
    (define gxc#apply-lift-modules
      (lambda _%args204729204752%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args204729204752%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp206161 (list)) (__tmp206160 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp206161
         '()
         __tmp206160
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args204724%_
        (apply make-instance gxc#::find-runtime-code::t _%$args204724%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp206162
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
        (__make-atomic-promise __tmp206162)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx204716%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self204719%_
                (let ((__obj206132
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj206132))
               (__tmp206163
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204719%_ _%stx204716%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206163
           gxc#current-compile-method
           _%self204719%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp206165 (list gxc#::false::t))
            (__tmp206164 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp206165
         '()
         __tmp206164
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args204713%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args204713%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp206166
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
        (__make-atomic-promise __tmp206166)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx204705%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self204708%_
                (let ((__obj206134
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj206134))
               (__tmp206167
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204708%_ _%stx204705%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206167
           gxc#current-compile-method
           _%self204708%_))))
    (define gxc#::count-values::t
      (let ((__tmp206169 (list gxc#::false-expression::t))
            (__tmp206168 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp206169
         '()
         __tmp206168
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args204702%_
        (apply make-instance gxc#::count-values::t _%$args204702%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp206170
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
        (__make-atomic-promise __tmp206170)))
    (define gxc#apply-count-values
      (lambda (_%stx204694%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self204697%_
                (let ((__obj206136
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj206136))
               (__tmp206171
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204697%_ _%stx204694%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206171
           gxc#current-compile-method
           _%self204697%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp206172 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp206172
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args204691%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args204691%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp206173
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
        (__make-atomic-promise __tmp206173)))
    (define gxc#::generate-loader::t
      (let ((__tmp206175 (list gxc#::generate-runtime-empty::t))
            (__tmp206174 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp206175
         '()
         __tmp206174
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args204687%_
        (apply make-instance gxc#::generate-loader::t _%$args204687%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp206176
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
        (__make-atomic-promise __tmp206176)))
    (define gxc#apply-generate-loader
      (lambda (_%stx204679%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self204682%_
                (let ((__obj206139
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj206139))
               (__tmp206177
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204682%_ _%stx204679%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206177
           gxc#current-compile-method
           _%self204682%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp206178 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp206178
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args204676%_
        (apply make-instance gxc#::generate-runtime::t _%$args204676%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp206179
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
        (__make-atomic-promise __tmp206179)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx204668%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self204671%_
                (let ((__obj206141
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj206141))
               (__tmp206180
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204671%_ _%stx204668%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206180
           gxc#current-compile-method
           _%self204671%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp206182 (list gxc#::generate-runtime::t))
            (__tmp206181 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp206182
         '()
         __tmp206181
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args204665%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args204665%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp206183
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
        (__make-atomic-promise __tmp206183)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx204657%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self204660%_
                (let ((__obj206143
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj206143))
               (__tmp206184
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204660%_ _%stx204657%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206184
           gxc#current-compile-method
           _%self204660%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp206185 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp206185
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args204654%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args204654%_)))
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
      (let ((__tmp206186
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
        (__make-atomic-promise __tmp206186)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords204629%_ _%table204626204630%_ _%stx204631%_)
        (let ((_%table204634%_
               (if (eq? _%table204626204630%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table204626204630%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self204636%_
                  (let ((__obj206145
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206145
                       _%table204634%_
                       '1
                       '#f
                       '#f))
                    __obj206145))
                 (__tmp206187
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204636%_ _%stx204631%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206187
             gxc#current-compile-method
             _%self204636%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords204643%_ . _%args204644%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords204643%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204643%_
                  'table:
                  absent-value))
               _%args204644%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args204627204650%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args204627204650%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp206189 (list gxc#::void-expression::t))
            (__tmp206188 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp206189
         '(state)
         __tmp206188
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args204622%_
        (apply make-instance gxc#::generate-meta::t _%$args204622%_)))
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
      (let ((__tmp206190
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
        (__make-atomic-promise __tmp206190)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords204597%_ _%state204594204598%_ _%stx204599%_)
        (let ((_%state204602%_
               (if (eq? _%state204594204598%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204594204598%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self204604%_
                  (let ((__obj206147
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206147
                       _%state204602%_
                       '1
                       '#f
                       '#f))
                    __obj206147))
                 (__tmp206191
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204604%_ _%stx204599%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206191
             gxc#current-compile-method
             _%self204604%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords204611%_ . _%args204612%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords204611%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204611%_
                  'state:
                  absent-value))
               _%args204612%_)))
    (define gxc#apply-generate-meta
      (lambda _%args204595204618%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args204595204618%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp206193 (list)) (__tmp206192 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp206193
         '(state)
         __tmp206192
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args204590%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args204590%_)))
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
      (let ((__tmp206194
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
        (__make-atomic-promise __tmp206194)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords204565%_ _%state204562204566%_ _%stx204567%_)
        (let ((_%state204570%_
               (if (eq? _%state204562204566%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204562204566%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self204572%_
                  (let ((__obj206149
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206149
                       _%state204570%_
                       '1
                       '#f
                       '#f))
                    __obj206149))
                 (__tmp206195
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204572%_ _%stx204567%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206195
             gxc#current-compile-method
             _%self204572%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords204579%_ . _%args204580%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords204579%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204579%_
                  'state:
                  absent-value))
               _%args204580%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args204563204586%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args204563204586%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self204491%_ _%stx204492%_)
        (let* ((_%g204494204511%_
                (lambda (_%g204495204508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204495204508%_))))
               (_%g204493204558%_
                (lambda (_%g204495204514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204495204514%_))
                      (let ((_%e204498204516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204495204514%_))))
                        (let ((_%hd204499204519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204498204516%_)))
                              (_%tl204500204521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204498204516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204500204521%_))
                              (let ((_%e204501204524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204500204521%_))))
                                (let ((_%hd204502204527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204501204524%_)))
                                      (_%tl204503204529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204501204524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204503204529%_))
                                      (let ((_%e204504204532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204503204529%_))))
                                        (let ((_%hd204505204535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204504204532%_)))
                                              (_%tl204506204537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204504204532%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204506204537%_))
                                              ((lambda (_%g204496204540%_
                                                        _%g204497204541%_)
                                                 (let ((__tmp206196
                                                        (lambda (_%bind204556%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind204556%_))
                      (gxc#add-module-binding! _%bind204556%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp206196
                                                    _%g204497204541%_)))
                                               _%hd204505204535%_
                                               _%hd204502204527%_)
                                              (_%g204494204511%_
                                               _%g204495204514%_))))
                                      (_%g204494204511%_ _%g204495204514%_))))
                              (_%g204494204511%_ _%g204495204514%_))))
                      (_%g204494204511%_ _%g204495204514%_)))))
          (_%g204493204558%_ _%stx204492%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self204423%_ _%stx204424%_)
        (let* ((_%g204426204443%_
                (lambda (_%g204427204440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204427204440%_))))
               (_%g204425204488%_
                (lambda (_%g204427204446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204427204446%_))
                      (let ((_%e204430204448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204427204446%_))))
                        (let ((_%hd204431204451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204430204448%_)))
                              (_%tl204432204453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204430204448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204432204453%_))
                              (let ((_%e204433204456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204432204453%_))))
                                (let ((_%hd204434204459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204433204456%_)))
                                      (_%tl204435204461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204433204456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204435204461%_))
                                      (let ((_%e204436204464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204435204461%_))))
                                        (let ((_%hd204437204467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204436204464%_)))
                                              (_%tl204438204469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204436204464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204438204469%_))
                                              ((lambda (_%g204428204472%_
                                                        _%g204429204473%_)
                                                 (gxc#add-module-binding!
                                                  _%g204429204473%_
                                                  '#t))
                                               _%hd204437204467%_
                                               _%hd204434204459%_)
                                              (_%g204426204443%_
                                               _%g204427204446%_))))
                                      (_%g204426204443%_ _%g204427204446%_))))
                              (_%g204426204443%_ _%g204427204446%_))))
                      (_%g204426204443%_ _%g204427204446%_)))))
          (_%g204425204488%_ _%stx204424%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self204365%_ _%stx204366%_)
        (let* ((_%g204368204382%_
                (lambda (_%g204369204379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204369204379%_))))
               (_%g204367204420%_
                (lambda (_%g204369204385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204369204385%_))
                      (let ((_%e204372204387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204369204385%_))))
                        (let ((_%hd204373204390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204372204387%_)))
                              (_%tl204374204392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204372204387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204374204392%_))
                              (let ((_%e204375204395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204374204392%_))))
                                (let ((_%hd204376204398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204375204395%_)))
                                      (_%tl204377204400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204375204395%_))))
                                  ((lambda (_%g204370204403%_
                                            _%g204371204404%_)
                                     (let ((_%ctx204417%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g204371204404%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self204365%_
                                           'modules))
                                        (cons _%ctx204417%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self204365%_
                                                        'modules)))))
                                       (let ((__tmp206197
                                              (lambda ()
                                                (let ((__tmp206198
                                                       (##structure-ref
                                                        _%ctx204417%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204365%_
                                                   __tmp206198)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp206197
                                          gx#current-expander-context
                                          _%ctx204417%_))))
                                   _%tl204377204400%_
                                   _%hd204376204398%_)))
                              (_%g204368204382%_ _%g204369204385%_))))
                      (_%g204368204382%_ _%g204369204385%_)))))
          (_%g204367204420%_ _%stx204366%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls204319204321%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls204319204321%_
              (let ((_%decls204323%_ _%decls204319204321%_))
                (let _%lp204325%_ ((_%rest204327%_ _%decls204323%_))
                  (let* ((_%rest204328204336%_ _%rest204327%_)
                         (_%else204330204344%_ (lambda () '#f))
                         (_%K204332204353%_
                          (lambda (_%decls204347%_ _%decl204348%_)
                            (if (equal? _%decl204348%_ '(not safe))
                                '#t
                                (if (equal? _%decl204348%_ '(safe))
                                    '#f
                                    (_%lp204325%_ _%decls204347%_))))))
                    (if (pair? _%rest204328204336%_)
                        (let ((_%hd204333204356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest204328204336%_)))
                              (_%tl204334204358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest204328204336%_))))
                          (let* ((_%decl204361%_ _%hd204333204356%_)
                                 (_%decls204363%_ _%tl204334204358%_))
                            (_%K204332204353%_
                             _%decls204363%_
                             _%decl204361%_)))
                        (_%else204330204344%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id204313%_ _%syntax?204314%_)
        (let ((_%eid204316%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id204313%_))
                '1
                gx#binding::t
                '#f))
              (_%ht204317%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid204316%_))
              '#!void
              (let ((__tmp206199
                     (let ((__tmp206200
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid204316%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp206200 _%syntax?204314%_))))
                (declare (not safe))
                (hash-put! _%ht204317%_ _%eid204316%_ __tmp206199))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self204310%_ _%stx204311%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self204157%_ _%stx204158%_)
        (letrec ((_%simplify204160%_
                  (lambda (_%body204208%_)
                    (let _%lp204210%_ ((_%rest204212%_ _%body204208%_)
                                       (_%r204213%_ '()))
                      (let* ((_%rest204214204222%_ _%rest204212%_)
                             (_%else204216204230%_
                              (lambda () (reverse _%r204213%_)))
                             (_%K204218204298%_
                              (lambda (_%rest204233%_ _%hd204234%_)
                                (let* ((_%hd204235204251%_ _%hd204234%_)
                                       (_%else204239204259%_
                                        (lambda ()
                                          (_%lp204210%_
                                           _%rest204233%_
                                           (cons _%hd204234%_ _%r204213%_)))))
                                  (let ((_%K204247204288%_
                                         (lambda (_%exprs204286%_)
                                           (_%lp204210%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest204233%_
                                               _%exprs204286%_))
                                            _%r204213%_)))
                                        (_%K204242204272%_
                                         (lambda ()
                                           (if (null? _%rest204233%_)
                                               (_%lp204210%_
                                                _%rest204233%_
                                                (cons _%hd204234%_
                                                      _%r204213%_))
                                               (_%lp204210%_
                                                _%rest204233%_
                                                _%r204213%_))))
                                        (_%K204241204264%_
                                         (lambda ()
                                           (if (null? _%rest204233%_)
                                               (_%lp204210%_
                                                _%rest204233%_
                                                (cons _%hd204234%_
                                                      _%r204213%_))
                                               (_%lp204210%_
                                                _%rest204233%_
                                                _%r204213%_)))))
                                    (let ((_%try-match204238204267%_
                                           (lambda ()
                                             (if (symbol? _%hd204235204251%_)
                                                 (_%K204241204264%_)
                                                 (_%else204239204259%_)))))
                                      (if (pair? _%hd204235204251%_)
                                          (let ((_%tl204249204293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd204235204251%_)))
                                                (_%hd204248204291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd204235204251%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd204248204291%_
                                                         'begin))
                                                (let ((_%exprs204296%_
                                                       _%tl204249204293%_))
                                                  (_%K204247204288%_
                                                   _%exprs204296%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd204248204291%_
                                                             'quote))
                                                    (if (pair? _%tl204249204293%_)
                                                        (let ((_%tl204246204280%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl204249204293%_))))
                  (if (null? _%tl204246204280%_)
                      (_%K204242204272%_)
                      (_%try-match204238204267%_)))
                (_%try-match204238204267%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match204238204267%_))))
                                          (_%try-match204238204267%_))))))))
                        (if (pair? _%rest204214204222%_)
                            (let ((_%hd204219204301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest204214204222%_)))
                                  (_%tl204220204303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest204214204222%_))))
                              (let* ((_%hd204306%_ _%hd204219204301%_)
                                     (_%rest204308%_ _%tl204220204303%_))
                                (_%K204218204298%_
                                 _%rest204308%_
                                 _%hd204306%_)))
                            (_%else204216204230%_)))))))
          (let* ((_%g204162204172%_
                  (lambda (_%g204163204169%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g204163204169%_))))
                 (_%g204161204205%_
                  (lambda (_%g204163204175%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g204163204175%_))
                        (let ((_%e204165204177%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g204163204175%_))))
                          (let ((_%hd204166204180%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204165204177%_)))
                                (_%tl204167204182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204165204177%_))))
                            ((lambda (_%g204164204185%_)
                               (let* ((_%body204200%_
                                       (map (lambda (_%g204195204197%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204157%_
                                                 _%g204195204197%_)))
                                            _%g204164204185%_))
                                      (_%body204202%_
                                       (_%simplify204160%_ _%body204200%_)))
                                 (if (let ((__tmp206201
                                            (length _%body204202%_)))
                                       (declare (not safe))
                                       (##fx= __tmp206201 '1))
                                     (car _%body204202%_)
                                     (cons 'begin _%body204202%_))))
                             _%tl204167204182%_)))
                        (_%g204162204172%_ _%g204163204175%_)))))
            (_%g204161204205%_ _%stx204158%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self204118%_ _%stx204119%_)
        (let* ((_%g204121204131%_
                (lambda (_%g204122204128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204122204128%_))))
               (_%g204120204154%_
                (lambda (_%g204122204134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204122204134%_))
                      (let ((_%e204124204136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204122204134%_))))
                        (let ((_%hd204125204139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204124204136%_)))
                              (_%tl204126204141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204124204136%_))))
                          ((lambda (_%g204123204144%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g204123204144%_))))
                           _%tl204126204141%_)))
                      (_%g204121204131%_ _%g204122204134%_)))))
          (_%g204120204154%_ _%stx204119%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self203884%_ _%stx203885%_)
        (let* ((_%__stx204791204792%_ _%stx203885%_)
               (_%g203889203941%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204791204792%_)))))
          (let ((_%__kont204793204794%_
                 (lambda (_%g203891204100%_ _%g203892204101%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self203884%_ _%g203891204100%_))))
                (_%__kont204795204796%_
                 (lambda (_%g203902204048%_
                          _%g203903204049%_
                          _%g203904204050%_)
                   (if (let ((__tmp206202
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g203904204050%_))))
                         (declare (not safe))
                         (##memq __tmp206202 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self203884%_
                          _%g203902204048%_)))))
                (_%__kont204799204800%_
                 (lambda (_%g203926203970%_ _%g203927203971%_)
                   (let ((_%decls203986%_
                          (map gx#syntax->datum _%g203927203971%_)))
                     (let ((__tmp206205
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls203986%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203884%_
                                                   _%g203926203970%_))
                                                '())))))
                           (__tmp206203
                            (let ((__tmp206204
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp206204 _%decls203986%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp206205
                        gxc#current-compile-decls
                        __tmp206203))))))
            (let* ((_%__match204846204847%_
                    (lambda (_%e203905203994%_
                             _%hd203906203997%_
                             _%tl203907203999%_
                             _%e203908204002%_
                             _%hd203909204005%_
                             _%tl203910204007%_
                             _%e203911204010%_
                             _%hd203912204013%_
                             _%tl203913204015%_
                             _%__splice204797204798%_
                             _%target203914204018%_
                             _%tl203916204020%_)
                      (letrec ((_%loop203917204023%_
                                (lambda (_%hd203915204026%_
                                         _%param203921204028%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203915204026%_))
                                      (let ((_%e203918204030%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203915204026%_))))
                                        (let ((_%lp-tl203920204035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203918204030%_)))
                                              (_%lp-hd203919204033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203918204030%_))))
                                          (_%loop203917204023%_
                                           _%lp-tl203920204035%_
                                           (cons _%lp-hd203919204033%_
                                                 _%param203921204028%_))))
                                      (let ((_%param203922204038%_
                                             (reverse _%param203921204028%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203910204007%_))
                                            (let ((_%e203923204040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203910204007%_))))
                                              (let ((_%tl203925204045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203923204040%_)))
                                                    (_%hd203924204043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203923204040%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203925204045%_))
                                                    (let ((_%g203902204048%_
                                                           _%hd203924204043%_)
                                                          (_%g203903204049%_
                                                           _%param203922204038%_)
                                                          (_%g203904204050%_
                                                           _%hd203912204013%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g203904204050%_))
                       (not (let ((__tmp206206
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g203904204050%_))))
                              (declare (not safe))
                              (##memq __tmp206206 gxc#gambit-annotations))))
                  (_%__kont204795204796%_
                   _%g203902204048%_
                   _%g203903204049%_
                   _%g203904204050%_)
                  (_%__kont204799204800%_
                   _%hd203924204043%_
                   _%hd203909204005%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203889203941%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203889203941%_))))))))
                        (_%loop203917204023%_ _%target203914204018%_ '()))))
                   (_%__match204820204821%_
                    (lambda (_%e203893204076%_
                             _%hd203894204079%_
                             _%tl203895204081%_
                             _%e203896204084%_
                             _%hd203897204087%_
                             _%tl203898204089%_
                             _%e203899204092%_
                             _%hd203900204095%_
                             _%tl203901204097%_)
                      (let ((_%g203891204100%_ _%hd203900204095%_)
                            (_%g203892204101%_ _%hd203897204087%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g203892204101%_))
                            (_%__kont204793204794%_
                             _%g203891204100%_
                             _%g203892204101%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203897204087%_))
                                (let ((_%e203911204010%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd203897204087%_))))
                                  (let ((_%tl203913204015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203911204010%_)))
                                        (_%hd203912204013%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203911204010%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl203913204015%_))
                                        (let ((_%__splice204797204798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl203913204015%_
                                                  '0))))
                                          (let ((_%tl203916204020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204797204798%_
                                                    '1)))
                                                (_%target203914204018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204797204798%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203916204020%_))
                                                (_%__match204846204847%_
                                                 _%e203893204076%_
                                                 _%hd203894204079%_
                                                 _%tl203895204081%_
                                                 _%e203896204084%_
                                                 _%hd203897204087%_
                                                 _%tl203898204089%_
                                                 _%e203911204010%_
                                                 _%hd203912204013%_
                                                 _%tl203913204015%_
                                                 _%__splice204797204798%_
                                                 _%target203914204018%_
                                                 _%tl203916204020%_)
                                                (_%__kont204799204800%_
                                                 _%hd203900204095%_
                                                 _%hd203897204087%_))))
                                        (_%__kont204799204800%_
                                         _%hd203900204095%_
                                         _%hd203897204087%_))))
                                (_%__kont204799204800%_
                                 _%hd203900204095%_
                                 _%hd203897204087%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204791204792%_))
                  (let ((_%e203893204076%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204791204792%_))))
                    (let ((_%tl203895204081%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203893204076%_)))
                          (_%hd203894204079%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203893204076%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203895204081%_))
                          (let ((_%e203896204084%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203895204081%_))))
                            (let ((_%tl203898204089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203896204084%_)))
                                  (_%hd203897204087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203896204084%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203898204089%_))
                                  (let ((_%e203899204092%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203898204089%_))))
                                    (let ((_%tl203901204097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203899204092%_)))
                                          (_%hd203900204095%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203899204092%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203901204097%_))
                                          (_%__match204820204821%_
                                           _%e203893204076%_
                                           _%hd203894204079%_
                                           _%tl203895204081%_
                                           _%e203896204084%_
                                           _%hd203897204087%_
                                           _%tl203898204089%_
                                           _%e203899204092%_
                                           _%hd203900204095%_
                                           _%tl203901204097%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203897204087%_))
                                              (let ((_%e203911204010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203897204087%_))))
                                                (let ((_%tl203913204015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203911204010%_)))
                                                      (_%hd203912204013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203911204010%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203913204015%_))
                                                      (let ((_%__splice204797204798%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl203913204015%_
                        '0))))
                (let ((_%tl203916204020%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204797204798%_ '1)))
                      (_%target203914204018%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204797204798%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203916204020%_))
                      (_%__match204846204847%_
                       _%e203893204076%_
                       _%hd203894204079%_
                       _%tl203895204081%_
                       _%e203896204084%_
                       _%hd203897204087%_
                       _%tl203898204089%_
                       _%e203911204010%_
                       _%hd203912204013%_
                       _%tl203913204015%_
                       _%__splice204797204798%_
                       _%target203914204018%_
                       _%tl203916204020%_)
                      (let () (declare (not safe)) (_%g203889203941%_)))))
              (let () (declare (not safe)) (_%g203889203941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203889203941%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203897204087%_))
                                      (let ((_%e203911204010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203897204087%_))))
                                        (let ((_%tl203913204015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203911204010%_)))
                                              (_%hd203912204013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203911204010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203913204015%_))
                                              (let ((_%__splice204797204798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl203913204015%_
                                                        '0))))
                                                (let ((_%tl203916204020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204797204798%_
                                                          '1)))
                                                      (_%target203914204018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204797204798%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203916204020%_))
                                                      (_%__match204846204847%_
                                                       _%e203893204076%_
                                                       _%hd203894204079%_
                                                       _%tl203895204081%_
                                                       _%e203896204084%_
                                                       _%hd203897204087%_
                                                       _%tl203898204089%_
                                                       _%e203911204010%_
                                                       _%hd203912204013%_
                                                       _%tl203913204015%_
                                                       _%__splice204797204798%_
                                                       _%target203914204018%_
                                                       _%tl203916204020%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203889203941%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203889203941%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203889203941%_))))))
                          (let () (declare (not safe)) (_%g203889203941%_)))))
                  (let () (declare (not safe)) (_%g203889203941%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self203843%_ _%stx203844%_)
        (let* ((_%g203846203856%_
                (lambda (_%g203847203853%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203847203853%_))))
               (_%g203845203881%_
                (lambda (_%g203847203859%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203847203859%_))
                      (let ((_%e203849203861%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203847203859%_))))
                        (let ((_%hd203850203864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203849203861%_)))
                              (_%tl203851203866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203849203861%_))))
                          ((lambda (_%g203848203869%_)
                             (let ((_%decls203879%_
                                    (map gx#syntax->datum _%g203848203869%_)))
                               (let ((__tmp206207
                                      (let ((__tmp206208
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp206208
                                         _%decls203879%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp206207))
                               (cons 'declare _%decls203879%_)))
                           _%tl203851203866%_)))
                      (_%g203846203856%_ _%g203847203859%_)))))
          (_%g203845203881%_ _%stx203844%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self203590%_ _%stx203591%_)
        (let* ((_%g203593203610%_
                (lambda (_%g203594203607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203594203607%_))))
               (_%g203592203840%_
                (lambda (_%g203594203613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203594203613%_))
                      (let ((_%e203597203615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203594203613%_))))
                        (let ((_%hd203598203618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203597203615%_)))
                              (_%tl203599203620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203597203615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203599203620%_))
                              (let ((_%e203600203623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203599203620%_))))
                                (let ((_%hd203601203626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203600203623%_)))
                                      (_%tl203602203628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203600203623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203602203628%_))
                                      (let ((_%e203603203631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203602203628%_))))
                                        (let ((_%hd203604203634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203603203631%_)))
                                              (_%tl203605203636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203603203631%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203605203636%_))
                                              ((lambda (_%g203595203639%_
                                                        _%g203596203640%_)
                                                 (let* ((_%__stx204899204900%_
                                                         _%g203596203640%_)
                                                        (_%g203657203671%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx204899204900%_)))))
                                                   (let ((_%__kont204901204902%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self203590%_
                                                               _%g203595203639%_))))
                                                         (_%__kont204903204904%_
                                                          (lambda (_%g203663203803%_)
                                                            (let ((_%eid203812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g203663203803%_))))
                      (let ((_%lambda-expr203813203815%_
                             (gxc#apply-find-lambda-expression
                              _%g203595203639%_)))
                        (if _%lambda-expr203813203815%_
                            (let* ((_%lambda-expr203817%_
                                    _%lambda-expr203813203815%_)
                                   (__tmp206209
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206209
                               _%lambda-expr203817%_
                               _%eid203812%_))
                            '#f))
                      (cons 'define
                            (cons _%eid203812%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self203590%_
                                           _%g203595203639%_))
                                        '()))))))
                 (_%__kont204905204906%_
                  (lambda ()
                    (let* ((_%tmp203678%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body203787%_
                            (let _%lp203680%_ ((_%rest203682%_
                                                _%g203596203640%_)
                                               (_%k203683%_ '0)
                                               (_%r203684%_ '()))
                              (let* ((_%__stx204869204870%_ _%rest203682%_)
                                     (_%g203689203706%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx204869204870%_)))))
                                (let ((_%__kont204871204872%_
                                       (lambda (_%g203691203774%_)
                                         (_%lp203680%_
                                          _%g203691203774%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203683%_ '1))
                                          _%r203684%_)))
                                      (_%__kont204873204874%_
                                       (lambda (_%g203696203747%_
                                                _%g203697203748%_)
                                         (_%lp203680%_
                                          _%g203696203747%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203683%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g203697203748%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp203678%_
                           _%k203683%_
                           _%g203696203747%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r203684%_))))
                                      (_%__kont204875204876%_
                                       (lambda (_%g203701203718%_)
                                         (let ((__tmp206210
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g203701203718%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp203678%_
                                 _%k203683%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp206210
                                            _%r203684%_))))
                                      (_%__kont204877204878%_
                                       (lambda () (reverse _%r203684%_))))
                                  (let ((_%g203687203734%_
                                         (lambda ()
                                           (let ((_%g203701203718%_
                                                  _%__stx204869204870%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g203701203718%_))
                                                 (_%__kont204875204876%_
                                                  _%g203701203718%_)
                                                 (_%__kont204877204878%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx204869204870%_))
                                        (let ((_%e203692203763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx204869204870%_))))
                                          (let ((_%tl203694203768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203692203763%_)))
                                                (_%hd203693203766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203692203763%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd203693203766%_))
                                                (let ((_%e203695203771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203693203766%_))))
                                                  (if (equal? _%e203695203771%_
                                                              '#f)
                                                      (_%__kont204871204872%_
                                                       _%tl203694203768%_)
                                                      (_%__kont204873204874%_
                                                       _%tl203694203768%_
                                                       _%hd203693203766%_)))
                                                (_%__kont204873204874%_
                                                 _%tl203694203768%_
                                                 _%hd203693203766%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g203687203734%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp203678%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203590%_
                                                       _%g203595203639%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp203678%_
                                         _%g203596203640%_
                                         _%g203595203639%_)
                                        _%body203787%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx204899204900%_))
                                                         (let ((_%e203659203824%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx204899204900%_))))
                   (let ((_%tl203661203829%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e203659203824%_)))
                         (_%hd203660203827%_
                          (let ()
                            (declare (not safe))
                            (##car _%e203659203824%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd203660203827%_))
                         (let ((_%e203662203832%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd203660203827%_))))
                           (if (equal? _%e203662203832%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203661203829%_))
                                   (_%__kont204901204902%_)
                                   (_%__kont204905204906%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203661203829%_))
                                   (_%__kont204903204904%_ _%hd203660203827%_)
                                   (_%__kont204905204906%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl203661203829%_))
                             (_%__kont204903204904%_ _%hd203660203827%_)
                             (_%__kont204905204906%_)))))
                 (_%__kont204905204906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203604203634%_
                                               _%hd203601203626%_)
                                              (_%g203593203610%_
                                               _%g203594203613%_))))
                                      (_%g203593203610%_ _%g203594203613%_))))
                              (_%g203593203610%_ _%g203594203613%_))))
                      (_%g203593203610%_ _%g203594203613%_)))))
          (_%g203592203840%_ _%stx203591%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals203565%_ _%hd203566%_ _%expr203567%_)
        (let ((_%$e203569%_ (gxc#apply-count-values _%expr203567%_)))
          (if _%$e203569%_
              ((lambda (_%count203572%_)
                 (let ((_%len203574%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd203566%_)))
                       (_%cmp203575%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd203566%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len203574%_ '0))
                           (_%cmp203575%_ _%count203572%_ _%len203574%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr203567%_
                          _%hd203566%_)))))
               _%$e203569%_)
              (let* ((_%len203581%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd203566%_)))
                     (_%cmp203583%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd203566%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg203585%_
                      (let ((__tmp206212
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd203566%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp206211 (number->string _%len203581%_)))
                        (declare (not safe))
                        (##string-append __tmp206212 __tmp206211 '" values")))
                     (_%count203587%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd203566%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len203581%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count203587%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals203565%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp203583%_
                                (cons _%count203587%_
                                      (cons _%len203581%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp203583%_
                                                        (cons _%count203587%_
                                                              (cons _%len203581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg203585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count203587%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var203560%_)
        (letrec ((_%generate-inline203562%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var203560%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var203560%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203562%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203562%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var203553%_ _%i203554%_ _%rest203555%_)
        (letrec ((_%generate-inline203557%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i203554%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest203555%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var203553%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var203553%_
                                                      (cons '0 '())))
                                          (cons _%var203553%_ '()))))
                        (cons '##values-ref
                              (cons _%var203553%_ (cons _%i203554%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203557%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203557%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var203547%_ _%i203548%_)
        (if (let () (declare (not safe)) (##fx= _%i203548%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var203547%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var203547%_ '()))
                                  (cons (cons 'list (cons _%var203547%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var203547%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var203547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var203547%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i203548%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var203547%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var203547%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var203547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var203547%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var203547%_ '()))
                                (cons _%i203548%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var203547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i203548%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self203479%_ _%stx203480%_)
        (let* ((_%g203482203499%_
                (lambda (_%g203483203496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203483203496%_))))
               (_%g203481203544%_
                (lambda (_%g203483203502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203483203502%_))
                      (let ((_%e203486203504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203483203502%_))))
                        (let ((_%hd203487203507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203486203504%_)))
                              (_%tl203488203509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203486203504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203488203509%_))
                              (let ((_%e203489203512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203488203509%_))))
                                (let ((_%hd203490203515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203489203512%_)))
                                      (_%tl203491203517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203489203512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203491203517%_))
                                      (let ((_%e203492203520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203491203517%_))))
                                        (let ((_%hd203493203523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203492203520%_)))
                                              (_%tl203494203525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203492203520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203494203525%_))
                                              ((lambda (_%g203484203528%_
                                                        _%g203485203529%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self203479%_
                                                  _%g203485203529%_
                                                  _%g203484203528%_))
                                               _%hd203493203523%_
                                               _%hd203490203515%_)
                                              (_%g203482203499%_
                                               _%g203483203502%_))))
                                      (_%g203482203499%_ _%g203483203502%_))))
                              (_%g203482203499%_ _%g203483203502%_))))
                      (_%g203482203499%_ _%g203483203502%_)))))
          (_%g203481203544%_ _%stx203480%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self203438%_ _%hd203439%_ _%body203440%_)
        (let* ((_%hd203442%_ (gxc#generate-runtime-lambda-head _%hd203439%_))
               (_%body203444%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self203438%_ _%body203440%_)))
               (_%body203476%_
                (let* ((_%body203445203453%_ _%body203444%_)
                       (_%else203447203461%_
                        (lambda () (cons _%body203444%_ '())))
                       (_%K203449203466%_
                        (lambda (_%exprs203464%_) _%exprs203464%_)))
                  (if (pair? _%body203445203453%_)
                      (let ((_%hd203450203469%_
                             (let ()
                               (declare (not safe))
                               (##car _%body203445203453%_)))
                            (_%tl203451203471%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body203445203453%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd203450203469%_ 'begin))
                            (let ((_%exprs203474%_ _%tl203451203471%_))
                              (_%K203449203466%_ _%exprs203474%_))
                            (_%else203447203461%_)))
                      (_%else203447203461%_)))))
          (cons 'lambda (cons _%hd203442%_ _%body203476%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd203436%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd203436%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self201993%_ _%stx201994%_)
        (letrec ((_%dispatch-case?201996%_
                  (lambda (_%hd202674%_ _%body202675%_)
                    (let* ((_%form202677%_
                            (cons _%hd202674%_ (cons _%body202675%_ '())))
                           (_%__stx204931204932%_ _%form202677%_)
                           (_%g202682202839%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204931204932%_)))))
                      (let ((_%__kont204933204934%_
                             (lambda (_%g202684203356%_
                                      _%g202685203357%_
                                      _%g202686203358%_)
                               '#t))
                            (_%__kont204939204940%_
                             (lambda (_%g202729203148%_
                                      _%g202730203149%_
                                      _%g202731203150%_
                                      _%g202732203151%_
                                      _%g202733203152%_
                                      _%g202734203153%_)
                               '#t))
                            (_%__kont204945204946%_
                             (lambda (_%g202795202947%_
                                      _%g202796202948%_
                                      _%g202797202949%_
                                      _%g202798202950%_)
                               '#t))
                            (_%__kont204947204948%_ (lambda () '#f)))
                        (let* ((_%__match205072205073%_
                                (lambda (_%e202799202851%_
                                         _%hd202800202854%_
                                         _%tl202801202856%_
                                         _%e202802202859%_
                                         _%hd202803202862%_
                                         _%tl202804202864%_
                                         _%e202805202867%_
                                         _%hd202806202870%_
                                         _%tl202807202872%_
                                         _%e202808202875%_
                                         _%hd202809202878%_
                                         _%tl202810202880%_
                                         _%e202811202883%_
                                         _%hd202812202886%_
                                         _%tl202813202888%_
                                         _%e202814202891%_
                                         _%hd202815202894%_
                                         _%tl202816202896%_
                                         _%e202817202899%_
                                         _%hd202818202902%_
                                         _%tl202819202904%_
                                         _%e202820202907%_
                                         _%hd202821202910%_
                                         _%tl202822202912%_
                                         _%e202823202915%_
                                         _%hd202824202918%_
                                         _%tl202825202920%_
                                         _%e202826202923%_
                                         _%hd202827202926%_
                                         _%tl202828202928%_
                                         _%e202829202931%_
                                         _%hd202830202934%_
                                         _%tl202831202936%_
                                         _%e202832202939%_
                                         _%hd202833202942%_
                                         _%tl202834202944%_)
                                  (let ((_%g202795202947%_ _%hd202833202942%_)
                                        (_%g202796202948%_ _%hd202824202918%_)
                                        (_%g202797202949%_ _%hd202815202894%_)
                                        (_%g202798202950%_ _%hd202800202854%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g202798202950%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g202797202949%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g202798202950%_
                                                _%g202795202947%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g202796202948%_
                                                     _%g202798202950%_))))
                                        (_%__kont204945204946%_
                                         _%g202795202947%_
                                         _%g202796202948%_
                                         _%g202797202949%_
                                         _%g202798202950%_)
                                        (_%__kont204947204948%_)))))
                               (_%__match205044205045%_
                                (lambda (_%e202799202851%_
                                         _%hd202800202854%_
                                         _%tl202801202856%_
                                         _%e202802202859%_
                                         _%hd202803202862%_
                                         _%tl202804202864%_
                                         _%e202805202867%_
                                         _%hd202806202870%_
                                         _%tl202807202872%_
                                         _%e202808202875%_
                                         _%hd202809202878%_
                                         _%tl202810202880%_
                                         _%e202811202883%_
                                         _%hd202812202886%_
                                         _%tl202813202888%_
                                         _%e202814202891%_
                                         _%hd202815202894%_
                                         _%tl202816202896%_
                                         _%e202817202899%_
                                         _%hd202818202902%_
                                         _%tl202819202904%_
                                         _%e202820202907%_
                                         _%hd202821202910%_
                                         _%tl202822202912%_
                                         _%e202823202915%_
                                         _%hd202824202918%_
                                         _%tl202825202920%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202819202904%_))
                                      (let ((_%e202826202923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202819202904%_))))
                                        (let ((_%tl202828202928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202826202923%_)))
                                              (_%hd202827202926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202826202923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd202827202926%_))
                                              (let ((_%e202829202931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202827202926%_))))
                                                (let ((_%tl202831202936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202829202931%_)))
                                                      (_%hd202830202934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202829202931%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd202830202934%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd202830202934%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202831202936%_))
                      (let ((_%e202832202939%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202831202936%_))))
                        (let ((_%tl202834202944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202832202939%_)))
                              (_%hd202833202942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202832202939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202834202944%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202828202928%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202804202864%_))
                                      (_%__match205072205073%_
                                       _%e202799202851%_
                                       _%hd202800202854%_
                                       _%tl202801202856%_
                                       _%e202802202859%_
                                       _%hd202803202862%_
                                       _%tl202804202864%_
                                       _%e202805202867%_
                                       _%hd202806202870%_
                                       _%tl202807202872%_
                                       _%e202808202875%_
                                       _%hd202809202878%_
                                       _%tl202810202880%_
                                       _%e202811202883%_
                                       _%hd202812202886%_
                                       _%tl202813202888%_
                                       _%e202814202891%_
                                       _%hd202815202894%_
                                       _%tl202816202896%_
                                       _%e202817202899%_
                                       _%hd202818202902%_
                                       _%tl202819202904%_
                                       _%e202820202907%_
                                       _%hd202821202910%_
                                       _%tl202822202912%_
                                       _%e202823202915%_
                                       _%hd202824202918%_
                                       _%tl202825202920%_
                                       _%e202826202923%_
                                       _%hd202827202926%_
                                       _%tl202828202928%_
                                       _%e202829202931%_
                                       _%hd202830202934%_
                                       _%tl202831202936%_
                                       _%e202832202939%_
                                       _%hd202833202942%_
                                       _%tl202834202944%_)
                                      (_%__kont204947204948%_))
                                  (_%__kont204947204948%_))
                              (_%__kont204947204948%_))))
                      (_%__kont204947204948%_))
                  (_%__kont204947204948%_))
              (_%__kont204947204948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont204947204948%_))))
                                      (_%__kont204947204948%_))))
                               (_%__match204974204975%_
                                (lambda (_%e202735202992%_
                                         _%hd202736202995%_
                                         _%tl202737202997%_
                                         _%__splice204941204942%_
                                         _%target202738203000%_
                                         _%tl202740203002%_)
                                  (letrec ((_%loop202741203005%_
                                            (lambda (_%hd202739203008%_
                                                     _%arg202745203010%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202739203008%_))
                                                  (let ((_%e202742203012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202739203008%_))))
                                                    (let ((_%lp-tl202744203017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202742203012%_)))
                                                          (_%lp-hd202743203015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202742203012%_))))
                                                      (_%loop202741203005%_
                                                       _%lp-tl202744203017%_
                                                       (cons _%lp-hd202743203015%_
                                                             _%arg202745203010%_))))
                                                  (let ((_%arg202746203020%_
                                                         (reverse _%arg202745203010%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202737202997%_))
                                                        (let ((_%e202747203022%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202737202997%_))))
                  (let ((_%tl202749203027%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202747203022%_)))
                        (_%hd202748203025%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202747203022%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202748203025%_))
                        (let ((_%e202750203030%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202748203025%_))))
                          (let ((_%tl202752203035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202750203030%_)))
                                (_%hd202751203033%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202750203030%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202751203033%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202751203033%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202752203035%_))
                                        (let ((_%e202753203038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202752203035%_))))
                                          (let ((_%tl202755203043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202753203038%_)))
                                                (_%hd202754203041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202753203038%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202754203041%_))
                                                (let ((_%e202756203046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202754203041%_))))
                                                  (let ((_%tl202758203051%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202756203046%_)))
                                                        (_%hd202757203049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202756203046%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202757203049%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202757203049%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202758203051%_))
                        (let ((_%e202759203054%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202758203051%_))))
                          (let ((_%tl202761203059%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202759203054%_)))
                                (_%hd202760203057%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202759203054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202761203059%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202755203043%_))
                                    (let ((_%e202762203062%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202755203043%_))))
                                      (let ((_%tl202764203067%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202762203062%_)))
                                            (_%hd202763203065%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202762203062%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202763203065%_))
                                            (let ((_%e202765203070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202763203065%_))))
                                              (let ((_%tl202767203075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202765203070%_)))
                                                    (_%hd202766203073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202765203070%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202766203073%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202766203073%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202767203075%_))
                                                            (let ((_%e202768203078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202767203075%_))))
                      (let ((_%tl202770203083%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202768203078%_)))
                            (_%hd202769203081%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202768203078%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202770203083%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202764203067%_))
                                (if (let ((__tmp206213
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl202764203067%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp206213 '1))
                                    (let ((_%__splice204943204944%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202764203067%_
                                              '1))))
                                      (let ((_%tl202773203088%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204943204944%_
                                                '1)))
                                            (_%target202771203086%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204943204944%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202773203088%_))
                                            (let ((_%e202780203091%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202773203088%_))))
                                              (let ((_%tl202782203096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202780203091%_)))
                                                    (_%hd202781203094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202780203091%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd202781203094%_))
                                                    (let ((_%e202783203099%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202781203094%_))))
                                                      (let ((_%tl202785203104%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e202783203099%_)))
                    (_%hd202784203102%_
                     (let () (declare (not safe)) (##car _%e202783203099%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd202784203102%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd202784203102%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202785203104%_))
                            (let ((_%e202786203107%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl202785203104%_))))
                              (let ((_%tl202788203112%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202786203107%_)))
                                    (_%hd202787203110%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202786203107%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202788203112%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202782203096%_))
                                        (letrec ((_%loop202774203115%_
                                                  (lambda (_%hd202772203118%_
                                                           _%xarg202778203120%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202772203118%_))
                                                        (let ((_%e202775203122%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202772203118%_))))
                  (let ((_%lp-tl202777203127%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202775203122%_)))
                        (_%lp-hd202776203125%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202775203122%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202776203125%_))
                        (let ((_%e202789203130%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd202776203125%_))))
                          (let ((_%tl202791203135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202789203130%_)))
                                (_%hd202790203133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202789203130%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202790203133%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd202790203133%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202791203135%_))
                                        (let ((_%e202792203138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202791203135%_))))
                                          (let ((_%tl202794203143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202792203138%_)))
                                                (_%hd202793203141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202792203138%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202794203143%_))
                                                (_%loop202774203115%_
                                                 _%lp-tl202777203127%_
                                                 (cons _%hd202793203141%_
                                                       _%xarg202778203120%_))
                                                (_%__match205044205045%_
                                                 _%e202735202992%_
                                                 _%hd202736202995%_
                                                 _%tl202737202997%_
                                                 _%e202747203022%_
                                                 _%hd202748203025%_
                                                 _%tl202749203027%_
                                                 _%e202750203030%_
                                                 _%hd202751203033%_
                                                 _%tl202752203035%_
                                                 _%e202753203038%_
                                                 _%hd202754203041%_
                                                 _%tl202755203043%_
                                                 _%e202756203046%_
                                                 _%hd202757203049%_
                                                 _%tl202758203051%_
                                                 _%e202759203054%_
                                                 _%hd202760203057%_
                                                 _%tl202761203059%_
                                                 _%e202762203062%_
                                                 _%hd202763203065%_
                                                 _%tl202764203067%_
                                                 _%e202765203070%_
                                                 _%hd202766203073%_
                                                 _%tl202767203075%_
                                                 _%e202768203078%_
                                                 _%hd202769203081%_
                                                 _%tl202770203083%_))))
                                        (_%__match205044205045%_
                                         _%e202735202992%_
                                         _%hd202736202995%_
                                         _%tl202737202997%_
                                         _%e202747203022%_
                                         _%hd202748203025%_
                                         _%tl202749203027%_
                                         _%e202750203030%_
                                         _%hd202751203033%_
                                         _%tl202752203035%_
                                         _%e202753203038%_
                                         _%hd202754203041%_
                                         _%tl202755203043%_
                                         _%e202756203046%_
                                         _%hd202757203049%_
                                         _%tl202758203051%_
                                         _%e202759203054%_
                                         _%hd202760203057%_
                                         _%tl202761203059%_
                                         _%e202762203062%_
                                         _%hd202763203065%_
                                         _%tl202764203067%_
                                         _%e202765203070%_
                                         _%hd202766203073%_
                                         _%tl202767203075%_
                                         _%e202768203078%_
                                         _%hd202769203081%_
                                         _%tl202770203083%_))
                                    (_%__match205044205045%_
                                     _%e202735202992%_
                                     _%hd202736202995%_
                                     _%tl202737202997%_
                                     _%e202747203022%_
                                     _%hd202748203025%_
                                     _%tl202749203027%_
                                     _%e202750203030%_
                                     _%hd202751203033%_
                                     _%tl202752203035%_
                                     _%e202753203038%_
                                     _%hd202754203041%_
                                     _%tl202755203043%_
                                     _%e202756203046%_
                                     _%hd202757203049%_
                                     _%tl202758203051%_
                                     _%e202759203054%_
                                     _%hd202760203057%_
                                     _%tl202761203059%_
                                     _%e202762203062%_
                                     _%hd202763203065%_
                                     _%tl202764203067%_
                                     _%e202765203070%_
                                     _%hd202766203073%_
                                     _%tl202767203075%_
                                     _%e202768203078%_
                                     _%hd202769203081%_
                                     _%tl202770203083%_))
                                (_%__match205044205045%_
                                 _%e202735202992%_
                                 _%hd202736202995%_
                                 _%tl202737202997%_
                                 _%e202747203022%_
                                 _%hd202748203025%_
                                 _%tl202749203027%_
                                 _%e202750203030%_
                                 _%hd202751203033%_
                                 _%tl202752203035%_
                                 _%e202753203038%_
                                 _%hd202754203041%_
                                 _%tl202755203043%_
                                 _%e202756203046%_
                                 _%hd202757203049%_
                                 _%tl202758203051%_
                                 _%e202759203054%_
                                 _%hd202760203057%_
                                 _%tl202761203059%_
                                 _%e202762203062%_
                                 _%hd202763203065%_
                                 _%tl202764203067%_
                                 _%e202765203070%_
                                 _%hd202766203073%_
                                 _%tl202767203075%_
                                 _%e202768203078%_
                                 _%hd202769203081%_
                                 _%tl202770203083%_))))
                        (_%__match205044205045%_
                         _%e202735202992%_
                         _%hd202736202995%_
                         _%tl202737202997%_
                         _%e202747203022%_
                         _%hd202748203025%_
                         _%tl202749203027%_
                         _%e202750203030%_
                         _%hd202751203033%_
                         _%tl202752203035%_
                         _%e202753203038%_
                         _%hd202754203041%_
                         _%tl202755203043%_
                         _%e202756203046%_
                         _%hd202757203049%_
                         _%tl202758203051%_
                         _%e202759203054%_
                         _%hd202760203057%_
                         _%tl202761203059%_
                         _%e202762203062%_
                         _%hd202763203065%_
                         _%tl202764203067%_
                         _%e202765203070%_
                         _%hd202766203073%_
                         _%tl202767203075%_
                         _%e202768203078%_
                         _%hd202769203081%_
                         _%tl202770203083%_))))
                (let ((_%xarg202779203146%_ (reverse _%xarg202778203120%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202749203027%_))
                      (let ((_%g202729203148%_ _%hd202787203110%_)
                            (_%g202730203149%_ _%xarg202779203146%_)
                            (_%g202731203150%_ _%hd202769203081%_)
                            (_%g202732203151%_ _%hd202760203057%_)
                            (_%g202733203152%_ _%tl202740203002%_)
                            (_%g202734203153%_ _%arg202746203020%_))
                        (if (and (let ((__tmp206214
                                        (let ((__tmp206215
                                               (lambda (_%g203196203199%_
                                                        _%g203197203201%_)
                                                 (cons _%g203196203199%_
                                                       _%g203197203201%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206215
                                           '()
                                           _%g202734203153%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp206214))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g202733203152%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g202732203151%_
                                    'apply))
                                 (let ((__tmp206218
                                        (length (let ((__tmp206219
                                                       (lambda (_%g203203203206%_
                                                                _%g203204203208%_)
                                                         (cons _%g203203203206%_
                                                               _%g203204203208%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206219
                                                   '()
                                                   _%g202734203153%_))))
                                       (__tmp206216
                                        (length (let ((__tmp206217
                                                       (lambda (_%g203210203213%_
                                                                _%g203211203215%_)
                                                         (cons _%g203210203213%_
                                                               _%g203211203215%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206217
                                                   '()
                                                   _%g202730203149%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp206218 __tmp206216))
                                 (let ((__tmp206222
                                        (let ((__tmp206223
                                               (lambda (_%g203217203220%_
                                                        _%g203218203222%_)
                                                 (cons _%g203217203220%_
                                                       _%g203218203222%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206223
                                           '()
                                           _%g202734203153%_)))
                                       (__tmp206220
                                        (let ((__tmp206221
                                               (lambda (_%g203224203227%_
                                                        _%g203225203229%_)
                                                 (cons _%g203224203227%_
                                                       _%g203225203229%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206221
                                           '()
                                           _%g202730203149%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp206222
                                    __tmp206220))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g202733203152%_
                                    _%g202729203148%_))
                                 (not (let ((__tmp206227
                                             (lambda (_%g203231203233%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g203231203233%_
                                                  _%g202731203150%_))))
                                            (__tmp206224
                                             (let ((__tmp206226
                                                    (lambda (_%g203235203238%_
                                                             _%g203236203240%_)
                                                      (cons _%g203235203238%_
                                                            _%g203236203240%_)))
                                                   (__tmp206225
                                                    (cons _%g202733203152%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206226
                                                __tmp206225
                                                _%g202734203153%_))))
                                        (declare (not safe))
                                        (__find __tmp206227 __tmp206224))))
                            (_%__kont204939204940%_
                             _%g202729203148%_
                             _%g202730203149%_
                             _%g202731203150%_
                             _%g202732203151%_
                             _%g202733203152%_
                             _%g202734203153%_)
                            (_%__match205044205045%_
                             _%e202735202992%_
                             _%hd202736202995%_
                             _%tl202737202997%_
                             _%e202747203022%_
                             _%hd202748203025%_
                             _%tl202749203027%_
                             _%e202750203030%_
                             _%hd202751203033%_
                             _%tl202752203035%_
                             _%e202753203038%_
                             _%hd202754203041%_
                             _%tl202755203043%_
                             _%e202756203046%_
                             _%hd202757203049%_
                             _%tl202758203051%_
                             _%e202759203054%_
                             _%hd202760203057%_
                             _%tl202761203059%_
                             _%e202762203062%_
                             _%hd202763203065%_
                             _%tl202764203067%_
                             _%e202765203070%_
                             _%hd202766203073%_
                             _%tl202767203075%_
                             _%e202768203078%_
                             _%hd202769203081%_
                             _%tl202770203083%_)))
                      (_%__match205044205045%_
                       _%e202735202992%_
                       _%hd202736202995%_
                       _%tl202737202997%_
                       _%e202747203022%_
                       _%hd202748203025%_
                       _%tl202749203027%_
                       _%e202750203030%_
                       _%hd202751203033%_
                       _%tl202752203035%_
                       _%e202753203038%_
                       _%hd202754203041%_
                       _%tl202755203043%_
                       _%e202756203046%_
                       _%hd202757203049%_
                       _%tl202758203051%_
                       _%e202759203054%_
                       _%hd202760203057%_
                       _%tl202761203059%_
                       _%e202762203062%_
                       _%hd202763203065%_
                       _%tl202764203067%_
                       _%e202765203070%_
                       _%hd202766203073%_
                       _%tl202767203075%_
                       _%e202768203078%_
                       _%hd202769203081%_
                       _%tl202770203083%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202774203115%_
                                           _%target202771203086%_
                                           '()))
                                        (_%__match205044205045%_
                                         _%e202735202992%_
                                         _%hd202736202995%_
                                         _%tl202737202997%_
                                         _%e202747203022%_
                                         _%hd202748203025%_
                                         _%tl202749203027%_
                                         _%e202750203030%_
                                         _%hd202751203033%_
                                         _%tl202752203035%_
                                         _%e202753203038%_
                                         _%hd202754203041%_
                                         _%tl202755203043%_
                                         _%e202756203046%_
                                         _%hd202757203049%_
                                         _%tl202758203051%_
                                         _%e202759203054%_
                                         _%hd202760203057%_
                                         _%tl202761203059%_
                                         _%e202762203062%_
                                         _%hd202763203065%_
                                         _%tl202764203067%_
                                         _%e202765203070%_
                                         _%hd202766203073%_
                                         _%tl202767203075%_
                                         _%e202768203078%_
                                         _%hd202769203081%_
                                         _%tl202770203083%_))
                                    (_%__match205044205045%_
                                     _%e202735202992%_
                                     _%hd202736202995%_
                                     _%tl202737202997%_
                                     _%e202747203022%_
                                     _%hd202748203025%_
                                     _%tl202749203027%_
                                     _%e202750203030%_
                                     _%hd202751203033%_
                                     _%tl202752203035%_
                                     _%e202753203038%_
                                     _%hd202754203041%_
                                     _%tl202755203043%_
                                     _%e202756203046%_
                                     _%hd202757203049%_
                                     _%tl202758203051%_
                                     _%e202759203054%_
                                     _%hd202760203057%_
                                     _%tl202761203059%_
                                     _%e202762203062%_
                                     _%hd202763203065%_
                                     _%tl202764203067%_
                                     _%e202765203070%_
                                     _%hd202766203073%_
                                     _%tl202767203075%_
                                     _%e202768203078%_
                                     _%hd202769203081%_
                                     _%tl202770203083%_))))
                            (_%__match205044205045%_
                             _%e202735202992%_
                             _%hd202736202995%_
                             _%tl202737202997%_
                             _%e202747203022%_
                             _%hd202748203025%_
                             _%tl202749203027%_
                             _%e202750203030%_
                             _%hd202751203033%_
                             _%tl202752203035%_
                             _%e202753203038%_
                             _%hd202754203041%_
                             _%tl202755203043%_
                             _%e202756203046%_
                             _%hd202757203049%_
                             _%tl202758203051%_
                             _%e202759203054%_
                             _%hd202760203057%_
                             _%tl202761203059%_
                             _%e202762203062%_
                             _%hd202763203065%_
                             _%tl202764203067%_
                             _%e202765203070%_
                             _%hd202766203073%_
                             _%tl202767203075%_
                             _%e202768203078%_
                             _%hd202769203081%_
                             _%tl202770203083%_))
                        (_%__match205044205045%_
                         _%e202735202992%_
                         _%hd202736202995%_
                         _%tl202737202997%_
                         _%e202747203022%_
                         _%hd202748203025%_
                         _%tl202749203027%_
                         _%e202750203030%_
                         _%hd202751203033%_
                         _%tl202752203035%_
                         _%e202753203038%_
                         _%hd202754203041%_
                         _%tl202755203043%_
                         _%e202756203046%_
                         _%hd202757203049%_
                         _%tl202758203051%_
                         _%e202759203054%_
                         _%hd202760203057%_
                         _%tl202761203059%_
                         _%e202762203062%_
                         _%hd202763203065%_
                         _%tl202764203067%_
                         _%e202765203070%_
                         _%hd202766203073%_
                         _%tl202767203075%_
                         _%e202768203078%_
                         _%hd202769203081%_
                         _%tl202770203083%_))
                    (_%__match205044205045%_
                     _%e202735202992%_
                     _%hd202736202995%_
                     _%tl202737202997%_
                     _%e202747203022%_
                     _%hd202748203025%_
                     _%tl202749203027%_
                     _%e202750203030%_
                     _%hd202751203033%_
                     _%tl202752203035%_
                     _%e202753203038%_
                     _%hd202754203041%_
                     _%tl202755203043%_
                     _%e202756203046%_
                     _%hd202757203049%_
                     _%tl202758203051%_
                     _%e202759203054%_
                     _%hd202760203057%_
                     _%tl202761203059%_
                     _%e202762203062%_
                     _%hd202763203065%_
                     _%tl202764203067%_
                     _%e202765203070%_
                     _%hd202766203073%_
                     _%tl202767203075%_
                     _%e202768203078%_
                     _%hd202769203081%_
                     _%tl202770203083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match205044205045%_
                                                     _%e202735202992%_
                                                     _%hd202736202995%_
                                                     _%tl202737202997%_
                                                     _%e202747203022%_
                                                     _%hd202748203025%_
                                                     _%tl202749203027%_
                                                     _%e202750203030%_
                                                     _%hd202751203033%_
                                                     _%tl202752203035%_
                                                     _%e202753203038%_
                                                     _%hd202754203041%_
                                                     _%tl202755203043%_
                                                     _%e202756203046%_
                                                     _%hd202757203049%_
                                                     _%tl202758203051%_
                                                     _%e202759203054%_
                                                     _%hd202760203057%_
                                                     _%tl202761203059%_
                                                     _%e202762203062%_
                                                     _%hd202763203065%_
                                                     _%tl202764203067%_
                                                     _%e202765203070%_
                                                     _%hd202766203073%_
                                                     _%tl202767203075%_
                                                     _%e202768203078%_
                                                     _%hd202769203081%_
                                                     _%tl202770203083%_))))
                                            (_%__match205044205045%_
                                             _%e202735202992%_
                                             _%hd202736202995%_
                                             _%tl202737202997%_
                                             _%e202747203022%_
                                             _%hd202748203025%_
                                             _%tl202749203027%_
                                             _%e202750203030%_
                                             _%hd202751203033%_
                                             _%tl202752203035%_
                                             _%e202753203038%_
                                             _%hd202754203041%_
                                             _%tl202755203043%_
                                             _%e202756203046%_
                                             _%hd202757203049%_
                                             _%tl202758203051%_
                                             _%e202759203054%_
                                             _%hd202760203057%_
                                             _%tl202761203059%_
                                             _%e202762203062%_
                                             _%hd202763203065%_
                                             _%tl202764203067%_
                                             _%e202765203070%_
                                             _%hd202766203073%_
                                             _%tl202767203075%_
                                             _%e202768203078%_
                                             _%hd202769203081%_
                                             _%tl202770203083%_))))
                                    (_%__match205044205045%_
                                     _%e202735202992%_
                                     _%hd202736202995%_
                                     _%tl202737202997%_
                                     _%e202747203022%_
                                     _%hd202748203025%_
                                     _%tl202749203027%_
                                     _%e202750203030%_
                                     _%hd202751203033%_
                                     _%tl202752203035%_
                                     _%e202753203038%_
                                     _%hd202754203041%_
                                     _%tl202755203043%_
                                     _%e202756203046%_
                                     _%hd202757203049%_
                                     _%tl202758203051%_
                                     _%e202759203054%_
                                     _%hd202760203057%_
                                     _%tl202761203059%_
                                     _%e202762203062%_
                                     _%hd202763203065%_
                                     _%tl202764203067%_
                                     _%e202765203070%_
                                     _%hd202766203073%_
                                     _%tl202767203075%_
                                     _%e202768203078%_
                                     _%hd202769203081%_
                                     _%tl202770203083%_))
                                (_%__match205044205045%_
                                 _%e202735202992%_
                                 _%hd202736202995%_
                                 _%tl202737202997%_
                                 _%e202747203022%_
                                 _%hd202748203025%_
                                 _%tl202749203027%_
                                 _%e202750203030%_
                                 _%hd202751203033%_
                                 _%tl202752203035%_
                                 _%e202753203038%_
                                 _%hd202754203041%_
                                 _%tl202755203043%_
                                 _%e202756203046%_
                                 _%hd202757203049%_
                                 _%tl202758203051%_
                                 _%e202759203054%_
                                 _%hd202760203057%_
                                 _%tl202761203059%_
                                 _%e202762203062%_
                                 _%hd202763203065%_
                                 _%tl202764203067%_
                                 _%e202765203070%_
                                 _%hd202766203073%_
                                 _%tl202767203075%_
                                 _%e202768203078%_
                                 _%hd202769203081%_
                                 _%tl202770203083%_))
                            (_%__kont204947204948%_))))
                    (_%__kont204947204948%_))
                (_%__kont204947204948%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont204947204948%_))))
                                            (_%__kont204947204948%_))))
                                    (_%__kont204947204948%_))
                                (_%__kont204947204948%_))))
                        (_%__kont204947204948%_))
                    (_%__kont204947204948%_))
                (_%__kont204947204948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont204947204948%_))))
                                        (_%__kont204947204948%_))
                                    (_%__kont204947204948%_))
                                (_%__kont204947204948%_))))
                        (_%__kont204947204948%_))))
                (_%__kont204947204948%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202741203005%_
                                     _%target202738203000%_
                                     '()))))
                               (_%__match204962204963%_
                                (lambda (_%e202687203248%_
                                         _%hd202688203251%_
                                         _%tl202689203253%_
                                         _%__splice204935204936%_
                                         _%target202690203256%_
                                         _%tl202692203258%_)
                                  (letrec ((_%loop202693203261%_
                                            (lambda (_%hd202691203264%_
                                                     _%arg202697203266%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202691203264%_))
                                                  (let ((_%e202694203268%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202691203264%_))))
                                                    (let ((_%lp-tl202696203273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202694203268%_)))
                                                          (_%lp-hd202695203271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202694203268%_))))
                                                      (_%loop202693203261%_
                                                       _%lp-tl202696203273%_
                                                       (cons _%lp-hd202695203271%_
                                                             _%arg202697203266%_))))
                                                  (let ((_%arg202698203276%_
                                                         (reverse _%arg202697203266%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202689203253%_))
                                                        (let ((_%e202699203278%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202689203253%_))))
                  (let ((_%tl202701203283%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202699203278%_)))
                        (_%hd202700203281%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202699203278%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202700203281%_))
                        (let ((_%e202702203286%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202700203281%_))))
                          (let ((_%tl202704203291%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202702203286%_)))
                                (_%hd202703203289%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202702203286%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202703203289%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202703203289%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202704203291%_))
                                        (let ((_%e202705203294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202704203291%_))))
                                          (let ((_%tl202707203299%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202705203294%_)))
                                                (_%hd202706203297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202705203294%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202706203297%_))
                                                (let ((_%e202708203302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202706203297%_))))
                                                  (let ((_%tl202710203307%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202708203302%_)))
                                                        (_%hd202709203305%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202708203302%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202709203305%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202709203305%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202710203307%_))
                        (let ((_%e202711203310%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202710203307%_))))
                          (let ((_%tl202713203315%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202711203310%_)))
                                (_%hd202712203313%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202711203310%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202713203315%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202707203299%_))
                                    (let ((_%__splice204937204938%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202707203299%_
                                              '0))))
                                      (let ((_%tl202716203320%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204937204938%_
                                                '1)))
                                            (_%target202714203318%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204937204938%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202716203320%_))
                                            (letrec ((_%loop202717203323%_
                                                      (lambda (_%hd202715203326%_
                                                               _%xarg202721203328%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202715203326%_))
                                                            (let ((_%e202718203330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202715203326%_))))
                      (let ((_%lp-tl202720203335%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202718203330%_)))
                            (_%lp-hd202719203333%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202718203330%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202719203333%_))
                            (let ((_%e202723203338%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202719203333%_))))
                              (let ((_%tl202725203343%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202723203338%_)))
                                    (_%hd202724203341%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202723203338%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202724203341%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202724203341%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202725203343%_))
                                            (let ((_%e202726203346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202725203343%_))))
                                              (let ((_%tl202728203351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202726203346%_)))
                                                    (_%hd202727203349%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202726203346%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202728203351%_))
                                                    (_%loop202717203323%_
                                                     _%lp-tl202720203335%_
                                                     (cons _%hd202727203349%_
                                                           _%xarg202721203328%_))
                                                    (_%__match204974204975%_
                                                     _%e202687203248%_
                                                     _%hd202688203251%_
                                                     _%tl202689203253%_
                                                     _%__splice204935204936%_
                                                     _%target202690203256%_
                                                     _%tl202692203258%_))))
                                            (_%__match204974204975%_
                                             _%e202687203248%_
                                             _%hd202688203251%_
                                             _%tl202689203253%_
                                             _%__splice204935204936%_
                                             _%target202690203256%_
                                             _%tl202692203258%_))
                                        (_%__match204974204975%_
                                         _%e202687203248%_
                                         _%hd202688203251%_
                                         _%tl202689203253%_
                                         _%__splice204935204936%_
                                         _%target202690203256%_
                                         _%tl202692203258%_))
                                    (_%__match204974204975%_
                                     _%e202687203248%_
                                     _%hd202688203251%_
                                     _%tl202689203253%_
                                     _%__splice204935204936%_
                                     _%target202690203256%_
                                     _%tl202692203258%_))))
                            (_%__match204974204975%_
                             _%e202687203248%_
                             _%hd202688203251%_
                             _%tl202689203253%_
                             _%__splice204935204936%_
                             _%target202690203256%_
                             _%tl202692203258%_))))
                    (let ((_%xarg202722203354%_
                           (reverse _%xarg202721203328%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202701203283%_))
                          (let ((_%g202684203356%_ _%xarg202722203354%_)
                                (_%g202685203357%_ _%hd202712203313%_)
                                (_%g202686203358%_ _%arg202698203276%_))
                            (if (and (let ((__tmp206228
                                            (let ((__tmp206229
                                                   (lambda (_%g203386203389%_
                                                            _%g203387203391%_)
                                                     (cons _%g203386203389%_
                                                           _%g203387203391%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206229
                                               '()
                                               _%g202686203358%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp206228))
                                     (let ((__tmp206232
                                            (length (let ((__tmp206233
                                                           (lambda (_%g203393203396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g203394203398%_)
                     (cons _%g203393203396%_ _%g203394203398%_))))
              (declare (not safe))
              (foldr__0 __tmp206233 '() _%g202686203358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp206230
                                            (length (let ((__tmp206231
                                                           (lambda (_%g203400203403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g203401203405%_)
                     (cons _%g203400203403%_ _%g203401203405%_))))
              (declare (not safe))
              (foldr__0 __tmp206231 '() _%g202684203356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206232 __tmp206230))
                                     (let ((__tmp206236
                                            (let ((__tmp206237
                                                   (lambda (_%g203407203410%_
                                                            _%g203408203412%_)
                                                     (cons _%g203407203410%_
                                                           _%g203408203412%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206237
                                               '()
                                               _%g202686203358%_)))
                                           (__tmp206234
                                            (let ((__tmp206235
                                                   (lambda (_%g203414203417%_
                                                            _%g203415203419%_)
                                                     (cons _%g203414203417%_
                                                           _%g203415203419%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206235
                                               '()
                                               _%g202684203356%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp206236
                                        __tmp206234))
                                     (not (let ((__tmp206240
                                                 (lambda (_%g203421203423%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g203421203423%_
                                                      _%g202685203357%_))))
                                                (__tmp206238
                                                 (let ((__tmp206239
                                                        (lambda (_%g203425203428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g203426203430%_)
                  (cons _%g203425203428%_ _%g203426203430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp206239
                                                    '()
                                                    _%g202686203358%_))))
                                            (declare (not safe))
                                            (__find __tmp206240 __tmp206238))))
                                (_%__kont204933204934%_
                                 _%g202684203356%_
                                 _%g202685203357%_
                                 _%g202686203358%_)
                                (_%__match204974204975%_
                                 _%e202687203248%_
                                 _%hd202688203251%_
                                 _%tl202689203253%_
                                 _%__splice204935204936%_
                                 _%target202690203256%_
                                 _%tl202692203258%_)))
                          (_%__match204974204975%_
                           _%e202687203248%_
                           _%hd202688203251%_
                           _%tl202689203253%_
                           _%__splice204935204936%_
                           _%target202690203256%_
                           _%tl202692203258%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202717203323%_
                                               _%target202714203318%_
                                               '()))
                                            (_%__match204974204975%_
                                             _%e202687203248%_
                                             _%hd202688203251%_
                                             _%tl202689203253%_
                                             _%__splice204935204936%_
                                             _%target202690203256%_
                                             _%tl202692203258%_))))
                                    (_%__match204974204975%_
                                     _%e202687203248%_
                                     _%hd202688203251%_
                                     _%tl202689203253%_
                                     _%__splice204935204936%_
                                     _%target202690203256%_
                                     _%tl202692203258%_))
                                (_%__match204974204975%_
                                 _%e202687203248%_
                                 _%hd202688203251%_
                                 _%tl202689203253%_
                                 _%__splice204935204936%_
                                 _%target202690203256%_
                                 _%tl202692203258%_))))
                        (_%__match204974204975%_
                         _%e202687203248%_
                         _%hd202688203251%_
                         _%tl202689203253%_
                         _%__splice204935204936%_
                         _%target202690203256%_
                         _%tl202692203258%_))
                    (_%__match204974204975%_
                     _%e202687203248%_
                     _%hd202688203251%_
                     _%tl202689203253%_
                     _%__splice204935204936%_
                     _%target202690203256%_
                     _%tl202692203258%_))
                (_%__match204974204975%_
                 _%e202687203248%_
                 _%hd202688203251%_
                 _%tl202689203253%_
                 _%__splice204935204936%_
                 _%target202690203256%_
                 _%tl202692203258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match204974204975%_
                                                 _%e202687203248%_
                                                 _%hd202688203251%_
                                                 _%tl202689203253%_
                                                 _%__splice204935204936%_
                                                 _%target202690203256%_
                                                 _%tl202692203258%_))))
                                        (_%__match204974204975%_
                                         _%e202687203248%_
                                         _%hd202688203251%_
                                         _%tl202689203253%_
                                         _%__splice204935204936%_
                                         _%target202690203256%_
                                         _%tl202692203258%_))
                                    (_%__match204974204975%_
                                     _%e202687203248%_
                                     _%hd202688203251%_
                                     _%tl202689203253%_
                                     _%__splice204935204936%_
                                     _%target202690203256%_
                                     _%tl202692203258%_))
                                (_%__match204974204975%_
                                 _%e202687203248%_
                                 _%hd202688203251%_
                                 _%tl202689203253%_
                                 _%__splice204935204936%_
                                 _%target202690203256%_
                                 _%tl202692203258%_))))
                        (_%__match204974204975%_
                         _%e202687203248%_
                         _%hd202688203251%_
                         _%tl202689203253%_
                         _%__splice204935204936%_
                         _%target202690203256%_
                         _%tl202692203258%_))))
                (_%__match204974204975%_
                 _%e202687203248%_
                 _%hd202688203251%_
                 _%tl202689203253%_
                 _%__splice204935204936%_
                 _%target202690203256%_
                 _%tl202692203258%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202693203261%_
                                     _%target202690203256%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204931204932%_))
                              (let ((_%e202687203248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204931204932%_))))
                                (let ((_%tl202689203253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202687203248%_)))
                                      (_%hd202688203251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202687203248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202688203251%_))
                                      (let ((_%__splice204935204936%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202688203251%_
                                                '0))))
                                        (let ((_%tl202692203258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204935204936%_
                                                  '1)))
                                              (_%target202690203256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204935204936%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202692203258%_))
                                              (_%__match204962204963%_
                                               _%e202687203248%_
                                               _%hd202688203251%_
                                               _%tl202689203253%_
                                               _%__splice204935204936%_
                                               _%target202690203256%_
                                               _%tl202692203258%_)
                                              (_%__match204974204975%_
                                               _%e202687203248%_
                                               _%hd202688203251%_
                                               _%tl202689203253%_
                                               _%__splice204935204936%_
                                               _%target202690203256%_
                                               _%tl202692203258%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202689203253%_))
                                          (let ((_%e202802202859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202689203253%_))))
                                            (let ((_%tl202804202864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202802202859%_)))
                                                  (_%hd202803202862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202802202859%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202803202862%_))
                                                  (let ((_%e202805202867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202803202862%_))))
                                                    (let ((_%tl202807202872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202805202867%_)))
                                                          (_%hd202806202870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202805202867%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202806202870%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202806202870%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202807202872%_))
                          (let ((_%e202808202875%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202807202872%_))))
                            (let ((_%tl202810202880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202808202875%_)))
                                  (_%hd202809202878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202808202875%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202809202878%_))
                                  (let ((_%e202811202883%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202809202878%_))))
                                    (let ((_%tl202813202888%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202811202883%_)))
                                          (_%hd202812202886%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202811202883%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202812202886%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202812202886%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202813202888%_))
                                                  (let ((_%e202814202891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202813202888%_))))
                                                    (let ((_%tl202816202896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202814202891%_)))
                                                          (_%hd202815202894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202814202891%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202816202896%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202810202880%_))
                      (let ((_%e202817202899%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202810202880%_))))
                        (let ((_%tl202819202904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202817202899%_)))
                              (_%hd202818202902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202817202899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202818202902%_))
                              (let ((_%e202820202907%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202818202902%_))))
                                (let ((_%tl202822202912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202820202907%_)))
                                      (_%hd202821202910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202820202907%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202821202910%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202821202910%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202822202912%_))
                                              (let ((_%e202823202915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202822202912%_))))
                                                (let ((_%tl202825202920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202823202915%_)))
                                                      (_%hd202824202918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202823202915%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202825202920%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202819202904%_))
                                                          (let ((_%e202826202923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202819202904%_))))
                    (let ((_%tl202828202928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202826202923%_)))
                          (_%hd202827202926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202826202923%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd202827202926%_))
                          (let ((_%e202829202931%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202827202926%_))))
                            (let ((_%tl202831202936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202829202931%_)))
                                  (_%hd202830202934%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202829202931%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd202830202934%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd202830202934%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202831202936%_))
                                          (let ((_%e202832202939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202831202936%_))))
                                            (let ((_%tl202834202944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202832202939%_)))
                                                  (_%hd202833202942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202832202939%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202834202944%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202828202928%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202804202864%_))
                                                          (_%__match205072205073%_
                                                           _%e202687203248%_
                                                           _%hd202688203251%_
                                                           _%tl202689203253%_
                                                           _%e202802202859%_
                                                           _%hd202803202862%_
                                                           _%tl202804202864%_
                                                           _%e202805202867%_
                                                           _%hd202806202870%_
                                                           _%tl202807202872%_
                                                           _%e202808202875%_
                                                           _%hd202809202878%_
                                                           _%tl202810202880%_
                                                           _%e202811202883%_
                                                           _%hd202812202886%_
                                                           _%tl202813202888%_
                                                           _%e202814202891%_
                                                           _%hd202815202894%_
                                                           _%tl202816202896%_
                                                           _%e202817202899%_
                                                           _%hd202818202902%_
                                                           _%tl202819202904%_
                                                           _%e202820202907%_
                                                           _%hd202821202910%_
                                                           _%tl202822202912%_
                                                           _%e202823202915%_
                                                           _%hd202824202918%_
                                                           _%tl202825202920%_
                                                           _%e202826202923%_
                                                           _%hd202827202926%_
                                                           _%tl202828202928%_
                                                           _%e202829202931%_
                                                           _%hd202830202934%_
                                                           _%tl202831202936%_
                                                           _%e202832202939%_
                                                           _%hd202833202942%_
                                                           _%tl202834202944%_)
                                                          (_%__kont204947204948%_))
                                                      (_%__kont204947204948%_))
                                                  (_%__kont204947204948%_))))
                                          (_%__kont204947204948%_))
                                      (_%__kont204947204948%_))
                                  (_%__kont204947204948%_))))
                          (_%__kont204947204948%_))))
                  (_%__kont204947204948%_))
              (_%__kont204947204948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont204947204948%_))
                                          (_%__kont204947204948%_))
                                      (_%__kont204947204948%_))))
                              (_%__kont204947204948%_))))
                      (_%__kont204947204948%_))
                  (_%__kont204947204948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont204947204948%_))
                                              (_%__kont204947204948%_))
                                          (_%__kont204947204948%_))))
                                  (_%__kont204947204948%_))))
                          (_%__kont204947204948%_))
                      (_%__kont204947204948%_))
                  (_%__kont204947204948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont204947204948%_))))
                                          (_%__kont204947204948%_)))))
                              (_%__kont204947204948%_)))))))
                 (_%dispatch-case-e201997%_
                  (lambda (_%hd202144%_ _%body202145%_)
                    (let* ((_%form202147%_
                            (cons _%hd202144%_ (cons _%body202145%_ '())))
                           (_%__stx205075205076%_ _%form202147%_)
                           (_%g202151202275%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205075205076%_)))))
                      (let ((_%__kont205077205078%_
                             (lambda (_%g202153202640%_
                                      _%g202154202641%_
                                      _%g202155202642%_)
                               (let ((__tmp206241
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202154202641%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201993%_
                                  __tmp206241))))
                            (_%__kont205083205084%_
                             (lambda (_%g202198202492%_
                                      _%g202199202493%_
                                      _%g202200202494%_
                                      _%g202201202495%_)
                               (let ((__tmp206242
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202198202492%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201993%_
                                  __tmp206242))))
                            (_%__kont205087205088%_
                             (lambda (_%g202238202360%_
                                      _%g202239202361%_
                                      _%g202240202362%_)
                               (let ((__tmp206243
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202238202360%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self201993%_
                                  __tmp206243)))))
                        (let* ((_%__match205184205185%_
                                (lambda (_%e202241202280%_
                                         _%hd202242202283%_
                                         _%tl202243202285%_
                                         _%e202244202288%_
                                         _%hd202245202291%_
                                         _%tl202246202293%_
                                         _%e202247202296%_
                                         _%hd202248202299%_
                                         _%tl202249202301%_
                                         _%e202250202304%_
                                         _%hd202251202307%_
                                         _%tl202252202309%_
                                         _%e202253202312%_
                                         _%hd202254202315%_
                                         _%tl202255202317%_
                                         _%e202256202320%_
                                         _%hd202257202323%_
                                         _%tl202258202325%_
                                         _%e202259202328%_
                                         _%hd202260202331%_
                                         _%tl202261202333%_
                                         _%e202262202336%_
                                         _%hd202263202339%_
                                         _%tl202264202341%_
                                         _%e202265202344%_
                                         _%hd202266202347%_
                                         _%tl202267202349%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202261202333%_))
                                      (let ((_%e202268202352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202261202333%_))))
                                        (let ((_%tl202270202357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202268202352%_)))
                                              (_%hd202269202355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202268202352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202270202357%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202246202293%_))
                                                  (_%__kont205087205088%_
                                                   _%hd202266202347%_
                                                   _%hd202257202323%_
                                                   _%hd202242202283%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202151202275%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202151202275%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202151202275%_)))))
                               (_%__match205114205115%_
                                (lambda (_%e202202202398%_
                                         _%hd202203202401%_
                                         _%tl202204202403%_
                                         _%__splice205085205086%_
                                         _%target202205202406%_
                                         _%tl202207202408%_)
                                  (letrec ((_%loop202208202411%_
                                            (lambda (_%hd202206202414%_
                                                     _%arg202212202416%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202206202414%_))
                                                  (let ((_%e202209202418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202206202414%_))))
                                                    (let ((_%lp-tl202211202423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202209202418%_)))
                                                          (_%lp-hd202210202421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202209202418%_))))
                                                      (_%loop202208202411%_
                                                       _%lp-tl202211202423%_
                                                       (cons _%lp-hd202210202421%_
                                                             _%arg202212202416%_))))
                                                  (let ((_%arg202213202426%_
                                                         (reverse _%arg202212202416%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202204202403%_))
                                                        (let ((_%e202214202428%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202204202403%_))))
                  (let ((_%tl202216202433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202214202428%_)))
                        (_%hd202215202431%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202214202428%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202215202431%_))
                        (let ((_%e202217202436%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202215202431%_))))
                          (let ((_%tl202219202441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202217202436%_)))
                                (_%hd202218202439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202217202436%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202218202439%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202218202439%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202219202441%_))
                                        (let ((_%e202220202444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202219202441%_))))
                                          (let ((_%tl202222202449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202220202444%_)))
                                                (_%hd202221202447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202220202444%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202221202447%_))
                                                (let ((_%e202223202452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202221202447%_))))
                                                  (let ((_%tl202225202457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202223202452%_)))
                                                        (_%hd202224202455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202223202452%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202224202455%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202224202455%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202225202457%_))
                        (let ((_%e202226202460%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202225202457%_))))
                          (let ((_%tl202228202465%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202226202460%_)))
                                (_%hd202227202463%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202226202460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202228202465%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202222202449%_))
                                    (let ((_%e202229202468%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202222202449%_))))
                                      (let ((_%tl202231202473%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202229202468%_)))
                                            (_%hd202230202471%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202229202468%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202230202471%_))
                                            (let ((_%e202232202476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202230202471%_))))
                                              (let ((_%tl202234202481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202232202476%_)))
                                                    (_%hd202233202479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202232202476%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202233202479%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202233202479%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202234202481%_))
                                                            (let ((_%e202235202484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202234202481%_))))
                      (let ((_%tl202237202489%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202235202484%_)))
                            (_%hd202236202487%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202235202484%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202237202489%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202216202433%_))
                                (_%__kont205083205084%_
                                 _%hd202236202487%_
                                 _%hd202227202463%_
                                 _%tl202207202408%_
                                 _%arg202213202426%_)
                                (_%__match205184205185%_
                                 _%e202202202398%_
                                 _%hd202203202401%_
                                 _%tl202204202403%_
                                 _%e202214202428%_
                                 _%hd202215202431%_
                                 _%tl202216202433%_
                                 _%e202217202436%_
                                 _%hd202218202439%_
                                 _%tl202219202441%_
                                 _%e202220202444%_
                                 _%hd202221202447%_
                                 _%tl202222202449%_
                                 _%e202223202452%_
                                 _%hd202224202455%_
                                 _%tl202225202457%_
                                 _%e202226202460%_
                                 _%hd202227202463%_
                                 _%tl202228202465%_
                                 _%e202229202468%_
                                 _%hd202230202471%_
                                 _%tl202231202473%_
                                 _%e202232202476%_
                                 _%hd202233202479%_
                                 _%tl202234202481%_
                                 _%e202235202484%_
                                 _%hd202236202487%_
                                 _%tl202237202489%_))
                            (let ()
                              (declare (not safe))
                              (_%g202151202275%_)))))
                    (let () (declare (not safe)) (_%g202151202275%_)))
                (let () (declare (not safe)) (_%g202151202275%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202151202275%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202151202275%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202151202275%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202151202275%_)))))
                        (let () (declare (not safe)) (_%g202151202275%_)))
                    (let () (declare (not safe)) (_%g202151202275%_)))
                (let () (declare (not safe)) (_%g202151202275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202151202275%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202151202275%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202151202275%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202151202275%_)))))
                        (let () (declare (not safe)) (_%g202151202275%_)))))
                (let () (declare (not safe)) (_%g202151202275%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202208202411%_
                                     _%target202205202406%_
                                     '()))))
                               (_%__match205102205103%_
                                (lambda (_%e202156202532%_
                                         _%hd202157202535%_
                                         _%tl202158202537%_
                                         _%__splice205079205080%_
                                         _%target202159202540%_
                                         _%tl202161202542%_)
                                  (letrec ((_%loop202162202545%_
                                            (lambda (_%hd202160202548%_
                                                     _%arg202166202550%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202160202548%_))
                                                  (let ((_%e202163202552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202160202548%_))))
                                                    (let ((_%lp-tl202165202557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202163202552%_)))
                                                          (_%lp-hd202164202555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202163202552%_))))
                                                      (_%loop202162202545%_
                                                       _%lp-tl202165202557%_
                                                       (cons _%lp-hd202164202555%_
                                                             _%arg202166202550%_))))
                                                  (let ((_%arg202167202560%_
                                                         (reverse _%arg202166202550%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202158202537%_))
                                                        (let ((_%e202168202562%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202158202537%_))))
                  (let ((_%tl202170202567%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202168202562%_)))
                        (_%hd202169202565%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202168202562%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202169202565%_))
                        (let ((_%e202171202570%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202169202565%_))))
                          (let ((_%tl202173202575%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202171202570%_)))
                                (_%hd202172202573%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202171202570%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202172202573%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202172202573%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202173202575%_))
                                        (let ((_%e202174202578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202173202575%_))))
                                          (let ((_%tl202176202583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202174202578%_)))
                                                (_%hd202175202581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202174202578%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202175202581%_))
                                                (let ((_%e202177202586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202175202581%_))))
                                                  (let ((_%tl202179202591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202177202586%_)))
                                                        (_%hd202178202589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202177202586%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202178202589%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202178202589%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202179202591%_))
                        (let ((_%e202180202594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202179202591%_))))
                          (let ((_%tl202182202599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202180202594%_)))
                                (_%hd202181202597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202180202594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202182202599%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202176202583%_))
                                    (let ((_%__splice205081205082%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202176202583%_
                                              '0))))
                                      (let ((_%tl202185202604%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205081205082%_
                                                '1)))
                                            (_%target202183202602%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205081205082%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202185202604%_))
                                            (letrec ((_%loop202186202607%_
                                                      (lambda (_%hd202184202610%_
                                                               _%xarg202190202612%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202184202610%_))
                                                            (let ((_%e202187202614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202184202610%_))))
                      (let ((_%lp-tl202189202619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202187202614%_)))
                            (_%lp-hd202188202617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202187202614%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202188202617%_))
                            (let ((_%e202192202622%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202188202617%_))))
                              (let ((_%tl202194202627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202192202622%_)))
                                    (_%hd202193202625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202192202622%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202193202625%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202193202625%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202194202627%_))
                                            (let ((_%e202195202630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202194202627%_))))
                                              (let ((_%tl202197202635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202195202630%_)))
                                                    (_%hd202196202633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202195202630%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202197202635%_))
                                                    (_%loop202186202607%_
                                                     _%lp-tl202189202619%_
                                                     (cons _%hd202196202633%_
                                                           _%xarg202190202612%_))
                                                    (_%__match205114205115%_
                                                     _%e202156202532%_
                                                     _%hd202157202535%_
                                                     _%tl202158202537%_
                                                     _%__splice205079205080%_
                                                     _%target202159202540%_
                                                     _%tl202161202542%_))))
                                            (_%__match205114205115%_
                                             _%e202156202532%_
                                             _%hd202157202535%_
                                             _%tl202158202537%_
                                             _%__splice205079205080%_
                                             _%target202159202540%_
                                             _%tl202161202542%_))
                                        (_%__match205114205115%_
                                         _%e202156202532%_
                                         _%hd202157202535%_
                                         _%tl202158202537%_
                                         _%__splice205079205080%_
                                         _%target202159202540%_
                                         _%tl202161202542%_))
                                    (_%__match205114205115%_
                                     _%e202156202532%_
                                     _%hd202157202535%_
                                     _%tl202158202537%_
                                     _%__splice205079205080%_
                                     _%target202159202540%_
                                     _%tl202161202542%_))))
                            (_%__match205114205115%_
                             _%e202156202532%_
                             _%hd202157202535%_
                             _%tl202158202537%_
                             _%__splice205079205080%_
                             _%target202159202540%_
                             _%tl202161202542%_))))
                    (let ((_%xarg202191202638%_
                           (reverse _%xarg202190202612%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202170202567%_))
                          (_%__kont205077205078%_
                           _%xarg202191202638%_
                           _%hd202181202597%_
                           _%arg202167202560%_)
                          (_%__match205114205115%_
                           _%e202156202532%_
                           _%hd202157202535%_
                           _%tl202158202537%_
                           _%__splice205079205080%_
                           _%target202159202540%_
                           _%tl202161202542%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202186202607%_
                                               _%target202183202602%_
                                               '()))
                                            (_%__match205114205115%_
                                             _%e202156202532%_
                                             _%hd202157202535%_
                                             _%tl202158202537%_
                                             _%__splice205079205080%_
                                             _%target202159202540%_
                                             _%tl202161202542%_))))
                                    (_%__match205114205115%_
                                     _%e202156202532%_
                                     _%hd202157202535%_
                                     _%tl202158202537%_
                                     _%__splice205079205080%_
                                     _%target202159202540%_
                                     _%tl202161202542%_))
                                (_%__match205114205115%_
                                 _%e202156202532%_
                                 _%hd202157202535%_
                                 _%tl202158202537%_
                                 _%__splice205079205080%_
                                 _%target202159202540%_
                                 _%tl202161202542%_))))
                        (_%__match205114205115%_
                         _%e202156202532%_
                         _%hd202157202535%_
                         _%tl202158202537%_
                         _%__splice205079205080%_
                         _%target202159202540%_
                         _%tl202161202542%_))
                    (_%__match205114205115%_
                     _%e202156202532%_
                     _%hd202157202535%_
                     _%tl202158202537%_
                     _%__splice205079205080%_
                     _%target202159202540%_
                     _%tl202161202542%_))
                (_%__match205114205115%_
                 _%e202156202532%_
                 _%hd202157202535%_
                 _%tl202158202537%_
                 _%__splice205079205080%_
                 _%target202159202540%_
                 _%tl202161202542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205114205115%_
                                                 _%e202156202532%_
                                                 _%hd202157202535%_
                                                 _%tl202158202537%_
                                                 _%__splice205079205080%_
                                                 _%target202159202540%_
                                                 _%tl202161202542%_))))
                                        (_%__match205114205115%_
                                         _%e202156202532%_
                                         _%hd202157202535%_
                                         _%tl202158202537%_
                                         _%__splice205079205080%_
                                         _%target202159202540%_
                                         _%tl202161202542%_))
                                    (_%__match205114205115%_
                                     _%e202156202532%_
                                     _%hd202157202535%_
                                     _%tl202158202537%_
                                     _%__splice205079205080%_
                                     _%target202159202540%_
                                     _%tl202161202542%_))
                                (_%__match205114205115%_
                                 _%e202156202532%_
                                 _%hd202157202535%_
                                 _%tl202158202537%_
                                 _%__splice205079205080%_
                                 _%target202159202540%_
                                 _%tl202161202542%_))))
                        (_%__match205114205115%_
                         _%e202156202532%_
                         _%hd202157202535%_
                         _%tl202158202537%_
                         _%__splice205079205080%_
                         _%target202159202540%_
                         _%tl202161202542%_))))
                (_%__match205114205115%_
                 _%e202156202532%_
                 _%hd202157202535%_
                 _%tl202158202537%_
                 _%__splice205079205080%_
                 _%target202159202540%_
                 _%tl202161202542%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202162202545%_
                                     _%target202159202540%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205075205076%_))
                              (let ((_%e202156202532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205075205076%_))))
                                (let ((_%tl202158202537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202156202532%_)))
                                      (_%hd202157202535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202156202532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202157202535%_))
                                      (let ((_%__splice205079205080%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202157202535%_
                                                '0))))
                                        (let ((_%tl202161202542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205079205080%_
                                                  '1)))
                                              (_%target202159202540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205079205080%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202161202542%_))
                                              (_%__match205102205103%_
                                               _%e202156202532%_
                                               _%hd202157202535%_
                                               _%tl202158202537%_
                                               _%__splice205079205080%_
                                               _%target202159202540%_
                                               _%tl202161202542%_)
                                              (_%__match205114205115%_
                                               _%e202156202532%_
                                               _%hd202157202535%_
                                               _%tl202158202537%_
                                               _%__splice205079205080%_
                                               _%target202159202540%_
                                               _%tl202161202542%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202158202537%_))
                                          (let ((_%e202244202288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202158202537%_))))
                                            (let ((_%tl202246202293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202244202288%_)))
                                                  (_%hd202245202291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202244202288%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202245202291%_))
                                                  (let ((_%e202247202296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202245202291%_))))
                                                    (let ((_%tl202249202301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202247202296%_)))
                                                          (_%hd202248202299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202247202296%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202248202299%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202248202299%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202249202301%_))
                          (let ((_%e202250202304%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202249202301%_))))
                            (let ((_%tl202252202309%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202250202304%_)))
                                  (_%hd202251202307%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202250202304%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202251202307%_))
                                  (let ((_%e202253202312%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202251202307%_))))
                                    (let ((_%tl202255202317%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202253202312%_)))
                                          (_%hd202254202315%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202253202312%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202254202315%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202254202315%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202255202317%_))
                                                  (let ((_%e202256202320%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202255202317%_))))
                                                    (let ((_%tl202258202325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202256202320%_)))
                                                          (_%hd202257202323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202256202320%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202258202325%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202252202309%_))
                      (let ((_%e202259202328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202252202309%_))))
                        (let ((_%tl202261202333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202259202328%_)))
                              (_%hd202260202331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202259202328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202260202331%_))
                              (let ((_%e202262202336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202260202331%_))))
                                (let ((_%tl202264202341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202262202336%_)))
                                      (_%hd202263202339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202262202336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202263202339%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202263202339%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202264202341%_))
                                              (let ((_%e202265202344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202264202341%_))))
                                                (let ((_%tl202267202349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202265202344%_)))
                                                      (_%hd202266202347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202265202344%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202267202349%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202261202333%_))
                                                          (let ((_%e202268202352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202261202333%_))))
                    (let ((_%tl202270202357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202268202352%_)))
                          (_%hd202269202355%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202268202352%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202270202357%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202246202293%_))
                              (_%__kont205087205088%_
                               _%hd202266202347%_
                               _%hd202257202323%_
                               _%hd202157202535%_)
                              (let ()
                                (declare (not safe))
                                (_%g202151202275%_)))
                          (let () (declare (not safe)) (_%g202151202275%_)))))
                  (let () (declare (not safe)) (_%g202151202275%_)))
              (let () (declare (not safe)) (_%g202151202275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202151202275%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202151202275%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202151202275%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202151202275%_)))))
                      (let () (declare (not safe)) (_%g202151202275%_)))
                  (let () (declare (not safe)) (_%g202151202275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202151202275%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202151202275%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202151202275%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202151202275%_)))))
                          (let () (declare (not safe)) (_%g202151202275%_)))
                      (let () (declare (not safe)) (_%g202151202275%_)))
                  (let () (declare (not safe)) (_%g202151202275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202151202275%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202151202275%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g202151202275%_))))))))
                 (_%generate1201998%_
                  (lambda (_%args202129%_
                           _%arglen202130%_
                           _%hd202131%_
                           _%body202132%_)
                    (let* ((_%len202134%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd202131%_)))
                           (_%condition202139%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd202131%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen202130%_
                                                (cons _%len202134%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen202130%_ (cons _%len202134%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len202134%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen202130%_
                                                    (cons _%len202134%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen202130%_ (cons _%len202134%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch202141%_
                            (if (_%dispatch-case?201996%_
                                 _%hd202131%_
                                 _%body202132%_)
                                (_%dispatch-case-e201997%_
                                 _%hd202131%_
                                 _%body202132%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self201993%_
                                 _%hd202131%_
                                 _%body202132%_))))
                      (cons _%condition202139%_
                            (cons (cons 'apply
                                        (cons _%dispatch202141%_
                                              (cons _%args202129%_ '())))
                                  '()))))))
          (let* ((_%g202000202028%_
                  (lambda (_%g202001202025%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202001202025%_))))
                 (_%g201999202126%_
                  (lambda (_%g202001202031%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202001202031%_))
                        (let ((_%e202004202033%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202001202031%_))))
                          (let ((_%hd202005202036%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202004202033%_)))
                                (_%tl202006202038%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202004202033%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202006202038%_))
                                (let ((_g206244_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl202006202038%_
                                          '0))))
                                  (begin
                                    (let ((_g206245_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206244_)
                                                 (##values-length _g206244_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206245_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206245_)))
                                    (let ((_%target202007202041%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206244_ 0)))
                                          (_%tl202009202043%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206244_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202009202043%_))
                                          (letrec ((_%loop202010202046%_
                                                    (lambda (_%hd202008202049%_
                                                             _%body202014202051%_
                                                             _%hd202015202052%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202008202049%_))
                                                          (let ((_%e202011202054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd202008202049%_))))
                    (let ((_%lp-hd202012202057%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202011202054%_)))
                          (_%lp-tl202013202059%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202011202054%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd202012202057%_))
                          (let ((_%e202018202062%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd202012202057%_))))
                            (let ((_%hd202019202065%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202018202062%_)))
                                  (_%tl202020202067%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202018202062%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202020202067%_))
                                  (let ((_%e202021202070%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202020202067%_))))
                                    (let ((_%hd202022202073%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202021202070%_)))
                                          (_%tl202023202075%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202021202070%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202023202075%_))
                                          (_%loop202010202046%_
                                           _%lp-tl202013202059%_
                                           (cons _%hd202022202073%_
                                                 _%body202014202051%_)
                                           (cons _%hd202019202065%_
                                                 _%hd202015202052%_))
                                          (_%g202000202028%_
                                           _%g202001202031%_))))
                                  (_%g202000202028%_ _%g202001202031%_))))
                          (_%g202000202028%_ _%g202001202031%_))))
                  (let ((_%body202016202078%_ (reverse _%body202014202051%_))
                        (_%hd202017202079%_ (reverse _%hd202015202052%_)))
                    ((lambda (_%g202002202081%_ _%g202003202082%_)
                       (let ((_%args202101%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen202102%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name202103%_
                              (let ((_%$e202098%_
                                     (let ((__tmp206246
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp206246 _%stx201994%_))))
                                (if _%$e202098%_
                                    _%$e202098%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args202101%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen202102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args202101%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args202101%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp206250
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name202103%_
                                                                (cons _%args202101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp206247
                                  (map (lambda (_%g202104202107%_
                                                _%g202105202109%_)
                                         (_%generate1201998%_
                                          _%args202101%_
                                          _%arglen202102%_
                                          _%g202104202107%_
                                          _%g202105202109%_))
                                       (let ((__tmp206248
                                              (lambda (_%g202111202114%_
                                                       _%g202112202116%_)
                                                (cons _%g202111202114%_
                                                      _%g202112202116%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206248
                                          '()
                                          _%g202003202082%_))
                                       (let ((__tmp206249
                                              (lambda (_%g202118202121%_
                                                       _%g202119202123%_)
                                                (cons _%g202118202121%_
                                                      _%g202119202123%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206249
                                          '()
                                          _%g202002202081%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp206250 __tmp206247)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body202016202078%_
                     _%hd202017202079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop202010202046%_
                                             _%target202007202041%_
                                             '()
                                             '()))
                                          (_%g202000202028%_
                                           _%g202001202031%_)))))
                                (_%g202000202028%_ _%g202001202031%_))))
                        (_%g202000202028%_ _%g202001202031%_)))))
            (_%g201999202126%_ _%stx201994%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self201230%_ _%stx201231%_ _%compiled-body?201232%_)
        (letrec ((_%generate-simple201234%_
                  (lambda (_%hd201978%_ _%body201979%_)
                    (_%coalesce-boolean201235%_
                     (_%simplify-let201236%_
                      (gxc#generate-runtime-simple-let
                       _%self201230%_
                       'let
                       _%hd201978%_
                       _%body201979%_
                       _%compiled-body?201232%_)))))
                 (_%coalesce-boolean201235%_
                  (lambda (_%code201839%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code201840201866%_ _%code201839%_)
                               (_%else201842201874%_
                                (lambda () _%code201839%_))
                               (_%K201844201911%_
                                (lambda (_%expr2201877%_
                                         _%expr1201878%_
                                         _%id201879%_)
                                  (let* ((_%expr2201880201888%_
                                          _%expr2201877%_)
                                         (_%else201882201896%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1201878%_
                                                        (cons _%expr2201877%_
                                                              '())))))
                                         (_%K201884201901%_
                                          (lambda (_%exprs201899%_)
                                            (cons 'or
                                                  (cons _%expr1201878%_
                                                        _%exprs201899%_)))))
                                    (if (pair? _%expr2201880201888%_)
                                        (let ((_%hd201885201904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2201880201888%_)))
                                              (_%tl201886201906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2201880201888%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201885201904%_ 'or))
                                              (let ((_%exprs201909%_
                                                     _%tl201886201906%_))
                                                (_%K201884201901%_
                                                 _%exprs201909%_))
                                              (_%else201882201896%_)))
                                        (_%else201882201896%_))))))
                          (if (pair? _%code201840201866%_)
                              (let ((_%hd201845201914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code201840201866%_)))
                                    (_%tl201846201916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code201840201866%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd201845201914%_ 'let))
                                    (if (pair? _%tl201846201916%_)
                                        (let ((_%hd201847201919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl201846201916%_)))
                                              (_%tl201848201921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl201846201916%_))))
                                          (if (pair? _%hd201847201919%_)
                                              (let ((_%hd201859201924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd201847201919%_)))
                                                    (_%tl201860201926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd201847201919%_))))
                                                (if (pair? _%hd201859201924%_)
                                                    (let ((_%hd201861201929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd201859201924%_)))
                                                          (_%tl201862201931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd201859201924%_))))
                                                      (let ((_%id201934%_
                                                             _%hd201861201929%_))
                                                        (if (pair? _%tl201862201931%_)
                                                            (let ((_%hd201863201936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl201862201931%_)))
                          (_%tl201864201938%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201862201931%_))))
                      (let ((_%expr1201941%_ _%hd201863201936%_))
                        (if (null? _%tl201864201938%_)
                            (if (null? _%tl201860201926%_)
                                (if (pair? _%tl201848201921%_)
                                    (let ((_%hd201849201943%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl201848201921%_)))
                                          (_%tl201850201945%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl201848201921%_))))
                                      (if (pair? _%hd201849201943%_)
                                          (let ((_%hd201851201948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd201849201943%_)))
                                                (_%tl201852201950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd201849201943%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201851201948%_
                                                         'if))
                                                (if (pair? _%tl201852201950%_)
                                                    (let ((_%hd201853201953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl201852201950%_)))
                                                          (_%tl201854201955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl201852201950%_))))
                                                      (if ((lambda (_%g201957201959%_)
                                                             (eq? _%g201957201959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id201934%_))
                   _%hd201853201953%_)
                  (if (pair? _%tl201854201955%_)
                      (let ((_%hd201855201962%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl201854201955%_)))
                            (_%tl201856201964%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl201854201955%_))))
                        (if ((lambda (_%g201966201968%_)
                               (eq? _%g201966201968%_ _%id201934%_))
                             _%hd201855201962%_)
                            (if (pair? _%tl201856201964%_)
                                (let ((_%hd201857201971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201856201964%_)))
                                      (_%tl201858201973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201856201964%_))))
                                  (let ((_%expr2201976%_ _%hd201857201971%_))
                                    (if (null? _%tl201858201973%_)
                                        (if (null? _%tl201850201945%_)
                                            (_%K201844201911%_
                                             _%expr2201976%_
                                             _%expr1201941%_
                                             _%id201934%_)
                                            (_%else201842201874%_))
                                        (_%else201842201874%_))))
                                (_%else201842201874%_))
                            (_%else201842201874%_)))
                      (_%else201842201874%_))
                  (_%else201842201874%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201842201874%_))
                                                (_%else201842201874%_)))
                                          (_%else201842201874%_)))
                                    (_%else201842201874%_))
                                (_%else201842201874%_))
                            (_%else201842201874%_))))
                    (_%else201842201874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201842201874%_)))
                                              (_%else201842201874%_)))
                                        (_%else201842201874%_))
                                    (_%else201842201874%_)))
                              (_%else201842201874%_)))
                        _%code201839%_)))
                 (_%simplify-let201236%_
                  (lambda (_%code201538%_)
                    (let* ((_%code201539201611%_ _%code201538%_)
                           (_%else201544201619%_ (lambda () _%code201538%_)))
                      (let ((_%K201603201819%_
                             (lambda (_%expr201817%_) _%expr201817%_))
                            (_%K201586201765%_
                             (lambda (_%body201761%_
                                      _%expr201762%_
                                      _%id201763%_)
                               (cons 'let
                                     (cons (cons (cons _%id201763%_
                                                       (cons _%expr201762%_
                                                             '()))
                                                 '())
                                           _%body201761%_))))
                            (_%K201563201689%_
                             (lambda (_%body201683%_
                                      _%expr2201684%_
                                      _%id2201685%_
                                      _%expr1201686%_
                                      _%id1201687%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201687%_
                                                       (cons _%expr1201686%_
                                                             '()))
                                                 (cons (cons _%id2201685%_
                                                             (cons _%expr2201684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body201683%_))))
                            (_%K201546201628%_
                             (lambda (_%body201623%_
                                      _%bind201624%_
                                      _%expr1201625%_
                                      _%id1201626%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201626%_
                                                       (cons _%expr1201625%_
                                                             '()))
                                                 _%bind201624%_)
                                           _%body201623%_)))))
                        (if (pair? _%code201539201611%_)
                            (let ((_%tl201605201824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code201539201611%_)))
                                  (_%hd201604201822%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code201539201611%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd201604201822%_ 'let))
                                  (if (pair? _%tl201605201824%_)
                                      (let ((_%tl201607201829%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl201605201824%_)))
                                            (_%hd201606201827%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl201605201824%_))))
                                        (if (null? _%hd201606201827%_)
                                            (if (pair? _%tl201607201829%_)
                                                (let ((_%tl201609201834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl201607201829%_)))
                                                      (_%hd201608201832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl201607201829%_))))
                                                  (if (null? _%tl201609201834%_)
                                                      (let ((_%expr201837%_
                                                             _%hd201608201832%_))
                                                        (_%K201603201819%_
                                                         _%expr201837%_))
                                                      (_%else201544201619%_)))
                                                (_%else201544201619%_))
                                            (if (pair? _%hd201606201827%_)
                                                (let ((_%tl201598201780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd201606201827%_)))
                                                      (_%hd201597201778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd201606201827%_))))
                                                  (if (pair? _%hd201597201778%_)
                                                      (let ((_%tl201600201785%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd201597201778%_)))
                    (_%hd201599201783%_
                     (let () (declare (not safe)) (##car _%hd201597201778%_))))
                (if (pair? _%tl201600201785%_)
                    (let ((_%tl201602201792%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201600201785%_)))
                          (_%hd201601201790%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl201600201785%_))))
                      (if (null? _%tl201602201792%_)
                          (if (null? _%tl201598201780%_)
                              (if (pair? _%tl201607201829%_)
                                  (let ((_%tl201592201799%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201607201829%_)))
                                        (_%hd201591201797%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201607201829%_))))
                                    (if (pair? _%hd201591201797%_)
                                        (let ((_%tl201594201804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd201591201797%_)))
                                              (_%hd201593201802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd201591201797%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201593201802%_
                                                       'let))
                                              (if (pair? _%tl201594201804%_)
                                                  (let ((_%tl201596201809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201594201804%_)))
                                                        (_%hd201595201807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201594201804%_))))
                                                    (if (null? _%hd201595201807%_)
                                                        (if (null? _%tl201592201799%_)
                                                            (let ((_%id201788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd201599201783%_)
                          (_%expr201795%_ _%hd201601201790%_)
                          (_%body201812%_ _%tl201596201809%_))
                      (_%K201586201765%_
                       _%body201812%_
                       _%expr201795%_
                       _%id201788%_))
                    (_%else201544201619%_))
                (if (pair? _%hd201595201807%_)
                    (let ((_%tl201575201738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd201595201807%_)))
                          (_%hd201574201736%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd201595201807%_))))
                      (if (pair? _%hd201574201736%_)
                          (let ((_%tl201577201743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd201574201736%_)))
                                (_%hd201576201741%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd201574201736%_))))
                            (if (pair? _%tl201577201743%_)
                                (let ((_%tl201579201750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201577201743%_)))
                                      (_%hd201578201748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201577201743%_))))
                                  (if (null? _%tl201579201750%_)
                                      (if (null? _%tl201575201738%_)
                                          (if (null? _%tl201592201799%_)
                                              (let ((_%id1201712%_
                                                     _%hd201599201783%_)
                                                    (_%expr1201719%_
                                                     _%hd201601201790%_)
                                                    (_%id2201746%_
                                                     _%hd201576201741%_)
                                                    (_%expr2201753%_
                                                     _%hd201578201748%_)
                                                    (_%body201755%_
                                                     _%tl201596201809%_))
                                                (_%K201563201689%_
                                                 _%body201755%_
                                                 _%expr2201753%_
                                                 _%id2201746%_
                                                 _%expr1201719%_
                                                 _%id1201712%_))
                                              (_%else201544201619%_))
                                          (_%else201544201619%_))
                                      (_%else201544201619%_)))
                                (_%else201544201619%_)))
                          (_%else201544201619%_)))
                    (_%else201544201619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201544201619%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd201593201802%_
                                                           'let*))
                                                  (if (pair? _%tl201594201804%_)
                                                      (let ((_%tl201556201672%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl201594201804%_)))
                    (_%hd201555201670%_
                     (let () (declare (not safe)) (##car _%tl201594201804%_))))
                (if (null? _%tl201592201799%_)
                    (let ((_%id1201651%_ _%hd201599201783%_)
                          (_%expr1201658%_ _%hd201601201790%_)
                          (_%bind201675%_ _%hd201555201670%_)
                          (_%body201677%_ _%tl201556201672%_))
                      (_%K201546201628%_
                       _%body201677%_
                       _%bind201675%_
                       _%expr1201658%_
                       _%id1201651%_))
                    (_%else201544201619%_)))
              (_%else201544201619%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201544201619%_))))
                                        (_%else201544201619%_)))
                                  (_%else201544201619%_))
                              (_%else201544201619%_))
                          (_%else201544201619%_)))
                    (_%else201544201619%_)))
              (_%else201544201619%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else201544201619%_))))
                                      (_%else201544201619%_))
                                  (_%else201544201619%_)))
                            (_%else201544201619%_))))))
                 (_%generate-values201237%_
                  (lambda (_%hd201351%_ _%body201352%_)
                    (let _%lp201354%_ ((_%rest201356%_ _%hd201351%_)
                                       (_%bind201357%_ '())
                                       (_%check201358%_ '())
                                       (_%post201359%_ '()))
                      (let* ((_%__stx205404205405%_ _%rest201356%_)
                             (_%g201362201373%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205404205405%_)))))
                        (let ((_%__kont205406205407%_
                               (lambda (_%g201364201400%_ _%g201365201401%_)
                                 (let* ((_%__stx205360205361%_
                                         _%g201365201401%_)
                                        (_%g201416201441%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205360205361%_)))))
                                   (let ((_%__kont205362205363%_
                                          (lambda (_%g201418201514%_
                                                   _%g201419201515%_)
                                            (let ((_%eid201529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201419201515%_)))
                                                  (_%expr201530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201230%_
                                                      _%g201418201514%_))))
                                              (_%lp201354%_
                                               _%g201364201400%_
                                               (cons (cons _%eid201529%_
                                                           (cons _%expr201530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201357%_)
                                               _%check201358%_
                                               _%post201359%_))))
                                         (_%__kont205364205365%_
                                          (lambda (_%g201429201462%_
                                                   _%g201430201463%_)
                                            (let* ((_%vals201476%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201478%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201476%_
                                                     _%g201430201463%_
                                                     _%g201429201462%_))
                                                   (_%refs201480%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201476%_
                                                     _%g201430201463%_))
                                                   (_%expr201482%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201230%_
                                                       _%g201429201462%_))))
                                              (_%lp201354%_
                                               _%g201364201400%_
                                               (cons (cons _%vals201476%_
                                                           (cons _%expr201482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201357%_)
                                               (cons _%check-values201478%_
                                                     _%check201358%_)
                                               (cons _%refs201480%_
                                                     _%post201359%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205360205361%_))
                                         (let ((_%e201420201490%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205360205361%_))))
                                           (let ((_%tl201422201495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201420201490%_)))
                                                 (_%hd201421201493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201420201490%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201421201493%_))
                                                 (let ((_%e201423201498%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201421201493%_))))
                                                   (let ((_%tl201425201503%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201423201498%_)))
                                                         (_%hd201424201501%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201423201498%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201425201503%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201422201495%_))
                     (let ((_%e201426201506%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201422201495%_))))
                       (let ((_%tl201428201511%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201426201506%_)))
                             (_%hd201427201509%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201426201506%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201428201511%_))
                             (_%__kont205362205363%_
                              _%hd201427201509%_
                              _%hd201424201501%_)
                             (let ()
                               (declare (not safe))
                               (_%g201416201441%_)))))
                     (let () (declare (not safe)) (_%g201416201441%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201422201495%_))
                     (let ((_%e201434201454%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201422201495%_))))
                       (let ((_%tl201436201459%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201434201454%_)))
                             (_%hd201435201457%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201434201454%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201436201459%_))
                             (_%__kont205364205365%_
                              _%hd201435201457%_
                              _%hd201421201493%_)
                             (let ()
                               (declare (not safe))
                               (_%g201416201441%_)))))
                     (let () (declare (not safe)) (_%g201416201441%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201422201495%_))
                                                     (let ((_%e201434201454%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201422201495%_))))
                                                       (let ((_%tl201436201459%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201434201454%_)))
                     (_%hd201435201457%_
                      (let () (declare (not safe)) (##car _%e201434201454%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201436201459%_))
                     (_%__kont205364205365%_
                      _%hd201435201457%_
                      _%hd201421201493%_)
                     (let () (declare (not safe)) (_%g201416201441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201416201441%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201416201441%_)))))))
                              (_%__kont205408205409%_
                               (lambda ()
                                 (let* ((_%body201380%_
                                         (if _%compiled-body?201232%_
                                             _%body201352%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201230%_
                                                _%body201352%_))))
                                        (_%body201382%_
                                         (_%generate-values-post201238%_
                                          _%post201359%_
                                          _%body201380%_))
                                        (_%body201384%_
                                         (_%generate-values-check201239%_
                                          _%check201358%_
                                          _%body201382%_)))
                                   (cons 'let
                                         (cons (reverse _%bind201357%_)
                                               (cons _%body201384%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205404205405%_))
                              (let ((_%e201366201392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205404205405%_))))
                                (let ((_%tl201368201397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201366201392%_)))
                                      (_%hd201367201395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201366201392%_))))
                                  (_%__kont205406205407%_
                                   _%tl201368201397%_
                                   _%hd201367201395%_)))
                              (_%__kont205408205409%_)))))))
                 (_%generate-values-post201238%_
                  (lambda (_%post201310%_ _%body201311%_)
                    (let _%lp201313%_ ((_%rest201315%_ _%post201310%_)
                                       (_%body201316%_ _%body201311%_))
                      (let* ((_%rest201317201325%_ _%rest201315%_)
                             (_%else201319201333%_ (lambda () _%body201316%_))
                             (_%K201321201339%_
                              (lambda (_%rest201336%_ _%bind201337%_)
                                (_%lp201313%_
                                 _%rest201336%_
                                 (cons 'let
                                       (cons _%bind201337%_
                                             (cons _%body201316%_ '())))))))
                        (if (pair? _%rest201317201325%_)
                            (let ((_%hd201322201342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201317201325%_)))
                                  (_%tl201323201344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201317201325%_))))
                              (let* ((_%bind201347%_ _%hd201322201342%_)
                                     (_%rest201349%_ _%tl201323201344%_))
                                (_%K201321201339%_
                                 _%rest201349%_
                                 _%bind201347%_)))
                            (_%else201319201333%_))))))
                 (_%generate-values-check201239%_
                  (lambda (_%check201307%_ _%body201308%_)
                    (cons 'begin
                          (let ((__tmp206252 (cons _%body201308%_ '()))
                                (__tmp206251 (reverse _%check201307%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206252 __tmp206251))))))
          (let* ((_%g201241201258%_
                  (lambda (_%g201242201255%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201242201255%_))))
                 (_%g201240201304%_
                  (lambda (_%g201242201261%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201242201261%_))
                        (let ((_%e201245201263%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201242201261%_))))
                          (let ((_%hd201246201266%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201245201263%_)))
                                (_%tl201247201268%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201245201263%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201247201268%_))
                                (let ((_%e201248201271%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201247201268%_))))
                                  (let ((_%hd201249201274%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201248201271%_)))
                                        (_%tl201250201276%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201248201271%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201250201276%_))
                                        (let ((_%e201251201279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201250201276%_))))
                                          (let ((_%hd201252201282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201251201279%_)))
                                                (_%tl201253201284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201251201279%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201253201284%_))
                                                ((lambda (_%g201243201287%_
                                                          _%g201244201288%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201244201288%_)
                                                       (_%generate-simple201234%_
                                                        _%g201244201288%_
                                                        _%g201243201287%_)
                                                       (_%generate-values201237%_
                                                        _%g201244201288%_
                                                        _%g201243201287%_)))
                                                 _%hd201252201282%_
                                                 _%hd201249201274%_)
                                                (_%g201241201258%_
                                                 _%g201242201261%_))))
                                        (_%g201241201258%_
                                         _%g201242201261%_))))
                                (_%g201241201258%_ _%g201242201261%_))))
                        (_%g201241201258%_ _%g201242201261%_)))))
            (_%g201240201304%_ _%stx201231%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self201984%_ _%stx201985%_)
        (let ((_%compiled-body?201987%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self201984%_
           _%stx201985%_
           _%compiled-body?201987%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g206253_
        (let ((_g206254_ (let () (declare (not safe)) (##length _g206253_))))
          (cond ((let () (declare (not safe)) (##fx= _g206254_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g206253_))
                ((let () (declare (not safe)) (##fx= _g206254_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g206253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g206253_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals201124%_ _%hd201125%_)
        (let _%lp201127%_ ((_%rest201129%_ _%hd201125%_)
                           (_%k201130%_ '0)
                           (_%r201131%_ '()))
          (let* ((_%__stx205418205419%_ _%rest201129%_)
                 (_%g201136201153%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205418205419%_)))))
            (let ((_%__kont205420205421%_
                   (lambda (_%g201138201216%_)
                     (_%lp201127%_
                      _%g201138201216%_
                      (let () (declare (not safe)) (##fx+ _%k201130%_ '1))
                      _%r201131%_)))
                  (_%__kont205422205423%_
                   (lambda (_%g201143201189%_ _%g201144201190%_)
                     (_%lp201127%_
                      _%g201143201189%_
                      (let () (declare (not safe)) (##fx+ _%k201130%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g201144201190%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals201124%_
                                         _%k201130%_
                                         _%g201143201189%_)
                                        '()))
                            _%r201131%_))))
                  (_%__kont205424205425%_
                   (lambda (_%g201148201165%_)
                     (let ((__tmp206255
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g201148201165%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals201124%_
                                               _%k201130%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp206255 _%r201131%_))))
                  (_%__kont205426205427%_ (lambda () (reverse _%r201131%_))))
              (let ((_%g201134201176%_
                     (lambda ()
                       (let ((_%g201148201165%_ _%__stx205418205419%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g201148201165%_))
                             (_%__kont205424205425%_ _%g201148201165%_)
                             (_%__kont205426205427%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx205418205419%_))
                    (let ((_%e201139201205%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx205418205419%_))))
                      (let ((_%tl201141201210%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201139201205%_)))
                            (_%hd201140201208%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201139201205%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd201140201208%_))
                            (let ((_%e201142201213%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd201140201208%_))))
                              (if (equal? _%e201142201213%_ '#f)
                                  (_%__kont205420205421%_ _%tl201141201210%_)
                                  (_%__kont205422205423%_
                                   _%tl201141201210%_
                                   _%hd201140201208%_)))
                            (_%__kont205422205423%_
                             _%tl201141201210%_
                             _%hd201140201208%_))))
                    (let () (declare (not safe)) (_%g201134201176%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self200803%_ _%stx200804%_ _%compiled-body?200805%_)
        (letrec ((_%generate-simple200807%_
                  (lambda (_%hd201109%_ _%body201110%_)
                    (gxc#generate-runtime-simple-let
                     _%self200803%_
                     'letrec
                     _%hd201109%_
                     _%body201110%_
                     _%compiled-body?200805%_)))
                 (_%generate-values200808%_
                  (lambda (_%hd200888%_ _%body200889%_)
                    (let _%lp200891%_ ((_%rest200893%_ _%hd200888%_)
                                       (_%bind200894%_ '())
                                       (_%check200895%_ '())
                                       (_%post200896%_ '()))
                      (let* ((_%__stx205492205493%_ _%rest200893%_)
                             (_%g200899200910%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205492205493%_)))))
                        (let ((_%__kont205494205495%_
                               (lambda (_%g200901200937%_ _%g200902200938%_)
                                 (let* ((_%__stx205448205449%_
                                         _%g200902200938%_)
                                        (_%g200953200978%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205448205449%_)))))
                                   (let ((_%__kont205450205451%_
                                          (lambda (_%g200955201085%_
                                                   _%g200956201086%_)
                                            (let ((_%eid201100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g200956201086%_)))
                                                  (_%expr201101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200803%_
                                                      _%g200955201085%_))))
                                              (_%lp200891%_
                                               _%g200901200937%_
                                               (cons (cons _%eid201100%_
                                                           (cons _%expr201101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200894%_)
                                               _%check200895%_
                                               _%post200896%_))))
                                         (_%__kont205452205453%_
                                          (lambda (_%g200966200999%_
                                                   _%g200967201000%_)
                                            (let* ((_%vals201013%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201015%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201013%_
                                                     _%g200967201000%_
                                                     _%g200966200999%_))
                                                   (_%refs201017%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201013%_
                                                     _%g200967201000%_))
                                                   (_%expr201019%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200803%_
                                                       _%g200966200999%_))))
                                              (_%lp200891%_
                                               _%g200901200937%_
                                               (let ((__tmp206257
                                                      (cons (cons _%vals201013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr201019%_ '()))
                    _%bind200894%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp206256
                                                      (map (lambda (_%e201021201023%_)
                                                             (let* ((_%e201021201025201034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e201021201023%_)
                            (_%E201027201038%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e201021201025201034%_
                                        '([eid _])))
                               '#!void))
                            (_%K201028201043%_
                             (lambda (_%eid201041%_)
                               (cons _%eid201041%_ (cons '#!void '())))))
                       (if (pair? _%e201021201025201034%_)
                           (let ((_%hd201029201046%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201021201025201034%_)))
                                 (_%tl201030201048%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201021201025201034%_))))
                             (let ((_%eid201051%_ _%hd201029201046%_))
                               (if (pair? _%tl201030201048%_)
                                   (let ((_%tl201032201053%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl201030201048%_))))
                                     (if (null? _%tl201032201053%_)
                                         (_%K201028201043%_ _%eid201051%_)
                                         (_%E201027201038%_)))
                                   (_%E201027201038%_))))
                           (_%E201027201038%_))))
                   _%refs201017%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp206257
                                                  __tmp206256))
                                               (cons _%check-values201015%_
                                                     _%check200895%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs201017%_
                                                  _%post200896%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205448205449%_))
                                         (let ((_%e200957201061%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205448205449%_))))
                                           (let ((_%tl200959201066%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200957201061%_)))
                                                 (_%hd200958201064%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200957201061%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200958201064%_))
                                                 (let ((_%e200960201069%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd200958201064%_))))
                                                   (let ((_%tl200962201074%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200960201069%_)))
                                                         (_%hd200961201072%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200960201069%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200962201074%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200959201066%_))
                     (let ((_%e200963201077%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200959201066%_))))
                       (let ((_%tl200965201082%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200963201077%_)))
                             (_%hd200964201080%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200963201077%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200965201082%_))
                             (_%__kont205450205451%_
                              _%hd200964201080%_
                              _%hd200961201072%_)
                             (let ()
                               (declare (not safe))
                               (_%g200953200978%_)))))
                     (let () (declare (not safe)) (_%g200953200978%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl200959201066%_))
                     (let ((_%e200971200991%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200959201066%_))))
                       (let ((_%tl200973200996%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200971200991%_)))
                             (_%hd200972200994%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200971200991%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200973200996%_))
                             (_%__kont205452205453%_
                              _%hd200972200994%_
                              _%hd200958201064%_)
                             (let ()
                               (declare (not safe))
                               (_%g200953200978%_)))))
                     (let () (declare (not safe)) (_%g200953200978%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl200959201066%_))
                                                     (let ((_%e200971200991%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl200959201066%_))))
                                                       (let ((_%tl200973200996%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e200971200991%_)))
                     (_%hd200972200994%_
                      (let () (declare (not safe)) (##car _%e200971200991%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl200973200996%_))
                     (_%__kont205452205453%_
                      _%hd200972200994%_
                      _%hd200958201064%_)
                     (let () (declare (not safe)) (_%g200953200978%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200953200978%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g200953200978%_)))))))
                              (_%__kont205496205497%_
                               (lambda ()
                                 (let* ((_%body200917%_
                                         (if _%compiled-body?200805%_
                                             _%body200889%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200803%_
                                                _%body200889%_))))
                                        (_%body200919%_
                                         (_%generate-values-post200810%_
                                          _%post200896%_
                                          _%body200917%_))
                                        (_%body200921%_
                                         (_%generate-values-check200809%_
                                          _%check200895%_
                                          _%body200919%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind200894%_)
                                               (cons _%body200921%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205492205493%_))
                              (let ((_%e200903200929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205492205493%_))))
                                (let ((_%tl200905200934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200903200929%_)))
                                      (_%hd200904200932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200903200929%_))))
                                  (_%__kont205494205495%_
                                   _%tl200905200934%_
                                   _%hd200904200932%_)))
                              (_%__kont205496205497%_)))))))
                 (_%generate-values-check200809%_
                  (lambda (_%check200885%_ _%body200886%_)
                    (cons 'begin
                          (let ((__tmp206259 (cons _%body200886%_ '()))
                                (__tmp206258 (reverse _%check200885%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206259 __tmp206258)))))
                 (_%generate-values-post200810%_
                  (lambda (_%post200878%_ _%body200879%_)
                    (cons 'begin
                          (let ((__tmp206263 (cons _%body200879%_ '()))
                                (__tmp206260
                                 (let ((__tmp206262
                                        (lambda (_%g200880200882%_)
                                          (cons 'set! _%g200880200882%_)))
                                       (__tmp206261 (reverse _%post200878%_)))
                                   (declare (not safe))
                                   (##map __tmp206262 __tmp206261))))
                            (declare (not safe))
                            (foldr__0 cons __tmp206263 __tmp206260))))))
          (let* ((_%g200812200829%_
                  (lambda (_%g200813200826%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200813200826%_))))
                 (_%g200811200875%_
                  (lambda (_%g200813200832%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200813200832%_))
                        (let ((_%e200816200834%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200813200832%_))))
                          (let ((_%hd200817200837%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200816200834%_)))
                                (_%tl200818200839%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200816200834%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200818200839%_))
                                (let ((_%e200819200842%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200818200839%_))))
                                  (let ((_%hd200820200845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200819200842%_)))
                                        (_%tl200821200847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200819200842%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200821200847%_))
                                        (let ((_%e200822200850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200821200847%_))))
                                          (let ((_%hd200823200853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200822200850%_)))
                                                (_%tl200824200855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200822200850%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200824200855%_))
                                                ((lambda (_%g200814200858%_
                                                          _%g200815200859%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200815200859%_)
                                                       (_%generate-simple200807%_
                                                        _%g200815200859%_
                                                        _%g200814200858%_)
                                                       (_%generate-values200808%_
                                                        _%g200815200859%_
                                                        _%g200814200858%_)))
                                                 _%hd200823200853%_
                                                 _%hd200820200845%_)
                                                (_%g200812200829%_
                                                 _%g200813200832%_))))
                                        (_%g200812200829%_
                                         _%g200813200832%_))))
                                (_%g200812200829%_ _%g200813200832%_))))
                        (_%g200812200829%_ _%g200813200832%_)))))
            (_%g200811200875%_ _%stx200804%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self201115%_ _%stx201116%_)
        (let ((_%compiled-body?201118%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self201115%_
           _%stx201116%_
           _%compiled-body?201118%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g206264_
        (let ((_g206265_ (let () (declare (not safe)) (##length _g206264_))))
          (cond ((let () (declare (not safe)) (##fx= _g206265_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g206264_))
                ((let () (declare (not safe)) (##fx= _g206265_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g206264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g206264_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self200384%_ _%stx200385%_)
        (letrec ((_%generate-values200387%_
                  (lambda (_%hd200630%_ _%body200631%_)
                    (let _%lp200633%_ ((_%rest200635%_ _%hd200630%_)
                                       (_%bind200636%_ '()))
                      (let* ((_%rest200637200645%_ _%rest200635%_)
                             (_%else200639200656%_
                              (lambda ()
                                (let ((_%bind200653%_ (reverse _%bind200636%_))
                                      (_%body200654%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self200384%_
                                          _%body200631%_))))
                                  (cons 'letrec*
                                        (cons _%bind200653%_
                                              (cons _%body200654%_ '()))))))
                             (_%K200641200790%_
                              (lambda (_%rest200659%_ _%hd-bind200660%_)
                                (let* ((_%__stx205506205507%_
                                        _%hd-bind200660%_)
                                       (_%g200663200688%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205506205507%_)))))
                                  (let ((_%__kont205508205509%_
                                         (lambda (_%g200665200769%_
                                                  _%g200666200770%_)
                                           (let ((_%eid200784%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g200666200770%_)))
                                                 (_%expr200785%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self200384%_
                                                     _%g200665200769%_))))
                                             (_%lp200633%_
                                              _%rest200659%_
                                              (cons (cons _%eid200784%_
                                                          (cons _%expr200785%_
                                                                '()))
                                                    _%bind200636%_)))))
                                        (_%__kont205510205511%_
                                         (lambda (_%g200676200709%_
                                                  _%g200677200710%_)
                                           (let* ((_%vals200729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp200731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values200733%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp200731%_
                                                    _%g200677200710%_
                                                    _%g200676200709%_))
                                                  (_%refs200735%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals200729%_
                                                    _%g200677200710%_))
                                                  (_%expr200737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200384%_
                                                      _%g200676200709%_))))
                                             (_%lp200633%_
                                              _%rest200659%_
                                              (let ((__tmp206266
                                                     (cons (cons _%vals200729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp200731%_
                                                       (cons _%expr200737%_
                                                             '()))
                                                 '())
                                           (cons _%check-values200733%_
                                                 (cons _%tmp200731%_ '()))))
                               '()))
                   _%bind200636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp206266
                                                 _%refs200735%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205506205507%_))
                                        (let ((_%e200667200745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205506205507%_))))
                                          (let ((_%tl200669200750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200667200745%_)))
                                                (_%hd200668200748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200667200745%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200668200748%_))
                                                (let ((_%e200670200753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200668200748%_))))
                                                  (let ((_%tl200672200758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200670200753%_)))
                                                        (_%hd200671200756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200670200753%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200672200758%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200669200750%_))
                                                            (let ((_%e200673200761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200669200750%_))))
                      (let ((_%tl200675200766%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200673200761%_)))
                            (_%hd200674200764%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200673200761%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200675200766%_))
                            (_%__kont205508205509%_
                             _%hd200674200764%_
                             _%hd200671200756%_)
                            (let ()
                              (declare (not safe))
                              (_%g200663200688%_)))))
                    (let () (declare (not safe)) (_%g200663200688%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200669200750%_))
                    (let ((_%e200681200701%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200669200750%_))))
                      (let ((_%tl200683200706%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200681200701%_)))
                            (_%hd200682200704%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200681200701%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200683200706%_))
                            (_%__kont205510205511%_
                             _%hd200682200704%_
                             _%hd200668200748%_)
                            (let ()
                              (declare (not safe))
                              (_%g200663200688%_)))))
                    (let () (declare (not safe)) (_%g200663200688%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200669200750%_))
                                                    (let ((_%e200681200701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200669200750%_))))
                                                      (let ((_%tl200683200706%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200681200701%_)))
                    (_%hd200682200704%_
                     (let () (declare (not safe)) (##car _%e200681200701%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200683200706%_))
                    (_%__kont205510205511%_
                     _%hd200682200704%_
                     _%hd200668200748%_)
                    (let () (declare (not safe)) (_%g200663200688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200663200688%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200663200688%_))))))))
                        (if (pair? _%rest200637200645%_)
                            (let ((_%hd200642200793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200637200645%_)))
                                  (_%tl200643200795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200637200645%_))))
                              (let* ((_%hd-bind200798%_ _%hd200642200793%_)
                                     (_%rest200800%_ _%tl200643200795%_))
                                (_%K200641200790%_
                                 _%rest200800%_
                                 _%hd-bind200798%_)))
                            (_%else200639200656%_))))))
                 (_%generate-letrec?200388%_
                  (lambda (_%hd200520%_)
                    (let _%lp200522%_ ((_%rest200524%_ _%hd200520%_))
                      (let* ((_%rest200525200533%_ _%rest200524%_)
                             (_%else200527200541%_ (lambda () '#t))
                             (_%K200529200618%_
                              (lambda (_%rest200544%_ _%hd-bind200545%_)
                                (let* ((_%g200547200564%_
                                        (lambda (_%g200548200561%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g200548200561%_))))
                                       (_%g200546200615%_
                                        (lambda (_%g200548200567%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g200548200567%_))
                                              (let ((_%e200551200569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g200548200567%_))))
                                                (let ((_%hd200552200572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200551200569%_)))
                                                      (_%tl200553200574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200551200569%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd200552200572%_))
                                                      (let ((_%e200554200577%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd200552200572%_))))
                (let ((_%hd200555200580%_
                       (let () (declare (not safe)) (##car _%e200554200577%_)))
                      (_%tl200556200582%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200554200577%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200556200582%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200553200574%_))
                          (let ((_%e200557200585%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200553200574%_))))
                            (let ((_%hd200558200588%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200557200585%_)))
                                  (_%tl200559200590%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200557200585%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200559200590%_))
                                  ((lambda (_%g200549200593%_
                                            _%g200550200594%_)
                                     (if (_%is-lambda-expr?200389%_
                                          _%g200549200593%_)
                                         (_%lp200522%_ _%rest200544%_)
                                         '#f))
                                   _%hd200558200588%_
                                   _%hd200555200580%_)
                                  (_%g200547200564%_ _%g200548200567%_))))
                          (_%g200547200564%_ _%g200548200567%_))
                      (_%g200547200564%_ _%g200548200567%_))))
              (_%g200547200564%_ _%g200548200567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200547200564%_
                                               _%g200548200567%_)))))
                                  (_%g200546200615%_ _%hd-bind200545%_)))))
                        (if (pair? _%rest200525200533%_)
                            (let ((_%hd200530200621%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200525200533%_)))
                                  (_%tl200531200623%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200525200533%_))))
                              (let* ((_%hd-bind200626%_ _%hd200530200621%_)
                                     (_%rest200628%_ _%tl200531200623%_))
                                (_%K200529200618%_
                                 _%rest200628%_
                                 _%hd-bind200626%_)))
                            (_%else200527200541%_))))))
                 (_%is-lambda-expr?200389%_
                  (lambda (_%expr200457%_)
                    (let* ((_%__stx205550205551%_ _%expr200457%_)
                           (_%g200460200474%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205550205551%_)))))
                      (let ((_%__kont205552205553%_
                             (lambda (_%g200462200502%_ _%g200463200503%_)
                               '#t))
                            (_%__kont205554205555%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx205550205551%_))
                            (let ((_%e200464200486%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx205550205551%_))))
                              (let ((_%tl200466200491%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200464200486%_)))
                                    (_%hd200465200489%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200464200486%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200465200489%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd200465200489%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200466200491%_))
                                            (let ((_%e200467200494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200466200491%_))))
                                              (let ((_%tl200469200499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200467200494%_)))
                                                    (_%hd200468200497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200467200494%_))))
                                                (_%__kont205552205553%_
                                                 _%tl200469200499%_
                                                 _%hd200468200497%_)))
                                            (_%__kont205554205555%_))
                                        (_%__kont205554205555%_))
                                    (_%__kont205554205555%_))))
                            (_%__kont205554205555%_)))))))
          (let* ((_%g200391200408%_
                  (lambda (_%g200392200405%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200392200405%_))))
                 (_%g200390200454%_
                  (lambda (_%g200392200411%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200392200411%_))
                        (let ((_%e200395200413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200392200411%_))))
                          (let ((_%hd200396200416%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200395200413%_)))
                                (_%tl200397200418%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200395200413%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200397200418%_))
                                (let ((_%e200398200421%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200397200418%_))))
                                  (let ((_%hd200399200424%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200398200421%_)))
                                        (_%tl200400200426%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200398200421%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200400200426%_))
                                        (let ((_%e200401200429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200400200426%_))))
                                          (let ((_%hd200402200432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200401200429%_)))
                                                (_%tl200403200434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200401200429%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200403200434%_))
                                                ((lambda (_%g200393200437%_
                                                          _%g200394200438%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200394200438%_)
                                                       (if (_%generate-letrec?200388%_
                                                            _%g200394200438%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self200384%_
                                                            'letrec
                                                            _%g200394200438%_
                                                            _%g200393200437%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self200384%_
                                                            'letrec*
                                                            _%g200394200438%_
                                                            _%g200393200437%_
                                                            '#f))
                                                       (_%generate-values200387%_
                                                        _%g200394200438%_
                                                        _%g200393200437%_)))
                                                 _%hd200402200432%_
                                                 _%hd200399200424%_)
                                                (_%g200391200408%_
                                                 _%g200392200411%_))))
                                        (_%g200391200408%_
                                         _%g200392200411%_))))
                                (_%g200391200408%_ _%g200392200411%_))))
                        (_%g200391200408%_ _%g200392200411%_)))))
            (_%g200390200454%_ _%stx200385%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd200321%_)
        (let _%lp200323%_ ((_%rest200325%_ _%hd200321%_))
          (let* ((_%rest200326200342%_ _%rest200325%_)
                 (_%else200329200350%_ (lambda () '#f)))
            (let ((_%K200332200363%_
                   (lambda (_%rest200361%_) (_%lp200323%_ _%rest200361%_)))
                  (_%K200331200355%_ (lambda () '#t)))
              (let ((_%try-match200328200358%_
                     (lambda ()
                       (if (null? _%rest200326200342%_)
                           (_%K200331200355%_)
                           (_%else200329200350%_)))))
                (if (pair? _%rest200326200342%_)
                    (let ((_%tl200334200368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200326200342%_)))
                          (_%hd200333200366%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200326200342%_))))
                      (if (pair? _%hd200333200366%_)
                          (let ((_%tl200336200373%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd200333200366%_)))
                                (_%hd200335200371%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd200333200366%_))))
                            (if (pair? _%hd200335200371%_)
                                (let ((_%tl200340200376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200335200371%_))))
                                  (if (null? _%tl200340200376%_)
                                      (if (pair? _%tl200336200373%_)
                                          (let ((_%tl200338200379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl200336200373%_))))
                                            (if (null? _%tl200338200379%_)
                                                (let ((_%rest200382%_
                                                       _%tl200334200368%_))
                                                  (_%lp200323%_
                                                   _%rest200382%_))
                                                (_%else200329200350%_)))
                                          (_%else200329200350%_))
                                      (_%else200329200350%_)))
                                (_%else200329200350%_)))
                          (_%else200329200350%_)))
                    (_%try-match200328200358%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self200233%_
               _%form200234%_
               _%hd200235%_
               _%body200236%_
               _%compiled-body?200237%_)
        (letrec ((_%generate1200239%_
                  (lambda (_%bind200278%_)
                    (let* ((_%bind200279200290%_ _%bind200278%_)
                           (_%E200281200293%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind200279200290%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K200282200299%_
                            (lambda (_%expr200296%_ _%id200297%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id200297%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self200233%_
                                             _%expr200296%_))
                                          '())))))
                      (if (pair? _%bind200279200290%_)
                          (let ((_%hd200283200302%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind200279200290%_)))
                                (_%tl200284200304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind200279200290%_))))
                            (if (pair? _%hd200283200302%_)
                                (let ((_%hd200287200307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd200283200302%_)))
                                      (_%tl200288200309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200283200302%_))))
                                  (let ((_%id200312%_ _%hd200287200307%_))
                                    (if (null? _%tl200288200309%_)
                                        (if (pair? _%tl200284200304%_)
                                            (let ((_%hd200285200314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl200284200304%_)))
                                                  (_%tl200286200316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl200284200304%_))))
                                              (let ((_%expr200319%_
                                                     _%hd200285200314%_))
                                                (if (null? _%tl200286200316%_)
                                                    (_%K200282200299%_
                                                     _%expr200319%_
                                                     _%id200312%_)
                                                    (_%E200281200293%_))))
                                            (_%E200281200293%_))
                                        (_%E200281200293%_))))
                                (_%E200281200293%_)))
                          (_%E200281200293%_))))))
          (let* ((_%bind200241%_ (map _%generate1200239%_ _%hd200235%_))
                 (_%body200243%_
                  (if _%compiled-body?200237%_
                      _%body200236%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self200233%_ _%body200236%_))))
                 (_%body200275%_
                  (let* ((_%body200244200252%_ _%body200243%_)
                         (_%else200246200260%_
                          (lambda () (cons _%body200243%_ '())))
                         (_%K200248200265%_
                          (lambda (_%exprs200263%_) _%exprs200263%_)))
                    (if (pair? _%body200244200252%_)
                        (let ((_%hd200249200268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body200244200252%_)))
                              (_%tl200250200270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body200244200252%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd200249200268%_ 'begin))
                              (let ((_%exprs200273%_ _%tl200250200270%_))
                                (_%K200248200265%_ _%exprs200273%_))
                              (_%else200246200260%_)))
                        (_%else200246200260%_)))))
            (cons _%form200234%_ (cons _%bind200241%_ _%body200275%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self200133%_ _%stx200134%_)
        (letrec ((_%generate1200136%_
                  (lambda (_%datum200188%_)
                    (if (or (null? _%datum200188%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum200188%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum200188%_))
                            (eof-object? _%datum200188%_))
                        _%datum200188%_
                        (if (uninterned-symbol? _%datum200188%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum200188%_
                               '#t))
                            (if (pair? _%datum200188%_)
                                (cons (_%generate1200136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum200188%_)))
                                      (_%generate1200136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum200188%_))))
                                (if (box? _%datum200188%_)
                                    (box (_%generate1200136%_
                                          (unbox _%datum200188%_)))
                                    (if (vector? _%datum200188%_)
                                        (vector-map
                                         _%generate1200136%_
                                         _%datum200188%_)
                                        (if (or (s8vector? _%datum200188%_)
                                                (u8vector? _%datum200188%_)
                                                (s16vector? _%datum200188%_)
                                                (u16vector? _%datum200188%_)
                                                (s32vector? _%datum200188%_)
                                                (u32vector? _%datum200188%_)
                                                (s64vector? _%datum200188%_)
                                                (u64vector? _%datum200188%_)
                                                (f32vector? _%datum200188%_)
                                                (f64vector? _%datum200188%_))
                                            _%datum200188%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx200134%_)))))))))))
          (let* ((_%g200138200151%_
                  (lambda (_%g200139200148%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200139200148%_))))
                 (_%g200137200185%_
                  (lambda (_%g200139200154%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200139200154%_))
                        (let ((_%e200141200156%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200139200154%_))))
                          (let ((_%hd200142200159%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200141200156%_)))
                                (_%tl200143200161%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200141200156%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200143200161%_))
                                (let ((_%e200144200164%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200143200161%_))))
                                  (let ((_%hd200145200167%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200144200164%_)))
                                        (_%tl200146200169%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200144200164%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200146200169%_))
                                        ((lambda (_%g200140200172%_)
                                           (cons 'quote
                                                 (cons (_%generate1200136%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g200140200172%_)))
                                                       '())))
                                         _%hd200145200167%_)
                                        (_%g200138200151%_
                                         _%g200139200154%_))))
                                (_%g200138200151%_ _%g200139200154%_))))
                        (_%g200138200151%_ _%g200139200154%_)))))
            (_%g200137200185%_ _%stx200134%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self199580%_ _%stx199581%_)
        (letrec ((_%compile-call199583%_
                  (lambda (_%rator199870%_ _%rands199871%_)
                    (let ((_%rator199877%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199580%_
                              _%rator199870%_)))
                          (_%rands199878%_
                           (map (lambda (_%g199872199874%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self199580%_
                                     _%g199872199874%_)))
                                _%rands199871%_)))
                      (let* ((_%__stx205597205598%_ _%rator199877%_)
                             (_%g199881199933%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205597205598%_)))))
                        (let ((_%__kont205599205600%_
                               (lambda (_%g199883200053%_
                                        _%g199884200054%_
                                        _%g199885200055%_
                                        _%g199886200056%_)
                                 (if (let ((__tmp206269
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands199878%_)))
                                           (__tmp206267
                                            (length (let ((__tmp206268
                                                           (lambda (_%g200092200095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g200093200097%_)
                     (cons _%g200092200095%_ _%g200093200097%_))))
              (declare (not safe))
              (foldr__0 __tmp206268 '() _%g199885200055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206269 __tmp206267))
                                     (let* ((_%id200100%_ _%g199886200056%_)
                                            (_%args200109%_
                                             (let ((__tmp206270
                                                    (lambda (_%g200101200104%_
                                                             _%g200102200106%_)
                                                      (cons _%g200101200104%_
                                                            _%g200102200106%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206270
                                                '()
                                                _%g199885200055%_)))
                                            (_%body200118%_
                                             (let ((__tmp206271
                                                    (lambda (_%g200110200113%_
                                                             _%g200111200115%_)
                                                      (cons _%g200110200113%_
                                                            _%g200111200115%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206271
                                                '()
                                                _%g199884200054%_)))
                                            (_%init200120%_
                                             (map list
                                                  _%args200109%_
                                                  _%rands199878%_)))
                                       (cons 'let
                                             (cons _%id200100%_
                                                   (cons _%init200120%_
                                                         _%body200118%_))))
                                     (let ((__tmp206272
                                            (let ((__tmp206273
                                                   (lambda (_%g200122200125%_
                                                            _%g200123200127%_)
                                                     (cons _%g200122200125%_
                                                           _%g200123200127%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206273
                                               '()
                                               _%g199885200055%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx199581%_
                                        __tmp206272
                                        _%rands199878%_)))))
                              (_%__kont205605205606%_
                               (lambda ()
                                 (cons _%rator199877%_ _%rands199878%_))))
                          (let ((_%__match205664205665%_
                                 (lambda (_%e199887199945%_
                                          _%hd199888199948%_
                                          _%tl199889199950%_
                                          _%e199890199953%_
                                          _%hd199891199956%_
                                          _%tl199892199958%_
                                          _%e199893199961%_
                                          _%hd199894199964%_
                                          _%tl199895199966%_
                                          _%e199896199969%_
                                          _%hd199897199972%_
                                          _%tl199898199974%_
                                          _%e199899199977%_
                                          _%hd199900199980%_
                                          _%tl199901199982%_
                                          _%e199902199985%_
                                          _%hd199903199988%_
                                          _%tl199904199990%_
                                          _%e199905199993%_
                                          _%hd199906199996%_
                                          _%tl199907199998%_
                                          _%__splice205601205602%_
                                          _%target199908200001%_
                                          _%tl199910200003%_)
                                   (letrec ((_%loop199911200006%_
                                             (lambda (_%hd199909200009%_
                                                      _%arg199915200011%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd199909200009%_))
                                                   (let ((_%e199912200013%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd199909200009%_))))
                                                     (let ((_%lp-tl199914200018%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199912200013%_)))
                                                           (_%lp-hd199913200016%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199912200013%_))))
                                                       (_%loop199911200006%_
                                                        _%lp-tl199914200018%_
                                                        (cons _%lp-hd199913200016%_
                                                              _%arg199915200011%_))))
                                                   (let ((_%arg199916200021%_
                                                          (reverse _%arg199915200011%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl199907199998%_))
                                                         (let ((_%__splice205603205604%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl199907199998%_
                           '0))))
                   (let ((_%tl199919200025%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205603205604%_ '1)))
                         (_%target199917200023%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205603205604%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl199919200025%_))
                         (letrec ((_%loop199920200028%_
                                   (lambda (_%hd199918200031%_
                                            _%body199924200033%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd199918200031%_))
                                         (let ((_%e199921200035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd199918200031%_))))
                                           (let ((_%lp-tl199923200040%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199921200035%_)))
                                                 (_%lp-hd199922200038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199921200035%_))))
                                             (_%loop199920200028%_
                                              _%lp-tl199923200040%_
                                              (cons _%lp-hd199922200038%_
                                                    _%body199924200033%_))))
                                         (let ((_%body199925200043%_
                                                (reverse _%body199924200033%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199901199982%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199895199966%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199892199958%_))
                                                       (let ((_%e199926200045%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl199892199958%_))))
                 (let ((_%tl199928200050%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199926200045%_)))
                       (_%hd199927200048%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199926200045%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199928200050%_))
                       (let ((_%g199883200053%_ _%hd199927200048%_)
                             (_%g199884200054%_ _%body199925200043%_)
                             (_%g199885200055%_ _%arg199916200021%_)
                             (_%g199886200056%_ _%hd199897199972%_))
                         (if (eq? _%g199886200056%_ _%g199883200053%_)
                             (_%__kont205599205600%_
                              _%g199883200053%_
                              _%g199884200054%_
                              _%g199885200055%_
                              _%g199886200056%_)
                             (_%__kont205605205606%_)))
                       (_%__kont205605205606%_))))
               (_%__kont205605205606%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205605205606%_))
                                               (_%__kont205605205606%_)))))))
                           (_%loop199920200028%_ _%target199917200023%_ '()))
                         (_%__kont205605205606%_))))
                 (_%__kont205605205606%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop199911200006%_
                                      _%target199908200001%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205597205598%_))
                                (let ((_%e199887199945%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205597205598%_))))
                                  (let ((_%tl199889199950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199887199945%_)))
                                        (_%hd199888199948%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199887199945%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199888199948%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd199888199948%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199889199950%_))
                                                (let ((_%e199890199953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199889199950%_))))
                                                  (let ((_%tl199892199958%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199890199953%_)))
                                                        (_%hd199891199956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199890199953%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199891199956%_))
                                                        (let ((_%e199893199961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199891199956%_))))
                  (let ((_%tl199895199966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199893199961%_)))
                        (_%hd199894199964%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199893199961%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199894199964%_))
                        (let ((_%e199896199969%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199894199964%_))))
                          (let ((_%tl199898199974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199896199969%_)))
                                (_%hd199897199972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199896199969%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199898199974%_))
                                (let ((_%e199899199977%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199898199974%_))))
                                  (let ((_%tl199901199982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199899199977%_)))
                                        (_%hd199900199980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199899199977%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199900199980%_))
                                        (let ((_%e199902199985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199900199980%_))))
                                          (let ((_%tl199904199990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199902199985%_)))
                                                (_%hd199903199988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199902199985%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199903199988%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd199903199988%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199904199990%_))
                                                        (let ((_%e199905199993%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199904199990%_))))
                  (let ((_%tl199907199998%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199905199993%_)))
                        (_%hd199906199996%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199905199993%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd199906199996%_))
                        (let ((_%__splice205601205602%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd199906199996%_
                                  '0))))
                          (let ((_%tl199910200003%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice205601205602%_ '1)))
                                (_%target199908200001%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice205601205602%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199910200003%_))
                                (_%__match205664205665%_
                                 _%e199887199945%_
                                 _%hd199888199948%_
                                 _%tl199889199950%_
                                 _%e199890199953%_
                                 _%hd199891199956%_
                                 _%tl199892199958%_
                                 _%e199893199961%_
                                 _%hd199894199964%_
                                 _%tl199895199966%_
                                 _%e199896199969%_
                                 _%hd199897199972%_
                                 _%tl199898199974%_
                                 _%e199899199977%_
                                 _%hd199900199980%_
                                 _%tl199901199982%_
                                 _%e199902199985%_
                                 _%hd199903199988%_
                                 _%tl199904199990%_
                                 _%e199905199993%_
                                 _%hd199906199996%_
                                 _%tl199907199998%_
                                 _%__splice205601205602%_
                                 _%target199908200001%_
                                 _%tl199910200003%_)
                                (_%__kont205605205606%_))))
                        (_%__kont205605205606%_))))
                (_%__kont205605205606%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205605205606%_))
                                                (_%__kont205605205606%_))))
                                        (_%__kont205605205606%_))))
                                (_%__kont205605205606%_))))
                        (_%__kont205605205606%_))))
                (_%__kont205605205606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205605205606%_))
                                            (_%__kont205605205606%_))
                                        (_%__kont205605205606%_))))
                                (_%__kont205605205606%_)))))))))
          (let* ((_%g199585199608%_
                  (lambda (_%g199586199605%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199586199605%_))))
                 (_%g199584199867%_
                  (lambda (_%g199586199611%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199586199611%_))
                        (let ((_%e199589199613%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199586199611%_))))
                          (let ((_%hd199590199616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199589199613%_)))
                                (_%tl199591199618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199589199613%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199591199618%_))
                                (let ((_%e199592199621%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199591199618%_))))
                                  (let ((_%hd199593199624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199592199621%_)))
                                        (_%tl199594199626%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199592199621%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl199594199626%_))
                                        (let ((_g206274_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl199594199626%_
                                                  '0))))
                                          (begin
                                            (let ((_g206275_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g206274_)
                                                         (##values-length
                                                          _g206274_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g206275_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g206275_)))
                                            (let ((_%target199595199629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206274_
                                                      0)))
                                                  (_%tl199597199631%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206274_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199597199631%_))
                                                  (letrec ((_%loop199598199634%_
                                                            (lambda (_%hd199596199637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand199602199639%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199596199637%_))
                          (let ((_%e199599199641%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199596199637%_))))
                            (let ((_%lp-hd199600199644%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199599199641%_)))
                                  (_%lp-tl199601199646%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199599199641%_))))
                              (_%loop199598199634%_
                               _%lp-tl199601199646%_
                               (cons _%lp-hd199600199644%_
                                     _%rand199602199639%_))))
                          (let ((_%rand199603199649%_
                                 (reverse _%rand199602199639%_)))
                            ((lambda (_%g199587199651%_ _%g199588199652%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call199583%_
                                    _%g199588199652%_
                                    (let ((__tmp206276
                                           (lambda (_%g199669199672%_
                                                    _%g199670199674%_)
                                             (cons _%g199669199672%_
                                                   _%g199670199674%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp206276
                                       '()
                                       _%g199587199651%_)))
                                   (let* ((_%__stx205713205714%_
                                           _%g199588199652%_)
                                          (_%g199678199690%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx205713205714%_)))))
                                     (let ((_%__kont205715205716%_
                                            (lambda ()
                                              (let ((_%f199727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self199580%_
                                                        _%g199588199652%_))))
                                                (if (and (let ((__tmp206277
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f199727%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp206277))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f199727%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp199729%_ ((_%rest199732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp206279
                                                (lambda (_%g199849199852%_
                                                         _%g199850199854%_)
                                                  (cons _%g199849199852%_
                                                        _%g199850199854%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp206279
                                            '()
                                            _%g199587199651%_))))
                               (_%bind199734%_ '())
                               (_%args199735%_ '()))
              (let* ((_%rest199736199744%_ _%rest199732%_)
                     (_%else199738199752%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind199734%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f199727%_
                                                      _%args199735%_)
                                                '()))))))
                     (_%K199740199838%_
                      (lambda (_%rest199755%_ _%e199756%_)
                        (let* ((_%__stx205667205668%_ _%e199756%_)
                               (_%g199761199779%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx205667205668%_)))))
                          (let ((_%__kont205669205670%_
                                 (lambda ()
                                   (_%lp199729%_
                                    _%rest199755%_
                                    _%bind199734%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199756%_))
                                          _%args199735%_))))
                                (_%__kont205671205672%_
                                 (lambda ()
                                   (_%lp199729%_
                                    _%rest199755%_
                                    _%bind199734%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199756%_))
                                          _%args199735%_))))
                                (_%__kont205673205674%_
                                 (lambda ()
                                   (let ((_%tmp199786%_
                                          (let ((__tmp206278
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp206278))))
                                     (_%lp199729%_
                                      _%rest199755%_
                                      (cons (cons _%tmp199786%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199756%_))
                                                        '()))
                                            _%bind199734%_)
                                      (cons _%tmp199786%_ _%args199735%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205667205668%_))
                                (let ((_%e199763199817%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205667205668%_))))
                                  (let ((_%tl199765199822%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199763199817%_)))
                                        (_%hd199764199820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199763199817%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199764199820%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd199764199820%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199765199822%_))
                                                (let ((_%e199766199825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199765199822%_))))
                                                  (let ((_%tl199768199830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199766199825%_)))
                                                        (_%hd199767199828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199766199825%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199768199830%_))
                                                        (_%__kont205669205670%_)
                                                        (_%__kont205673205674%_))))
                                                (_%__kont205673205674%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd199764199820%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199765199822%_))
                                                    (let ((_%e199772199802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199765199822%_))))
                                                      (let ((_%tl199774199807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199772199802%_)))
                    (_%hd199773199805%_
                     (let () (declare (not safe)) (##car _%e199772199802%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199774199807%_))
                    (_%__kont205671205672%_)
                    (_%__kont205673205674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205673205674%_))
                                                (_%__kont205673205674%_)))
                                        (_%__kont205673205674%_))))
                                (_%__kont205673205674%_)))))))
                (if (pair? _%rest199736199744%_)
                    (let ((_%hd199741199841%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199736199744%_)))
                          (_%tl199742199843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199736199744%_))))
                      (let* ((_%e199846%_ _%hd199741199841%_)
                             (_%rest199848%_ _%tl199742199843%_))
                        (_%K199740199838%_ _%rest199848%_ _%e199846%_)))
                    (_%else199738199752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call199583%_
                                                     _%g199588199652%_
                                                     (let ((__tmp206280
                                                            (lambda (_%g199856199859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g199857199861%_)
                      (cons _%g199856199859%_ _%g199857199861%_))))
               (declare (not safe))
               (foldr__0 __tmp206280 '() _%g199587199651%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont205717205718%_
                                            (lambda ()
                                              (_%compile-call199583%_
                                               _%g199588199652%_
                                               (let ((__tmp206281
                                                      (lambda (_%g199696199699%_
                                                               _%g199697199701%_)
                                                        (cons _%g199696199699%_
                                                              _%g199697199701%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp206281
                                                  '()
                                                  _%g199587199651%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx205713205714%_))
                                           (let ((_%e199680199709%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx205713205714%_))))
                                             (let ((_%tl199682199714%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199680199709%_)))
                                                   (_%hd199681199712%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199680199709%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd199681199712%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd199681199712%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199682199714%_))
                                                           (let ((_%e199683199717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199682199714%_))))
                     (let ((_%tl199685199722%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199683199717%_)))
                           (_%hd199684199720%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199683199717%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199685199722%_))
                           (_%__kont205715205716%_)
                           (_%__kont205717205718%_))))
                   (_%__kont205717205718%_))
               (_%__kont205717205718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205717205718%_))))
                                           (_%__kont205717205718%_))))))
                             _%rand199603199649%_
                             _%hd199593199624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop199598199634%_
                                                     _%target199595199629%_
                                                     '()))
                                                  (_%g199585199608%_
                                                   _%g199586199611%_)))))
                                        (_%g199585199608%_
                                         _%g199586199611%_))))
                                (_%g199585199608%_ _%g199586199611%_))))
                        (_%g199585199608%_ _%g199586199611%_)))))
            (_%g199584199867%_ _%stx199581%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self199325%_ _%stx199326%_)
        (let* ((_%__stx205785205786%_ _%stx199326%_)
               (_%g199329199358%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205785205786%_)))))
          (let ((_%__kont205787205788%_
                 (lambda (_%g199331199424%_ _%g199332199425%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self199325%_
                        _%stx199326%_)
                       (let ((_%f199447%_
                              (let ((__tmp206282
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g199332199425%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self199325%_
                                 __tmp206282))))
                         (let _%lp199449%_ ((_%rest199452%_
                                             (reverse (let ((__tmp206284
                                                             (lambda (_%g199569199572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g199570199574%_)
                       (cons _%g199569199572%_ _%g199570199574%_))))
                (declare (not safe))
                (foldr__0 __tmp206284 '() _%g199331199424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind199454%_ '())
                                            (_%args199455%_ '()))
                           (let* ((_%rest199456199464%_ _%rest199452%_)
                                  (_%else199458199472%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind199454%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f199447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args199455%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K199460199558%_
                                   (lambda (_%rest199475%_ _%e199476%_)
                                     (let* ((_%__stx205739205740%_ _%e199476%_)
                                            (_%g199481199499%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx205739205740%_)))))
                                       (let ((_%__kont205741205742%_
                                              (lambda ()
                                                (_%lp199449%_
                                                 _%rest199475%_
                                                 _%bind199454%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199476%_))
                                                       _%args199455%_))))
                                             (_%__kont205743205744%_
                                              (lambda ()
                                                (_%lp199449%_
                                                 _%rest199475%_
                                                 _%bind199454%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199476%_))
                                                       _%args199455%_))))
                                             (_%__kont205745205746%_
                                              (lambda ()
                                                (let ((_%tmp199506%_
                                                       (let ((__tmp206283
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp206283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp199449%_
                                                   _%rest199475%_
                                                   (cons (cons _%tmp199506%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e199476%_))
                             '()))
                 _%bind199454%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp199506%_
                                                         _%args199455%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx205739205740%_))
                                             (let ((_%e199483199537%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx205739205740%_))))
                                               (let ((_%tl199485199542%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199483199537%_)))
                                                     (_%hd199484199540%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199483199537%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd199484199540%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd199484199540%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199485199542%_))
                     (let ((_%e199486199545%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199485199542%_))))
                       (let ((_%tl199488199550%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199486199545%_)))
                             (_%hd199487199548%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199486199545%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199488199550%_))
                             (_%__kont205741205742%_)
                             (_%__kont205745205746%_))))
                     (_%__kont205745205746%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd199484199540%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199485199542%_))
                         (let ((_%e199492199522%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl199485199542%_))))
                           (let ((_%tl199494199527%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199492199522%_)))
                                 (_%hd199493199525%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199492199522%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199494199527%_))
                                 (_%__kont205743205744%_)
                                 (_%__kont205745205746%_))))
                         (_%__kont205745205746%_))
                     (_%__kont205745205746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205745205746%_))))
                                             (_%__kont205745205746%_)))))))
                             (if (pair? _%rest199456199464%_)
                                 (let ((_%hd199461199561%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199456199464%_)))
                                       (_%tl199462199563%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199456199464%_))))
                                   (let* ((_%e199566%_ _%hd199461199561%_)
                                          (_%rest199568%_ _%tl199462199563%_))
                                     (_%K199460199558%_
                                      _%rest199568%_
                                      _%e199566%_)))
                                 (_%else199458199472%_))))))))
                (_%__kont205791205792%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self199325%_ _%stx199326%_))))
            (let ((_%__match205830205831%_
                   (lambda (_%e199333199370%_
                            _%hd199334199373%_
                            _%tl199335199375%_
                            _%e199336199378%_
                            _%hd199337199381%_
                            _%tl199338199383%_
                            _%e199339199386%_
                            _%hd199340199389%_
                            _%tl199341199391%_
                            _%e199342199394%_
                            _%hd199343199397%_
                            _%tl199344199399%_
                            _%__splice205789205790%_
                            _%target199345199402%_
                            _%tl199347199404%_)
                     (letrec ((_%loop199348199407%_
                               (lambda (_%hd199346199410%_
                                        _%rand199352199412%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199346199410%_))
                                     (let ((_%e199349199414%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd199346199410%_))))
                                       (let ((_%lp-tl199351199419%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199349199414%_)))
                                             (_%lp-hd199350199417%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199349199414%_))))
                                         (_%loop199348199407%_
                                          _%lp-tl199351199419%_
                                          (cons _%lp-hd199350199417%_
                                                _%rand199352199412%_))))
                                     (let ((_%rand199353199422%_
                                            (reverse _%rand199352199412%_)))
                                       (_%__kont205787205788%_
                                        _%rand199353199422%_
                                        _%hd199343199397%_))))))
                       (_%loop199348199407%_ _%target199345199402%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205785205786%_))
                  (let ((_%e199333199370%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205785205786%_))))
                    (let ((_%tl199335199375%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199333199370%_)))
                          (_%hd199334199373%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199333199370%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199335199375%_))
                          (let ((_%e199336199378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199335199375%_))))
                            (let ((_%tl199338199383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199336199378%_)))
                                  (_%hd199337199381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199336199378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199337199381%_))
                                  (let ((_%e199339199386%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199337199381%_))))
                                    (let ((_%tl199341199391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199339199386%_)))
                                          (_%hd199340199389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199339199386%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199340199389%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199340199389%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199341199391%_))
                                                  (let ((_%e199342199394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199341199391%_))))
                                                    (let ((_%tl199344199399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199342199394%_)))
                                                          (_%hd199343199397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199342199394%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199344199399%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl199338199383%_))
                      (let ((_%__splice205789205790%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl199338199383%_
                                '0))))
                        (let ((_%tl199347199404%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205789205790%_ '1)))
                              (_%target199345199402%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205789205790%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199347199404%_))
                              (_%__match205830205831%_
                               _%e199333199370%_
                               _%hd199334199373%_
                               _%tl199335199375%_
                               _%e199336199378%_
                               _%hd199337199381%_
                               _%tl199338199383%_
                               _%e199339199386%_
                               _%hd199340199389%_
                               _%tl199341199391%_
                               _%e199342199394%_
                               _%hd199343199397%_
                               _%tl199344199399%_
                               _%__splice205789205790%_
                               _%target199345199402%_
                               _%tl199347199404%_)
                              (_%__kont205791205792%_))))
                      (_%__kont205791205792%_))
                  (_%__kont205791205792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205791205792%_))
                                              (_%__kont205791205792%_))
                                          (_%__kont205791205792%_))))
                                  (_%__kont205791205792%_))))
                          (_%__kont205791205792%_))))
                  (_%__kont205791205792%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self199137%_ _%stx199138%_)
        (letrec ((_%simplify199140%_
                  (lambda (_%code199225%_)
                    (let* ((_%code199226199244%_ _%code199225%_)
                           (_%else199228199252%_ (lambda () _%code199225%_))
                           (_%K199230199288%_
                            (lambda (_%expr199255%_ _%test199256%_)
                              (let* ((_%expr199257199265%_ _%expr199255%_)
                                     (_%else199259199273%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test199256%_
                                                    (cons _%expr199255%_
                                                          '())))))
                                     (_%K199261199278%_
                                      (lambda (_%exprs199276%_)
                                        (cons 'and
                                              (cons _%test199256%_
                                                    _%exprs199276%_)))))
                                (if (pair? _%expr199257199265%_)
                                    (let ((_%hd199262199281%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr199257199265%_)))
                                          (_%tl199263199283%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr199257199265%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd199262199281%_ 'and))
                                          (let ((_%exprs199286%_
                                                 _%tl199263199283%_))
                                            (_%K199261199278%_
                                             _%exprs199286%_))
                                          (_%else199259199273%_)))
                                    (_%else199259199273%_))))))
                      (if (pair? _%code199226199244%_)
                          (let ((_%hd199231199291%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code199226199244%_)))
                                (_%tl199232199293%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code199226199244%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd199231199291%_ 'if))
                                (if (pair? _%tl199232199293%_)
                                    (let ((_%hd199233199296%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl199232199293%_)))
                                          (_%tl199234199298%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl199232199293%_))))
                                      (let ((_%test199301%_
                                             _%hd199233199296%_))
                                        (if (pair? _%tl199234199298%_)
                                            (let ((_%hd199235199303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199234199298%_)))
                                                  (_%tl199236199305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199234199298%_))))
                                              (let ((_%expr199308%_
                                                     _%hd199235199303%_))
                                                (if (pair? _%tl199236199305%_)
                                                    (let ((_%hd199237199310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl199236199305%_)))
                                                          (_%tl199238199312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl199236199305%_))))
                                                      (if (pair? _%hd199237199310%_)
                                                          (let ((_%hd199239199315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd199237199310%_)))
                        (_%tl199240199317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd199237199310%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd199239199315%_ 'quote))
                        (if (pair? _%tl199240199317%_)
                            (let ((_%hd199241199320%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl199240199317%_)))
                                  (_%tl199242199322%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl199240199317%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd199241199320%_ '#f))
                                  (if (null? _%tl199242199322%_)
                                      (if (null? _%tl199238199312%_)
                                          (_%K199230199288%_
                                           _%expr199308%_
                                           _%test199301%_)
                                          (_%else199228199252%_))
                                      (_%else199228199252%_))
                                  (_%else199228199252%_)))
                            (_%else199228199252%_))
                        (_%else199228199252%_)))
                  (_%else199228199252%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199228199252%_))))
                                            (_%else199228199252%_))))
                                    (_%else199228199252%_))
                                (_%else199228199252%_)))
                          (_%else199228199252%_))))))
          (let* ((_%g199142199163%_
                  (lambda (_%g199143199160%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199143199160%_))))
                 (_%g199141199222%_
                  (lambda (_%g199143199166%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199143199166%_))
                        (let ((_%e199147199168%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199143199166%_))))
                          (let ((_%hd199148199171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199147199168%_)))
                                (_%tl199149199173%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199147199168%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199149199173%_))
                                (let ((_%e199150199176%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199149199173%_))))
                                  (let ((_%hd199151199179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199150199176%_)))
                                        (_%tl199152199181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199150199176%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199152199181%_))
                                        (let ((_%e199153199184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199152199181%_))))
                                          (let ((_%hd199154199187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199153199184%_)))
                                                (_%tl199155199189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199153199184%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199155199189%_))
                                                (let ((_%e199156199192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199155199189%_))))
                                                  (let ((_%hd199157199195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199156199192%_)))
                                                        (_%tl199158199197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199156199192%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199158199197%_))
                                                        ((lambda (_%g199144199200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g199145199201%_
                          _%g199146199202%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify199140%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self199137%_
                                       _%g199146199202%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199137%_
                                             _%g199145199201%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self199137%_
                                                   _%g199144199200%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp206285
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199137%_
                                               _%g199146199202%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp206285
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199137%_
                                            _%g199145199201%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199137%_
                                                  _%g199144199200%_))
                                               '()))))))
                 _%hd199157199195%_
                 _%hd199154199187%_
                 _%hd199151199179%_)
                (_%g199142199163%_ _%g199143199166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199142199163%_
                                                 _%g199143199166%_))))
                                        (_%g199142199163%_
                                         _%g199143199166%_))))
                                (_%g199142199163%_ _%g199143199166%_))))
                        (_%g199142199163%_ _%g199143199166%_)))))
            (_%g199141199222%_ _%stx199138%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self199085%_ _%stx199086%_)
        (let* ((_%g199088199101%_
                (lambda (_%g199089199098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199089199098%_))))
               (_%g199087199134%_
                (lambda (_%g199089199104%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199089199104%_))
                      (let ((_%e199091199106%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199089199104%_))))
                        (let ((_%hd199092199109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199091199106%_)))
                              (_%tl199093199111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199091199106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199093199111%_))
                              (let ((_%e199094199114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199093199111%_))))
                                (let ((_%hd199095199117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199094199114%_)))
                                      (_%tl199096199119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199094199114%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199096199119%_))
                                      ((lambda (_%g199090199122%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g199090199122%_)))
                                       _%hd199095199117%_)
                                      (_%g199088199101%_ _%g199089199104%_))))
                              (_%g199088199101%_ _%g199089199104%_))))
                      (_%g199088199101%_ _%g199089199104%_)))))
          (_%g199087199134%_ _%stx199086%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self199017%_ _%stx199018%_)
        (let* ((_%g199020199037%_
                (lambda (_%g199021199034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199021199034%_))))
               (_%g199019199082%_
                (lambda (_%g199021199040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199021199040%_))
                      (let ((_%e199024199042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199021199040%_))))
                        (let ((_%hd199025199045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199024199042%_)))
                              (_%tl199026199047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199024199042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199026199047%_))
                              (let ((_%e199027199050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199026199047%_))))
                                (let ((_%hd199028199053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199027199050%_)))
                                      (_%tl199029199055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199027199050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199029199055%_))
                                      (let ((_%e199030199058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199029199055%_))))
                                        (let ((_%hd199031199061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199030199058%_)))
                                              (_%tl199032199063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199030199058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199032199063%_))
                                              ((lambda (_%g199022199066%_
                                                        _%g199023199067%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g199023199067%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199017%_
                              _%g199022199066%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199031199061%_
                                               _%hd199028199053%_)
                                              (_%g199020199037%_
                                               _%g199021199040%_))))
                                      (_%g199020199037%_ _%g199021199040%_))))
                              (_%g199020199037%_ _%g199021199040%_))))
                      (_%g199020199037%_ _%g199021199040%_)))))
          (_%g199019199082%_ _%stx199018%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self198828%_ _%stx198829%_)
        (let* ((_%g198831198848%_
                (lambda (_%g198832198845%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198832198845%_))))
               (_%g198830199014%_
                (lambda (_%g198832198851%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198832198851%_))
                      (let ((_%e198835198853%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198832198851%_))))
                        (let ((_%hd198836198856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198835198853%_)))
                              (_%tl198837198858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198835198853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198837198858%_))
                              (let ((_%e198838198861%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198837198858%_))))
                                (let ((_%hd198839198864%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198838198861%_)))
                                      (_%tl198840198866%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198838198861%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198840198866%_))
                                      (let ((_%e198841198869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198840198866%_))))
                                        (let ((_%hd198842198872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198841198869%_)))
                                              (_%tl198843198874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198841198869%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198843198874%_))
                                              ((lambda (_%g198833198877%_
                                                        _%g198834198878%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198828%_ _%g198833198877%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198828%_
                                  _%g198834198878%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198893%_ ((_%rest198896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198834198878%_
                                       (cons _%g198833198877%_ '())))
                                (_%bind198898%_ '())
                                (_%args198899%_ '()))
               (let* ((_%rest198900198908%_ _%rest198896%_)
                      (_%else198902198916%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198898%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args198899%_)
                                                 '()))))))
                      (_%K198904199002%_
                       (lambda (_%rest198919%_ _%e198920%_)
                         (let* ((_%__stx205833205834%_ _%e198920%_)
                                (_%g198925198943%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205833205834%_)))))
                           (let ((_%__kont205835205836%_
                                  (lambda ()
                                    (_%lp198893%_
                                     _%rest198919%_
                                     _%bind198898%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198920%_))
                                           _%args198899%_))))
                                 (_%__kont205837205838%_
                                  (lambda ()
                                    (_%lp198893%_
                                     _%rest198919%_
                                     _%bind198898%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198920%_))
                                           _%args198899%_))))
                                 (_%__kont205839205840%_
                                  (lambda ()
                                    (let ((_%tmp198950%_
                                           (let ((__tmp206286
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206286))))
                                      (_%lp198893%_
                                       _%rest198919%_
                                       (cons (cons _%tmp198950%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198920%_))
                                                         '()))
                                             _%bind198898%_)
                                       (cons _%tmp198950%_ _%args198899%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205833205834%_))
                                 (let ((_%e198927198981%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205833205834%_))))
                                   (let ((_%tl198929198986%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198927198981%_)))
                                         (_%hd198928198984%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198927198981%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198928198984%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198928198984%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198929198986%_))
                                                 (let ((_%e198930198989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198929198986%_))))
                                                   (let ((_%tl198932198994%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198930198989%_)))
                                                         (_%hd198931198992%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198930198989%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198932198994%_))
                                                         (_%__kont205835205836%_)
                                                         (_%__kont205839205840%_))))
                                                 (_%__kont205839205840%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198928198984%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198929198986%_))
                                                     (let ((_%e198936198966%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198929198986%_))))
                                                       (let ((_%tl198938198971%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198936198966%_)))
                     (_%hd198937198969%_
                      (let () (declare (not safe)) (##car _%e198936198966%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198938198971%_))
                     (_%__kont205837205838%_)
                     (_%__kont205839205840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205839205840%_))
                                                 (_%__kont205839205840%_)))
                                         (_%__kont205839205840%_))))
                                 (_%__kont205839205840%_)))))))
                 (if (pair? _%rest198900198908%_)
                     (let ((_%hd198905199005%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198900198908%_)))
                           (_%tl198906199007%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198900198908%_))))
                       (let* ((_%e199010%_ _%hd198905199005%_)
                              (_%rest199012%_ _%tl198906199007%_))
                         (_%K198904199002%_ _%rest199012%_ _%e199010%_)))
                     (_%else198902198916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198842198872%_
                                               _%hd198839198864%_)
                                              (_%g198831198848%_
                                               _%g198832198851%_))))
                                      (_%g198831198848%_ _%g198832198851%_))))
                              (_%g198831198848%_ _%g198832198851%_))))
                      (_%g198831198848%_ _%g198832198851%_)))))
          (_%g198830199014%_ _%stx198829%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self198639%_ _%stx198640%_)
        (let* ((_%g198642198659%_
                (lambda (_%g198643198656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198643198656%_))))
               (_%g198641198825%_
                (lambda (_%g198643198662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198643198662%_))
                      (let ((_%e198646198664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198643198662%_))))
                        (let ((_%hd198647198667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198646198664%_)))
                              (_%tl198648198669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198646198664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198648198669%_))
                              (let ((_%e198649198672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198648198669%_))))
                                (let ((_%hd198650198675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198649198672%_)))
                                      (_%tl198651198677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198649198672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198651198677%_))
                                      (let ((_%e198652198680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198651198677%_))))
                                        (let ((_%hd198653198683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198652198680%_)))
                                              (_%tl198654198685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198652198680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198654198685%_))
                                              ((lambda (_%g198644198688%_
                                                        _%g198645198689%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198639%_ _%g198644198688%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198639%_
                                  _%g198645198689%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198704%_ ((_%rest198707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198645198689%_
                                       (cons _%g198644198688%_ '())))
                                (_%bind198709%_ '())
                                (_%args198710%_ '()))
               (let* ((_%rest198711198719%_ _%rest198707%_)
                      (_%else198713198727%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198709%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args198710%_)
                                                 '()))))))
                      (_%K198715198813%_
                       (lambda (_%rest198730%_ _%e198731%_)
                         (let* ((_%__stx205879205880%_ _%e198731%_)
                                (_%g198736198754%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205879205880%_)))))
                           (let ((_%__kont205881205882%_
                                  (lambda ()
                                    (_%lp198704%_
                                     _%rest198730%_
                                     _%bind198709%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198731%_))
                                           _%args198710%_))))
                                 (_%__kont205883205884%_
                                  (lambda ()
                                    (_%lp198704%_
                                     _%rest198730%_
                                     _%bind198709%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198731%_))
                                           _%args198710%_))))
                                 (_%__kont205885205886%_
                                  (lambda ()
                                    (let ((_%tmp198761%_
                                           (let ((__tmp206287
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206287))))
                                      (_%lp198704%_
                                       _%rest198730%_
                                       (cons (cons _%tmp198761%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198731%_))
                                                         '()))
                                             _%bind198709%_)
                                       (cons _%tmp198761%_ _%args198710%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205879205880%_))
                                 (let ((_%e198738198792%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205879205880%_))))
                                   (let ((_%tl198740198797%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198738198792%_)))
                                         (_%hd198739198795%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198738198792%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198739198795%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198739198795%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198740198797%_))
                                                 (let ((_%e198741198800%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198740198797%_))))
                                                   (let ((_%tl198743198805%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198741198800%_)))
                                                         (_%hd198742198803%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198741198800%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198743198805%_))
                                                         (_%__kont205881205882%_)
                                                         (_%__kont205885205886%_))))
                                                 (_%__kont205885205886%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198739198795%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198740198797%_))
                                                     (let ((_%e198747198777%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198740198797%_))))
                                                       (let ((_%tl198749198782%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198747198777%_)))
                     (_%hd198748198780%_
                      (let () (declare (not safe)) (##car _%e198747198777%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198749198782%_))
                     (_%__kont205883205884%_)
                     (_%__kont205885205886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205885205886%_))
                                                 (_%__kont205885205886%_)))
                                         (_%__kont205885205886%_))))
                                 (_%__kont205885205886%_)))))))
                 (if (pair? _%rest198711198719%_)
                     (let ((_%hd198716198816%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198711198719%_)))
                           (_%tl198717198818%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198711198719%_))))
                       (let* ((_%e198821%_ _%hd198716198816%_)
                              (_%rest198823%_ _%tl198717198818%_))
                         (_%K198715198813%_ _%rest198823%_ _%e198821%_)))
                     (_%else198713198727%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198653198683%_
                                               _%hd198650198675%_)
                                              (_%g198642198659%_
                                               _%g198643198662%_))))
                                      (_%g198642198659%_ _%g198643198662%_))))
                              (_%g198642198659%_ _%g198643198662%_))))
                      (_%g198642198659%_ _%g198643198662%_)))))
          (_%g198641198825%_ _%stx198640%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self198555%_ _%stx198556%_)
        (let* ((_%g198558198579%_
                (lambda (_%g198559198576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198559198576%_))))
               (_%g198557198636%_
                (lambda (_%g198559198582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198559198582%_))
                      (let ((_%e198563198584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198559198582%_))))
                        (let ((_%hd198564198587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198563198584%_)))
                              (_%tl198565198589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198563198584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198565198589%_))
                              (let ((_%e198566198592%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198565198589%_))))
                                (let ((_%hd198567198595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198566198592%_)))
                                      (_%tl198568198597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198566198592%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198568198597%_))
                                      (let ((_%e198569198600%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198568198597%_))))
                                        (let ((_%hd198570198603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198569198600%_)))
                                              (_%tl198571198605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198569198600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198571198605%_))
                                              (let ((_%e198572198608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198571198605%_))))
                                                (let ((_%hd198573198611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198572198608%_)))
                                                      (_%tl198574198613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198572198608%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198574198613%_))
                                                      ((lambda (_%g198560198616%_
                                                                _%g198561198617%_
                                                                _%g198562198618%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198555%_
                                _%g198560198616%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198555%_
                                      _%g198561198617%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198555%_
                                            _%g198562198618%_))
                                         (cons ''#f '()))))))
               _%hd198573198611%_
               _%hd198570198603%_
               _%hd198567198595%_)
              (_%g198558198579%_ _%g198559198582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198558198579%_
                                               _%g198559198582%_))))
                                      (_%g198558198579%_ _%g198559198582%_))))
                              (_%g198558198579%_ _%g198559198582%_))))
                      (_%g198558198579%_ _%g198559198582%_)))))
          (_%g198557198636%_ _%stx198556%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self198455%_ _%stx198456%_)
        (let* ((_%g198458198483%_
                (lambda (_%g198459198480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198459198480%_))))
               (_%g198457198552%_
                (lambda (_%g198459198486%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198459198486%_))
                      (let ((_%e198464198488%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198459198486%_))))
                        (let ((_%hd198465198491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198464198488%_)))
                              (_%tl198466198493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198464198488%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198466198493%_))
                              (let ((_%e198467198496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198466198493%_))))
                                (let ((_%hd198468198499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198467198496%_)))
                                      (_%tl198469198501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198467198496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198469198501%_))
                                      (let ((_%e198470198504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198469198501%_))))
                                        (let ((_%hd198471198507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198470198504%_)))
                                              (_%tl198472198509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198470198504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198472198509%_))
                                              (let ((_%e198473198512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198472198509%_))))
                                                (let ((_%hd198474198515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198473198512%_)))
                                                      (_%tl198475198517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198473198512%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198475198517%_))
                                                      (let ((_%e198476198520%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198475198517%_))))
                (let ((_%hd198477198523%_
                       (let () (declare (not safe)) (##car _%e198476198520%_)))
                      (_%tl198478198525%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198476198520%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198478198525%_))
                      ((lambda (_%g198460198528%_
                                _%g198461198529%_
                                _%g198462198530%_
                                _%g198463198531%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198455%_
                                        _%g198461198529%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198455%_
                                              _%g198460198528%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198455%_
                                                    _%g198462198530%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198455%_
                                                          _%g198463198531%_))
                                                       (cons ''#f '())))))))
                       _%hd198477198523%_
                       _%hd198474198515%_
                       _%hd198471198507%_
                       _%hd198468198499%_)
                      (_%g198458198483%_ _%g198459198486%_))))
              (_%g198458198483%_ _%g198459198486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198458198483%_
                                               _%g198459198486%_))))
                                      (_%g198458198483%_ _%g198459198486%_))))
                              (_%g198458198483%_ _%g198459198486%_))))
                      (_%g198458198483%_ _%g198459198486%_)))))
          (_%g198457198552%_ _%stx198456%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self198371%_ _%stx198372%_)
        (let* ((_%g198374198395%_
                (lambda (_%g198375198392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198375198392%_))))
               (_%g198373198452%_
                (lambda (_%g198375198398%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198375198398%_))
                      (let ((_%e198379198400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198375198398%_))))
                        (let ((_%hd198380198403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198379198400%_)))
                              (_%tl198381198405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198379198400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198381198405%_))
                              (let ((_%e198382198408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198381198405%_))))
                                (let ((_%hd198383198411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198382198408%_)))
                                      (_%tl198384198413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198382198408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198384198413%_))
                                      (let ((_%e198385198416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198384198413%_))))
                                        (let ((_%hd198386198419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198385198416%_)))
                                              (_%tl198387198421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198385198416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198387198421%_))
                                              (let ((_%e198388198424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198387198421%_))))
                                                (let ((_%hd198389198427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198388198424%_)))
                                                      (_%tl198390198429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198388198424%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198390198429%_))
                                                      ((lambda (_%g198376198432%_
                                                                _%g198377198433%_
                                                                _%g198378198434%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198371%_
                                _%g198376198432%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198371%_
                                      _%g198377198433%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198371%_
                                            _%g198378198434%_))
                                         (cons ''#f '()))))))
               _%hd198389198427%_
               _%hd198386198419%_
               _%hd198383198411%_)
              (_%g198374198395%_ _%g198375198398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198374198395%_
                                               _%g198375198398%_))))
                                      (_%g198374198395%_ _%g198375198398%_))))
                              (_%g198374198395%_ _%g198375198398%_))))
                      (_%g198374198395%_ _%g198375198398%_)))))
          (_%g198373198452%_ _%stx198372%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self198271%_ _%stx198272%_)
        (let* ((_%g198274198299%_
                (lambda (_%g198275198296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198275198296%_))))
               (_%g198273198368%_
                (lambda (_%g198275198302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198275198302%_))
                      (let ((_%e198280198304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198275198302%_))))
                        (let ((_%hd198281198307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198280198304%_)))
                              (_%tl198282198309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198280198304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198282198309%_))
                              (let ((_%e198283198312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198282198309%_))))
                                (let ((_%hd198284198315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198283198312%_)))
                                      (_%tl198285198317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198283198312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198285198317%_))
                                      (let ((_%e198286198320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198285198317%_))))
                                        (let ((_%hd198287198323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198286198320%_)))
                                              (_%tl198288198325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198286198320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198288198325%_))
                                              (let ((_%e198289198328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198288198325%_))))
                                                (let ((_%hd198290198331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198289198328%_)))
                                                      (_%tl198291198333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198289198328%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198291198333%_))
                                                      (let ((_%e198292198336%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198291198333%_))))
                (let ((_%hd198293198339%_
                       (let () (declare (not safe)) (##car _%e198292198336%_)))
                      (_%tl198294198341%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198292198336%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198294198341%_))
                      ((lambda (_%g198276198344%_
                                _%g198277198345%_
                                _%g198278198346%_
                                _%g198279198347%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198271%_
                                        _%g198277198345%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198271%_
                                              _%g198276198344%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198271%_
                                                    _%g198278198346%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198271%_
                                                          _%g198279198347%_))
                                                       (cons ''#f '())))))))
                       _%hd198293198339%_
                       _%hd198290198331%_
                       _%hd198287198323%_
                       _%hd198284198315%_)
                      (_%g198274198299%_ _%g198275198302%_))))
              (_%g198274198299%_ _%g198275198302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198274198299%_
                                               _%g198275198302%_))))
                                      (_%g198274198299%_ _%g198275198302%_))))
                              (_%g198274198299%_ _%g198275198302%_))))
                      (_%g198274198299%_ _%g198275198302%_)))))
          (_%g198273198368%_ _%stx198272%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self198066%_ _%stx198067%_)
        (let* ((_%g198069198090%_
                (lambda (_%g198070198087%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198070198087%_))))
               (_%g198068198268%_
                (lambda (_%g198070198093%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198070198093%_))
                      (let ((_%e198074198095%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198070198093%_))))
                        (let ((_%hd198075198098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198074198095%_)))
                              (_%tl198076198100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198074198095%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198076198100%_))
                              (let ((_%e198077198103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198076198100%_))))
                                (let ((_%hd198078198106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198077198103%_)))
                                      (_%tl198079198108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198077198103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198079198108%_))
                                      (let ((_%e198080198111%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198079198108%_))))
                                        (let ((_%hd198081198114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198080198111%_)))
                                              (_%tl198082198116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198080198111%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198082198116%_))
                                              (let ((_%e198083198119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198082198116%_))))
                                                (let ((_%hd198084198122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198083198119%_)))
                                                      (_%tl198085198124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198083198119%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198085198124%_))
                                                      ((lambda (_%g198071198127%_
                                                                _%g198072198128%_
                                                                _%g198073198129%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self198066%_
                                    _%g198071198127%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198066%_
                                          _%g198072198128%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp198147%_ ((_%rest198150%_
                                         (cons _%g198072198128%_
                                               (cons _%g198071198127%_ '())))
                                        (_%bind198152%_ '())
                                        (_%args198153%_ '()))
                       (let* ((_%rest198154198162%_ _%rest198150%_)
                              (_%else198156198170%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind198152%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp206288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp206288 _%args198153%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K198158198256%_
                               (lambda (_%rest198173%_ _%e198174%_)
                                 (let* ((_%__stx205925205926%_ _%e198174%_)
                                        (_%g198179198197%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205925205926%_)))))
                                   (let ((_%__kont205927205928%_
                                          (lambda ()
                                            (_%lp198147%_
                                             _%rest198173%_
                                             _%bind198152%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198174%_))
                                                   _%args198153%_))))
                                         (_%__kont205929205930%_
                                          (lambda ()
                                            (_%lp198147%_
                                             _%rest198173%_
                                             _%bind198152%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198174%_))
                                                   _%args198153%_))))
                                         (_%__kont205931205932%_
                                          (lambda ()
                                            (let ((_%tmp198204%_
                                                   (let ((__tmp206289
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp206289))))
                                              (_%lp198147%_
                                               _%rest198173%_
                                               (cons (cons _%tmp198204%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e198174%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind198152%_)
                                               (cons _%tmp198204%_
                                                     _%args198153%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205925205926%_))
                                         (let ((_%e198181198235%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205925205926%_))))
                                           (let ((_%tl198183198240%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198181198235%_)))
                                                 (_%hd198182198238%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198181198235%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd198182198238%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd198182198238%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl198183198240%_))
                                                         (let ((_%e198184198243%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl198183198240%_))))
                   (let ((_%tl198186198248%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198184198243%_)))
                         (_%hd198185198246%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198184198243%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198186198248%_))
                         (_%__kont205927205928%_)
                         (_%__kont205931205932%_))))
                 (_%__kont205931205932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd198182198238%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198183198240%_))
                     (let ((_%e198190198220%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198183198240%_))))
                       (let ((_%tl198192198225%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198190198220%_)))
                             (_%hd198191198223%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198190198220%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198192198225%_))
                             (_%__kont205929205930%_)
                             (_%__kont205931205932%_))))
                     (_%__kont205931205932%_))
                 (_%__kont205931205932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont205931205932%_))))
                                         (_%__kont205931205932%_)))))))
                         (if (pair? _%rest198154198162%_)
                             (let ((_%hd198159198259%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest198154198162%_)))
                                   (_%tl198160198261%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest198154198162%_))))
                               (let* ((_%e198264%_ _%hd198159198259%_)
                                      (_%rest198266%_ _%tl198160198261%_))
                                 (_%K198158198256%_
                                  _%rest198266%_
                                  _%e198264%_)))
                             (_%else198156198170%_))))))
               _%hd198084198122%_
               _%hd198081198114%_
               _%hd198078198106%_)
              (_%g198069198090%_ _%g198070198093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198069198090%_
                                               _%g198070198093%_))))
                                      (_%g198069198090%_ _%g198070198093%_))))
                              (_%g198069198090%_ _%g198070198093%_))))
                      (_%g198069198090%_ _%g198070198093%_)))))
          (_%g198068198268%_ _%stx198067%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self197845%_ _%stx197846%_)
        (let* ((_%g197848197873%_
                (lambda (_%g197849197870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197849197870%_))))
               (_%g197847198063%_
                (lambda (_%g197849197876%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197849197876%_))
                      (let ((_%e197854197878%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197849197876%_))))
                        (let ((_%hd197855197881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197854197878%_)))
                              (_%tl197856197883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197854197878%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197856197883%_))
                              (let ((_%e197857197886%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197856197883%_))))
                                (let ((_%hd197858197889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197857197886%_)))
                                      (_%tl197859197891%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197857197886%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197859197891%_))
                                      (let ((_%e197860197894%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197859197891%_))))
                                        (let ((_%hd197861197897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197860197894%_)))
                                              (_%tl197862197899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197860197894%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197862197899%_))
                                              (let ((_%e197863197902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197862197899%_))))
                                                (let ((_%hd197864197905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197863197902%_)))
                                                      (_%tl197865197907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197863197902%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197865197907%_))
                                                      (let ((_%e197866197910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197865197907%_))))
                (let ((_%hd197867197913%_
                       (let () (declare (not safe)) (##car _%e197866197910%_)))
                      (_%tl197868197915%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197866197910%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197868197915%_))
                      ((lambda (_%g197850197918%_
                                _%g197851197919%_
                                _%g197852197920%_
                                _%g197853197921%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197845%_
                                            _%g197851197919%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197845%_
                                                  _%g197850197918%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self197845%_
                                                        _%g197852197920%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp197942%_ ((_%rest197945%_
                                                 (cons _%g197852197920%_
                                                       (cons _%g197850197918%_
                                                             (cons _%g197851197919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind197947%_ '())
                                                (_%args197948%_ '()))
                               (let* ((_%rest197949197957%_ _%rest197945%_)
                                      (_%else197951197965%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind197947%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp206290 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp206290 _%args197948%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K197953198051%_
                                       (lambda (_%rest197968%_ _%e197969%_)
                                         (let* ((_%__stx205971205972%_
                                                 _%e197969%_)
                                                (_%g197974197992%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx205971205972%_)))))
                                           (let ((_%__kont205973205974%_
                                                  (lambda ()
                                                    (_%lp197942%_
                                                     _%rest197968%_
                                                     _%bind197947%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e197969%_))
                                                           _%args197948%_))))
                                                 (_%__kont205975205976%_
                                                  (lambda ()
                                                    (_%lp197942%_
                                                     _%rest197968%_
                                                     _%bind197947%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e197969%_))
                                                           _%args197948%_))))
                                                 (_%__kont205977205978%_
                                                  (lambda ()
                                                    (let ((_%tmp197999%_
                                                           (let ((__tmp206291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp206291))))
              (_%lp197942%_
               _%rest197968%_
               (cons (cons _%tmp197999%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e197969%_))
                                 '()))
                     _%bind197947%_)
               (cons _%tmp197999%_ _%args197948%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx205971205972%_))
                                                 (let ((_%e197976198030%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx205971205972%_))))
                                                   (let ((_%tl197978198035%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197976198030%_)))
                                                         (_%hd197977198033%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197976198030%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd197977198033%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd197977198033%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl197978198035%_))
                         (let ((_%e197979198038%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl197978198035%_))))
                           (let ((_%tl197981198043%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197979198038%_)))
                                 (_%hd197980198041%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197979198038%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl197981198043%_))
                                 (_%__kont205973205974%_)
                                 (_%__kont205977205978%_))))
                         (_%__kont205977205978%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd197977198033%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl197978198035%_))
                             (let ((_%e197985198015%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl197978198035%_))))
                               (let ((_%tl197987198020%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e197985198015%_)))
                                     (_%hd197986198018%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e197985198015%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl197987198020%_))
                                     (_%__kont205975205976%_)
                                     (_%__kont205977205978%_))))
                             (_%__kont205977205978%_))
                         (_%__kont205977205978%_)))
                 (_%__kont205977205978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont205977205978%_)))))))
                                 (if (pair? _%rest197949197957%_)
                                     (let ((_%hd197954198054%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest197949197957%_)))
                                           (_%tl197955198056%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest197949197957%_))))
                                       (let* ((_%e198059%_ _%hd197954198054%_)
                                              (_%rest198061%_
                                               _%tl197955198056%_))
                                         (_%K197953198051%_
                                          _%rest198061%_
                                          _%e198059%_)))
                                     (_%else197951197965%_))))))
                       _%hd197867197913%_
                       _%hd197864197905%_
                       _%hd197861197897%_
                       _%hd197858197889%_)
                      (_%g197848197873%_ _%g197849197876%_))))
              (_%g197848197873%_ _%g197849197876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197848197873%_
                                               _%g197849197876%_))))
                                      (_%g197848197873%_ _%g197849197876%_))))
                              (_%g197848197873%_ _%g197849197876%_))))
                      (_%g197848197873%_ _%g197849197876%_)))))
          (_%g197847198063%_ _%stx197846%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self197684%_ _%stx197685%_)
        (letrec ((_%import-set-template197687%_
                  (lambda (_%in197790%_ _%phi197791%_)
                    (let ((_%iphi197793%_
                           (fx+ _%phi197791%_
                                (##direct-structure-ref
                                 _%in197790%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports197794%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in197790%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp197796%_ ((_%rest197798%_ _%imports197794%_)
                                         (_%r197799%_ '()))
                        (let* ((_%rest197800197808%_ _%rest197798%_)
                               (_%else197802197816%_ (lambda () _%r197799%_))
                               (_%K197804197833%_
                                (lambda (_%rest197819%_ _%in197820%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in197820%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi197793%_))
                                          (_%lp197796%_
                                           _%rest197819%_
                                           (cons _%in197820%_ _%r197799%_))
                                          (_%lp197796%_
                                           _%rest197819%_
                                           _%r197799%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in197820%_
                                             'gx#module-import::t))
                                          (let ((_%iphi197824%_
                                                 (fx+ _%phi197791%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in197820%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi197824%_))
                                                (_%lp197796%_
                                                 _%rest197819%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in197820%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r197799%_))
                                                (_%lp197796%_
                                                 _%rest197819%_
                                                 _%r197799%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in197820%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi197827%_
                                                     (fx+ _%iphi197793%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in197820%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi197827%_))
                                                    (_%lp197796%_
                                                     _%rest197819%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197820%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r197799%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi197827%_))
                                                        (_%lp197796%_
                                                         _%rest197819%_
                                                         (let ((__tmp206292
                                                                (_%import-set-template197687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in197820%_
                         _%iphi197793%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r197799%_ __tmp206292)))
                (_%lp197796%_ _%rest197819%_ _%r197799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp197796%_
                                               _%rest197819%_
                                               _%r197799%_)))))))
                          (if (pair? _%rest197800197808%_)
                              (let ((_%hd197805197836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest197800197808%_)))
                                    (_%tl197806197838%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest197800197808%_))))
                                (let* ((_%in197841%_ _%hd197805197836%_)
                                       (_%rest197843%_ _%tl197806197838%_))
                                  (_%K197804197833%_
                                   _%rest197843%_
                                   _%in197841%_)))
                              (_%else197802197816%_))))))))
          (let* ((_%g197689197699%_
                  (lambda (_%g197690197696%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197690197696%_))))
                 (_%g197688197787%_
                  (lambda (_%g197690197702%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197690197702%_))
                        (let ((_%e197692197704%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197690197702%_))))
                          (let ((_%hd197693197707%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197692197704%_)))
                                (_%tl197694197709%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197692197704%_))))
                            ((lambda (_%g197691197712%_)
                               (let ((_%ht197723%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp197725%_ ((_%rest197727%_
                                                     _%g197691197712%_)
                                                    (_%loads197728%_ '()))
                                   (letrec ((_%K197730%_
                                             (lambda (_%ctx197780%_
                                                      _%rest197781%_)
                                               (let ((_%id197783%_
                                                      (##structure-ref
                                                       _%ctx197780%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht197723%_
                                                        _%id197783%_))
                                                     (_%lp197725%_
                                                      _%rest197781%_
                                                      _%loads197728%_)
                                                     (let ((_%rt197785%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id197783%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht197723%_
                                                          _%id197783%_
                                                          _%rt197785%_))
                                                       (_%lp197725%_
                                                        _%rest197781%_
                                                        (cons _%rt197785%_
                                                              _%loads197728%_))))))))
                                     (let* ((_%rest197731197739%_
                                             _%rest197727%_)
                                            (_%else197733197751%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp206294
                                                            (lambda (_%g197746197748%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197746197748%_)))
                   (__tmp206293 (reverse _%loads197728%_)))
               (declare (not safe))
               (##map __tmp206294 __tmp206293)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K197735197768%_
                                             (lambda (_%rest197754%_
                                                      _%in197755%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in197755%_
                                                      'gx#module-context::t))
                                                   (_%K197730%_
                                                    _%in197755%_
                                                    _%rest197754%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in197755%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in197755%_
                               '3
                               '#f
                               '#f)))
                   (_%K197730%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in197755%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest197754%_)
                   (_%lp197725%_ _%rest197754%_ _%loads197728%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in197755%_
                      'gx#import-set::t))
                   (let ((_%phi197760%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197755%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi197760%_)
                         (_%K197730%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197755%_
                             '1
                             '#f
                             '#f))
                          _%rest197754%_)
                         (if (fxpositive? _%phi197760%_)
                             (let ((_%deps197764%_
                                    (_%import-set-template197687%_
                                     _%in197755%_
                                     '0)))
                               (_%lp197725%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest197754%_
                                   _%deps197764%_))
                                _%loads197728%_))
                             (_%lp197725%_ _%rest197754%_ _%loads197728%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx197685%_
                      _%in197755%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest197731197739%_)
                                           (let ((_%hd197736197771%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest197731197739%_)))
                                                 (_%tl197737197773%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest197731197739%_))))
                                             (let* ((_%in197776%_
                                                     _%hd197736197771%_)
                                                    (_%rest197778%_
                                                     _%tl197737197773%_))
                                               (_%K197735197768%_
                                                _%rest197778%_
                                                _%in197776%_)))
                                           (_%else197733197751%_)))))))
                             _%tl197694197709%_)))
                        (_%g197689197699%_ _%g197690197702%_)))))
            (_%g197688197787%_ _%stx197685%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self197498%_ _%stx197499%_)
        (letrec ((_%add-lift!197501%_
                  (lambda (_%expr197682%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr197682%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote197502%_
                  (lambda (_%id197679%_ _%marks197680%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id197679%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks197680%_
                                                        '()))))))))
                 (_%generate-simple197503%_
                  (lambda (_%stxq197674%_)
                    (let ((_%gid197676%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid197677%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq197674%_))))
                      (_%add-lift!197501%_
                       (cons 'define
                             (cons _%gid197676%_
                                   (cons (_%generate-syntax-quote197502%_
                                          _%qid197677%_
                                          ''())
                                         '()))))
                      (let ((__tmp206295
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206295 _%stxq197674%_ _%gid197676%_))
                      _%gid197676%_)))
                 (_%generate-serialized197504%_
                  (lambda (_%stxq197664%_ _%marks197665%_)
                    (let* ((_%mark-refs197667%_
                            (map _%generate-mark197505%_ _%marks197665%_))
                           (_%gid197669%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid197671%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq197664%_))))
                      (_%add-lift!197501%_
                       (cons 'define
                             (cons _%gid197669%_
                                   (cons (_%generate-syntax-quote197502%_
                                          _%qid197671%_
                                          (cons 'list _%mark-refs197667%_))
                                         '()))))
                      (let ((__tmp206296
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206296 _%stxq197664%_ _%gid197669%_))
                      _%gid197669%_)))
                 (_%generate-mark197505%_
                  (lambda (_%mark197649%_)
                    (let ((_%$e197651%_
                           (let ((__tmp206297
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp206297 _%mark197649%_))))
                      (if _%$e197651%_
                          _%$e197651%_
                          (let* ((_%gid197655%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr197657%_
                                  (_%serialize-mark197506%_ _%mark197649%_))
                                 (_%ctx197659%_
                                  (let ((__tmp206298
                                         (##structure-ref
                                          _%mark197649%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp206298)))
                                 (_%ctx-ref197661%_
                                  (if (eq? _%ctx197659%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref197507%_
                                                               _%ctx197659%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp206299
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206299
                               _%mark197649%_
                               _%gid197655%_))
                            (_%add-lift!197501%_
                             (cons 'define
                                   (cons _%gid197655%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr197657%_ '()))
                   (cons _%ctx-ref197661%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid197655%_)))))
                 (_%serialize-mark197506%_
                  (lambda (_%mark197597%_)
                    (letrec ((_%quote-e197599%_
                              (lambda (_%sym197647%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym197647%_))
                                    _%sym197647%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym197647%_))))))
                      (let* ((_%mark197600197609%_ _%mark197597%_)
                             (_%E197602197612%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark197600197609%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K197603197624%_
                              (lambda (_%trace197615%_
                                       _%phi197616%_
                                       _%ctx197617%_
                                       _%subst197618%_)
                                (let ((_%subs197620%_
                                       (if _%subst197618%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst197618%_))
                                           '())))
                                  (cons _%phi197616%_
                                        (let ((__tmp206300
                                               (lambda (_%pair197622%_)
                                                 (cons (_%quote-e197599%_
                                                        (car _%pair197622%_))
                                                       (_%quote-e197599%_
                                                        (cdr _%pair197622%_))))))
                                          (declare (not safe))
                                          (##map __tmp206300
                                                 _%subs197620%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark197600197609%_
                               'gx#expander-mark::t))
                            (let* ((_%e197604197627%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197600197609%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst197630%_ _%e197604197627%_)
                                   (_%e197605197632%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197600197609%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx197635%_ _%e197605197632%_)
                                   (_%e197606197637%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197600197609%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi197640%_ _%e197606197637%_)
                                   (_%e197607197642%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197600197609%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace197645%_ _%e197607197642%_))
                              (_%K197603197624%_
                               _%trace197645%_
                               _%phi197640%_
                               _%ctx197635%_
                               _%subst197630%_))
                            (_%E197602197612%_))))))
                 (_%context-ref197507%_
                  (lambda (_%ctx197584%_)
                    (if (let ((__tmp206301
                               (##structure-ref
                                _%ctx197584%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp206301
                           'gx#module-context::t))
                        (let ((_%ctx-ref197586%_
                               (_%context-ref-nested197509%_ _%ctx197584%_))
                              (_%ctx-origin197587%_
                               (_%context-ref-origin197508%_ _%ctx197584%_))
                              (_%origin197588%_
                               (_%context-ref-origin197508%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin197588%_ _%ctx-origin197587%_)
                              (let ((_%ref197590%_
                                     (_%context-ref-nested197509%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp197592%_ ((_%ref197594%_
                                                    (cdr _%ref197590%_))
                                                   (_%ctx-ref197595%_
                                                    (cdr _%ctx-ref197586%_)))
                                  (if (and (pair? _%ref197594%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref197594%_))
                                                (car _%ctx-ref197595%_)))
                                      (_%lp197592%_
                                       (cdr _%ref197594%_)
                                       (cdr _%ctx-ref197595%_))
                                      (cons '#f _%ctx-ref197595%_))))
                              _%ctx-ref197586%_))
                        (let ((__tmp206302
                               (##structure-ref
                                _%ctx197584%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp206302)))))
                 (_%context-ref-origin197508%_
                  (lambda (_%ctx197576%_)
                    (let _%lp197578%_ ((_%ctx197580%_ _%ctx197576%_))
                      (let ((_%super197582%_
                             (##structure-ref
                              _%ctx197580%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197582%_
                               'gx#module-context::t))
                            (_%lp197578%_ _%super197582%_)
                            _%ctx197580%_)))))
                 (_%context-ref-nested197509%_
                  (lambda (_%ctx197567%_)
                    (let _%lp197569%_ ((_%ctx197571%_ _%ctx197567%_)
                                       (_%r197572%_ '()))
                      (let ((_%super197574%_
                             (##structure-ref
                              _%ctx197571%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197574%_
                               'gx#module-context::t))
                            (_%lp197569%_
                             _%super197574%_
                             (cons (car (##structure-ref
                                         _%ctx197571%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r197572%_))
                            (cons (let ((__tmp206303
                                         (##structure-ref
                                          _%ctx197571%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp206303))
                                  _%r197572%_)))))))
          (let* ((_%g197511197524%_
                  (lambda (_%g197512197521%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197512197521%_))))
                 (_%g197510197564%_
                  (lambda (_%g197512197527%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197512197527%_))
                        (let ((_%e197514197529%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197512197527%_))))
                          (let ((_%hd197515197532%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197514197529%_)))
                                (_%tl197516197534%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197514197529%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197516197534%_))
                                (let ((_%e197517197537%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197516197534%_))))
                                  (let ((_%hd197518197540%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197517197537%_)))
                                        (_%tl197519197542%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197517197537%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197519197542%_))
                                        ((lambda (_%g197513197545%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g197513197545%_))
                                               (let ((_%$e197558%_
                                                      (let ((__tmp206304
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp206304 _%g197513197545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e197558%_
                                                     _%$e197558%_
                                                     (let ((_%marks197562%_
                                                            (##direct-structure-ref
                                                             _%g197513197545%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks197562%_)
                                                           (_%generate-simple197503%_
                                                            _%g197513197545%_)
                                                           (_%generate-serialized197504%_
                                                            _%g197513197545%_
                                                            _%marks197562%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g197513197545%_))))
                                         _%hd197518197540%_)
                                        (_%g197511197524%_
                                         _%g197512197527%_))))
                                (_%g197511197524%_ _%g197512197527%_))))
                        (_%g197511197524%_ _%g197512197527%_)))))
            (_%g197510197564%_ _%stx197499%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self197430%_ _%stx197431%_)
        (let* ((_%g197433197450%_
                (lambda (_%g197434197447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197434197447%_))))
               (_%g197432197495%_
                (lambda (_%g197434197453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197434197453%_))
                      (let ((_%e197437197455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197434197453%_))))
                        (let ((_%hd197438197458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197437197455%_)))
                              (_%tl197439197460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197437197455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197439197460%_))
                              (let ((_%e197440197463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197439197460%_))))
                                (let ((_%hd197441197466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197440197463%_)))
                                      (_%tl197442197468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197440197463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197442197468%_))
                                      (let ((_%e197443197471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197442197468%_))))
                                        (let ((_%hd197444197474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197443197471%_)))
                                              (_%tl197445197476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197443197471%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197445197476%_))
                                              ((lambda (_%g197435197479%_
                                                        _%g197436197480%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g197436197480%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self197430%_
                              _%g197435197479%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197444197474%_
                                               _%hd197441197466%_)
                                              (_%g197433197450%_
                                               _%g197434197453%_))))
                                      (_%g197433197450%_ _%g197434197453%_))))
                              (_%g197433197450%_ _%g197434197453%_))))
                      (_%g197433197450%_ _%g197434197453%_)))))
          (_%g197432197495%_ _%stx197431%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self197379%_ _%stx197380%_)
        (let* ((_%g197382197392%_
                (lambda (_%g197383197389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197383197389%_))))
               (_%g197381197427%_
                (lambda (_%g197383197395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197383197395%_))
                      (let ((_%e197385197397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197383197395%_))))
                        (let ((_%hd197386197400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197385197397%_)))
                              (_%tl197387197402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197385197397%_))))
                          ((lambda (_%g197384197405%_)
                             (let* ((_%c-body197419%_
                                     (map (lambda (_%g197414197416%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197379%_
                                               _%g197414197416%_)))
                                          _%g197384197405%_))
                                    (_%c-body197424%_
                                     (let ((__tmp206305
                                            (lambda (_%$obj197421%_)
                                              (not (eq? _%$obj197421%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp206305
                                        _%c-body197419%_))))
                               (cons '%#begin _%c-body197424%_)))
                           _%tl197387197402%_)))
                      (_%g197382197392%_ _%g197383197395%_)))))
          (_%g197381197427%_ _%stx197380%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self197284%_ _%stx197285%_)
        (let* ((_%g197287197297%_
                (lambda (_%g197288197294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197288197294%_))))
               (_%g197286197376%_
                (lambda (_%g197288197300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197288197300%_))
                      (let ((_%e197290197302%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197288197300%_))))
                        (let ((_%hd197291197305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197290197302%_)))
                              (_%tl197292197307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197290197302%_))))
                          ((lambda (_%g197289197310%_)
                             (let* ((_%phi197320%_
                                     (let ((__tmp206306
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp206306 '1)))
                                    (_%block197322%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self197284%_ 'state))
                                      _%phi197320%_))
                                    (_%compiled197325%_
                                     (let ((__tmp206307
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self197284%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g197289197310%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp206307
                                        gx#current-expander-phi
                                        _%phi197320%_)))
                                    (_%g197328197338%_
                                     (lambda (_%g197329197335%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g197329197335%_))))
                                    (_%g197327197373%_
                                     (lambda (_%g197329197341%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g197329197341%_))
                                           (let ((_%e197331197343%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g197329197341%_))))
                                             (let ((_%hd197332197346%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197331197343%_)))
                                                   (_%tl197333197348%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197331197343%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd197332197346%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd197332197346%_))
                                                       ((lambda (_%g197330197351%_)
                                                          (let ((_%c-body197368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj197365%_)
                                   (not (eq? _%$obj197365%_ '#!void)))
                                 _%g197330197351%_)))
                    (if _%block197322%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block197322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body197368%_))
                        (if (null? _%c-body197368%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body197368%_)))))
                _%tl197333197348%_)
               (_%g197328197338%_ _%g197329197341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g197328197338%_
                                                    _%g197329197341%_))))
                                           (_%g197328197338%_
                                            _%g197329197341%_)))))
                               (_%g197327197373%_ _%compiled197325%_)))
                           _%tl197292197307%_)))
                      (_%g197287197297%_ _%g197288197300%_)))))
          (_%g197286197376%_ _%stx197285%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self197215%_ _%stx197216%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197215%_ 'state)))
        (let* ((_%g197218197232%_
                (lambda (_%g197219197229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197219197229%_))))
               (_%g197217197281%_
                (lambda (_%g197219197235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197219197235%_))
                      (let ((_%e197222197237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197219197235%_))))
                        (let ((_%hd197223197240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197222197237%_)))
                              (_%tl197224197242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197222197237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197224197242%_))
                              (let ((_%e197225197245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197224197242%_))))
                                (let ((_%hd197226197248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197225197245%_)))
                                      (_%tl197227197250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197225197245%_))))
                                  ((lambda (_%g197220197253%_
                                            _%g197221197254%_)
                                     (let ((_%key197267%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g197221197254%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key197267%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx197216%_
                                              _%g197221197254%_
                                              _%key197267%_)))
                                       (let* ((_%ctx197269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g197221197254%_)))
                                              (_%code197272%_
                                               (let ((__tmp206308
                                                      (lambda ()
                                                        (let ((__tmp206309
                                                               (##structure-ref
                                                                _%ctx197269%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self197215%_
                                                           __tmp206309)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp206308
                                                  gx#current-expander-context
                                                  _%ctx197269%_)))
                                              (_%rt197274%_
                                               (let ((__tmp206310
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp206310
                                                  _%ctx197269%_)))
                                              (_%loader197276%_
                                               (if _%rt197274%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt197274%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid197278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g197221197254%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self197215%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid197278%_
                                                     (cons _%code197272%_
                                                           _%loader197276%_))))))
                                   _%tl197227197250%_
                                   _%hd197226197248%_)))
                              (_%g197218197232%_ _%g197219197235%_))))
                      (_%g197218197232%_ _%g197219197235%_)))))
          (_%g197217197281%_ _%stx197216%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx197202%_ _%context-chain197203%_)
        (let _%lp197205%_ ((_%ctx197207%_ _%ctx197202%_) (_%path197208%_ '()))
          (let ((_%super197210%_
                 (##structure-ref _%ctx197207%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super197210%_ _%context-chain197203%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx197207%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path197208%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super197210%_
                       'gx#module-context::t))
                    (_%lp197205%_
                     _%super197210%_
                     (cons (car (##structure-ref
                                 _%ctx197207%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path197208%_))
                    (cons (let ((__tmp206311
                                 (##structure-ref
                                  _%ctx197207%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp206311))
                          _%path197208%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp197195%_ ((_%ctx197197%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r197198%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx197197%_ 'gx#module-context::t))
              (_%lp197195%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx197197%_ '3 '#f '#f))
               (cons _%ctx197197%_ _%r197198%_))
              _%r197198%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self196960%_ _%stx196961%_)
        (letrec* ((_%context-chain196963%_ (gxc#current-context-chain))
                  (_%make-import-spec196964%_
                   (lambda (_%in197132%_)
                     (let* ((_%in197133197145%_ _%in197132%_)
                            (_%E197135197148%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in197133197145%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K197136197158%_
                             (lambda (_%phi197151%_
                                      _%name197152%_
                                      _%src-name197153%_
                                      _%src-phi197154%_
                                      _%src-key197155%_
                                      _%src-ctx197156%_)
                               (cons _%phi197151%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name197152%_))
                                           (cons _%src-phi197154%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name197153%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in197133197145%_
                              'gx#module-import::t))
                           (let ((_%e197137197161%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in197133197145%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e197137197161%_
                                    'gx#module-export::t))
                                 (let* ((_%e197140197164%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197137197161%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx197167%_ _%e197140197164%_)
                                        (_%e197141197169%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197137197161%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key197172%_ _%e197141197169%_)
                                        (_%e197142197174%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197137197161%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi197177%_ _%e197142197174%_)
                                        (_%e197143197179%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197137197161%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name197182%_ _%e197143197179%_)
                                        (_%e197138197184%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197133197145%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name197187%_ _%e197138197184%_)
                                        (_%e197139197189%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197133197145%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi197192%_ _%e197139197189%_))
                                   (_%K197136197158%_
                                    _%phi197192%_
                                    _%name197187%_
                                    _%src-name197182%_
                                    _%src-phi197177%_
                                    _%src-key197172%_
                                    _%src-ctx197167%_))
                                 (_%E197135197148%_)))
                           (_%E197135197148%_)))))
                  (_%make-import-path196965%_
                   (lambda (_%ctx197130%_)
                     (gxc#generate-meta-import-path
                      _%ctx197130%_
                      _%context-chain196963%_)))
                  (_%make-import-spec-in196966%_
                   (lambda (_%ctx197127%_ _%in197128%_)
                     (cons 'spec:
                           (cons (_%make-import-path196965%_ _%ctx197127%_)
                                 (reverse _%in197128%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self196960%_ 'state)))
          (let* ((_%g196968196978%_
                  (lambda (_%g196969196975%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196969196975%_))))
                 (_%g196967197124%_
                  (lambda (_%g196969196981%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196969196981%_))
                        (let ((_%e196971196983%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196969196981%_))))
                          (let ((_%hd196972196986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196971196983%_)))
                                (_%tl196973196988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196971196983%_))))
                            ((lambda (_%g196970196991%_)
                               (let _%lp197002%_ ((_%rest197004%_
                                                   _%g196970196991%_)
                                                  (_%current-src197005%_ '#f)
                                                  (_%current-in197006%_ '())
                                                  (_%r197007%_ '()))
                                 (let* ((_%rest197008197016%_ _%rest197004%_)
                                        (_%else197010197026%_
                                         (lambda ()
                                           (let ((_%r197024%_
                                                  (if _%current-src197005%_
                                                      (cons (_%make-import-spec-in196966%_
                                                             _%current-src197005%_
                                                             _%current-in197006%_)
                                                            _%r197007%_)
                                                      _%r197007%_)))
                                             (cons '%#import
                                                   (reverse _%r197024%_)))))
                                        (_%K197012197112%_
                                         (lambda (_%rest197029%_ _%in197030%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in197030%_
                                                  'gx#module-import::t))
                                               (let* ((_%in197032197039%_
                                                       _%in197030%_)
                                                      (_%E197034197042%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in197032197039%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K197035197050%_
               (lambda (_%src-ctx197045%_)
                 (if (eq? _%current-src197005%_ _%src-ctx197045%_)
                     (_%lp197002%_
                      _%rest197029%_
                      _%current-src197005%_
                      (cons (_%make-import-spec196964%_ _%in197030%_)
                            _%current-in197006%_)
                      _%r197007%_)
                     (if _%current-src197005%_
                         (_%lp197002%_
                          _%rest197029%_
                          _%src-ctx197045%_
                          (cons (_%make-import-spec196964%_ _%in197030%_) '())
                          (cons (_%make-import-spec-in196966%_
                                 _%current-src197005%_
                                 _%current-in197006%_)
                                _%r197007%_))
                         (_%lp197002%_
                          _%rest197029%_
                          _%src-ctx197045%_
                          (cons (_%make-import-spec196964%_ _%in197030%_) '())
                          _%r197007%_)))))
              (_%e197036197053%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in197032197039%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e197036197053%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197037197056%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e197036197053%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx197059%_ _%e197037197056%_))
               (_%K197035197050%_ _%src-ctx197059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E197034197042%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in197030%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi197062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197030%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src197064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197030%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in197104%_
                                                           (let* ((_%g197065197074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path196965%_ _%src197064%_))
                          (_%E197068197078%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g197065197074%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K197070197094%_
                            (lambda (_%path197092%_) _%path197092%_))
                           (_%K197069197084%_
                            (lambda (_%path197082%_)
                              (cons 'in: _%path197082%_))))
                       (if (pair? _%g197065197074%_)
                           (let ((_%tl197072197099%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g197065197074%_)))
                                 (_%hd197071197097%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g197065197074%_))))
                             (if (null? _%tl197072197099%_)
                                 (let ((_%path197102%_ _%hd197071197097%_))
                                   (_%K197070197094%_ _%path197102%_))
                                 (let ((_%path197087%_ _%g197065197074%_))
                                   (_%K197069197084%_ _%path197087%_))))
                           (let ((_%path197087%_ _%g197065197074%_))
                             (_%K197069197084%_ _%path197087%_))))))
                  (_%r197106%_
                   (if _%current-src197005%_
                       (cons (_%make-import-spec-in196966%_
                              _%current-src197005%_
                              _%current-in197006%_)
                             _%r197007%_)
                       _%r197007%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp197002%_
                                                      _%rest197029%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi197062%_)
                                                                _%src-in197104%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi197062%_
                                    (cons _%src-in197104%_ '()))))
                    _%r197106%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in197030%_
                                                          'gx#module-context::t))
                                                       (let ((_%r197110%_
                                                              (if _%current-src197005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in196966%_
                                 _%current-src197005%_
                                 _%current-in197006%_)
                                _%r197007%_)
                          _%r197007%_)))
                 (_%lp197002%_
                  _%rest197029%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path196965%_ _%in197030%_))
                        _%r197110%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest197008197016%_)
                                       (let ((_%hd197013197115%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197008197016%_)))
                                             (_%tl197014197117%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197008197016%_))))
                                         (let* ((_%in197120%_
                                                 _%hd197013197115%_)
                                                (_%rest197122%_
                                                 _%tl197014197117%_))
                                           (_%K197012197112%_
                                            _%rest197122%_
                                            _%in197120%_)))
                                       (_%else197010197026%_)))))
                             _%tl196973196988%_)))
                        (_%g196968196978%_ _%g196969196981%_)))))
            (_%g196967197124%_ _%stx196961%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self196770%_ _%stx196771%_)
        (letrec* ((_%context-chain196773%_ (gxc#current-context-chain))
                  (_%make-import-path196774%_
                   (lambda (_%ctx196958%_)
                     (gxc#generate-meta-import-path
                      _%ctx196958%_
                      _%context-chain196773%_))))
          (let* ((_%g196776196786%_
                  (lambda (_%g196777196783%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196777196783%_))))
                 (_%g196775196955%_
                  (lambda (_%g196777196789%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196777196789%_))
                        (let ((_%e196779196791%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196777196789%_))))
                          (let ((_%hd196780196794%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196779196791%_)))
                                (_%tl196781196796%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196779196791%_))))
                            ((lambda (_%g196778196799%_)
                               (let _%lp196810%_ ((_%rest196812%_
                                                   _%g196778196799%_)
                                                  (_%r196813%_ '()))
                                 (let* ((_%rest196814196822%_ _%rest196812%_)
                                        (_%else196816196830%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r196813%_))))
                                        (_%K196818196943%_
                                         (lambda (_%rest196833%_ _%out196834%_)
                                           (let* ((_%out196835196848%_
                                                   _%out196834%_)
                                                  (_%E196838196852%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out196835196848%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K196842196922%_
                                                    (lambda (_%name196918%_
                                                             _%phi196919%_
                                                             _%key196920%_)
                                                      (_%lp196810%_
                                                       _%rest196833%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi196919%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key196920%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name196918%_))
                                             '()))))
                     _%r196813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K196839196902%_
                                                    (lambda (_%phi196856%_
                                                             _%src196857%_)
                                                      (let* ((_%out196897%_
                                                              (if _%src196857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g196858196867%_
                                              (_%make-import-path196774%_
                                               _%src196857%_))
                                             (_%E196861196871%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g196858196867%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K196863196887%_
                                               (lambda (_%path196885%_)
                                                 _%path196885%_))
                                              (_%K196862196877%_
                                               (lambda (_%path196875%_)
                                                 (cons 'in: _%path196875%_))))
                                          (if (pair? _%g196858196867%_)
                                              (let ((_%tl196865196892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g196858196867%_)))
                                                    (_%hd196864196890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g196858196867%_))))
                                                (if (null? _%tl196865196892%_)
                                                    (let ((_%path196895%_
                                                           _%hd196864196890%_))
                                                      (_%K196863196887%_
                                                       _%path196895%_))
                                                    (let ((_%path196880%_
                                                           _%g196858196867%_))
                                                      (_%K196862196877%_
                                                       _%path196880%_))))
                                              (let ((_%path196880%_
                                                     _%g196858196867%_))
                                                (_%K196862196877%_
                                                 _%path196880%_)))))
                                      '()))
                          '#t))
                     (_%out196899%_
                      (if (fxzero? _%phi196856%_)
                          _%out196897%_
                          (cons 'phi:
                                (cons _%phi196856%_
                                      (cons _%out196897%_ '()))))))
                (_%lp196810%_
                 _%rest196833%_
                 (cons _%out196899%_ _%r196813%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match196837196915%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out196835196848%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e196840196905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196835196848%_
                               '1
                               '#f
                               '#f)))
                           (_%e196841196910%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196835196848%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src196908%_ _%e196840196905%_)
                            (_%phi196913%_ _%e196841196910%_))
                        (_%K196839196902%_ _%phi196913%_ _%src196908%_)))
                    (_%E196838196852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out196835196848%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196843196925%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out196835196848%_
                        '1
                        '#f
                        '#f)))
                    (_%e196844196928%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196835196848%_
                        '2
                        '#f
                        '#f)))
                    (_%e196845196933%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196835196848%_
                        '3
                        '#f
                        '#f)))
                    (_%e196846196938%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196835196848%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key196931%_ _%e196844196928%_)
                     (_%phi196936%_ _%e196845196933%_)
                     (_%name196941%_ _%e196846196938%_))
                 (_%K196842196922%_
                  _%name196941%_
                  _%phi196936%_
                  _%key196931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match196837196915%_))))))))
                                   (if (pair? _%rest196814196822%_)
                                       (let ((_%hd196819196946%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest196814196822%_)))
                                             (_%tl196820196948%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest196814196822%_))))
                                         (let* ((_%out196951%_
                                                 _%hd196819196946%_)
                                                (_%rest196953%_
                                                 _%tl196820196948%_))
                                           (_%K196818196943%_
                                            _%rest196953%_
                                            _%out196951%_)))
                                       (_%else196816196830%_)))))
                             _%tl196781196796%_)))
                        (_%g196776196786%_ _%g196777196789%_)))))
            (_%g196775196955%_ _%stx196771%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self196731%_ _%stx196732%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196731%_ 'state)))
        (let* ((_%g196734196744%_
                (lambda (_%g196735196741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196735196741%_))))
               (_%g196733196767%_
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
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g196736196757%_)))
                           _%tl196739196754%_)))
                      (_%g196734196744%_ _%g196735196747%_)))))
          (_%g196733196767%_ _%stx196732%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self196606%_ _%stx196607%_)
        (letrec ((_%generate1196609%_
                  (lambda (_%id196726%_ _%eid196727%_)
                    (let ((_%eid196729%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid196727%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid196729%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx196607%_
                             _%eid196729%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id196726%_))
                            (cons _%eid196729%_ '()))))))
          (let* ((_%g196611196639%_
                  (lambda (_%g196612196636%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196612196636%_))))
                 (_%g196610196723%_
                  (lambda (_%g196612196642%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196612196642%_))
                        (let ((_%e196615196644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196612196642%_))))
                          (let ((_%hd196616196647%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196615196644%_)))
                                (_%tl196617196649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196615196644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl196617196649%_))
                                (let ((_g206312_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl196617196649%_
                                          '0))))
                                  (begin
                                    (let ((_g206313_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206312_)
                                                 (##values-length _g206312_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206313_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206313_)))
                                    (let ((_%target196618196652%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206312_ 0)))
                                          (_%tl196620196654%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206312_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196620196654%_))
                                          (letrec ((_%loop196621196657%_
                                                    (lambda (_%hd196619196660%_
                                                             _%eid196625196662%_
                                                             _%id196626196663%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd196619196660%_))
                                                          (let ((_%e196622196665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd196619196660%_))))
                    (let ((_%lp-hd196623196668%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196622196665%_)))
                          (_%lp-tl196624196670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196622196665%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd196623196668%_))
                          (let ((_%e196629196673%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd196623196668%_))))
                            (let ((_%hd196630196676%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196629196673%_)))
                                  (_%tl196631196678%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196629196673%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196631196678%_))
                                  (let ((_%e196632196681%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196631196678%_))))
                                    (let ((_%hd196633196684%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196632196681%_)))
                                          (_%tl196634196686%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196632196681%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196634196686%_))
                                          (_%loop196621196657%_
                                           _%lp-tl196624196670%_
                                           (cons _%hd196633196684%_
                                                 _%eid196625196662%_)
                                           (cons _%hd196630196676%_
                                                 _%id196626196663%_))
                                          (_%g196611196639%_
                                           _%g196612196642%_))))
                                  (_%g196611196639%_ _%g196612196642%_))))
                          (_%g196611196639%_ _%g196612196642%_))))
                  (let ((_%eid196627196689%_ (reverse _%eid196625196662%_))
                        (_%id196628196690%_ (reverse _%id196626196663%_)))
                    ((lambda (_%g196613196692%_ _%g196614196693%_)
                       (cons '%#extern
                             (map _%generate1196609%_
                                  (let ((__tmp206314
                                         (lambda (_%g196708196711%_
                                                  _%g196709196713%_)
                                           (cons _%g196708196711%_
                                                 _%g196709196713%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206314
                                     '()
                                     _%g196614196693%_))
                                  (let ((__tmp206315
                                         (lambda (_%g196715196718%_
                                                  _%g196716196720%_)
                                           (cons _%g196715196718%_
                                                 _%g196716196720%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206315
                                     '()
                                     _%g196613196692%_)))))
                     _%eid196627196689%_
                     _%id196628196690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop196621196657%_
                                             _%target196618196652%_
                                             '()
                                             '()))
                                          (_%g196611196639%_
                                           _%g196612196642%_)))))
                                (_%g196611196639%_ _%g196612196642%_))))
                        (_%g196611196639%_ _%g196612196642%_)))))
            (_%g196610196723%_ _%stx196607%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self196395%_ _%stx196396%_)
        (letrec ((_%generate1196398%_
                  (lambda (_%id196600%_)
                    (let ((_%eid196602%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id196600%_)))
                          (_%ident196603%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id196600%_)))
                          (_%props196604%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id196600%_))))
                      (cons '%#define-runtime
                            (cons _%ident196603%_
                                  (cons _%eid196602%_ _%props196604%_))))))
                 (_%generate*196399%_
                  (lambda (_%all196568%_)
                    (let* ((_%all196569196577%_ _%all196568%_)
                           (_%else196571196585%_
                            (lambda () (cons '%#begin _%all196568%_)))
                           (_%K196573196590%_
                            (lambda (_%one196588%_) _%one196588%_)))
                      (if (pair? _%all196569196577%_)
                          (let ((_%hd196574196593%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all196569196577%_)))
                                (_%tl196575196595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all196569196577%_))))
                            (let ((_%one196598%_ _%hd196574196593%_))
                              (if (null? _%tl196575196595%_)
                                  (_%K196573196590%_ _%one196598%_)
                                  (_%else196571196585%_))))
                          (_%else196571196585%_))))))
          (let* ((_%g196401196418%_
                  (lambda (_%g196402196415%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196402196415%_))))
                 (_%g196400196565%_
                  (lambda (_%g196402196421%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196402196421%_))
                        (let ((_%e196405196423%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196402196421%_))))
                          (let ((_%hd196406196426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196405196423%_)))
                                (_%tl196407196428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196405196423%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196407196428%_))
                                (let ((_%e196408196431%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196407196428%_))))
                                  (let ((_%hd196409196434%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196408196431%_)))
                                        (_%tl196410196436%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196408196431%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196410196436%_))
                                        (let ((_%e196411196439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196410196436%_))))
                                          (let ((_%hd196412196442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196411196439%_)))
                                                (_%tl196413196444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196411196439%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196413196444%_))
                                                ((lambda (_%g196403196447%_
                                                          _%g196404196448%_)
                                                   (let _%lp196464%_ ((_%rest196466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g196404196448%_)
                              (_%r196467%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx206050206051%_
                                                             _%rest196466%_)
                                                            (_%g196472196489%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx206050206051%_)))))
               (let ((_%__kont206052206053%_
                      (lambda (_%g196474196552%_)
                        (_%lp196464%_ _%g196474196552%_ _%r196467%_)))
                     (_%__kont206054206055%_
                      (lambda (_%g196479196525%_ _%g196480196526%_)
                        (_%lp196464%_
                         _%g196479196525%_
                         (cons (_%generate1196398%_ _%g196480196526%_)
                               _%r196467%_))))
                     (_%__kont206056206057%_
                      (lambda (_%g196484196501%_)
                        (_%generate*196399%_
                         (let ((__tmp206316
                                (cons (_%generate1196398%_ _%g196484196501%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp206316 _%r196467%_)))))
                     (_%__kont206058206059%_
                      (lambda ()
                        (_%generate*196399%_ (reverse! _%r196467%_)))))
                 (let ((_%g196470196512%_
                        (lambda ()
                          (let ((_%g196484196501%_ _%__stx206050206051%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g196484196501%_))
                                (_%__kont206056206057%_ _%g196484196501%_)
                                (_%__kont206058206059%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx206050206051%_))
                       (let ((_%e196475196541%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx206050206051%_))))
                         (let ((_%tl196477196546%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e196475196541%_)))
                               (_%hd196476196544%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e196475196541%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd196476196544%_))
                               (let ((_%e196478196549%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd196476196544%_))))
                                 (if (equal? _%e196478196549%_ '#f)
                                     (_%__kont206052206053%_
                                      _%tl196477196546%_)
                                     (_%__kont206054206055%_
                                      _%tl196477196546%_
                                      _%hd196476196544%_)))
                               (_%__kont206054206055%_
                                _%tl196477196546%_
                                _%hd196476196544%_))))
                       (let () (declare (not safe)) (_%g196470196512%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd196412196442%_
                                                 _%hd196409196434%_)
                                                (_%g196401196418%_
                                                 _%g196402196421%_))))
                                        (_%g196401196418%_
                                         _%g196402196421%_))))
                                (_%g196401196418%_ _%g196402196421%_))))
                        (_%g196401196418%_ _%g196402196421%_)))))
            (_%g196400196565%_ _%stx196396%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self196292%_ _%stx196293%_)
        (let* ((_%g196295196312%_
                (lambda (_%g196296196309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196296196309%_))))
               (_%g196294196392%_
                (lambda (_%g196296196315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196296196315%_))
                      (let ((_%e196299196317%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196296196315%_))))
                        (let ((_%hd196300196320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196299196317%_)))
                              (_%tl196301196322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196299196317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196301196322%_))
                              (let ((_%e196302196325%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196301196322%_))))
                                (let ((_%hd196303196328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196302196325%_)))
                                      (_%tl196304196330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196302196325%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196304196330%_))
                                      (let ((_%e196305196333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196304196330%_))))
                                        (let ((_%hd196306196336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196305196333%_)))
                                              (_%tl196307196338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196305196333%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196307196338%_))
                                              ((lambda (_%g196297196341%_
                                                        _%g196298196342%_)
                                                 (let* ((_%eid196357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g196298196342%_)))
                                                        (_%phi196359%_
                                                         (let ((__tmp206317
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp206317 '1)))
                (_%block196361%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self196292%_ 'state))
                  _%phi196359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g196364196371%_
                                                           (lambda (_%g196365196368%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g196365196368%_))))
                  (_%g196363196389%_
                   (lambda (_%g196365196374%_)
                     ((lambda (_%g196366196376%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self196292%_ 'state))
                         _%phi196359%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g196366196376%_
                                     (cons _%g196297196341%_ '())))))
                      _%g196365196374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196363196389%_
                                                      _%eid196357%_))
                                                   (if _%block196361%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block196361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g196298196342%_))
                                             (cons _%eid196357%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196298196342%_))
                           (cons _%eid196357%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196306196336%_
                                               _%hd196303196328%_)
                                              (_%g196295196312%_
                                               _%g196296196315%_))))
                                      (_%g196295196312%_ _%g196296196315%_))))
                              (_%g196295196312%_ _%g196296196315%_))))
                      (_%g196295196312%_ _%g196296196315%_)))))
          (_%g196294196392%_ _%stx196293%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self196224%_ _%stx196225%_)
        (let* ((_%g196227196244%_
                (lambda (_%g196228196241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196228196241%_))))
               (_%g196226196289%_
                (lambda (_%g196228196247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196228196247%_))
                      (let ((_%e196231196249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196228196247%_))))
                        (let ((_%hd196232196252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196231196249%_)))
                              (_%tl196233196254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196231196249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196233196254%_))
                              (let ((_%e196234196257%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196233196254%_))))
                                (let ((_%hd196235196260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196234196257%_)))
                                      (_%tl196236196262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196234196257%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196236196262%_))
                                      (let ((_%e196237196265%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196236196262%_))))
                                        (let ((_%hd196238196268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196237196265%_)))
                                              (_%tl196239196270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196237196265%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196239196270%_))
                                              ((lambda (_%g196229196273%_
                                                        _%g196230196274%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g196230196274%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196229196273%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196238196268%_
                                               _%hd196235196260%_)
                                              (_%g196227196244%_
                                               _%g196228196247%_))))
                                      (_%g196227196244%_ _%g196228196247%_))))
                              (_%g196227196244%_ _%g196228196247%_))))
                      (_%g196227196244%_ _%g196228196247%_)))))
          (_%g196226196289%_ _%stx196225%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self196221%_ _%stx196222%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196221%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196222%_)
        (gxc#generate-meta-define-values% _%self196221%_ _%stx196222%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self196218%_ _%stx196219%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196218%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196219%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp206319 (list)) (__tmp206318 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp206319
         '(src n open blocks)
         __tmp206318
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args196215%_
        (apply make-instance gxc#meta-state::t _%$args196215%_)))
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
      (lambda (_%self196201%_ _%ctx196202%_)
        (let ((_%self196205%_ _%self196201%_))
          (if (let ((__tmp206320
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196205%_))))
                (declare (not safe))
                (##fx< '4 __tmp206320))
              (begin
                (let ((__tmp206321
                       (let ((__tmp206322
                              (##structure-ref
                               _%ctx196202%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp206322))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196205%_
                   __tmp206321
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196205%_ '1 '2 '#f '#f))
                (let ((__tmp206323
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196205%_
                   __tmp206323
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196205%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp206324
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196205%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self196205%_
                       '4
                       __tmp206324))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp206326 (list)) (__tmp206325 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp206326
         '(ctx phi n code)
         __tmp206325
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args196076%_
        (apply make-instance gxc#meta-state-block::t _%$args196076%_)))
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
      (lambda (_%state196036%_ _%phi196037%_)
        (let* ((_%state196038196046%_ _%state196036%_)
               (_%E196040196049%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state196038196046%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K196041196058%_
                (lambda (_%open196052%_ _%n196053%_ _%src196054%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open196052%_ _%phi196037%_))
                      '#f
                      (let ((_%block-ref196056%_
                             (let ((__tmp206327 (number->string _%n196053%_)))
                               (declare (not safe))
                               (##string-append
                                _%src196054%_
                                '"~"
                                __tmp206327))))
                        (##structure-set!
                         _%state196036%_
                         (let () (declare (not safe)) (##fx+ _%n196053%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp206328
                               (let ((__tmp206329
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp206329
                                  _%phi196037%_
                                  _%n196053%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open196052%_ _%phi196037%_ __tmp206328))
                        _%block-ref196056%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state196038196046%_
                 'gxc#meta-state::t))
              (let* ((_%e196042196061%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196038196046%_
                         '1
                         '#f
                         '#f)))
                     (_%src196064%_ _%e196042196061%_)
                     (_%e196043196066%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196038196046%_
                         '2
                         '#f
                         '#f)))
                     (_%n196069%_ _%e196043196066%_)
                     (_%e196044196071%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196038196046%_
                         '3
                         '#f
                         '#f)))
                     (_%open196074%_ _%e196044196071%_))
                (_%K196041196058%_ _%open196074%_ _%n196069%_ _%src196064%_))
              (_%E196040196049%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state196030%_ _%phi196031%_ _%stx196032%_)
        (let ((_%block196034%_
               (let ((__tmp206330
                      (##structure-ref
                       _%state196030%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp206330 _%phi196031%_))))
          (##structure-set!
           _%block196034%_
           (cons _%stx196032%_
                 (##structure-ref
                  _%block196034%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state196024%_)
        (##structure-set!
         _%state196024%_
         (let ((__tmp206333
                (lambda (_%_196026%_ _%block196027%_ _%r196028%_)
                  (cons _%block196027%_ _%r196028%_)))
               (__tmp206332
                (##structure-ref _%state196024%_ '4 gxc#meta-state::t '#f))
               (__tmp206331
                (##structure-ref _%state196024%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp206333 __tmp206332 __tmp206331))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state196024%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state195977%_)
        (gxc#meta-state-end-phi! _%state195977%_)
        (let ((__tmp206335
               (lambda (_%block195979%_ _%r195980%_)
                 (let* ((_%block195981195990%_ _%block195979%_)
                        (_%E195983195993%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block195981195990%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K195984196001%_
                         (lambda (_%code195996%_
                                  _%n195997%_
                                  _%phi195998%_
                                  _%ctx195999%_)
                           (if (null? _%code195996%_)
                               _%r195980%_
                               (cons (cons _%ctx195999%_
                                           (cons _%phi195998%_
                                                 (cons _%n195997%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code195996%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r195980%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block195981195990%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e195985196004%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195981195990%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx196007%_ _%e195985196004%_)
                              (_%e195986196009%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195981195990%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi196012%_ _%e195986196009%_)
                              (_%e195987196014%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195981195990%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n196017%_ _%e195987196014%_)
                              (_%e195988196019%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block195981195990%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code196022%_ _%e195988196019%_))
                         (_%K195984196001%_
                          _%code196022%_
                          _%n196017%_
                          _%phi196012%_
                          _%ctx196007%_))
                       (_%E195983195993%_)))))
              (__tmp206334
               (##structure-ref _%state195977%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp206335 '() __tmp206334))))
    (define gxc#collect-expression-refs
      (lambda (_%stx195973%_)
        (let ((_%ht195975%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht195975%_ _%stx195973%_)
          _%ht195975%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self195916%_ _%stx195917%_)
        (let* ((_%g195919195932%_
                (lambda (_%g195920195929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195920195929%_))))
               (_%g195918195970%_
                (lambda (_%g195920195935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195920195935%_))
                      (let ((_%e195922195937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195920195935%_))))
                        (let ((_%hd195923195940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195922195937%_)))
                              (_%tl195924195942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195922195937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195924195942%_))
                              (let ((_%e195925195945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195924195942%_))))
                                (let ((_%hd195926195948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195925195945%_)))
                                      (_%tl195927195950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195925195945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195927195950%_))
                                      ((lambda (_%g195921195953%_)
                                         (let* ((_%bind195965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g195921195953%_)))
                                                (_%eid195967%_
                                                 (if _%bind195965%_
                                                     (##structure-ref
                                                      _%bind195965%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g195921195953%_))))
                                                (__tmp206336
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self195916%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp206336
                                            _%eid195967%_
                                            _%eid195967%_)))
                                       _%hd195926195948%_)
                                      (_%g195919195932%_ _%g195920195935%_))))
                              (_%g195919195932%_ _%g195920195935%_))))
                      (_%g195919195932%_ _%g195920195935%_)))))
          (_%g195918195970%_ _%stx195917%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self195843%_ _%stx195844%_)
        (let* ((_%g195846195863%_
                (lambda (_%g195847195860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195847195860%_))))
               (_%g195845195913%_
                (lambda (_%g195847195866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195847195866%_))
                      (let ((_%e195850195868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195847195866%_))))
                        (let ((_%hd195851195871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195850195868%_)))
                              (_%tl195852195873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195850195868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195852195873%_))
                              (let ((_%e195853195876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195852195873%_))))
                                (let ((_%hd195854195879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195853195876%_)))
                                      (_%tl195855195881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195853195876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195855195881%_))
                                      (let ((_%e195856195884%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195855195881%_))))
                                        (let ((_%hd195857195887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195856195884%_)))
                                              (_%tl195858195889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195856195884%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195858195889%_))
                                              ((lambda (_%g195848195892%_
                                                        _%g195849195893%_)
                                                 (let* ((_%bind195908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g195849195893%_)))
                                                        (_%eid195910%_
                                                         (if _%bind195908%_
                                                             (##structure-ref
                                                              _%bind195908%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g195849195893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp206337
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self195843%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp206337
                                                      _%eid195910%_
                                                      _%eid195910%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self195843%_
                                                      _%g195848195892%_))))
                                               _%hd195857195887%_
                                               _%hd195854195879%_)
                                              (_%g195846195863%_
                                               _%g195847195866%_))))
                                      (_%g195846195863%_ _%g195847195866%_))))
                              (_%g195846195863%_ _%g195847195866%_))))
                      (_%g195846195863%_ _%g195847195866%_)))))
          (_%g195845195913%_ _%stx195844%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self195800%_ _%stx195801%_)
        (let* ((_%g195803195813%_
                (lambda (_%g195804195810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195804195810%_))))
               (_%g195802195840%_
                (lambda (_%g195804195816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195804195816%_))
                      (let ((_%e195806195818%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195804195816%_))))
                        (let ((_%hd195807195821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195806195818%_)))
                              (_%tl195808195823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195806195818%_))))
                          ((lambda (_%g195805195826%_)
                             (let ((__tmp206338
                                    (lambda (_%g195835195837%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self195800%_
                                         _%g195835195837%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp206338 _%g195805195826%_)))
                           _%tl195808195823%_)))
                      (_%g195803195813%_ _%g195804195816%_)))))
          (_%g195802195840%_ _%stx195801%_))))
    (define gxc#count-values-single%
      (lambda (_%self195797%_ _%stx195798%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self195665%_ _%stx195666%_)
        (let* ((_%__stx206080206081%_ _%stx195666%_)
               (_%g195669195698%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206080206081%_)))))
          (let ((_%__kont206082206083%_
                 (lambda (_%g195671195764%_ _%g195672195765%_)
                   (length (let ((__tmp206339
                                  (lambda (_%g195786195789%_ _%g195787195791%_)
                                    (cons _%g195786195789%_
                                          _%g195787195791%_))))
                             (declare (not safe))
                             (foldr__0 __tmp206339 '() _%g195671195764%_)))))
                (_%__kont206086206087%_ (lambda () '#f)))
            (let ((_%__match206125206126%_
                   (lambda (_%e195673195710%_
                            _%hd195674195713%_
                            _%tl195675195715%_
                            _%e195676195718%_
                            _%hd195677195721%_
                            _%tl195678195723%_
                            _%e195679195726%_
                            _%hd195680195729%_
                            _%tl195681195731%_
                            _%e195682195734%_
                            _%hd195683195737%_
                            _%tl195684195739%_
                            _%__splice206084206085%_
                            _%target195685195742%_
                            _%tl195687195744%_)
                     (letrec ((_%loop195688195747%_
                               (lambda (_%hd195686195750%_
                                        _%rand195692195752%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195686195750%_))
                                     (let ((_%e195689195754%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195686195750%_))))
                                       (let ((_%lp-tl195691195759%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195689195754%_)))
                                             (_%lp-hd195690195757%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195689195754%_))))
                                         (_%loop195688195747%_
                                          _%lp-tl195691195759%_
                                          (cons _%lp-hd195690195757%_
                                                _%rand195692195752%_))))
                                     (let ((_%rand195693195762%_
                                            (reverse _%rand195692195752%_)))
                                       (let ((_%g195671195764%_
                                              _%rand195693195762%_)
                                             (_%g195672195765%_
                                              _%hd195683195737%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g195672195765%_
                                                'values))
                                             (_%__kont206082206083%_
                                              _%g195671195764%_
                                              _%g195672195765%_)
                                             (_%__kont206086206087%_))))))))
                       (_%loop195688195747%_ _%target195685195742%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206080206081%_))
                  (let ((_%e195673195710%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206080206081%_))))
                    (let ((_%tl195675195715%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195673195710%_)))
                          (_%hd195674195713%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195673195710%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195675195715%_))
                          (let ((_%e195676195718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195675195715%_))))
                            (let ((_%tl195678195723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195676195718%_)))
                                  (_%hd195677195721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195676195718%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195677195721%_))
                                  (let ((_%e195679195726%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195677195721%_))))
                                    (let ((_%tl195681195731%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195679195726%_)))
                                          (_%hd195680195729%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195679195726%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195680195729%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195680195729%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195681195731%_))
                                                  (let ((_%e195682195734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195681195731%_))))
                                                    (let ((_%tl195684195739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195682195734%_)))
                                                          (_%hd195683195737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195682195734%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195684195739%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195678195723%_))
                      (let ((_%__splice206084206085%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195678195723%_
                                '0))))
                        (let ((_%tl195687195744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206084206085%_ '1)))
                              (_%target195685195742%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206084206085%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195687195744%_))
                              (_%__match206125206126%_
                               _%e195673195710%_
                               _%hd195674195713%_
                               _%tl195675195715%_
                               _%e195676195718%_
                               _%hd195677195721%_
                               _%tl195678195723%_
                               _%e195679195726%_
                               _%hd195680195729%_
                               _%tl195681195731%_
                               _%e195682195734%_
                               _%hd195683195737%_
                               _%tl195684195739%_
                               _%__splice206084206085%_
                               _%target195685195742%_
                               _%tl195687195744%_)
                              (_%__kont206086206087%_))))
                      (_%__kont206086206087%_))
                  (_%__kont206086206087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206086206087%_))
                                              (_%__kont206086206087%_))
                                          (_%__kont206086206087%_))))
                                  (_%__kont206086206087%_))))
                          (_%__kont206086206087%_))))
                  (_%__kont206086206087%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self195570%_ _%stx195571%_)
        (let* ((_%g195573195594%_
                (lambda (_%g195574195591%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195574195591%_))))
               (_%g195572195662%_
                (lambda (_%g195574195597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195574195597%_))
                      (let ((_%e195578195599%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195574195597%_))))
                        (let ((_%hd195579195602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195578195599%_)))
                              (_%tl195580195604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195578195599%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195580195604%_))
                              (let ((_%e195581195607%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195580195604%_))))
                                (let ((_%hd195582195610%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195581195607%_)))
                                      (_%tl195583195612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195581195607%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195583195612%_))
                                      (let ((_%e195584195615%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195583195612%_))))
                                        (let ((_%hd195585195618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195584195615%_)))
                                              (_%tl195586195620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195584195615%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195586195620%_))
                                              (let ((_%e195587195623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195586195620%_))))
                                                (let ((_%hd195588195626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195587195623%_)))
                                                      (_%tl195589195628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195587195623%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195589195628%_))
                                                      ((lambda (_%g195575195631%_
                                                                _%g195576195632%_
                                                                _%g195577195633%_)
                                                         (let ((_%c1195650195652%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self195570%_
                           _%g195576195632%_))))
                   (if _%c1195650195652%_
                       (let* ((_%c1195654%_ _%c1195650195652%_)
                              (_%c2195655195657%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195570%_
                                  _%g195575195631%_))))
                         (if _%c2195655195657%_
                             (let ((_%c2195659%_ _%c2195655195657%_))
                               (if (fx= _%c1195654%_ _%c2195659%_)
                                   _%c1195654%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd195588195626%_
               _%hd195585195618%_
               _%hd195582195610%_)
              (_%g195573195594%_ _%g195574195597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195573195594%_
                                               _%g195574195597%_))))
                                      (_%g195573195594%_ _%g195574195597%_))))
                              (_%g195573195594%_ _%g195574195597%_))))
                      (_%g195573195594%_ _%g195574195597%_)))))
          (_%g195572195662%_ _%stx195571%_))))))
