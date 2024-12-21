(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1734357962)
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
        (letrec ((_%hash-e148756%_
                  (lambda (_%id148758%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id148758%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e148756%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp150143 (list gxc#::void::t))
            (__tmp150142 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp150143
         '()
         __tmp150142
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args148752%_
        (apply make-instance gxc#::collect-bindings::t _%$args148752%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp150144
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
        (__make-promise __tmp150144)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx148744%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self148747%_
                (let ((__obj150118
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj150118))
               (__tmp150145
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148747%_ _%stx148744%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150145
           gxc#current-compile-method
           _%self148747%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp150147 (list gxc#::void::t))
            (__tmp150146 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp150147
         '(modules)
         __tmp150146
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args148741%_
        (apply make-instance gxc#::lift-modules::t _%$args148741%_)))
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
      (let ((__tmp150148
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
        (__make-promise __tmp150148)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords148715%_ _%modules148712148716%_ _%stx148718%_)
        (let ((_%modules148721%_
               (if (eq? _%modules148712148716%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules148712148716%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self148723%_
                  (let ((__obj150120
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150120
                       _%modules148721%_
                       '1
                       '#f
                       '#f))
                    __obj150120))
                 (__tmp150149
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148723%_ _%stx148718%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150149
             gxc#current-compile-method
             _%self148723%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords148730%_ . _%args148731%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords148730%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148730%_
                  'modules:
                  absent-value))
               _%args148731%_)))
    (define gxc#apply-lift-modules
      (lambda _%args148713148737%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args148713148737%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp150151 (list)) (__tmp150150 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp150151
         '()
         __tmp150150
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args148708%_
        (apply make-instance gxc#::find-runtime-code::t _%$args148708%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp150152
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
        (__make-promise __tmp150152)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx148700%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self148703%_
                (let ((__obj150122
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj150122))
               (__tmp150153
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148703%_ _%stx148700%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150153
           gxc#current-compile-method
           _%self148703%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp150155 (list gxc#::false::t))
            (__tmp150154 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp150155
         '()
         __tmp150154
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args148697%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args148697%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp150156
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
        (__make-promise __tmp150156)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx148689%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self148692%_
                (let ((__obj150124
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj150124))
               (__tmp150157
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148692%_ _%stx148689%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150157
           gxc#current-compile-method
           _%self148692%_))))
    (define gxc#::count-values::t
      (let ((__tmp150159 (list gxc#::false-expression::t))
            (__tmp150158 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp150159
         '()
         __tmp150158
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args148686%_
        (apply make-instance gxc#::count-values::t _%$args148686%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp150160
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
        (__make-promise __tmp150160)))
    (define gxc#apply-count-values
      (lambda (_%stx148678%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self148681%_
                (let ((__obj150126
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj150126))
               (__tmp150161
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148681%_ _%stx148678%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150161
           gxc#current-compile-method
           _%self148681%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp150162 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp150162
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args148675%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args148675%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp150163
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
        (__make-promise __tmp150163)))
    (define gxc#::generate-loader::t
      (let ((__tmp150165 (list gxc#::generate-runtime-empty::t))
            (__tmp150164 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp150165
         '()
         __tmp150164
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args148671%_
        (apply make-instance gxc#::generate-loader::t _%$args148671%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp150166
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
        (__make-promise __tmp150166)))
    (define gxc#apply-generate-loader
      (lambda (_%stx148663%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self148666%_
                (let ((__obj150129
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj150129))
               (__tmp150167
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148666%_ _%stx148663%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150167
           gxc#current-compile-method
           _%self148666%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp150168 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp150168
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args148660%_
        (apply make-instance gxc#::generate-runtime::t _%$args148660%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp150169
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
        (__make-promise __tmp150169)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx148652%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self148655%_
                (let ((__obj150131
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj150131))
               (__tmp150170
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148655%_ _%stx148652%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150170
           gxc#current-compile-method
           _%self148655%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp150172 (list gxc#::generate-runtime::t))
            (__tmp150171 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp150172
         '()
         __tmp150171
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args148649%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args148649%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp150173
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
        (__make-promise __tmp150173)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx148641%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self148644%_
                (let ((__obj150133
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj150133))
               (__tmp150174
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148644%_ _%stx148641%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150174
           gxc#current-compile-method
           _%self148644%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp150175 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp150175
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args148638%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args148638%_)))
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
      (let ((__tmp150176
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
        (__make-promise __tmp150176)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords148612%_ _%table148609148613%_ _%stx148615%_)
        (let ((_%table148618%_
               (if (eq? _%table148609148613%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table148609148613%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self148620%_
                  (let ((__obj150135
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150135
                       _%table148618%_
                       '1
                       '#f
                       '#f))
                    __obj150135))
                 (__tmp150177
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148620%_ _%stx148615%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150177
             gxc#current-compile-method
             _%self148620%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords148627%_ . _%args148628%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords148627%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148627%_
                  'table:
                  absent-value))
               _%args148628%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args148610148634%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args148610148634%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp150179 (list gxc#::void-expression::t))
            (__tmp150178 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp150179
         '(state)
         __tmp150178
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args148605%_
        (apply make-instance gxc#::generate-meta::t _%$args148605%_)))
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
      (let ((__tmp150180
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
        (__make-promise __tmp150180)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords148579%_ _%state148576148580%_ _%stx148582%_)
        (let ((_%state148585%_
               (if (eq? _%state148576148580%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148576148580%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self148587%_
                  (let ((__obj150137
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150137
                       _%state148585%_
                       '1
                       '#f
                       '#f))
                    __obj150137))
                 (__tmp150181
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148587%_ _%stx148582%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150181
             gxc#current-compile-method
             _%self148587%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords148594%_ . _%args148595%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords148594%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148594%_
                  'state:
                  absent-value))
               _%args148595%_)))
    (define gxc#apply-generate-meta
      (lambda _%args148577148601%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args148577148601%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp150183 (list)) (__tmp150182 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp150183
         '(state)
         __tmp150182
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args148572%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args148572%_)))
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
      (let ((__tmp150184
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
        (__make-promise __tmp150184)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords148546%_ _%state148543148547%_ _%stx148549%_)
        (let ((_%state148552%_
               (if (eq? _%state148543148547%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148543148547%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self148554%_
                  (let ((__obj150139
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150139
                       _%state148552%_
                       '1
                       '#f
                       '#f))
                    __obj150139))
                 (__tmp150185
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148554%_ _%stx148549%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150185
             gxc#current-compile-method
             _%self148554%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords148561%_ . _%args148562%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords148561%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148561%_
                  'state:
                  absent-value))
               _%args148562%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args148544148568%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args148544148568%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self148472%_ _%stx148473%_)
        (let* ((_%g148475148492%_
                (lambda (_%g148476148489%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148476148489%_))))
               (_%g148474148539%_
                (lambda (_%g148476148495%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148476148495%_))
                      (let ((_%e148479148497%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148476148495%_))))
                        (let ((_%hd148480148500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148479148497%_)))
                              (_%tl148481148502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148479148497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148481148502%_))
                              (let ((_%e148482148505%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148481148502%_))))
                                (let ((_%hd148483148508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148482148505%_)))
                                      (_%tl148484148510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148482148505%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148484148510%_))
                                      (let ((_%e148485148513%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148484148510%_))))
                                        (let ((_%hd148486148516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148485148513%_)))
                                              (_%tl148487148518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148485148513%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148487148518%_))
                                              ((lambda (_%L148521%_
                                                        _%L148522%_)
                                                 (let ((__tmp150186
                                                        (lambda (_%bind148537%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind148537%_))
                      (gxc#add-module-binding! _%bind148537%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp150186
                                                    _%L148522%_)))
                                               _%hd148486148516%_
                                               _%hd148483148508%_)
                                              (_%g148475148492%_
                                               _%g148476148495%_))))
                                      (_%g148475148492%_ _%g148476148495%_))))
                              (_%g148475148492%_ _%g148476148495%_))))
                      (_%g148475148492%_ _%g148476148495%_)))))
          (_%g148474148539%_ _%stx148473%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self148404%_ _%stx148405%_)
        (let* ((_%g148407148424%_
                (lambda (_%g148408148421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148408148421%_))))
               (_%g148406148469%_
                (lambda (_%g148408148427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148408148427%_))
                      (let ((_%e148411148429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148408148427%_))))
                        (let ((_%hd148412148432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148411148429%_)))
                              (_%tl148413148434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148411148429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148413148434%_))
                              (let ((_%e148414148437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148413148434%_))))
                                (let ((_%hd148415148440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148414148437%_)))
                                      (_%tl148416148442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148414148437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148416148442%_))
                                      (let ((_%e148417148445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148416148442%_))))
                                        (let ((_%hd148418148448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148417148445%_)))
                                              (_%tl148419148450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148417148445%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148419148450%_))
                                              ((lambda (_%L148453%_
                                                        _%L148454%_)
                                                 (gxc#add-module-binding!
                                                  _%L148454%_
                                                  '#t))
                                               _%hd148418148448%_
                                               _%hd148415148440%_)
                                              (_%g148407148424%_
                                               _%g148408148427%_))))
                                      (_%g148407148424%_ _%g148408148427%_))))
                              (_%g148407148424%_ _%g148408148427%_))))
                      (_%g148407148424%_ _%g148408148427%_)))))
          (_%g148406148469%_ _%stx148405%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self148346%_ _%stx148347%_)
        (let* ((_%g148349148363%_
                (lambda (_%g148350148360%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148350148360%_))))
               (_%g148348148401%_
                (lambda (_%g148350148366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148350148366%_))
                      (let ((_%e148353148368%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148350148366%_))))
                        (let ((_%hd148354148371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148353148368%_)))
                              (_%tl148355148373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148353148368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148355148373%_))
                              (let ((_%e148356148376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148355148373%_))))
                                (let ((_%hd148357148379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148356148376%_)))
                                      (_%tl148358148381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148356148376%_))))
                                  ((lambda (_%L148384%_ _%L148385%_)
                                     (let ((_%ctx148398%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L148385%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self148346%_
                                           'modules))
                                        (cons _%ctx148398%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self148346%_
                                                        'modules)))))
                                       (let ((__tmp150187
                                              (lambda ()
                                                (let ((__tmp150188
                                                       (##structure-ref
                                                        _%ctx148398%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self148346%_
                                                   __tmp150188)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp150187
                                          gx#current-expander-context
                                          _%ctx148398%_))))
                                   _%tl148358148381%_
                                   _%hd148357148379%_)))
                              (_%g148349148363%_ _%g148350148366%_))))
                      (_%g148349148363%_ _%g148350148366%_)))))
          (_%g148348148401%_ _%stx148347%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls148299148301%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls148299148301%_
              (let ((_%decls148304%_ _%decls148299148301%_))
                (let _%lp148306%_ ((_%rest148308%_ _%decls148304%_))
                  (let* ((_%rest148309148317%_ _%rest148308%_)
                         (_%else148311148325%_ (lambda () '#f))
                         (_%K148313148334%_
                          (lambda (_%decls148328%_ _%decl148329%_)
                            (if (equal? _%decl148329%_ '(not safe))
                                '#t
                                (if (equal? _%decl148329%_ '(safe))
                                    '#f
                                    (_%lp148306%_ _%decls148328%_))))))
                    (if (pair? _%rest148309148317%_)
                        (let ((_%hd148314148337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148309148317%_)))
                              (_%tl148315148339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148309148317%_))))
                          (let* ((_%decl148342%_ _%hd148314148337%_)
                                 (_%decls148344%_ _%tl148315148339%_))
                            (_%K148313148334%_
                             _%decls148344%_
                             _%decl148342%_)))
                        (_%else148311148325%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id148293%_ _%syntax?148294%_)
        (let ((_%eid148296%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id148293%_))
                '1
                gx#binding::t
                '#f))
              (_%ht148297%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid148296%_))
              '#!void
              (let ((__tmp150189
                     (let ((__tmp150190
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid148296%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp150190 _%syntax?148294%_))))
                (declare (not safe))
                (hash-put! _%ht148297%_ _%eid148296%_ __tmp150189))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id148291%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id148291%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key148246%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key148246%_))
            _%key148246%_
            (if (uninterned-symbol? _%key148246%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key148246%_))
                (let* ((_%key148250148257%_ _%key148246%_)
                       (_%E148252148261%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key148250148257%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K148253148279%_
                        (lambda (_%mark148264%_ _%eid148265%_)
                          (let ((_%$e148267%_
                                 (##structure-ref
                                  _%mark148264%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e148267%_
                                ((lambda (_%ht148270%_)
                                   (let ((_%$e148272%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht148270%_
                                             _%eid148265%_))))
                                     (if _%$e148272%_
                                         ((lambda (_%id148275%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id148275%_))
                                                _%id148275%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id148275%_))))
                                          _%$e148272%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid148265%_))))
                                 _%$e148267%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid148265%_))))))
                  (if (pair? _%key148250148257%_)
                      (let ((_%hd148254148282%_
                             (let ()
                               (declare (not safe))
                               (##car _%key148250148257%_)))
                            (_%tl148255148284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key148250148257%_))))
                        (let* ((_%eid148287%_ _%hd148254148282%_)
                               (_%mark148289%_ _%tl148255148284%_))
                          (_%K148253148279%_ _%mark148289%_ _%eid148287%_)))
                      (_%E148252148261%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self148243%_ _%stx148244%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self148090%_ _%stx148091%_)
        (letrec ((_%simplify148093%_
                  (lambda (_%body148141%_)
                    (let _%lp148143%_ ((_%rest148145%_ _%body148141%_)
                                       (_%r148146%_ '()))
                      (let* ((_%rest148147148155%_ _%rest148145%_)
                             (_%else148149148163%_
                              (lambda () (reverse _%r148146%_)))
                             (_%K148151148231%_
                              (lambda (_%rest148166%_ _%hd148167%_)
                                (let* ((_%hd148168148184%_ _%hd148167%_)
                                       (_%else148172148192%_
                                        (lambda ()
                                          (_%lp148143%_
                                           _%rest148166%_
                                           (cons _%hd148167%_ _%r148146%_)))))
                                  (let ((_%K148180148221%_
                                         (lambda (_%exprs148219%_)
                                           (_%lp148143%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest148166%_
                                               _%exprs148219%_))
                                            _%r148146%_)))
                                        (_%K148175148205%_
                                         (lambda ()
                                           (if (null? _%rest148166%_)
                                               (_%lp148143%_
                                                _%rest148166%_
                                                (cons _%hd148167%_
                                                      _%r148146%_))
                                               (_%lp148143%_
                                                _%rest148166%_
                                                _%r148146%_))))
                                        (_%K148174148197%_
                                         (lambda ()
                                           (if (null? _%rest148166%_)
                                               (_%lp148143%_
                                                _%rest148166%_
                                                (cons _%hd148167%_
                                                      _%r148146%_))
                                               (_%lp148143%_
                                                _%rest148166%_
                                                _%r148146%_)))))
                                    (let ((_%try-match148171148200%_
                                           (lambda ()
                                             (if (symbol? _%hd148168148184%_)
                                                 (_%K148174148197%_)
                                                 (_%else148172148192%_)))))
                                      (if (pair? _%hd148168148184%_)
                                          (let ((_%tl148182148226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd148168148184%_)))
                                                (_%hd148181148224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd148168148184%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd148181148224%_
                                                         'begin))
                                                (let ((_%exprs148229%_
                                                       _%tl148182148226%_))
                                                  (_%K148180148221%_
                                                   _%exprs148229%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd148181148224%_
                                                             'quote))
                                                    (if (pair? _%tl148182148226%_)
                                                        (let ((_%tl148179148213%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl148182148226%_))))
                  (if (null? _%tl148179148213%_)
                      (_%K148175148205%_)
                      (_%try-match148171148200%_)))
                (_%try-match148171148200%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match148171148200%_))))
                                          (_%try-match148171148200%_))))))))
                        (if (pair? _%rest148147148155%_)
                            (let ((_%hd148152148234%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148147148155%_)))
                                  (_%tl148153148236%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148147148155%_))))
                              (let* ((_%hd148239%_ _%hd148152148234%_)
                                     (_%rest148241%_ _%tl148153148236%_))
                                (_%K148151148231%_
                                 _%rest148241%_
                                 _%hd148239%_)))
                            (_%else148149148163%_)))))))
          (let* ((_%g148095148105%_
                  (lambda (_%g148096148102%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148096148102%_))))
                 (_%g148094148138%_
                  (lambda (_%g148096148108%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148096148108%_))
                        (let ((_%e148098148110%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148096148108%_))))
                          (let ((_%hd148099148113%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148098148110%_)))
                                (_%tl148100148115%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148098148110%_))))
                            ((lambda (_%L148118%_)
                               (let* ((_%body148133%_
                                       (map (lambda (_%g148128148130%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self148090%_
                                                 _%g148128148130%_)))
                                            _%L148118%_))
                                      (_%body148135%_
                                       (_%simplify148093%_ _%body148133%_)))
                                 (if (let ((__tmp150191
                                            (length _%body148135%_)))
                                       (declare (not safe))
                                       (##fx= __tmp150191 '1))
                                     (car _%body148135%_)
                                     (cons 'begin _%body148135%_))))
                             _%tl148100148115%_)))
                        (_%g148095148105%_ _%g148096148108%_)))))
            (_%g148094148138%_ _%stx148091%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self148051%_ _%stx148052%_)
        (let* ((_%g148054148064%_
                (lambda (_%g148055148061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148055148061%_))))
               (_%g148053148087%_
                (lambda (_%g148055148067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148055148067%_))
                      (let ((_%e148057148069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148055148067%_))))
                        (let ((_%hd148058148072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148057148069%_)))
                              (_%tl148059148074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148057148069%_))))
                          ((lambda (_%L148077%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L148077%_))))
                           _%tl148059148074%_)))
                      (_%g148054148064%_ _%g148055148067%_)))))
          (_%g148053148087%_ _%stx148052%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self147815%_ _%stx147816%_)
        (let* ((_%__stx148781148782%_ _%stx147816%_)
               (_%g147820147872%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148781148782%_)))))
          (let ((_%__kont148783148784%_
                 (lambda (_%L148033%_ _%L148034%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self147815%_ _%L148033%_))))
                (_%__kont148785148786%_
                 (lambda (_%L147981%_ _%L147982%_ _%L147983%_)
                   (if (let ((__tmp150192
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L147983%_))))
                         (declare (not safe))
                         (##memq __tmp150192 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self147815%_ _%L147981%_)))))
                (_%__kont148789148790%_
                 (lambda (_%L147901%_ _%L147902%_)
                   (let ((_%decls147917%_ (map gx#syntax->datum _%L147902%_)))
                     (let ((__tmp150195
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls147917%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147815%_
                                                   _%L147901%_))
                                                '())))))
                           (__tmp150193
                            (let ((__tmp150194
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp150194 _%decls147917%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp150195
                        gxc#current-compile-decls
                        __tmp150193))))))
            (let* ((_%__match148836148837%_
                    (lambda (_%e147836147925%_
                             _%hd147837147928%_
                             _%tl147838147930%_
                             _%e147839147933%_
                             _%hd147840147936%_
                             _%tl147841147938%_
                             _%e147842147941%_
                             _%hd147843147944%_
                             _%tl147844147946%_
                             _%__splice148787148788%_
                             _%target147845147949%_
                             _%tl147847147951%_)
                      (letrec ((_%loop147848147954%_
                                (lambda (_%hd147846147957%_
                                         _%param147852147959%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147846147957%_))
                                      (let ((_%e147849147962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147846147957%_))))
                                        (let ((_%lp-tl147851147967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147849147962%_)))
                                              (_%lp-hd147850147965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147849147962%_))))
                                          (_%loop147848147954%_
                                           _%lp-tl147851147967%_
                                           (cons _%lp-hd147850147965%_
                                                 _%param147852147959%_))))
                                      (let ((_%param147853147970%_
                                             (reverse _%param147852147959%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl147841147938%_))
                                            (let ((_%e147854147973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl147841147938%_))))
                                              (let ((_%tl147856147978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e147854147973%_)))
                                                    (_%hd147855147976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e147854147973%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl147856147978%_))
                                                    (let ((_%L147981%_
                                                           _%hd147855147976%_)
                                                          (_%L147982%_
                                                           _%param147853147970%_)
                                                          (_%L147983%_
                                                           _%hd147843147944%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L147983%_))
                       (not (let ((__tmp150196
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L147983%_))))
                              (declare (not safe))
                              (##memq __tmp150196 gxc#gambit-annotations))))
                  (_%__kont148785148786%_ _%L147981%_ _%L147982%_ _%L147983%_)
                  (_%__kont148789148790%_
                   _%hd147855147976%_
                   _%hd147840147936%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g147820147872%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g147820147872%_))))))))
                        (_%loop147848147954%_ _%target147845147949%_ '()))))
                   (_%__match148810148811%_
                    (lambda (_%e147824148009%_
                             _%hd147825148012%_
                             _%tl147826148014%_
                             _%e147827148017%_
                             _%hd147828148020%_
                             _%tl147829148022%_
                             _%e147830148025%_
                             _%hd147831148028%_
                             _%tl147832148030%_)
                      (let ((_%L148033%_ _%hd147831148028%_)
                            (_%L148034%_ _%hd147828148020%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L148034%_))
                            (_%__kont148783148784%_ _%L148033%_ _%L148034%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd147828148020%_))
                                (let ((_%e147842147941%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd147828148020%_))))
                                  (let ((_%tl147844147946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147842147941%_)))
                                        (_%hd147843147944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147842147941%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl147844147946%_))
                                        (let ((_%__splice148787148788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl147844147946%_
                                                  '0))))
                                          (let ((_%tl147847147951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148787148788%_
                                                    '1)))
                                                (_%target147845147949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148787148788%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147847147951%_))
                                                (_%__match148836148837%_
                                                 _%e147824148009%_
                                                 _%hd147825148012%_
                                                 _%tl147826148014%_
                                                 _%e147827148017%_
                                                 _%hd147828148020%_
                                                 _%tl147829148022%_
                                                 _%e147842147941%_
                                                 _%hd147843147944%_
                                                 _%tl147844147946%_
                                                 _%__splice148787148788%_
                                                 _%target147845147949%_
                                                 _%tl147847147951%_)
                                                (_%__kont148789148790%_
                                                 _%hd147831148028%_
                                                 _%hd147828148020%_))))
                                        (_%__kont148789148790%_
                                         _%hd147831148028%_
                                         _%hd147828148020%_))))
                                (_%__kont148789148790%_
                                 _%hd147831148028%_
                                 _%hd147828148020%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148781148782%_))
                  (let ((_%e147824148009%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148781148782%_))))
                    (let ((_%tl147826148014%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147824148009%_)))
                          (_%hd147825148012%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147824148009%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147826148014%_))
                          (let ((_%e147827148017%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147826148014%_))))
                            (let ((_%tl147829148022%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147827148017%_)))
                                  (_%hd147828148020%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147827148017%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147829148022%_))
                                  (let ((_%e147830148025%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147829148022%_))))
                                    (let ((_%tl147832148030%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147830148025%_)))
                                          (_%hd147831148028%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147830148025%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147832148030%_))
                                          (_%__match148810148811%_
                                           _%e147824148009%_
                                           _%hd147825148012%_
                                           _%tl147826148014%_
                                           _%e147827148017%_
                                           _%hd147828148020%_
                                           _%tl147829148022%_
                                           _%e147830148025%_
                                           _%hd147831148028%_
                                           _%tl147832148030%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd147828148020%_))
                                              (let ((_%e147842147941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd147828148020%_))))
                                                (let ((_%tl147844147946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147842147941%_)))
                                                      (_%hd147843147944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147842147941%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl147844147946%_))
                                                      (let ((_%__splice148787148788%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl147844147946%_ '0))))
                (let ((_%tl147847147951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148787148788%_ '1)))
                      (_%target147845147949%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148787148788%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147847147951%_))
                      (_%__match148836148837%_
                       _%e147824148009%_
                       _%hd147825148012%_
                       _%tl147826148014%_
                       _%e147827148017%_
                       _%hd147828148020%_
                       _%tl147829148022%_
                       _%e147842147941%_
                       _%hd147843147944%_
                       _%tl147844147946%_
                       _%__splice148787148788%_
                       _%target147845147949%_
                       _%tl147847147951%_)
                      (let () (declare (not safe)) (_%g147820147872%_)))))
              (let () (declare (not safe)) (_%g147820147872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g147820147872%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147828148020%_))
                                      (let ((_%e147842147941%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147828148020%_))))
                                        (let ((_%tl147844147946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147842147941%_)))
                                              (_%hd147843147944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147842147941%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl147844147946%_))
                                              (let ((_%__splice148787148788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl147844147946%_
                                                        '0))))
                                                (let ((_%tl147847147951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148787148788%_
                                                          '1)))
                                                      (_%target147845147949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148787148788%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147847147951%_))
                                                      (_%__match148836148837%_
                                                       _%e147824148009%_
                                                       _%hd147825148012%_
                                                       _%tl147826148014%_
                                                       _%e147827148017%_
                                                       _%hd147828148020%_
                                                       _%tl147829148022%_
                                                       _%e147842147941%_
                                                       _%hd147843147944%_
                                                       _%tl147844147946%_
                                                       _%__splice148787148788%_
                                                       _%target147845147949%_
                                                       _%tl147847147951%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g147820147872%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g147820147872%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g147820147872%_))))))
                          (let () (declare (not safe)) (_%g147820147872%_)))))
                  (let () (declare (not safe)) (_%g147820147872%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self147774%_ _%stx147775%_)
        (let* ((_%g147777147787%_
                (lambda (_%g147778147784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147778147784%_))))
               (_%g147776147812%_
                (lambda (_%g147778147790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147778147790%_))
                      (let ((_%e147780147792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147778147790%_))))
                        (let ((_%hd147781147795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147780147792%_)))
                              (_%tl147782147797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147780147792%_))))
                          ((lambda (_%L147800%_)
                             (let ((_%decls147810%_
                                    (map gx#syntax->datum _%L147800%_)))
                               (let ((__tmp150197
                                      (let ((__tmp150198
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp150198
                                         _%decls147810%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp150197))
                               (cons 'declare _%decls147810%_)))
                           _%tl147782147797%_)))
                      (_%g147777147787%_ _%g147778147790%_)))))
          (_%g147776147812%_ _%stx147775%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self147520%_ _%stx147521%_)
        (let* ((_%g147523147540%_
                (lambda (_%g147524147537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147524147537%_))))
               (_%g147522147771%_
                (lambda (_%g147524147543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147524147543%_))
                      (let ((_%e147527147545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147524147543%_))))
                        (let ((_%hd147528147548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147527147545%_)))
                              (_%tl147529147550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147527147545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147529147550%_))
                              (let ((_%e147530147553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147529147550%_))))
                                (let ((_%hd147531147556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147530147553%_)))
                                      (_%tl147532147558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147530147553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147532147558%_))
                                      (let ((_%e147533147561%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147532147558%_))))
                                        (let ((_%hd147534147564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147533147561%_)))
                                              (_%tl147535147566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147533147561%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147535147566%_))
                                              ((lambda (_%L147569%_
                                                        _%L147570%_)
                                                 (let* ((_%__stx148889148890%_
                                                         _%L147570%_)
                                                        (_%g147587147601%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx148889148890%_)))))
                                                   (let ((_%__kont148891148892%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self147520%_
                                                               _%L147569%_))))
                                                         (_%__kont148893148894%_
                                                          (lambda (_%L147733%_)
                                                            (let ((_%eid147742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L147733%_))))
                      (let ((_%lambda-expr147743147745%_
                             (gxc#apply-find-lambda-expression _%L147569%_)))
                        (if _%lambda-expr147743147745%_
                            (let* ((_%lambda-expr147748%_
                                    _%lambda-expr147743147745%_)
                                   (__tmp150199
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150199
                               _%lambda-expr147748%_
                               _%eid147742%_))
                            '#f))
                      (cons 'define
                            (cons _%eid147742%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self147520%_
                                           _%L147569%_))
                                        '()))))))
                 (_%__kont148895148896%_
                  (lambda ()
                    (let* ((_%tmp147608%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body147717%_
                            (let _%lp147610%_ ((_%rest147612%_ _%L147570%_)
                                               (_%k147613%_ '0)
                                               (_%r147614%_ '()))
                              (let* ((_%__stx148859148860%_ _%rest147612%_)
                                     (_%g147619147636%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx148859148860%_)))))
                                (let ((_%__kont148861148862%_
                                       (lambda (_%L147704%_)
                                         (_%lp147610%_
                                          _%L147704%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147613%_ '1))
                                          _%r147614%_)))
                                      (_%__kont148863148864%_
                                       (lambda (_%L147677%_ _%L147678%_)
                                         (_%lp147610%_
                                          _%L147677%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147613%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L147678%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp147608%_
                           _%k147613%_
                           _%L147677%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r147614%_))))
                                      (_%__kont148865148866%_
                                       (lambda (_%L147648%_)
                                         (let ((__tmp150200
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L147648%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp147608%_
                                 _%k147613%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp150200
                                            _%r147614%_))))
                                      (_%__kont148867148868%_
                                       (lambda () (reverse _%r147614%_))))
                                  (let ((_%g147617147664%_
                                         (lambda ()
                                           (let ((_%L147648%_
                                                  _%__stx148859148860%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L147648%_))
                                                 (_%__kont148865148866%_
                                                  _%L147648%_)
                                                 (_%__kont148867148868%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148859148860%_))
                                        (let ((_%e147622147693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148859148860%_))))
                                          (let ((_%tl147624147698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147622147693%_)))
                                                (_%hd147623147696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147622147693%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd147623147696%_))
                                                (let ((_%e147625147701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd147623147696%_))))
                                                  (if (equal? _%e147625147701%_
                                                              '#f)
                                                      (_%__kont148861148862%_
                                                       _%tl147624147698%_)
                                                      (_%__kont148863148864%_
                                                       _%tl147624147698%_
                                                       _%hd147623147696%_)))
                                                (_%__kont148863148864%_
                                                 _%tl147624147698%_
                                                 _%hd147623147696%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g147617147664%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp147608%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self147520%_
                                                       _%L147569%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp147608%_
                                         _%L147570%_
                                         _%L147569%_)
                                        _%body147717%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx148889148890%_))
                                                         (let ((_%e147589147755%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx148889148890%_))))
                   (let ((_%tl147591147760%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e147589147755%_)))
                         (_%hd147590147758%_
                          (let ()
                            (declare (not safe))
                            (##car _%e147589147755%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd147590147758%_))
                         (let ((_%e147592147763%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd147590147758%_))))
                           (if (equal? _%e147592147763%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147591147760%_))
                                   (_%__kont148891148892%_)
                                   (_%__kont148895148896%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147591147760%_))
                                   (_%__kont148893148894%_ _%hd147590147758%_)
                                   (_%__kont148895148896%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl147591147760%_))
                             (_%__kont148893148894%_ _%hd147590147758%_)
                             (_%__kont148895148896%_)))))
                 (_%__kont148895148896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147534147564%_
                                               _%hd147531147556%_)
                                              (_%g147523147540%_
                                               _%g147524147543%_))))
                                      (_%g147523147540%_ _%g147524147543%_))))
                              (_%g147523147540%_ _%g147524147543%_))))
                      (_%g147523147540%_ _%g147524147543%_)))))
          (_%g147522147771%_ _%stx147521%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals147495%_ _%hd147496%_ _%expr147497%_)
        (let ((_%$e147499%_ (gxc#apply-count-values _%expr147497%_)))
          (if _%$e147499%_
              ((lambda (_%count147502%_)
                 (let ((_%len147504%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd147496%_)))
                       (_%cmp147505%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd147496%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len147504%_ '0))
                           (_%cmp147505%_ _%count147502%_ _%len147504%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr147497%_
                          _%hd147496%_)))))
               _%$e147499%_)
              (let* ((_%len147511%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd147496%_)))
                     (_%cmp147513%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd147496%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg147515%_
                      (let ((__tmp150202
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd147496%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp150201 (number->string _%len147511%_)))
                        (declare (not safe))
                        (##string-append __tmp150202 __tmp150201 '" values")))
                     (_%count147517%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd147496%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len147511%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count147517%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals147495%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp147513%_
                                (cons _%count147517%_
                                      (cons _%len147511%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp147513%_
                                                        (cons _%count147517%_
                                                              (cons _%len147511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg147515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count147517%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var147490%_)
        (letrec ((_%generate-inline147492%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var147490%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var147490%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147492%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147492%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var147483%_ _%i147484%_ _%rest147485%_)
        (letrec ((_%generate-inline147487%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i147484%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest147485%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var147483%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var147483%_
                                                      (cons '0 '())))
                                          (cons _%var147483%_ '()))))
                        (cons '##values-ref
                              (cons _%var147483%_ (cons _%i147484%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147487%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147487%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var147477%_ _%i147478%_)
        (if (let () (declare (not safe)) (##fx= _%i147478%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var147477%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var147477%_ '()))
                                  (cons (cons 'list (cons _%var147477%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var147477%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var147477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var147477%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i147478%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var147477%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var147477%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var147477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var147477%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var147477%_ '()))
                                (cons _%i147478%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var147477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i147478%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self147409%_ _%stx147410%_)
        (let* ((_%g147412147429%_
                (lambda (_%g147413147426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147413147426%_))))
               (_%g147411147474%_
                (lambda (_%g147413147432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147413147432%_))
                      (let ((_%e147416147434%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147413147432%_))))
                        (let ((_%hd147417147437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147416147434%_)))
                              (_%tl147418147439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147416147434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147418147439%_))
                              (let ((_%e147419147442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147418147439%_))))
                                (let ((_%hd147420147445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147419147442%_)))
                                      (_%tl147421147447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147419147442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147421147447%_))
                                      (let ((_%e147422147450%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147421147447%_))))
                                        (let ((_%hd147423147453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147422147450%_)))
                                              (_%tl147424147455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147422147450%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147424147455%_))
                                              ((lambda (_%L147458%_
                                                        _%L147459%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self147409%_
                                                  _%L147459%_
                                                  _%L147458%_))
                                               _%hd147423147453%_
                                               _%hd147420147445%_)
                                              (_%g147412147429%_
                                               _%g147413147432%_))))
                                      (_%g147412147429%_ _%g147413147432%_))))
                              (_%g147412147429%_ _%g147413147432%_))))
                      (_%g147412147429%_ _%g147413147432%_)))))
          (_%g147411147474%_ _%stx147410%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self147368%_ _%hd147369%_ _%body147370%_)
        (let* ((_%hd147372%_ (gxc#generate-runtime-lambda-head _%hd147369%_))
               (_%body147374%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self147368%_ _%body147370%_)))
               (_%body147406%_
                (let* ((_%body147375147383%_ _%body147374%_)
                       (_%else147377147391%_
                        (lambda () (cons _%body147374%_ '())))
                       (_%K147379147396%_
                        (lambda (_%exprs147394%_) _%exprs147394%_)))
                  (if (pair? _%body147375147383%_)
                      (let ((_%hd147380147399%_
                             (let ()
                               (declare (not safe))
                               (##car _%body147375147383%_)))
                            (_%tl147381147401%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body147375147383%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd147380147399%_ 'begin))
                            (let ((_%exprs147404%_ _%tl147381147401%_))
                              (_%K147379147396%_ _%exprs147404%_))
                            (_%else147377147391%_)))
                      (_%else147377147391%_)))))
          (cons 'lambda (cons _%hd147372%_ _%body147406%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd147366%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd147366%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self145905%_ _%stx145906%_)
        (letrec ((_%dispatch-case?145908%_
                  (lambda (_%hd146596%_ _%body146597%_)
                    (let* ((_%form146599%_
                            (cons _%hd146596%_ (cons _%body146597%_ '())))
                           (_%__stx148921148922%_ _%form146599%_)
                           (_%g146604146761%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148921148922%_)))))
                      (let ((_%__kont148923148924%_
                             (lambda (_%L147286%_ _%L147287%_ _%L147288%_)
                               '#t))
                            (_%__kont148929148930%_
                             (lambda (_%L147074%_
                                      _%L147075%_
                                      _%L147076%_
                                      _%L147077%_
                                      _%L147078%_
                                      _%L147079%_)
                               '#t))
                            (_%__kont148935148936%_
                             (lambda (_%L146869%_
                                      _%L146870%_
                                      _%L146871%_
                                      _%L146872%_)
                               '#t))
                            (_%__kont148937148938%_ (lambda () '#f)))
                        (let* ((_%__match149062149063%_
                                (lambda (_%e146721146773%_
                                         _%hd146722146776%_
                                         _%tl146723146778%_
                                         _%e146724146781%_
                                         _%hd146725146784%_
                                         _%tl146726146786%_
                                         _%e146727146789%_
                                         _%hd146728146792%_
                                         _%tl146729146794%_
                                         _%e146730146797%_
                                         _%hd146731146800%_
                                         _%tl146732146802%_
                                         _%e146733146805%_
                                         _%hd146734146808%_
                                         _%tl146735146810%_
                                         _%e146736146813%_
                                         _%hd146737146816%_
                                         _%tl146738146818%_
                                         _%e146739146821%_
                                         _%hd146740146824%_
                                         _%tl146741146826%_
                                         _%e146742146829%_
                                         _%hd146743146832%_
                                         _%tl146744146834%_
                                         _%e146745146837%_
                                         _%hd146746146840%_
                                         _%tl146747146842%_
                                         _%e146748146845%_
                                         _%hd146749146848%_
                                         _%tl146750146850%_
                                         _%e146751146853%_
                                         _%hd146752146856%_
                                         _%tl146753146858%_
                                         _%e146754146861%_
                                         _%hd146755146864%_
                                         _%tl146756146866%_)
                                  (let ((_%L146869%_ _%hd146755146864%_)
                                        (_%L146870%_ _%hd146746146840%_)
                                        (_%L146871%_ _%hd146737146816%_)
                                        (_%L146872%_ _%hd146722146776%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L146872%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L146871%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146872%_
                                                _%L146869%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L146870%_
                                                     _%L146872%_))))
                                        (_%__kont148935148936%_
                                         _%L146869%_
                                         _%L146870%_
                                         _%L146871%_
                                         _%L146872%_)
                                        (_%__kont148937148938%_)))))
                               (_%__match149034149035%_
                                (lambda (_%e146721146773%_
                                         _%hd146722146776%_
                                         _%tl146723146778%_
                                         _%e146724146781%_
                                         _%hd146725146784%_
                                         _%tl146726146786%_
                                         _%e146727146789%_
                                         _%hd146728146792%_
                                         _%tl146729146794%_
                                         _%e146730146797%_
                                         _%hd146731146800%_
                                         _%tl146732146802%_
                                         _%e146733146805%_
                                         _%hd146734146808%_
                                         _%tl146735146810%_
                                         _%e146736146813%_
                                         _%hd146737146816%_
                                         _%tl146738146818%_
                                         _%e146739146821%_
                                         _%hd146740146824%_
                                         _%tl146741146826%_
                                         _%e146742146829%_
                                         _%hd146743146832%_
                                         _%tl146744146834%_
                                         _%e146745146837%_
                                         _%hd146746146840%_
                                         _%tl146747146842%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146741146826%_))
                                      (let ((_%e146748146845%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146741146826%_))))
                                        (let ((_%tl146750146850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146748146845%_)))
                                              (_%hd146749146848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146748146845%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146749146848%_))
                                              (let ((_%e146751146853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146749146848%_))))
                                                (let ((_%tl146753146858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146751146853%_)))
                                                      (_%hd146752146856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146751146853%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd146752146856%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd146752146856%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146753146858%_))
                      (let ((_%e146754146861%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146753146858%_))))
                        (let ((_%tl146756146866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146754146861%_)))
                              (_%hd146755146864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146754146861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146756146866%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl146750146850%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl146726146786%_))
                                      (_%__match149062149063%_
                                       _%e146721146773%_
                                       _%hd146722146776%_
                                       _%tl146723146778%_
                                       _%e146724146781%_
                                       _%hd146725146784%_
                                       _%tl146726146786%_
                                       _%e146727146789%_
                                       _%hd146728146792%_
                                       _%tl146729146794%_
                                       _%e146730146797%_
                                       _%hd146731146800%_
                                       _%tl146732146802%_
                                       _%e146733146805%_
                                       _%hd146734146808%_
                                       _%tl146735146810%_
                                       _%e146736146813%_
                                       _%hd146737146816%_
                                       _%tl146738146818%_
                                       _%e146739146821%_
                                       _%hd146740146824%_
                                       _%tl146741146826%_
                                       _%e146742146829%_
                                       _%hd146743146832%_
                                       _%tl146744146834%_
                                       _%e146745146837%_
                                       _%hd146746146840%_
                                       _%tl146747146842%_
                                       _%e146748146845%_
                                       _%hd146749146848%_
                                       _%tl146750146850%_
                                       _%e146751146853%_
                                       _%hd146752146856%_
                                       _%tl146753146858%_
                                       _%e146754146861%_
                                       _%hd146755146864%_
                                       _%tl146756146866%_)
                                      (_%__kont148937148938%_))
                                  (_%__kont148937148938%_))
                              (_%__kont148937148938%_))))
                      (_%__kont148937148938%_))
                  (_%__kont148937148938%_))
              (_%__kont148937148938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148937148938%_))))
                                      (_%__kont148937148938%_))))
                               (_%__match148964148965%_
                                (lambda (_%e146657146914%_
                                         _%hd146658146917%_
                                         _%tl146659146919%_
                                         _%__splice148931148932%_
                                         _%target146660146922%_
                                         _%tl146662146924%_)
                                  (letrec ((_%loop146663146927%_
                                            (lambda (_%hd146661146930%_
                                                     _%arg146667146932%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146661146930%_))
                                                  (let ((_%e146664146935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146661146930%_))))
                                                    (let ((_%lp-tl146666146940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146664146935%_)))
                                                          (_%lp-hd146665146938%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146664146935%_))))
                                                      (_%loop146663146927%_
                                                       _%lp-tl146666146940%_
                                                       (cons _%lp-hd146665146938%_
                                                             _%arg146667146932%_))))
                                                  (let ((_%arg146668146943%_
                                                         (reverse _%arg146667146932%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146659146919%_))
                                                        (let ((_%e146669146946%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146659146919%_))))
                  (let ((_%tl146671146951%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146669146946%_)))
                        (_%hd146670146949%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146669146946%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146670146949%_))
                        (let ((_%e146672146954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146670146949%_))))
                          (let ((_%tl146674146959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146672146954%_)))
                                (_%hd146673146957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146672146954%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146673146957%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146673146957%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146674146959%_))
                                        (let ((_%e146675146962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146674146959%_))))
                                          (let ((_%tl146677146967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146675146962%_)))
                                                (_%hd146676146965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146675146962%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146676146965%_))
                                                (let ((_%e146678146970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146676146965%_))))
                                                  (let ((_%tl146680146975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146678146970%_)))
                                                        (_%hd146679146973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146678146970%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146679146973%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146679146973%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146680146975%_))
                        (let ((_%e146681146978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146680146975%_))))
                          (let ((_%tl146683146983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146681146978%_)))
                                (_%hd146682146981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146681146978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146683146983%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146677146967%_))
                                    (let ((_%e146684146986%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146677146967%_))))
                                      (let ((_%tl146686146991%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146684146986%_)))
                                            (_%hd146685146989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146684146986%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146685146989%_))
                                            (let ((_%e146687146994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146685146989%_))))
                                              (let ((_%tl146689146999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146687146994%_)))
                                                    (_%hd146688146997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146687146994%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146688146997%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146688146997%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146689146999%_))
                                                            (let ((_%e146690147002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146689146999%_))))
                      (let ((_%tl146692147007%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146690147002%_)))
                            (_%hd146691147005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146690147002%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146692147007%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146686146991%_))
                                (if (let ((__tmp150203
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl146686146991%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp150203 '1))
                                    (let ((_%__splice148933148934%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146686146991%_
                                              '1))))
                                      (let ((_%tl146695147012%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148933148934%_
                                                '1)))
                                            (_%target146693147010%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148933148934%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146695147012%_))
                                            (let ((_%e146702147015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146695147012%_))))
                                              (let ((_%tl146704147020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146702147015%_)))
                                                    (_%hd146703147018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146702147015%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd146703147018%_))
                                                    (let ((_%e146705147023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd146703147018%_))))
                                                      (let ((_%tl146707147028%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e146705147023%_)))
                    (_%hd146706147026%_
                     (let () (declare (not safe)) (##car _%e146705147023%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd146706147026%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd146706147026%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl146707147028%_))
                            (let ((_%e146708147031%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl146707147028%_))))
                              (let ((_%tl146710147036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146708147031%_)))
                                    (_%hd146709147034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146708147031%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl146710147036%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl146704147020%_))
                                        (letrec ((_%loop146696147039%_
                                                  (lambda (_%hd146694147042%_
                                                           _%xarg146700147044%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd146694147042%_))
                                                        (let ((_%e146697147047%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd146694147042%_))))
                  (let ((_%lp-tl146699147052%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146697147047%_)))
                        (_%lp-hd146698147050%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146697147047%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd146698147050%_))
                        (let ((_%e146711147055%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd146698147050%_))))
                          (let ((_%tl146713147060%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146711147055%_)))
                                (_%hd146712147058%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146711147055%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146712147058%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd146712147058%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146713147060%_))
                                        (let ((_%e146714147063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146713147060%_))))
                                          (let ((_%tl146716147068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146714147063%_)))
                                                (_%hd146715147066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146714147063%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146716147068%_))
                                                (_%loop146696147039%_
                                                 _%lp-tl146699147052%_
                                                 (cons _%hd146715147066%_
                                                       _%xarg146700147044%_))
                                                (_%__match149034149035%_
                                                 _%e146657146914%_
                                                 _%hd146658146917%_
                                                 _%tl146659146919%_
                                                 _%e146669146946%_
                                                 _%hd146670146949%_
                                                 _%tl146671146951%_
                                                 _%e146672146954%_
                                                 _%hd146673146957%_
                                                 _%tl146674146959%_
                                                 _%e146675146962%_
                                                 _%hd146676146965%_
                                                 _%tl146677146967%_
                                                 _%e146678146970%_
                                                 _%hd146679146973%_
                                                 _%tl146680146975%_
                                                 _%e146681146978%_
                                                 _%hd146682146981%_
                                                 _%tl146683146983%_
                                                 _%e146684146986%_
                                                 _%hd146685146989%_
                                                 _%tl146686146991%_
                                                 _%e146687146994%_
                                                 _%hd146688146997%_
                                                 _%tl146689146999%_
                                                 _%e146690147002%_
                                                 _%hd146691147005%_
                                                 _%tl146692147007%_))))
                                        (_%__match149034149035%_
                                         _%e146657146914%_
                                         _%hd146658146917%_
                                         _%tl146659146919%_
                                         _%e146669146946%_
                                         _%hd146670146949%_
                                         _%tl146671146951%_
                                         _%e146672146954%_
                                         _%hd146673146957%_
                                         _%tl146674146959%_
                                         _%e146675146962%_
                                         _%hd146676146965%_
                                         _%tl146677146967%_
                                         _%e146678146970%_
                                         _%hd146679146973%_
                                         _%tl146680146975%_
                                         _%e146681146978%_
                                         _%hd146682146981%_
                                         _%tl146683146983%_
                                         _%e146684146986%_
                                         _%hd146685146989%_
                                         _%tl146686146991%_
                                         _%e146687146994%_
                                         _%hd146688146997%_
                                         _%tl146689146999%_
                                         _%e146690147002%_
                                         _%hd146691147005%_
                                         _%tl146692147007%_))
                                    (_%__match149034149035%_
                                     _%e146657146914%_
                                     _%hd146658146917%_
                                     _%tl146659146919%_
                                     _%e146669146946%_
                                     _%hd146670146949%_
                                     _%tl146671146951%_
                                     _%e146672146954%_
                                     _%hd146673146957%_
                                     _%tl146674146959%_
                                     _%e146675146962%_
                                     _%hd146676146965%_
                                     _%tl146677146967%_
                                     _%e146678146970%_
                                     _%hd146679146973%_
                                     _%tl146680146975%_
                                     _%e146681146978%_
                                     _%hd146682146981%_
                                     _%tl146683146983%_
                                     _%e146684146986%_
                                     _%hd146685146989%_
                                     _%tl146686146991%_
                                     _%e146687146994%_
                                     _%hd146688146997%_
                                     _%tl146689146999%_
                                     _%e146690147002%_
                                     _%hd146691147005%_
                                     _%tl146692147007%_))
                                (_%__match149034149035%_
                                 _%e146657146914%_
                                 _%hd146658146917%_
                                 _%tl146659146919%_
                                 _%e146669146946%_
                                 _%hd146670146949%_
                                 _%tl146671146951%_
                                 _%e146672146954%_
                                 _%hd146673146957%_
                                 _%tl146674146959%_
                                 _%e146675146962%_
                                 _%hd146676146965%_
                                 _%tl146677146967%_
                                 _%e146678146970%_
                                 _%hd146679146973%_
                                 _%tl146680146975%_
                                 _%e146681146978%_
                                 _%hd146682146981%_
                                 _%tl146683146983%_
                                 _%e146684146986%_
                                 _%hd146685146989%_
                                 _%tl146686146991%_
                                 _%e146687146994%_
                                 _%hd146688146997%_
                                 _%tl146689146999%_
                                 _%e146690147002%_
                                 _%hd146691147005%_
                                 _%tl146692147007%_))))
                        (_%__match149034149035%_
                         _%e146657146914%_
                         _%hd146658146917%_
                         _%tl146659146919%_
                         _%e146669146946%_
                         _%hd146670146949%_
                         _%tl146671146951%_
                         _%e146672146954%_
                         _%hd146673146957%_
                         _%tl146674146959%_
                         _%e146675146962%_
                         _%hd146676146965%_
                         _%tl146677146967%_
                         _%e146678146970%_
                         _%hd146679146973%_
                         _%tl146680146975%_
                         _%e146681146978%_
                         _%hd146682146981%_
                         _%tl146683146983%_
                         _%e146684146986%_
                         _%hd146685146989%_
                         _%tl146686146991%_
                         _%e146687146994%_
                         _%hd146688146997%_
                         _%tl146689146999%_
                         _%e146690147002%_
                         _%hd146691147005%_
                         _%tl146692147007%_))))
                (let ((_%xarg146701147071%_ (reverse _%xarg146700147044%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146671146951%_))
                      (let ((_%L147074%_ _%hd146709147034%_)
                            (_%L147075%_ _%xarg146701147071%_)
                            (_%L147076%_ _%hd146691147005%_)
                            (_%L147077%_ _%hd146682146981%_)
                            (_%L147078%_ _%tl146662146924%_)
                            (_%L147079%_ _%arg146668146943%_))
                        (if (and (let ((__tmp150204
                                        (let ((__tmp150205
                                               (lambda (_%g147122147125%_
                                                        _%g147123147127%_)
                                                 (cons _%g147122147125%_
                                                       _%g147123147127%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150205
                                           '()
                                           _%L147079%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp150204))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L147078%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L147077%_
                                    'apply))
                                 (let ((__tmp150208
                                        (length (let ((__tmp150209
                                                       (lambda (_%g147129147132%_
                                                                _%g147130147134%_)
                                                         (cons _%g147129147132%_
                                                               _%g147130147134%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150209
                                                   '()
                                                   _%L147079%_))))
                                       (__tmp150206
                                        (length (let ((__tmp150207
                                                       (lambda (_%g147136147139%_
                                                                _%g147137147141%_)
                                                         (cons _%g147136147139%_
                                                               _%g147137147141%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150207
                                                   '()
                                                   _%L147075%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp150208 __tmp150206))
                                 (let ((__tmp150212
                                        (let ((__tmp150213
                                               (lambda (_%g147143147146%_
                                                        _%g147144147148%_)
                                                 (cons _%g147143147146%_
                                                       _%g147144147148%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150213
                                           '()
                                           _%L147079%_)))
                                       (__tmp150210
                                        (let ((__tmp150211
                                               (lambda (_%g147150147153%_
                                                        _%g147151147155%_)
                                                 (cons _%g147150147153%_
                                                       _%g147151147155%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150211
                                           '()
                                           _%L147075%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp150212
                                    __tmp150210))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L147078%_
                                    _%L147074%_))
                                 (not (let ((__tmp150217
                                             (lambda (_%g147157147159%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g147157147159%_
                                                  _%L147076%_))))
                                            (__tmp150214
                                             (let ((__tmp150216
                                                    (lambda (_%g147161147164%_
                                                             _%g147162147166%_)
                                                      (cons _%g147161147164%_
                                                            _%g147162147166%_)))
                                                   (__tmp150215
                                                    (cons _%L147078%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150216
                                                __tmp150215
                                                _%L147079%_))))
                                        (declare (not safe))
                                        (__find __tmp150217 __tmp150214))))
                            (_%__kont148929148930%_
                             _%L147074%_
                             _%L147075%_
                             _%L147076%_
                             _%L147077%_
                             _%L147078%_
                             _%L147079%_)
                            (_%__match149034149035%_
                             _%e146657146914%_
                             _%hd146658146917%_
                             _%tl146659146919%_
                             _%e146669146946%_
                             _%hd146670146949%_
                             _%tl146671146951%_
                             _%e146672146954%_
                             _%hd146673146957%_
                             _%tl146674146959%_
                             _%e146675146962%_
                             _%hd146676146965%_
                             _%tl146677146967%_
                             _%e146678146970%_
                             _%hd146679146973%_
                             _%tl146680146975%_
                             _%e146681146978%_
                             _%hd146682146981%_
                             _%tl146683146983%_
                             _%e146684146986%_
                             _%hd146685146989%_
                             _%tl146686146991%_
                             _%e146687146994%_
                             _%hd146688146997%_
                             _%tl146689146999%_
                             _%e146690147002%_
                             _%hd146691147005%_
                             _%tl146692147007%_)))
                      (_%__match149034149035%_
                       _%e146657146914%_
                       _%hd146658146917%_
                       _%tl146659146919%_
                       _%e146669146946%_
                       _%hd146670146949%_
                       _%tl146671146951%_
                       _%e146672146954%_
                       _%hd146673146957%_
                       _%tl146674146959%_
                       _%e146675146962%_
                       _%hd146676146965%_
                       _%tl146677146967%_
                       _%e146678146970%_
                       _%hd146679146973%_
                       _%tl146680146975%_
                       _%e146681146978%_
                       _%hd146682146981%_
                       _%tl146683146983%_
                       _%e146684146986%_
                       _%hd146685146989%_
                       _%tl146686146991%_
                       _%e146687146994%_
                       _%hd146688146997%_
                       _%tl146689146999%_
                       _%e146690147002%_
                       _%hd146691147005%_
                       _%tl146692147007%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop146696147039%_
                                           _%target146693147010%_
                                           '()))
                                        (_%__match149034149035%_
                                         _%e146657146914%_
                                         _%hd146658146917%_
                                         _%tl146659146919%_
                                         _%e146669146946%_
                                         _%hd146670146949%_
                                         _%tl146671146951%_
                                         _%e146672146954%_
                                         _%hd146673146957%_
                                         _%tl146674146959%_
                                         _%e146675146962%_
                                         _%hd146676146965%_
                                         _%tl146677146967%_
                                         _%e146678146970%_
                                         _%hd146679146973%_
                                         _%tl146680146975%_
                                         _%e146681146978%_
                                         _%hd146682146981%_
                                         _%tl146683146983%_
                                         _%e146684146986%_
                                         _%hd146685146989%_
                                         _%tl146686146991%_
                                         _%e146687146994%_
                                         _%hd146688146997%_
                                         _%tl146689146999%_
                                         _%e146690147002%_
                                         _%hd146691147005%_
                                         _%tl146692147007%_))
                                    (_%__match149034149035%_
                                     _%e146657146914%_
                                     _%hd146658146917%_
                                     _%tl146659146919%_
                                     _%e146669146946%_
                                     _%hd146670146949%_
                                     _%tl146671146951%_
                                     _%e146672146954%_
                                     _%hd146673146957%_
                                     _%tl146674146959%_
                                     _%e146675146962%_
                                     _%hd146676146965%_
                                     _%tl146677146967%_
                                     _%e146678146970%_
                                     _%hd146679146973%_
                                     _%tl146680146975%_
                                     _%e146681146978%_
                                     _%hd146682146981%_
                                     _%tl146683146983%_
                                     _%e146684146986%_
                                     _%hd146685146989%_
                                     _%tl146686146991%_
                                     _%e146687146994%_
                                     _%hd146688146997%_
                                     _%tl146689146999%_
                                     _%e146690147002%_
                                     _%hd146691147005%_
                                     _%tl146692147007%_))))
                            (_%__match149034149035%_
                             _%e146657146914%_
                             _%hd146658146917%_
                             _%tl146659146919%_
                             _%e146669146946%_
                             _%hd146670146949%_
                             _%tl146671146951%_
                             _%e146672146954%_
                             _%hd146673146957%_
                             _%tl146674146959%_
                             _%e146675146962%_
                             _%hd146676146965%_
                             _%tl146677146967%_
                             _%e146678146970%_
                             _%hd146679146973%_
                             _%tl146680146975%_
                             _%e146681146978%_
                             _%hd146682146981%_
                             _%tl146683146983%_
                             _%e146684146986%_
                             _%hd146685146989%_
                             _%tl146686146991%_
                             _%e146687146994%_
                             _%hd146688146997%_
                             _%tl146689146999%_
                             _%e146690147002%_
                             _%hd146691147005%_
                             _%tl146692147007%_))
                        (_%__match149034149035%_
                         _%e146657146914%_
                         _%hd146658146917%_
                         _%tl146659146919%_
                         _%e146669146946%_
                         _%hd146670146949%_
                         _%tl146671146951%_
                         _%e146672146954%_
                         _%hd146673146957%_
                         _%tl146674146959%_
                         _%e146675146962%_
                         _%hd146676146965%_
                         _%tl146677146967%_
                         _%e146678146970%_
                         _%hd146679146973%_
                         _%tl146680146975%_
                         _%e146681146978%_
                         _%hd146682146981%_
                         _%tl146683146983%_
                         _%e146684146986%_
                         _%hd146685146989%_
                         _%tl146686146991%_
                         _%e146687146994%_
                         _%hd146688146997%_
                         _%tl146689146999%_
                         _%e146690147002%_
                         _%hd146691147005%_
                         _%tl146692147007%_))
                    (_%__match149034149035%_
                     _%e146657146914%_
                     _%hd146658146917%_
                     _%tl146659146919%_
                     _%e146669146946%_
                     _%hd146670146949%_
                     _%tl146671146951%_
                     _%e146672146954%_
                     _%hd146673146957%_
                     _%tl146674146959%_
                     _%e146675146962%_
                     _%hd146676146965%_
                     _%tl146677146967%_
                     _%e146678146970%_
                     _%hd146679146973%_
                     _%tl146680146975%_
                     _%e146681146978%_
                     _%hd146682146981%_
                     _%tl146683146983%_
                     _%e146684146986%_
                     _%hd146685146989%_
                     _%tl146686146991%_
                     _%e146687146994%_
                     _%hd146688146997%_
                     _%tl146689146999%_
                     _%e146690147002%_
                     _%hd146691147005%_
                     _%tl146692147007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match149034149035%_
                                                     _%e146657146914%_
                                                     _%hd146658146917%_
                                                     _%tl146659146919%_
                                                     _%e146669146946%_
                                                     _%hd146670146949%_
                                                     _%tl146671146951%_
                                                     _%e146672146954%_
                                                     _%hd146673146957%_
                                                     _%tl146674146959%_
                                                     _%e146675146962%_
                                                     _%hd146676146965%_
                                                     _%tl146677146967%_
                                                     _%e146678146970%_
                                                     _%hd146679146973%_
                                                     _%tl146680146975%_
                                                     _%e146681146978%_
                                                     _%hd146682146981%_
                                                     _%tl146683146983%_
                                                     _%e146684146986%_
                                                     _%hd146685146989%_
                                                     _%tl146686146991%_
                                                     _%e146687146994%_
                                                     _%hd146688146997%_
                                                     _%tl146689146999%_
                                                     _%e146690147002%_
                                                     _%hd146691147005%_
                                                     _%tl146692147007%_))))
                                            (_%__match149034149035%_
                                             _%e146657146914%_
                                             _%hd146658146917%_
                                             _%tl146659146919%_
                                             _%e146669146946%_
                                             _%hd146670146949%_
                                             _%tl146671146951%_
                                             _%e146672146954%_
                                             _%hd146673146957%_
                                             _%tl146674146959%_
                                             _%e146675146962%_
                                             _%hd146676146965%_
                                             _%tl146677146967%_
                                             _%e146678146970%_
                                             _%hd146679146973%_
                                             _%tl146680146975%_
                                             _%e146681146978%_
                                             _%hd146682146981%_
                                             _%tl146683146983%_
                                             _%e146684146986%_
                                             _%hd146685146989%_
                                             _%tl146686146991%_
                                             _%e146687146994%_
                                             _%hd146688146997%_
                                             _%tl146689146999%_
                                             _%e146690147002%_
                                             _%hd146691147005%_
                                             _%tl146692147007%_))))
                                    (_%__match149034149035%_
                                     _%e146657146914%_
                                     _%hd146658146917%_
                                     _%tl146659146919%_
                                     _%e146669146946%_
                                     _%hd146670146949%_
                                     _%tl146671146951%_
                                     _%e146672146954%_
                                     _%hd146673146957%_
                                     _%tl146674146959%_
                                     _%e146675146962%_
                                     _%hd146676146965%_
                                     _%tl146677146967%_
                                     _%e146678146970%_
                                     _%hd146679146973%_
                                     _%tl146680146975%_
                                     _%e146681146978%_
                                     _%hd146682146981%_
                                     _%tl146683146983%_
                                     _%e146684146986%_
                                     _%hd146685146989%_
                                     _%tl146686146991%_
                                     _%e146687146994%_
                                     _%hd146688146997%_
                                     _%tl146689146999%_
                                     _%e146690147002%_
                                     _%hd146691147005%_
                                     _%tl146692147007%_))
                                (_%__match149034149035%_
                                 _%e146657146914%_
                                 _%hd146658146917%_
                                 _%tl146659146919%_
                                 _%e146669146946%_
                                 _%hd146670146949%_
                                 _%tl146671146951%_
                                 _%e146672146954%_
                                 _%hd146673146957%_
                                 _%tl146674146959%_
                                 _%e146675146962%_
                                 _%hd146676146965%_
                                 _%tl146677146967%_
                                 _%e146678146970%_
                                 _%hd146679146973%_
                                 _%tl146680146975%_
                                 _%e146681146978%_
                                 _%hd146682146981%_
                                 _%tl146683146983%_
                                 _%e146684146986%_
                                 _%hd146685146989%_
                                 _%tl146686146991%_
                                 _%e146687146994%_
                                 _%hd146688146997%_
                                 _%tl146689146999%_
                                 _%e146690147002%_
                                 _%hd146691147005%_
                                 _%tl146692147007%_))
                            (_%__kont148937148938%_))))
                    (_%__kont148937148938%_))
                (_%__kont148937148938%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148937148938%_))))
                                            (_%__kont148937148938%_))))
                                    (_%__kont148937148938%_))
                                (_%__kont148937148938%_))))
                        (_%__kont148937148938%_))
                    (_%__kont148937148938%_))
                (_%__kont148937148938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148937148938%_))))
                                        (_%__kont148937148938%_))
                                    (_%__kont148937148938%_))
                                (_%__kont148937148938%_))))
                        (_%__kont148937148938%_))))
                (_%__kont148937148938%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146663146927%_
                                     _%target146660146922%_
                                     '()))))
                               (_%__match148952148953%_
                                (lambda (_%e146609147174%_
                                         _%hd146610147177%_
                                         _%tl146611147179%_
                                         _%__splice148925148926%_
                                         _%target146612147182%_
                                         _%tl146614147184%_)
                                  (letrec ((_%loop146615147187%_
                                            (lambda (_%hd146613147190%_
                                                     _%arg146619147192%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146613147190%_))
                                                  (let ((_%e146616147195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146613147190%_))))
                                                    (let ((_%lp-tl146618147200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146616147195%_)))
                                                          (_%lp-hd146617147198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146616147195%_))))
                                                      (_%loop146615147187%_
                                                       _%lp-tl146618147200%_
                                                       (cons _%lp-hd146617147198%_
                                                             _%arg146619147192%_))))
                                                  (let ((_%arg146620147203%_
                                                         (reverse _%arg146619147192%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146611147179%_))
                                                        (let ((_%e146621147206%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146611147179%_))))
                  (let ((_%tl146623147211%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146621147206%_)))
                        (_%hd146622147209%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146621147206%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146622147209%_))
                        (let ((_%e146624147214%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146622147209%_))))
                          (let ((_%tl146626147219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146624147214%_)))
                                (_%hd146625147217%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146624147214%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146625147217%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146625147217%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146626147219%_))
                                        (let ((_%e146627147222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146626147219%_))))
                                          (let ((_%tl146629147227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146627147222%_)))
                                                (_%hd146628147225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146627147222%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146628147225%_))
                                                (let ((_%e146630147230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146628147225%_))))
                                                  (let ((_%tl146632147235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146630147230%_)))
                                                        (_%hd146631147233%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146630147230%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146631147233%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146631147233%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146632147235%_))
                        (let ((_%e146633147238%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146632147235%_))))
                          (let ((_%tl146635147243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146633147238%_)))
                                (_%hd146634147241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146633147238%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146635147243%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146629147227%_))
                                    (let ((_%__splice148927148928%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146629147227%_
                                              '0))))
                                      (let ((_%tl146638147248%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148927148928%_
                                                '1)))
                                            (_%target146636147246%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148927148928%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146638147248%_))
                                            (letrec ((_%loop146639147251%_
                                                      (lambda (_%hd146637147254%_
                                                               _%xarg146643147256%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146637147254%_))
                                                            (let ((_%e146640147259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146637147254%_))))
                      (let ((_%lp-tl146642147264%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146640147259%_)))
                            (_%lp-hd146641147262%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146640147259%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146641147262%_))
                            (let ((_%e146645147267%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146641147262%_))))
                              (let ((_%tl146647147272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146645147267%_)))
                                    (_%hd146646147270%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146645147267%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146646147270%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146646147270%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146647147272%_))
                                            (let ((_%e146648147275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146647147272%_))))
                                              (let ((_%tl146650147280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146648147275%_)))
                                                    (_%hd146649147278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146648147275%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146650147280%_))
                                                    (_%loop146639147251%_
                                                     _%lp-tl146642147264%_
                                                     (cons _%hd146649147278%_
                                                           _%xarg146643147256%_))
                                                    (_%__match148964148965%_
                                                     _%e146609147174%_
                                                     _%hd146610147177%_
                                                     _%tl146611147179%_
                                                     _%__splice148925148926%_
                                                     _%target146612147182%_
                                                     _%tl146614147184%_))))
                                            (_%__match148964148965%_
                                             _%e146609147174%_
                                             _%hd146610147177%_
                                             _%tl146611147179%_
                                             _%__splice148925148926%_
                                             _%target146612147182%_
                                             _%tl146614147184%_))
                                        (_%__match148964148965%_
                                         _%e146609147174%_
                                         _%hd146610147177%_
                                         _%tl146611147179%_
                                         _%__splice148925148926%_
                                         _%target146612147182%_
                                         _%tl146614147184%_))
                                    (_%__match148964148965%_
                                     _%e146609147174%_
                                     _%hd146610147177%_
                                     _%tl146611147179%_
                                     _%__splice148925148926%_
                                     _%target146612147182%_
                                     _%tl146614147184%_))))
                            (_%__match148964148965%_
                             _%e146609147174%_
                             _%hd146610147177%_
                             _%tl146611147179%_
                             _%__splice148925148926%_
                             _%target146612147182%_
                             _%tl146614147184%_))))
                    (let ((_%xarg146644147283%_
                           (reverse _%xarg146643147256%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146623147211%_))
                          (let ((_%L147286%_ _%xarg146644147283%_)
                                (_%L147287%_ _%hd146634147241%_)
                                (_%L147288%_ _%arg146620147203%_))
                            (if (and (let ((__tmp150218
                                            (let ((__tmp150219
                                                   (lambda (_%g147316147319%_
                                                            _%g147317147321%_)
                                                     (cons _%g147316147319%_
                                                           _%g147317147321%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150219
                                               '()
                                               _%L147288%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp150218))
                                     (let ((__tmp150222
                                            (length (let ((__tmp150223
                                                           (lambda (_%g147323147326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147324147328%_)
                     (cons _%g147323147326%_ _%g147324147328%_))))
              (declare (not safe))
              (__foldr1 __tmp150223 '() _%L147288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp150220
                                            (length (let ((__tmp150221
                                                           (lambda (_%g147330147333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147331147335%_)
                     (cons _%g147330147333%_ _%g147331147335%_))))
              (declare (not safe))
              (__foldr1 __tmp150221 '() _%L147286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150222 __tmp150220))
                                     (let ((__tmp150226
                                            (let ((__tmp150227
                                                   (lambda (_%g147337147340%_
                                                            _%g147338147342%_)
                                                     (cons _%g147337147340%_
                                                           _%g147338147342%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150227
                                               '()
                                               _%L147288%_)))
                                           (__tmp150224
                                            (let ((__tmp150225
                                                   (lambda (_%g147344147347%_
                                                            _%g147345147349%_)
                                                     (cons _%g147344147347%_
                                                           _%g147345147349%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150225
                                               '()
                                               _%L147286%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp150226
                                        __tmp150224))
                                     (not (let ((__tmp150230
                                                 (lambda (_%g147351147353%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g147351147353%_
                                                      _%L147287%_))))
                                                (__tmp150228
                                                 (let ((__tmp150229
                                                        (lambda (_%g147355147358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g147356147360%_)
                  (cons _%g147355147358%_ _%g147356147360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp150229
                                                    '()
                                                    _%L147288%_))))
                                            (declare (not safe))
                                            (__find __tmp150230 __tmp150228))))
                                (_%__kont148923148924%_
                                 _%L147286%_
                                 _%L147287%_
                                 _%L147288%_)
                                (_%__match148964148965%_
                                 _%e146609147174%_
                                 _%hd146610147177%_
                                 _%tl146611147179%_
                                 _%__splice148925148926%_
                                 _%target146612147182%_
                                 _%tl146614147184%_)))
                          (_%__match148964148965%_
                           _%e146609147174%_
                           _%hd146610147177%_
                           _%tl146611147179%_
                           _%__splice148925148926%_
                           _%target146612147182%_
                           _%tl146614147184%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146639147251%_
                                               _%target146636147246%_
                                               '()))
                                            (_%__match148964148965%_
                                             _%e146609147174%_
                                             _%hd146610147177%_
                                             _%tl146611147179%_
                                             _%__splice148925148926%_
                                             _%target146612147182%_
                                             _%tl146614147184%_))))
                                    (_%__match148964148965%_
                                     _%e146609147174%_
                                     _%hd146610147177%_
                                     _%tl146611147179%_
                                     _%__splice148925148926%_
                                     _%target146612147182%_
                                     _%tl146614147184%_))
                                (_%__match148964148965%_
                                 _%e146609147174%_
                                 _%hd146610147177%_
                                 _%tl146611147179%_
                                 _%__splice148925148926%_
                                 _%target146612147182%_
                                 _%tl146614147184%_))))
                        (_%__match148964148965%_
                         _%e146609147174%_
                         _%hd146610147177%_
                         _%tl146611147179%_
                         _%__splice148925148926%_
                         _%target146612147182%_
                         _%tl146614147184%_))
                    (_%__match148964148965%_
                     _%e146609147174%_
                     _%hd146610147177%_
                     _%tl146611147179%_
                     _%__splice148925148926%_
                     _%target146612147182%_
                     _%tl146614147184%_))
                (_%__match148964148965%_
                 _%e146609147174%_
                 _%hd146610147177%_
                 _%tl146611147179%_
                 _%__splice148925148926%_
                 _%target146612147182%_
                 _%tl146614147184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148964148965%_
                                                 _%e146609147174%_
                                                 _%hd146610147177%_
                                                 _%tl146611147179%_
                                                 _%__splice148925148926%_
                                                 _%target146612147182%_
                                                 _%tl146614147184%_))))
                                        (_%__match148964148965%_
                                         _%e146609147174%_
                                         _%hd146610147177%_
                                         _%tl146611147179%_
                                         _%__splice148925148926%_
                                         _%target146612147182%_
                                         _%tl146614147184%_))
                                    (_%__match148964148965%_
                                     _%e146609147174%_
                                     _%hd146610147177%_
                                     _%tl146611147179%_
                                     _%__splice148925148926%_
                                     _%target146612147182%_
                                     _%tl146614147184%_))
                                (_%__match148964148965%_
                                 _%e146609147174%_
                                 _%hd146610147177%_
                                 _%tl146611147179%_
                                 _%__splice148925148926%_
                                 _%target146612147182%_
                                 _%tl146614147184%_))))
                        (_%__match148964148965%_
                         _%e146609147174%_
                         _%hd146610147177%_
                         _%tl146611147179%_
                         _%__splice148925148926%_
                         _%target146612147182%_
                         _%tl146614147184%_))))
                (_%__match148964148965%_
                 _%e146609147174%_
                 _%hd146610147177%_
                 _%tl146611147179%_
                 _%__splice148925148926%_
                 _%target146612147182%_
                 _%tl146614147184%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146615147187%_
                                     _%target146612147182%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148921148922%_))
                              (let ((_%e146609147174%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148921148922%_))))
                                (let ((_%tl146611147179%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146609147174%_)))
                                      (_%hd146610147177%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146609147174%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146610147177%_))
                                      (let ((_%__splice148925148926%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd146610147177%_
                                                '0))))
                                        (let ((_%tl146614147184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148925148926%_
                                                  '1)))
                                              (_%target146612147182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148925148926%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146614147184%_))
                                              (_%__match148952148953%_
                                               _%e146609147174%_
                                               _%hd146610147177%_
                                               _%tl146611147179%_
                                               _%__splice148925148926%_
                                               _%target146612147182%_
                                               _%tl146614147184%_)
                                              (_%__match148964148965%_
                                               _%e146609147174%_
                                               _%hd146610147177%_
                                               _%tl146611147179%_
                                               _%__splice148925148926%_
                                               _%target146612147182%_
                                               _%tl146614147184%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146611147179%_))
                                          (let ((_%e146724146781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146611147179%_))))
                                            (let ((_%tl146726146786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146724146781%_)))
                                                  (_%hd146725146784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146724146781%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146725146784%_))
                                                  (let ((_%e146727146789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146725146784%_))))
                                                    (let ((_%tl146729146794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146727146789%_)))
                                                          (_%hd146728146792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146727146789%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146728146792%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146728146792%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146729146794%_))
                          (let ((_%e146730146797%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146729146794%_))))
                            (let ((_%tl146732146802%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146730146797%_)))
                                  (_%hd146731146800%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146730146797%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146731146800%_))
                                  (let ((_%e146733146805%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146731146800%_))))
                                    (let ((_%tl146735146810%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146733146805%_)))
                                          (_%hd146734146808%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146733146805%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146734146808%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146734146808%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146735146810%_))
                                                  (let ((_%e146736146813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146735146810%_))))
                                                    (let ((_%tl146738146818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146736146813%_)))
                                                          (_%hd146737146816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146736146813%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146738146818%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146732146802%_))
                      (let ((_%e146739146821%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146732146802%_))))
                        (let ((_%tl146741146826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146739146821%_)))
                              (_%hd146740146824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146739146821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146740146824%_))
                              (let ((_%e146742146829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146740146824%_))))
                                (let ((_%tl146744146834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146742146829%_)))
                                      (_%hd146743146832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146742146829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146743146832%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146743146832%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146744146834%_))
                                              (let ((_%e146745146837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146744146834%_))))
                                                (let ((_%tl146747146842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146745146837%_)))
                                                      (_%hd146746146840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146745146837%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146747146842%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146741146826%_))
                                                          (let ((_%e146748146845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146741146826%_))))
                    (let ((_%tl146750146850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146748146845%_)))
                          (_%hd146749146848%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146748146845%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd146749146848%_))
                          (let ((_%e146751146853%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd146749146848%_))))
                            (let ((_%tl146753146858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146751146853%_)))
                                  (_%hd146752146856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146751146853%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd146752146856%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd146752146856%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146753146858%_))
                                          (let ((_%e146754146861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146753146858%_))))
                                            (let ((_%tl146756146866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146754146861%_)))
                                                  (_%hd146755146864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146754146861%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146756146866%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146750146850%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146726146786%_))
                                                          (_%__match149062149063%_
                                                           _%e146609147174%_
                                                           _%hd146610147177%_
                                                           _%tl146611147179%_
                                                           _%e146724146781%_
                                                           _%hd146725146784%_
                                                           _%tl146726146786%_
                                                           _%e146727146789%_
                                                           _%hd146728146792%_
                                                           _%tl146729146794%_
                                                           _%e146730146797%_
                                                           _%hd146731146800%_
                                                           _%tl146732146802%_
                                                           _%e146733146805%_
                                                           _%hd146734146808%_
                                                           _%tl146735146810%_
                                                           _%e146736146813%_
                                                           _%hd146737146816%_
                                                           _%tl146738146818%_
                                                           _%e146739146821%_
                                                           _%hd146740146824%_
                                                           _%tl146741146826%_
                                                           _%e146742146829%_
                                                           _%hd146743146832%_
                                                           _%tl146744146834%_
                                                           _%e146745146837%_
                                                           _%hd146746146840%_
                                                           _%tl146747146842%_
                                                           _%e146748146845%_
                                                           _%hd146749146848%_
                                                           _%tl146750146850%_
                                                           _%e146751146853%_
                                                           _%hd146752146856%_
                                                           _%tl146753146858%_
                                                           _%e146754146861%_
                                                           _%hd146755146864%_
                                                           _%tl146756146866%_)
                                                          (_%__kont148937148938%_))
                                                      (_%__kont148937148938%_))
                                                  (_%__kont148937148938%_))))
                                          (_%__kont148937148938%_))
                                      (_%__kont148937148938%_))
                                  (_%__kont148937148938%_))))
                          (_%__kont148937148938%_))))
                  (_%__kont148937148938%_))
              (_%__kont148937148938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148937148938%_))
                                          (_%__kont148937148938%_))
                                      (_%__kont148937148938%_))))
                              (_%__kont148937148938%_))))
                      (_%__kont148937148938%_))
                  (_%__kont148937148938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148937148938%_))
                                              (_%__kont148937148938%_))
                                          (_%__kont148937148938%_))))
                                  (_%__kont148937148938%_))))
                          (_%__kont148937148938%_))
                      (_%__kont148937148938%_))
                  (_%__kont148937148938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148937148938%_))))
                                          (_%__kont148937148938%_)))))
                              (_%__kont148937148938%_)))))))
                 (_%dispatch-case-e145909%_
                  (lambda (_%hd146060%_ _%body146061%_)
                    (let* ((_%form146063%_
                            (cons _%hd146060%_ (cons _%body146061%_ '())))
                           (_%__stx149065149066%_ _%form146063%_)
                           (_%g146067146191%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149065149066%_)))))
                      (let ((_%__kont149067149068%_
                             (lambda (_%L146562%_ _%L146563%_ _%L146564%_)
                               (let ((__tmp150231
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146563%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145905%_
                                  __tmp150231))))
                            (_%__kont149073149074%_
                             (lambda (_%L146410%_
                                      _%L146411%_
                                      _%L146412%_
                                      _%L146413%_)
                               (let ((__tmp150232
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146410%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145905%_
                                  __tmp150232))))
                            (_%__kont149077149078%_
                             (lambda (_%L146276%_ _%L146277%_ _%L146278%_)
                               (let ((__tmp150233
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146276%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145905%_
                                  __tmp150233)))))
                        (let* ((_%__match149174149175%_
                                (lambda (_%e146157146196%_
                                         _%hd146158146199%_
                                         _%tl146159146201%_
                                         _%e146160146204%_
                                         _%hd146161146207%_
                                         _%tl146162146209%_
                                         _%e146163146212%_
                                         _%hd146164146215%_
                                         _%tl146165146217%_
                                         _%e146166146220%_
                                         _%hd146167146223%_
                                         _%tl146168146225%_
                                         _%e146169146228%_
                                         _%hd146170146231%_
                                         _%tl146171146233%_
                                         _%e146172146236%_
                                         _%hd146173146239%_
                                         _%tl146174146241%_
                                         _%e146175146244%_
                                         _%hd146176146247%_
                                         _%tl146177146249%_
                                         _%e146178146252%_
                                         _%hd146179146255%_
                                         _%tl146180146257%_
                                         _%e146181146260%_
                                         _%hd146182146263%_
                                         _%tl146183146265%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146177146249%_))
                                      (let ((_%e146184146268%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146177146249%_))))
                                        (let ((_%tl146186146273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146184146268%_)))
                                              (_%hd146185146271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146184146268%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146186146273%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146162146209%_))
                                                  (_%__kont149077149078%_
                                                   _%hd146182146263%_
                                                   _%hd146173146239%_
                                                   _%hd146158146199%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146067146191%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146067146191%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146067146191%_)))))
                               (_%__match149104149105%_
                                (lambda (_%e146118146314%_
                                         _%hd146119146317%_
                                         _%tl146120146319%_
                                         _%__splice149075149076%_
                                         _%target146121146322%_
                                         _%tl146123146324%_)
                                  (letrec ((_%loop146124146327%_
                                            (lambda (_%hd146122146330%_
                                                     _%arg146128146332%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146122146330%_))
                                                  (let ((_%e146125146335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146122146330%_))))
                                                    (let ((_%lp-tl146127146340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146125146335%_)))
                                                          (_%lp-hd146126146338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146125146335%_))))
                                                      (_%loop146124146327%_
                                                       _%lp-tl146127146340%_
                                                       (cons _%lp-hd146126146338%_
                                                             _%arg146128146332%_))))
                                                  (let ((_%arg146129146343%_
                                                         (reverse _%arg146128146332%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146120146319%_))
                                                        (let ((_%e146130146346%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146120146319%_))))
                  (let ((_%tl146132146351%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146130146346%_)))
                        (_%hd146131146349%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146130146346%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146131146349%_))
                        (let ((_%e146133146354%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146131146349%_))))
                          (let ((_%tl146135146359%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146133146354%_)))
                                (_%hd146134146357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146133146354%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146134146357%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146134146357%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146135146359%_))
                                        (let ((_%e146136146362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146135146359%_))))
                                          (let ((_%tl146138146367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146136146362%_)))
                                                (_%hd146137146365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146136146362%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146137146365%_))
                                                (let ((_%e146139146370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146137146365%_))))
                                                  (let ((_%tl146141146375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146139146370%_)))
                                                        (_%hd146140146373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146139146370%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146140146373%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146140146373%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146141146375%_))
                        (let ((_%e146142146378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146141146375%_))))
                          (let ((_%tl146144146383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146142146378%_)))
                                (_%hd146143146381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146142146378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146144146383%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146138146367%_))
                                    (let ((_%e146145146386%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146138146367%_))))
                                      (let ((_%tl146147146391%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146145146386%_)))
                                            (_%hd146146146389%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146145146386%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146146146389%_))
                                            (let ((_%e146148146394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146146146389%_))))
                                              (let ((_%tl146150146399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146148146394%_)))
                                                    (_%hd146149146397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146148146394%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146149146397%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146149146397%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146150146399%_))
                                                            (let ((_%e146151146402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146150146399%_))))
                      (let ((_%tl146153146407%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146151146402%_)))
                            (_%hd146152146405%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146151146402%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146153146407%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146132146351%_))
                                (_%__kont149073149074%_
                                 _%hd146152146405%_
                                 _%hd146143146381%_
                                 _%tl146123146324%_
                                 _%arg146129146343%_)
                                (_%__match149174149175%_
                                 _%e146118146314%_
                                 _%hd146119146317%_
                                 _%tl146120146319%_
                                 _%e146130146346%_
                                 _%hd146131146349%_
                                 _%tl146132146351%_
                                 _%e146133146354%_
                                 _%hd146134146357%_
                                 _%tl146135146359%_
                                 _%e146136146362%_
                                 _%hd146137146365%_
                                 _%tl146138146367%_
                                 _%e146139146370%_
                                 _%hd146140146373%_
                                 _%tl146141146375%_
                                 _%e146142146378%_
                                 _%hd146143146381%_
                                 _%tl146144146383%_
                                 _%e146145146386%_
                                 _%hd146146146389%_
                                 _%tl146147146391%_
                                 _%e146148146394%_
                                 _%hd146149146397%_
                                 _%tl146150146399%_
                                 _%e146151146402%_
                                 _%hd146152146405%_
                                 _%tl146153146407%_))
                            (let ()
                              (declare (not safe))
                              (_%g146067146191%_)))))
                    (let () (declare (not safe)) (_%g146067146191%_)))
                (let () (declare (not safe)) (_%g146067146191%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146067146191%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146067146191%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g146067146191%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g146067146191%_)))))
                        (let () (declare (not safe)) (_%g146067146191%_)))
                    (let () (declare (not safe)) (_%g146067146191%_)))
                (let () (declare (not safe)) (_%g146067146191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g146067146191%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146067146191%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g146067146191%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g146067146191%_)))))
                        (let () (declare (not safe)) (_%g146067146191%_)))))
                (let () (declare (not safe)) (_%g146067146191%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146124146327%_
                                     _%target146121146322%_
                                     '()))))
                               (_%__match149092149093%_
                                (lambda (_%e146072146450%_
                                         _%hd146073146453%_
                                         _%tl146074146455%_
                                         _%__splice149069149070%_
                                         _%target146075146458%_
                                         _%tl146077146460%_)
                                  (letrec ((_%loop146078146463%_
                                            (lambda (_%hd146076146466%_
                                                     _%arg146082146468%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146076146466%_))
                                                  (let ((_%e146079146471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146076146466%_))))
                                                    (let ((_%lp-tl146081146476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146079146471%_)))
                                                          (_%lp-hd146080146474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146079146471%_))))
                                                      (_%loop146078146463%_
                                                       _%lp-tl146081146476%_
                                                       (cons _%lp-hd146080146474%_
                                                             _%arg146082146468%_))))
                                                  (let ((_%arg146083146479%_
                                                         (reverse _%arg146082146468%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146074146455%_))
                                                        (let ((_%e146084146482%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146074146455%_))))
                  (let ((_%tl146086146487%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146084146482%_)))
                        (_%hd146085146485%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146084146482%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146085146485%_))
                        (let ((_%e146087146490%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146085146485%_))))
                          (let ((_%tl146089146495%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146087146490%_)))
                                (_%hd146088146493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146087146490%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146088146493%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146088146493%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146089146495%_))
                                        (let ((_%e146090146498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146089146495%_))))
                                          (let ((_%tl146092146503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146090146498%_)))
                                                (_%hd146091146501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146090146498%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146091146501%_))
                                                (let ((_%e146093146506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146091146501%_))))
                                                  (let ((_%tl146095146511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146093146506%_)))
                                                        (_%hd146094146509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146093146506%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146094146509%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146094146509%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146095146511%_))
                        (let ((_%e146096146514%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146095146511%_))))
                          (let ((_%tl146098146519%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146096146514%_)))
                                (_%hd146097146517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146096146514%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146098146519%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146092146503%_))
                                    (let ((_%__splice149071149072%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146092146503%_
                                              '0))))
                                      (let ((_%tl146101146524%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149071149072%_
                                                '1)))
                                            (_%target146099146522%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149071149072%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146101146524%_))
                                            (letrec ((_%loop146102146527%_
                                                      (lambda (_%hd146100146530%_
                                                               _%xarg146106146532%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146100146530%_))
                                                            (let ((_%e146103146535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146100146530%_))))
                      (let ((_%lp-tl146105146540%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146103146535%_)))
                            (_%lp-hd146104146538%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146103146535%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146104146538%_))
                            (let ((_%e146108146543%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146104146538%_))))
                              (let ((_%tl146110146548%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146108146543%_)))
                                    (_%hd146109146546%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146108146543%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146109146546%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146109146546%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146110146548%_))
                                            (let ((_%e146111146551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146110146548%_))))
                                              (let ((_%tl146113146556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146111146551%_)))
                                                    (_%hd146112146554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146111146551%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146113146556%_))
                                                    (_%loop146102146527%_
                                                     _%lp-tl146105146540%_
                                                     (cons _%hd146112146554%_
                                                           _%xarg146106146532%_))
                                                    (_%__match149104149105%_
                                                     _%e146072146450%_
                                                     _%hd146073146453%_
                                                     _%tl146074146455%_
                                                     _%__splice149069149070%_
                                                     _%target146075146458%_
                                                     _%tl146077146460%_))))
                                            (_%__match149104149105%_
                                             _%e146072146450%_
                                             _%hd146073146453%_
                                             _%tl146074146455%_
                                             _%__splice149069149070%_
                                             _%target146075146458%_
                                             _%tl146077146460%_))
                                        (_%__match149104149105%_
                                         _%e146072146450%_
                                         _%hd146073146453%_
                                         _%tl146074146455%_
                                         _%__splice149069149070%_
                                         _%target146075146458%_
                                         _%tl146077146460%_))
                                    (_%__match149104149105%_
                                     _%e146072146450%_
                                     _%hd146073146453%_
                                     _%tl146074146455%_
                                     _%__splice149069149070%_
                                     _%target146075146458%_
                                     _%tl146077146460%_))))
                            (_%__match149104149105%_
                             _%e146072146450%_
                             _%hd146073146453%_
                             _%tl146074146455%_
                             _%__splice149069149070%_
                             _%target146075146458%_
                             _%tl146077146460%_))))
                    (let ((_%xarg146107146559%_
                           (reverse _%xarg146106146532%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146086146487%_))
                          (_%__kont149067149068%_
                           _%xarg146107146559%_
                           _%hd146097146517%_
                           _%arg146083146479%_)
                          (_%__match149104149105%_
                           _%e146072146450%_
                           _%hd146073146453%_
                           _%tl146074146455%_
                           _%__splice149069149070%_
                           _%target146075146458%_
                           _%tl146077146460%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146102146527%_
                                               _%target146099146522%_
                                               '()))
                                            (_%__match149104149105%_
                                             _%e146072146450%_
                                             _%hd146073146453%_
                                             _%tl146074146455%_
                                             _%__splice149069149070%_
                                             _%target146075146458%_
                                             _%tl146077146460%_))))
                                    (_%__match149104149105%_
                                     _%e146072146450%_
                                     _%hd146073146453%_
                                     _%tl146074146455%_
                                     _%__splice149069149070%_
                                     _%target146075146458%_
                                     _%tl146077146460%_))
                                (_%__match149104149105%_
                                 _%e146072146450%_
                                 _%hd146073146453%_
                                 _%tl146074146455%_
                                 _%__splice149069149070%_
                                 _%target146075146458%_
                                 _%tl146077146460%_))))
                        (_%__match149104149105%_
                         _%e146072146450%_
                         _%hd146073146453%_
                         _%tl146074146455%_
                         _%__splice149069149070%_
                         _%target146075146458%_
                         _%tl146077146460%_))
                    (_%__match149104149105%_
                     _%e146072146450%_
                     _%hd146073146453%_
                     _%tl146074146455%_
                     _%__splice149069149070%_
                     _%target146075146458%_
                     _%tl146077146460%_))
                (_%__match149104149105%_
                 _%e146072146450%_
                 _%hd146073146453%_
                 _%tl146074146455%_
                 _%__splice149069149070%_
                 _%target146075146458%_
                 _%tl146077146460%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149104149105%_
                                                 _%e146072146450%_
                                                 _%hd146073146453%_
                                                 _%tl146074146455%_
                                                 _%__splice149069149070%_
                                                 _%target146075146458%_
                                                 _%tl146077146460%_))))
                                        (_%__match149104149105%_
                                         _%e146072146450%_
                                         _%hd146073146453%_
                                         _%tl146074146455%_
                                         _%__splice149069149070%_
                                         _%target146075146458%_
                                         _%tl146077146460%_))
                                    (_%__match149104149105%_
                                     _%e146072146450%_
                                     _%hd146073146453%_
                                     _%tl146074146455%_
                                     _%__splice149069149070%_
                                     _%target146075146458%_
                                     _%tl146077146460%_))
                                (_%__match149104149105%_
                                 _%e146072146450%_
                                 _%hd146073146453%_
                                 _%tl146074146455%_
                                 _%__splice149069149070%_
                                 _%target146075146458%_
                                 _%tl146077146460%_))))
                        (_%__match149104149105%_
                         _%e146072146450%_
                         _%hd146073146453%_
                         _%tl146074146455%_
                         _%__splice149069149070%_
                         _%target146075146458%_
                         _%tl146077146460%_))))
                (_%__match149104149105%_
                 _%e146072146450%_
                 _%hd146073146453%_
                 _%tl146074146455%_
                 _%__splice149069149070%_
                 _%target146075146458%_
                 _%tl146077146460%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146078146463%_
                                     _%target146075146458%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149065149066%_))
                              (let ((_%e146072146450%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149065149066%_))))
                                (let ((_%tl146074146455%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146072146450%_)))
                                      (_%hd146073146453%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146072146450%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146073146453%_))
                                      (let ((_%__splice149069149070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd146073146453%_
                                                '0))))
                                        (let ((_%tl146077146460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149069149070%_
                                                  '1)))
                                              (_%target146075146458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149069149070%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146077146460%_))
                                              (_%__match149092149093%_
                                               _%e146072146450%_
                                               _%hd146073146453%_
                                               _%tl146074146455%_
                                               _%__splice149069149070%_
                                               _%target146075146458%_
                                               _%tl146077146460%_)
                                              (_%__match149104149105%_
                                               _%e146072146450%_
                                               _%hd146073146453%_
                                               _%tl146074146455%_
                                               _%__splice149069149070%_
                                               _%target146075146458%_
                                               _%tl146077146460%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146074146455%_))
                                          (let ((_%e146160146204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146074146455%_))))
                                            (let ((_%tl146162146209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146160146204%_)))
                                                  (_%hd146161146207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146160146204%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146161146207%_))
                                                  (let ((_%e146163146212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146161146207%_))))
                                                    (let ((_%tl146165146217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146163146212%_)))
                                                          (_%hd146164146215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146163146212%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146164146215%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146164146215%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146165146217%_))
                          (let ((_%e146166146220%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146165146217%_))))
                            (let ((_%tl146168146225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146166146220%_)))
                                  (_%hd146167146223%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146166146220%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146167146223%_))
                                  (let ((_%e146169146228%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146167146223%_))))
                                    (let ((_%tl146171146233%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146169146228%_)))
                                          (_%hd146170146231%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146169146228%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146170146231%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146170146231%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146171146233%_))
                                                  (let ((_%e146172146236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146171146233%_))))
                                                    (let ((_%tl146174146241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146172146236%_)))
                                                          (_%hd146173146239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146172146236%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146174146241%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146168146225%_))
                      (let ((_%e146175146244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146168146225%_))))
                        (let ((_%tl146177146249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146175146244%_)))
                              (_%hd146176146247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146175146244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146176146247%_))
                              (let ((_%e146178146252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146176146247%_))))
                                (let ((_%tl146180146257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146178146252%_)))
                                      (_%hd146179146255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146178146252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146179146255%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146179146255%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146180146257%_))
                                              (let ((_%e146181146260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146180146257%_))))
                                                (let ((_%tl146183146265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146181146260%_)))
                                                      (_%hd146182146263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146181146260%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146183146265%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146177146249%_))
                                                          (let ((_%e146184146268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146177146249%_))))
                    (let ((_%tl146186146273%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146184146268%_)))
                          (_%hd146185146271%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146184146268%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146186146273%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146162146209%_))
                              (_%__kont149077149078%_
                               _%hd146182146263%_
                               _%hd146173146239%_
                               _%hd146073146453%_)
                              (let ()
                                (declare (not safe))
                                (_%g146067146191%_)))
                          (let () (declare (not safe)) (_%g146067146191%_)))))
                  (let () (declare (not safe)) (_%g146067146191%_)))
              (let () (declare (not safe)) (_%g146067146191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146067146191%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146067146191%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146067146191%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g146067146191%_)))))
                      (let () (declare (not safe)) (_%g146067146191%_)))
                  (let () (declare (not safe)) (_%g146067146191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146067146191%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146067146191%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146067146191%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g146067146191%_)))))
                          (let () (declare (not safe)) (_%g146067146191%_)))
                      (let () (declare (not safe)) (_%g146067146191%_)))
                  (let () (declare (not safe)) (_%g146067146191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146067146191%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146067146191%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g146067146191%_))))))))
                 (_%generate1145910%_
                  (lambda (_%args146045%_
                           _%arglen146046%_
                           _%hd146047%_
                           _%body146048%_)
                    (let* ((_%len146050%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd146047%_)))
                           (_%condition146055%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd146047%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen146046%_
                                                (cons _%len146050%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen146046%_ (cons _%len146050%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len146050%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen146046%_
                                                    (cons _%len146050%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen146046%_ (cons _%len146050%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch146057%_
                            (if (_%dispatch-case?145908%_
                                 _%hd146047%_
                                 _%body146048%_)
                                (_%dispatch-case-e145909%_
                                 _%hd146047%_
                                 _%body146048%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self145905%_
                                 _%hd146047%_
                                 _%body146048%_))))
                      (cons _%condition146055%_
                            (cons (cons 'apply
                                        (cons _%dispatch146057%_
                                              (cons _%args146045%_ '())))
                                  '()))))))
          (let* ((_%g145912145940%_
                  (lambda (_%g145913145937%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145913145937%_))))
                 (_%g145911146042%_
                  (lambda (_%g145913145943%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145913145943%_))
                        (let ((_%e145916145945%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145913145943%_))))
                          (let ((_%hd145917145948%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145916145945%_)))
                                (_%tl145918145950%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145916145945%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145918145950%_))
                                (let ((_g150234_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl145918145950%_
                                          '0))))
                                  (begin
                                    (let ((_g150235_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150234_)
                                                 (##values-length _g150234_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150235_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150235_)))
                                    (let ((_%target145919145953%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150234_ 0)))
                                          (_%tl145921145955%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150234_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145921145955%_))
                                          (letrec ((_%loop145922145958%_
                                                    (lambda (_%hd145920145961%_
                                                             _%body145926145963%_
                                                             _%hd145927145965%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd145920145961%_))
                                                          (let ((_%e145923145968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd145920145961%_))))
                    (let ((_%lp-hd145924145971%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145923145968%_)))
                          (_%lp-tl145925145973%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145923145968%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd145924145971%_))
                          (let ((_%e145930145976%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd145924145971%_))))
                            (let ((_%hd145931145979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145930145976%_)))
                                  (_%tl145932145981%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145930145976%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145932145981%_))
                                  (let ((_%e145933145984%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145932145981%_))))
                                    (let ((_%hd145934145987%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145933145984%_)))
                                          (_%tl145935145989%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145933145984%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145935145989%_))
                                          (_%loop145922145958%_
                                           _%lp-tl145925145973%_
                                           (cons _%hd145934145987%_
                                                 _%body145926145963%_)
                                           (cons _%hd145931145979%_
                                                 _%hd145927145965%_))
                                          (_%g145912145940%_
                                           _%g145913145943%_))))
                                  (_%g145912145940%_ _%g145913145943%_))))
                          (_%g145912145940%_ _%g145913145943%_))))
                  (let ((_%body145928145992%_ (reverse _%body145926145963%_))
                        (_%hd145929145994%_ (reverse _%hd145927145965%_)))
                    ((lambda (_%L145997%_ _%L145998%_)
                       (let ((_%args146017%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen146018%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name146019%_
                              (let ((_%$e146014%_
                                     (let ((__tmp150236
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp150236 _%stx145906%_))))
                                (if _%$e146014%_
                                    _%$e146014%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args146017%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen146018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args146017%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args146017%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp150240
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name146019%_
                                                                (cons _%args146017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp150237
                                  (map (lambda (_%g146020146023%_
                                                _%g146021146025%_)
                                         (_%generate1145910%_
                                          _%args146017%_
                                          _%arglen146018%_
                                          _%g146020146023%_
                                          _%g146021146025%_))
                                       (let ((__tmp150238
                                              (lambda (_%g146027146030%_
                                                       _%g146028146032%_)
                                                (cons _%g146027146030%_
                                                      _%g146028146032%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150238
                                          '()
                                          _%L145998%_))
                                       (let ((__tmp150239
                                              (lambda (_%g146034146037%_
                                                       _%g146035146039%_)
                                                (cons _%g146034146037%_
                                                      _%g146035146039%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150239
                                          '()
                                          _%L145997%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp150240 __tmp150237)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body145928145992%_
                     _%hd145929145994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop145922145958%_
                                             _%target145919145953%_
                                             '()
                                             '()))
                                          (_%g145912145940%_
                                           _%g145913145943%_)))))
                                (_%g145912145940%_ _%g145913145943%_))))
                        (_%g145912145940%_ _%g145913145943%_)))))
            (_%g145911146042%_ _%stx145906%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self145142%_ _%stx145143%_ _%compiled-body?145144%_)
        (letrec ((_%generate-simple145146%_
                  (lambda (_%hd145890%_ _%body145891%_)
                    (_%coalesce-boolean145147%_
                     (_%simplify-let145148%_
                      (gxc#generate-runtime-simple-let
                       _%self145142%_
                       'let
                       _%hd145890%_
                       _%body145891%_
                       _%compiled-body?145144%_)))))
                 (_%coalesce-boolean145147%_
                  (lambda (_%code145751%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code145752145778%_ _%code145751%_)
                               (_%else145754145786%_
                                (lambda () _%code145751%_))
                               (_%K145756145823%_
                                (lambda (_%expr2145789%_
                                         _%expr1145790%_
                                         _%id145791%_)
                                  (let* ((_%expr2145792145800%_
                                          _%expr2145789%_)
                                         (_%else145794145808%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1145790%_
                                                        (cons _%expr2145789%_
                                                              '())))))
                                         (_%K145796145813%_
                                          (lambda (_%exprs145811%_)
                                            (cons 'or
                                                  (cons _%expr1145790%_
                                                        _%exprs145811%_)))))
                                    (if (pair? _%expr2145792145800%_)
                                        (let ((_%hd145797145816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2145792145800%_)))
                                              (_%tl145798145818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2145792145800%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145797145816%_ 'or))
                                              (let ((_%exprs145821%_
                                                     _%tl145798145818%_))
                                                (_%K145796145813%_
                                                 _%exprs145821%_))
                                              (_%else145794145808%_)))
                                        (_%else145794145808%_))))))
                          (if (pair? _%code145752145778%_)
                              (let ((_%hd145757145826%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code145752145778%_)))
                                    (_%tl145758145828%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code145752145778%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd145757145826%_ 'let))
                                    (if (pair? _%tl145758145828%_)
                                        (let ((_%hd145759145831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl145758145828%_)))
                                              (_%tl145760145833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl145758145828%_))))
                                          (if (pair? _%hd145759145831%_)
                                              (let ((_%hd145771145836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd145759145831%_)))
                                                    (_%tl145772145838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd145759145831%_))))
                                                (if (pair? _%hd145771145836%_)
                                                    (let ((_%hd145773145841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd145771145836%_)))
                                                          (_%tl145774145843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd145771145836%_))))
                                                      (let ((_%id145846%_
                                                             _%hd145773145841%_))
                                                        (if (pair? _%tl145774145843%_)
                                                            (let ((_%hd145775145848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl145774145843%_)))
                          (_%tl145776145850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145774145843%_))))
                      (let ((_%expr1145853%_ _%hd145775145848%_))
                        (if (null? _%tl145776145850%_)
                            (if (null? _%tl145772145838%_)
                                (if (pair? _%tl145760145833%_)
                                    (let ((_%hd145761145855%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl145760145833%_)))
                                          (_%tl145762145857%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl145760145833%_))))
                                      (if (pair? _%hd145761145855%_)
                                          (let ((_%hd145763145860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145761145855%_)))
                                                (_%tl145764145862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145761145855%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145763145860%_
                                                         'if))
                                                (if (pair? _%tl145764145862%_)
                                                    (let ((_%hd145765145865%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl145764145862%_)))
                                                          (_%tl145766145867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl145764145862%_))))
                                                      (if ((lambda (_%g145869145871%_)
                                                             (eq? _%g145869145871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id145846%_))
                   _%hd145765145865%_)
                  (if (pair? _%tl145766145867%_)
                      (let ((_%hd145767145874%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl145766145867%_)))
                            (_%tl145768145876%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl145766145867%_))))
                        (if ((lambda (_%g145878145880%_)
                               (eq? _%g145878145880%_ _%id145846%_))
                             _%hd145767145874%_)
                            (if (pair? _%tl145768145876%_)
                                (let ((_%hd145769145883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145768145876%_)))
                                      (_%tl145770145885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145768145876%_))))
                                  (let ((_%expr2145888%_ _%hd145769145883%_))
                                    (if (null? _%tl145770145885%_)
                                        (if (null? _%tl145762145857%_)
                                            (_%K145756145823%_
                                             _%expr2145888%_
                                             _%expr1145853%_
                                             _%id145846%_)
                                            (_%else145754145786%_))
                                        (_%else145754145786%_))))
                                (_%else145754145786%_))
                            (_%else145754145786%_)))
                      (_%else145754145786%_))
                  (_%else145754145786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145754145786%_))
                                                (_%else145754145786%_)))
                                          (_%else145754145786%_)))
                                    (_%else145754145786%_))
                                (_%else145754145786%_))
                            (_%else145754145786%_))))
                    (_%else145754145786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145754145786%_)))
                                              (_%else145754145786%_)))
                                        (_%else145754145786%_))
                                    (_%else145754145786%_)))
                              (_%else145754145786%_)))
                        _%code145751%_)))
                 (_%simplify-let145148%_
                  (lambda (_%code145450%_)
                    (let* ((_%code145451145523%_ _%code145450%_)
                           (_%else145456145531%_ (lambda () _%code145450%_)))
                      (let ((_%K145515145731%_
                             (lambda (_%expr145729%_) _%expr145729%_))
                            (_%K145498145677%_
                             (lambda (_%body145673%_
                                      _%expr145674%_
                                      _%id145675%_)
                               (cons 'let
                                     (cons (cons (cons _%id145675%_
                                                       (cons _%expr145674%_
                                                             '()))
                                                 '())
                                           _%body145673%_))))
                            (_%K145475145601%_
                             (lambda (_%body145595%_
                                      _%expr2145596%_
                                      _%id2145597%_
                                      _%expr1145598%_
                                      _%id1145599%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145599%_
                                                       (cons _%expr1145598%_
                                                             '()))
                                                 (cons (cons _%id2145597%_
                                                             (cons _%expr2145596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body145595%_))))
                            (_%K145458145540%_
                             (lambda (_%body145535%_
                                      _%bind145536%_
                                      _%expr1145537%_
                                      _%id1145538%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145538%_
                                                       (cons _%expr1145537%_
                                                             '()))
                                                 _%bind145536%_)
                                           _%body145535%_)))))
                        (if (pair? _%code145451145523%_)
                            (let ((_%tl145517145736%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code145451145523%_)))
                                  (_%hd145516145734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code145451145523%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd145516145734%_ 'let))
                                  (if (pair? _%tl145517145736%_)
                                      (let ((_%tl145519145741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl145517145736%_)))
                                            (_%hd145518145739%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl145517145736%_))))
                                        (if (null? _%hd145518145739%_)
                                            (if (pair? _%tl145519145741%_)
                                                (let ((_%tl145521145746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl145519145741%_)))
                                                      (_%hd145520145744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl145519145741%_))))
                                                  (if (null? _%tl145521145746%_)
                                                      (let ((_%expr145749%_
                                                             _%hd145520145744%_))
                                                        (_%K145515145731%_
                                                         _%expr145749%_))
                                                      (_%else145456145531%_)))
                                                (_%else145456145531%_))
                                            (if (pair? _%hd145518145739%_)
                                                (let ((_%tl145510145692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd145518145739%_)))
                                                      (_%hd145509145690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd145518145739%_))))
                                                  (if (pair? _%hd145509145690%_)
                                                      (let ((_%tl145512145697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd145509145690%_)))
                    (_%hd145511145695%_
                     (let () (declare (not safe)) (##car _%hd145509145690%_))))
                (if (pair? _%tl145512145697%_)
                    (let ((_%tl145514145704%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145512145697%_)))
                          (_%hd145513145702%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl145512145697%_))))
                      (if (null? _%tl145514145704%_)
                          (if (null? _%tl145510145692%_)
                              (if (pair? _%tl145519145741%_)
                                  (let ((_%tl145504145711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl145519145741%_)))
                                        (_%hd145503145709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl145519145741%_))))
                                    (if (pair? _%hd145503145709%_)
                                        (let ((_%tl145506145716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd145503145709%_)))
                                              (_%hd145505145714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd145503145709%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145505145714%_
                                                       'let))
                                              (if (pair? _%tl145506145716%_)
                                                  (let ((_%tl145508145721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145506145716%_)))
                                                        (_%hd145507145719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145506145716%_))))
                                                    (if (null? _%hd145507145719%_)
                                                        (if (null? _%tl145504145711%_)
                                                            (let ((_%id145700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd145511145695%_)
                          (_%expr145707%_ _%hd145513145702%_)
                          (_%body145724%_ _%tl145508145721%_))
                      (_%K145498145677%_
                       _%body145724%_
                       _%expr145707%_
                       _%id145700%_))
                    (_%else145456145531%_))
                (if (pair? _%hd145507145719%_)
                    (let ((_%tl145487145650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd145507145719%_)))
                          (_%hd145486145648%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd145507145719%_))))
                      (if (pair? _%hd145486145648%_)
                          (let ((_%tl145489145655%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd145486145648%_)))
                                (_%hd145488145653%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd145486145648%_))))
                            (if (pair? _%tl145489145655%_)
                                (let ((_%tl145491145662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145489145655%_)))
                                      (_%hd145490145660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145489145655%_))))
                                  (if (null? _%tl145491145662%_)
                                      (if (null? _%tl145487145650%_)
                                          (if (null? _%tl145504145711%_)
                                              (let ((_%id1145624%_
                                                     _%hd145511145695%_)
                                                    (_%expr1145631%_
                                                     _%hd145513145702%_)
                                                    (_%id2145658%_
                                                     _%hd145488145653%_)
                                                    (_%expr2145665%_
                                                     _%hd145490145660%_)
                                                    (_%body145667%_
                                                     _%tl145508145721%_))
                                                (_%K145475145601%_
                                                 _%body145667%_
                                                 _%expr2145665%_
                                                 _%id2145658%_
                                                 _%expr1145631%_
                                                 _%id1145624%_))
                                              (_%else145456145531%_))
                                          (_%else145456145531%_))
                                      (_%else145456145531%_)))
                                (_%else145456145531%_)))
                          (_%else145456145531%_)))
                    (_%else145456145531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145456145531%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd145505145714%_
                                                           'let*))
                                                  (if (pair? _%tl145506145716%_)
                                                      (let ((_%tl145468145584%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl145506145716%_)))
                    (_%hd145467145582%_
                     (let () (declare (not safe)) (##car _%tl145506145716%_))))
                (if (null? _%tl145504145711%_)
                    (let ((_%id1145563%_ _%hd145511145695%_)
                          (_%expr1145570%_ _%hd145513145702%_)
                          (_%bind145587%_ _%hd145467145582%_)
                          (_%body145589%_ _%tl145468145584%_))
                      (_%K145458145540%_
                       _%body145589%_
                       _%bind145587%_
                       _%expr1145570%_
                       _%id1145563%_))
                    (_%else145456145531%_)))
              (_%else145456145531%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145456145531%_))))
                                        (_%else145456145531%_)))
                                  (_%else145456145531%_))
                              (_%else145456145531%_))
                          (_%else145456145531%_)))
                    (_%else145456145531%_)))
              (_%else145456145531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else145456145531%_))))
                                      (_%else145456145531%_))
                                  (_%else145456145531%_)))
                            (_%else145456145531%_))))))
                 (_%generate-values145149%_
                  (lambda (_%hd145263%_ _%body145264%_)
                    (let _%lp145266%_ ((_%rest145268%_ _%hd145263%_)
                                       (_%bind145269%_ '())
                                       (_%check145270%_ '())
                                       (_%post145271%_ '()))
                      (let* ((_%__stx149394149395%_ _%rest145268%_)
                             (_%g145274145285%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149394149395%_)))))
                        (let ((_%__kont149396149397%_
                               (lambda (_%L145312%_ _%L145313%_)
                                 (let* ((_%__stx149350149351%_ _%L145313%_)
                                        (_%g145328145353%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149350149351%_)))))
                                   (let ((_%__kont149352149353%_
                                          (lambda (_%L145426%_ _%L145427%_)
                                            (let ((_%eid145441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145427%_)))
                                                  (_%expr145442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self145142%_
                                                      _%L145426%_))))
                                              (_%lp145266%_
                                               _%L145312%_
                                               (cons (cons _%eid145441%_
                                                           (cons _%expr145442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145269%_)
                                               _%check145270%_
                                               _%post145271%_))))
                                         (_%__kont149354149355%_
                                          (lambda (_%L145374%_ _%L145375%_)
                                            (let* ((_%vals145388%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145390%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145388%_
                                                     _%L145375%_
                                                     _%L145374%_))
                                                   (_%refs145392%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145388%_
                                                     _%L145375%_))
                                                   (_%expr145394%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145142%_
                                                       _%L145374%_))))
                                              (_%lp145266%_
                                               _%L145312%_
                                               (cons (cons _%vals145388%_
                                                           (cons _%expr145394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145269%_)
                                               (cons _%check-values145390%_
                                                     _%check145270%_)
                                               (cons _%refs145392%_
                                                     _%post145271%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149350149351%_))
                                         (let ((_%e145332145402%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149350149351%_))))
                                           (let ((_%tl145334145407%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e145332145402%_)))
                                                 (_%hd145333145405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e145332145402%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd145333145405%_))
                                                 (let ((_%e145335145410%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd145333145405%_))))
                                                   (let ((_%tl145337145415%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e145335145410%_)))
                                                         (_%hd145336145413%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e145335145410%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145337145415%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl145334145407%_))
                     (let ((_%e145338145418%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145334145407%_))))
                       (let ((_%tl145340145423%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145338145418%_)))
                             (_%hd145339145421%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145338145418%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145340145423%_))
                             (_%__kont149352149353%_
                              _%hd145339145421%_
                              _%hd145336145413%_)
                             (let ()
                               (declare (not safe))
                               (_%g145328145353%_)))))
                     (let () (declare (not safe)) (_%g145328145353%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145334145407%_))
                     (let ((_%e145346145366%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145334145407%_))))
                       (let ((_%tl145348145371%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145346145366%_)))
                             (_%hd145347145369%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145346145366%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145348145371%_))
                             (_%__kont149354149355%_
                              _%hd145347145369%_
                              _%hd145333145405%_)
                             (let ()
                               (declare (not safe))
                               (_%g145328145353%_)))))
                     (let () (declare (not safe)) (_%g145328145353%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl145334145407%_))
                                                     (let ((_%e145346145366%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl145334145407%_))))
                                                       (let ((_%tl145348145371%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145346145366%_)))
                     (_%hd145347145369%_
                      (let () (declare (not safe)) (##car _%e145346145366%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl145348145371%_))
                     (_%__kont149354149355%_
                      _%hd145347145369%_
                      _%hd145333145405%_)
                     (let () (declare (not safe)) (_%g145328145353%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145328145353%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g145328145353%_)))))))
                              (_%__kont149398149399%_
                               (lambda ()
                                 (let* ((_%body145292%_
                                         (if _%compiled-body?145144%_
                                             _%body145264%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self145142%_
                                                _%body145264%_))))
                                        (_%body145294%_
                                         (_%generate-values-post145150%_
                                          _%post145271%_
                                          _%body145292%_))
                                        (_%body145296%_
                                         (_%generate-values-check145151%_
                                          _%check145270%_
                                          _%body145294%_)))
                                   (cons 'let
                                         (cons (reverse _%bind145269%_)
                                               (cons _%body145296%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149394149395%_))
                              (let ((_%e145278145304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149394149395%_))))
                                (let ((_%tl145280145309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145278145304%_)))
                                      (_%hd145279145307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145278145304%_))))
                                  (_%__kont149396149397%_
                                   _%tl145280145309%_
                                   _%hd145279145307%_)))
                              (_%__kont149398149399%_)))))))
                 (_%generate-values-post145150%_
                  (lambda (_%post145222%_ _%body145223%_)
                    (let _%lp145225%_ ((_%rest145227%_ _%post145222%_)
                                       (_%body145228%_ _%body145223%_))
                      (let* ((_%rest145229145237%_ _%rest145227%_)
                             (_%else145231145245%_ (lambda () _%body145228%_))
                             (_%K145233145251%_
                              (lambda (_%rest145248%_ _%bind145249%_)
                                (_%lp145225%_
                                 _%rest145248%_
                                 (cons 'let
                                       (cons _%bind145249%_
                                             (cons _%body145228%_ '())))))))
                        (if (pair? _%rest145229145237%_)
                            (let ((_%hd145234145254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145229145237%_)))
                                  (_%tl145235145256%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145229145237%_))))
                              (let* ((_%bind145259%_ _%hd145234145254%_)
                                     (_%rest145261%_ _%tl145235145256%_))
                                (_%K145233145251%_
                                 _%rest145261%_
                                 _%bind145259%_)))
                            (_%else145231145245%_))))))
                 (_%generate-values-check145151%_
                  (lambda (_%check145219%_ _%body145220%_)
                    (cons 'begin
                          (let ((__tmp150242 (cons _%body145220%_ '()))
                                (__tmp150241 (reverse _%check145219%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150242 __tmp150241))))))
          (let* ((_%g145153145170%_
                  (lambda (_%g145154145167%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145154145167%_))))
                 (_%g145152145216%_
                  (lambda (_%g145154145173%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145154145173%_))
                        (let ((_%e145157145175%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145154145173%_))))
                          (let ((_%hd145158145178%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145157145175%_)))
                                (_%tl145159145180%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145157145175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145159145180%_))
                                (let ((_%e145160145183%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145159145180%_))))
                                  (let ((_%hd145161145186%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145160145183%_)))
                                        (_%tl145162145188%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145160145183%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145162145188%_))
                                        (let ((_%e145163145191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145162145188%_))))
                                          (let ((_%hd145164145194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145163145191%_)))
                                                (_%tl145165145196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145163145191%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145165145196%_))
                                                ((lambda (_%L145199%_
                                                          _%L145200%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L145200%_)
                                                       (_%generate-simple145146%_
                                                        _%L145200%_
                                                        _%L145199%_)
                                                       (_%generate-values145149%_
                                                        _%L145200%_
                                                        _%L145199%_)))
                                                 _%hd145164145194%_
                                                 _%hd145161145186%_)
                                                (_%g145153145170%_
                                                 _%g145154145173%_))))
                                        (_%g145153145170%_
                                         _%g145154145173%_))))
                                (_%g145153145170%_ _%g145154145173%_))))
                        (_%g145153145170%_ _%g145154145173%_)))))
            (_%g145152145216%_ _%stx145143%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self145896%_ _%stx145897%_)
        (let ((_%compiled-body?145899%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self145896%_
           _%stx145897%_
           _%compiled-body?145899%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g150244_
        (let ((_g150243_ (let () (declare (not safe)) (##length _g150244_))))
          (cond ((let () (declare (not safe)) (##fx= _g150243_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g150244_))
                ((let () (declare (not safe)) (##fx= _g150243_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g150244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g150244_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals145036%_ _%hd145037%_)
        (let _%lp145039%_ ((_%rest145041%_ _%hd145037%_)
                           (_%k145042%_ '0)
                           (_%r145043%_ '()))
          (let* ((_%__stx149408149409%_ _%rest145041%_)
                 (_%g145048145065%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx149408149409%_)))))
            (let ((_%__kont149410149411%_
                   (lambda (_%L145128%_)
                     (_%lp145039%_
                      _%L145128%_
                      (let () (declare (not safe)) (##fx+ _%k145042%_ '1))
                      _%r145043%_)))
                  (_%__kont149412149413%_
                   (lambda (_%L145101%_ _%L145102%_)
                     (_%lp145039%_
                      _%L145101%_
                      (let () (declare (not safe)) (##fx+ _%k145042%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L145102%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals145036%_
                                         _%k145042%_
                                         _%L145101%_)
                                        '()))
                            _%r145043%_))))
                  (_%__kont149414149415%_
                   (lambda (_%L145077%_)
                     (let ((__tmp150245
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L145077%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals145036%_
                                               _%k145042%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp150245 _%r145043%_))))
                  (_%__kont149416149417%_ (lambda () (reverse _%r145043%_))))
              (let ((_%g145046145088%_
                     (lambda ()
                       (let ((_%L145077%_ _%__stx149408149409%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L145077%_))
                             (_%__kont149414149415%_ _%L145077%_)
                             (_%__kont149416149417%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx149408149409%_))
                    (let ((_%e145051145117%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx149408149409%_))))
                      (let ((_%tl145053145122%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145051145117%_)))
                            (_%hd145052145120%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145051145117%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd145052145120%_))
                            (let ((_%e145054145125%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd145052145120%_))))
                              (if (equal? _%e145054145125%_ '#f)
                                  (_%__kont149410149411%_ _%tl145053145122%_)
                                  (_%__kont149412149413%_
                                   _%tl145053145122%_
                                   _%hd145052145120%_)))
                            (_%__kont149412149413%_
                             _%tl145053145122%_
                             _%hd145052145120%_))))
                    (let () (declare (not safe)) (_%g145046145088%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self144715%_ _%stx144716%_ _%compiled-body?144717%_)
        (letrec ((_%generate-simple144719%_
                  (lambda (_%hd145021%_ _%body145022%_)
                    (gxc#generate-runtime-simple-let
                     _%self144715%_
                     'letrec
                     _%hd145021%_
                     _%body145022%_
                     _%compiled-body?144717%_)))
                 (_%generate-values144720%_
                  (lambda (_%hd144800%_ _%body144801%_)
                    (let _%lp144803%_ ((_%rest144805%_ _%hd144800%_)
                                       (_%bind144806%_ '())
                                       (_%check144807%_ '())
                                       (_%post144808%_ '()))
                      (let* ((_%__stx149482149483%_ _%rest144805%_)
                             (_%g144811144822%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149482149483%_)))))
                        (let ((_%__kont149484149485%_
                               (lambda (_%L144849%_ _%L144850%_)
                                 (let* ((_%__stx149438149439%_ _%L144850%_)
                                        (_%g144865144890%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149438149439%_)))))
                                   (let ((_%__kont149440149441%_
                                          (lambda (_%L144997%_ _%L144998%_)
                                            (let ((_%eid145012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144998%_)))
                                                  (_%expr145013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144715%_
                                                      _%L144997%_))))
                                              (_%lp144803%_
                                               _%L144849%_
                                               (cons (cons _%eid145012%_
                                                           (cons _%expr145013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144806%_)
                                               _%check144807%_
                                               _%post144808%_))))
                                         (_%__kont149442149443%_
                                          (lambda (_%L144911%_ _%L144912%_)
                                            (let* ((_%vals144925%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144927%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144925%_
                                                     _%L144912%_
                                                     _%L144911%_))
                                                   (_%refs144929%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144925%_
                                                     _%L144912%_))
                                                   (_%expr144931%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144715%_
                                                       _%L144911%_))))
                                              (_%lp144803%_
                                               _%L144849%_
                                               (let ((__tmp150247
                                                      (cons (cons _%vals144925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr144931%_ '()))
                    _%bind144806%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp150246
                                                      (map (lambda (_%e144933144935%_)
                                                             (let* ((_%g144937144946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e144933144935%_)
                            (_%E144939144950%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g144937144946%_
                                        '([eid _])))
                               '#!void))
                            (_%K144940144955%_
                             (lambda (_%eid144953%_)
                               (cons _%eid144953%_ (cons '#!void '())))))
                       (if (pair? _%g144937144946%_)
                           (let ((_%hd144941144958%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g144937144946%_)))
                                 (_%tl144942144960%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g144937144946%_))))
                             (let ((_%eid144963%_ _%hd144941144958%_))
                               (if (pair? _%tl144942144960%_)
                                   (let ((_%tl144944144965%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl144942144960%_))))
                                     (if (null? _%tl144944144965%_)
                                         (_%K144940144955%_ _%eid144963%_)
                                         (_%E144939144950%_)))
                                   (_%E144939144950%_))))
                           (_%E144939144950%_))))
                   _%refs144929%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp150247
                                                  __tmp150246))
                                               (cons _%check-values144927%_
                                                     _%check144807%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs144929%_
                                                  _%post144808%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149438149439%_))
                                         (let ((_%e144869144973%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149438149439%_))))
                                           (let ((_%tl144871144978%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144869144973%_)))
                                                 (_%hd144870144976%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144869144973%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144870144976%_))
                                                 (let ((_%e144872144981%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144870144976%_))))
                                                   (let ((_%tl144874144986%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144872144981%_)))
                                                         (_%hd144873144984%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144872144981%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144874144986%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144871144978%_))
                     (let ((_%e144875144989%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144871144978%_))))
                       (let ((_%tl144877144994%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144875144989%_)))
                             (_%hd144876144992%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144875144989%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144877144994%_))
                             (_%__kont149440149441%_
                              _%hd144876144992%_
                              _%hd144873144984%_)
                             (let ()
                               (declare (not safe))
                               (_%g144865144890%_)))))
                     (let () (declare (not safe)) (_%g144865144890%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144871144978%_))
                     (let ((_%e144883144903%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144871144978%_))))
                       (let ((_%tl144885144908%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144883144903%_)))
                             (_%hd144884144906%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144883144903%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144885144908%_))
                             (_%__kont149442149443%_
                              _%hd144884144906%_
                              _%hd144870144976%_)
                             (let ()
                               (declare (not safe))
                               (_%g144865144890%_)))))
                     (let () (declare (not safe)) (_%g144865144890%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144871144978%_))
                                                     (let ((_%e144883144903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144871144978%_))))
                                                       (let ((_%tl144885144908%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144883144903%_)))
                     (_%hd144884144906%_
                      (let () (declare (not safe)) (##car _%e144883144903%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144885144908%_))
                     (_%__kont149442149443%_
                      _%hd144884144906%_
                      _%hd144870144976%_)
                     (let () (declare (not safe)) (_%g144865144890%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144865144890%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144865144890%_)))))))
                              (_%__kont149486149487%_
                               (lambda ()
                                 (let* ((_%body144829%_
                                         (if _%compiled-body?144717%_
                                             _%body144801%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144715%_
                                                _%body144801%_))))
                                        (_%body144831%_
                                         (_%generate-values-post144722%_
                                          _%post144808%_
                                          _%body144829%_))
                                        (_%body144833%_
                                         (_%generate-values-check144721%_
                                          _%check144807%_
                                          _%body144831%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind144806%_)
                                               (cons _%body144833%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149482149483%_))
                              (let ((_%e144815144841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149482149483%_))))
                                (let ((_%tl144817144846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144815144841%_)))
                                      (_%hd144816144844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144815144841%_))))
                                  (_%__kont149484149485%_
                                   _%tl144817144846%_
                                   _%hd144816144844%_)))
                              (_%__kont149486149487%_)))))))
                 (_%generate-values-check144721%_
                  (lambda (_%check144797%_ _%body144798%_)
                    (cons 'begin
                          (let ((__tmp150249 (cons _%body144798%_ '()))
                                (__tmp150248 (reverse _%check144797%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150249 __tmp150248)))))
                 (_%generate-values-post144722%_
                  (lambda (_%post144790%_ _%body144791%_)
                    (cons 'begin
                          (let ((__tmp150253 (cons _%body144791%_ '()))
                                (__tmp150250
                                 (let ((__tmp150252
                                        (lambda (_%g144792144794%_)
                                          (cons 'set! _%g144792144794%_)))
                                       (__tmp150251 (reverse _%post144790%_)))
                                   (declare (not safe))
                                   (##map __tmp150252 __tmp150251))))
                            (declare (not safe))
                            (__foldr1 cons __tmp150253 __tmp150250))))))
          (let* ((_%g144724144741%_
                  (lambda (_%g144725144738%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144725144738%_))))
                 (_%g144723144787%_
                  (lambda (_%g144725144744%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144725144744%_))
                        (let ((_%e144728144746%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144725144744%_))))
                          (let ((_%hd144729144749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144728144746%_)))
                                (_%tl144730144751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144728144746%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144730144751%_))
                                (let ((_%e144731144754%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144730144751%_))))
                                  (let ((_%hd144732144757%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144731144754%_)))
                                        (_%tl144733144759%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144731144754%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144733144759%_))
                                        (let ((_%e144734144762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144733144759%_))))
                                          (let ((_%hd144735144765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144734144762%_)))
                                                (_%tl144736144767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144734144762%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144736144767%_))
                                                ((lambda (_%L144770%_
                                                          _%L144771%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144771%_)
                                                       (_%generate-simple144719%_
                                                        _%L144771%_
                                                        _%L144770%_)
                                                       (_%generate-values144720%_
                                                        _%L144771%_
                                                        _%L144770%_)))
                                                 _%hd144735144765%_
                                                 _%hd144732144757%_)
                                                (_%g144724144741%_
                                                 _%g144725144744%_))))
                                        (_%g144724144741%_
                                         _%g144725144744%_))))
                                (_%g144724144741%_ _%g144725144744%_))))
                        (_%g144724144741%_ _%g144725144744%_)))))
            (_%g144723144787%_ _%stx144716%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self145027%_ _%stx145028%_)
        (let ((_%compiled-body?145030%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self145027%_
           _%stx145028%_
           _%compiled-body?145030%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g150255_
        (let ((_g150254_ (let () (declare (not safe)) (##length _g150255_))))
          (cond ((let () (declare (not safe)) (##fx= _g150254_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g150255_))
                ((let () (declare (not safe)) (##fx= _g150254_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g150255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g150255_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self144296%_ _%stx144297%_)
        (letrec ((_%generate-values144299%_
                  (lambda (_%hd144542%_ _%body144543%_)
                    (let _%lp144545%_ ((_%rest144547%_ _%hd144542%_)
                                       (_%bind144548%_ '()))
                      (let* ((_%rest144549144557%_ _%rest144547%_)
                             (_%else144551144568%_
                              (lambda ()
                                (let ((_%bind144565%_ (reverse _%bind144548%_))
                                      (_%body144566%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self144296%_
                                          _%body144543%_))))
                                  (cons 'letrec*
                                        (cons _%bind144565%_
                                              (cons _%body144566%_ '()))))))
                             (_%K144553144702%_
                              (lambda (_%rest144571%_ _%hd-bind144572%_)
                                (let* ((_%__stx149496149497%_
                                        _%hd-bind144572%_)
                                       (_%g144575144600%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx149496149497%_)))))
                                  (let ((_%__kont149498149499%_
                                         (lambda (_%L144681%_ _%L144682%_)
                                           (let ((_%eid144696%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L144682%_)))
                                                 (_%expr144697%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self144296%_
                                                     _%L144681%_))))
                                             (_%lp144545%_
                                              _%rest144571%_
                                              (cons (cons _%eid144696%_
                                                          (cons _%expr144697%_
                                                                '()))
                                                    _%bind144548%_)))))
                                        (_%__kont149500149501%_
                                         (lambda (_%L144621%_ _%L144622%_)
                                           (let* ((_%vals144641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp144643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values144645%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp144643%_
                                                    _%L144622%_
                                                    _%L144621%_))
                                                  (_%refs144647%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals144641%_
                                                    _%L144622%_))
                                                  (_%expr144649%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144296%_
                                                      _%L144621%_))))
                                             (_%lp144545%_
                                              _%rest144571%_
                                              (let ((__tmp150256
                                                     (cons (cons _%vals144641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp144643%_
                                                       (cons _%expr144649%_
                                                             '()))
                                                 '())
                                           (cons _%check-values144645%_
                                                 (cons _%tmp144643%_ '()))))
                               '()))
                   _%bind144548%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp150256
                                                 _%refs144647%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx149496149497%_))
                                        (let ((_%e144579144657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx149496149497%_))))
                                          (let ((_%tl144581144662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144579144657%_)))
                                                (_%hd144580144660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144579144657%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144580144660%_))
                                                (let ((_%e144582144665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144580144660%_))))
                                                  (let ((_%tl144584144670%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144582144665%_)))
                                                        (_%hd144583144668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144582144665%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144584144670%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144581144662%_))
                                                            (let ((_%e144585144673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144581144662%_))))
                      (let ((_%tl144587144678%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144585144673%_)))
                            (_%hd144586144676%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144585144673%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144587144678%_))
                            (_%__kont149498149499%_
                             _%hd144586144676%_
                             _%hd144583144668%_)
                            (let ()
                              (declare (not safe))
                              (_%g144575144600%_)))))
                    (let () (declare (not safe)) (_%g144575144600%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl144581144662%_))
                    (let ((_%e144593144613%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144581144662%_))))
                      (let ((_%tl144595144618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144593144613%_)))
                            (_%hd144594144616%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144593144613%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144595144618%_))
                            (_%__kont149500149501%_
                             _%hd144594144616%_
                             _%hd144580144660%_)
                            (let ()
                              (declare (not safe))
                              (_%g144575144600%_)))))
                    (let () (declare (not safe)) (_%g144575144600%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl144581144662%_))
                                                    (let ((_%e144593144613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl144581144662%_))))
                                                      (let ((_%tl144595144618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144593144613%_)))
                    (_%hd144594144616%_
                     (let () (declare (not safe)) (##car _%e144593144613%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl144595144618%_))
                    (_%__kont149500149501%_
                     _%hd144594144616%_
                     _%hd144580144660%_)
                    (let () (declare (not safe)) (_%g144575144600%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144575144600%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144575144600%_))))))))
                        (if (pair? _%rest144549144557%_)
                            (let ((_%hd144554144705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144549144557%_)))
                                  (_%tl144555144707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144549144557%_))))
                              (let* ((_%hd-bind144710%_ _%hd144554144705%_)
                                     (_%rest144712%_ _%tl144555144707%_))
                                (_%K144553144702%_
                                 _%rest144712%_
                                 _%hd-bind144710%_)))
                            (_%else144551144568%_))))))
                 (_%generate-letrec?144300%_
                  (lambda (_%hd144432%_)
                    (let _%lp144434%_ ((_%rest144436%_ _%hd144432%_))
                      (let* ((_%rest144437144445%_ _%rest144436%_)
                             (_%else144439144453%_ (lambda () '#t))
                             (_%K144441144530%_
                              (lambda (_%rest144456%_ _%hd-bind144457%_)
                                (let* ((_%g144459144476%_
                                        (lambda (_%g144460144473%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g144460144473%_))))
                                       (_%g144458144527%_
                                        (lambda (_%g144460144479%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g144460144479%_))
                                              (let ((_%e144463144481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g144460144479%_))))
                                                (let ((_%hd144464144484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144463144481%_)))
                                                      (_%tl144465144486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144463144481%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd144464144484%_))
                                                      (let ((_%e144466144489%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd144464144484%_))))
                (let ((_%hd144467144492%_
                       (let () (declare (not safe)) (##car _%e144466144489%_)))
                      (_%tl144468144494%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e144466144489%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144468144494%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144465144486%_))
                          (let ((_%e144469144497%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144465144486%_))))
                            (let ((_%hd144470144500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144469144497%_)))
                                  (_%tl144471144502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144469144497%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144471144502%_))
                                  ((lambda (_%L144505%_ _%L144506%_)
                                     (if (_%is-lambda-expr?144301%_
                                          _%L144505%_)
                                         (_%lp144434%_ _%rest144456%_)
                                         '#f))
                                   _%hd144470144500%_
                                   _%hd144467144492%_)
                                  (_%g144459144476%_ _%g144460144479%_))))
                          (_%g144459144476%_ _%g144460144479%_))
                      (_%g144459144476%_ _%g144460144479%_))))
              (_%g144459144476%_ _%g144460144479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g144459144476%_
                                               _%g144460144479%_)))))
                                  (_%g144458144527%_ _%hd-bind144457%_)))))
                        (if (pair? _%rest144437144445%_)
                            (let ((_%hd144442144533%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144437144445%_)))
                                  (_%tl144443144535%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144437144445%_))))
                              (let* ((_%hd-bind144538%_ _%hd144442144533%_)
                                     (_%rest144540%_ _%tl144443144535%_))
                                (_%K144441144530%_
                                 _%rest144540%_
                                 _%hd-bind144538%_)))
                            (_%else144439144453%_))))))
                 (_%is-lambda-expr?144301%_
                  (lambda (_%expr144369%_)
                    (let* ((_%__stx149540149541%_ _%expr144369%_)
                           (_%g144372144386%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149540149541%_)))))
                      (let ((_%__kont149542149543%_
                             (lambda (_%L144414%_ _%L144415%_) '#t))
                            (_%__kont149544149545%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx149540149541%_))
                            (let ((_%e144376144398%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx149540149541%_))))
                              (let ((_%tl144378144403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144376144398%_)))
                                    (_%hd144377144401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144376144398%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144377144401%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd144377144401%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144378144403%_))
                                            (let ((_%e144379144406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144378144403%_))))
                                              (let ((_%tl144381144411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144379144406%_)))
                                                    (_%hd144380144409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144379144406%_))))
                                                (_%__kont149542149543%_
                                                 _%tl144381144411%_
                                                 _%hd144380144409%_)))
                                            (_%__kont149544149545%_))
                                        (_%__kont149544149545%_))
                                    (_%__kont149544149545%_))))
                            (_%__kont149544149545%_)))))))
          (let* ((_%g144303144320%_
                  (lambda (_%g144304144317%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144304144317%_))))
                 (_%g144302144366%_
                  (lambda (_%g144304144323%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144304144323%_))
                        (let ((_%e144307144325%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144304144323%_))))
                          (let ((_%hd144308144328%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144307144325%_)))
                                (_%tl144309144330%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144307144325%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144309144330%_))
                                (let ((_%e144310144333%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144309144330%_))))
                                  (let ((_%hd144311144336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144310144333%_)))
                                        (_%tl144312144338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144310144333%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144312144338%_))
                                        (let ((_%e144313144341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144312144338%_))))
                                          (let ((_%hd144314144344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144313144341%_)))
                                                (_%tl144315144346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144313144341%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144315144346%_))
                                                ((lambda (_%L144349%_
                                                          _%L144350%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144350%_)
                                                       (if (_%generate-letrec?144300%_
                                                            _%L144350%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144296%_
                                                            'letrec
                                                            _%L144350%_
                                                            _%L144349%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144296%_
                                                            'letrec*
                                                            _%L144350%_
                                                            _%L144349%_
                                                            '#f))
                                                       (_%generate-values144299%_
                                                        _%L144350%_
                                                        _%L144349%_)))
                                                 _%hd144314144344%_
                                                 _%hd144311144336%_)
                                                (_%g144303144320%_
                                                 _%g144304144323%_))))
                                        (_%g144303144320%_
                                         _%g144304144323%_))))
                                (_%g144303144320%_ _%g144304144323%_))))
                        (_%g144303144320%_ _%g144304144323%_)))))
            (_%g144302144366%_ _%stx144297%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd144233%_)
        (let _%lp144235%_ ((_%rest144237%_ _%hd144233%_))
          (let* ((_%rest144238144254%_ _%rest144237%_)
                 (_%else144241144262%_ (lambda () '#f)))
            (let ((_%K144244144275%_
                   (lambda (_%rest144273%_) (_%lp144235%_ _%rest144273%_)))
                  (_%K144243144267%_ (lambda () '#t)))
              (let ((_%try-match144240144270%_
                     (lambda ()
                       (if (null? _%rest144238144254%_)
                           (_%K144243144267%_)
                           (_%else144241144262%_)))))
                (if (pair? _%rest144238144254%_)
                    (let ((_%tl144246144280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest144238144254%_)))
                          (_%hd144245144278%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest144238144254%_))))
                      (if (pair? _%hd144245144278%_)
                          (let ((_%tl144248144285%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144245144278%_)))
                                (_%hd144247144283%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144245144278%_))))
                            (if (pair? _%hd144247144283%_)
                                (let ((_%tl144252144288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144247144283%_))))
                                  (if (null? _%tl144252144288%_)
                                      (if (pair? _%tl144248144285%_)
                                          (let ((_%tl144250144291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144248144285%_))))
                                            (if (null? _%tl144250144291%_)
                                                (let ((_%rest144294%_
                                                       _%tl144246144280%_))
                                                  (_%lp144235%_
                                                   _%rest144294%_))
                                                (_%else144241144262%_)))
                                          (_%else144241144262%_))
                                      (_%else144241144262%_)))
                                (_%else144241144262%_)))
                          (_%else144241144262%_)))
                    (_%try-match144240144270%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self144144%_
               _%form144145%_
               _%hd144146%_
               _%body144147%_
               _%compiled-body?144148%_)
        (letrec ((_%generate1144150%_
                  (lambda (_%bind144189%_)
                    (let* ((_%bind144190144201%_ _%bind144189%_)
                           (_%E144192144205%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind144190144201%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K144193144211%_
                            (lambda (_%expr144208%_ _%id144209%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id144209%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self144144%_
                                             _%expr144208%_))
                                          '())))))
                      (if (pair? _%bind144190144201%_)
                          (let ((_%hd144194144214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind144190144201%_)))
                                (_%tl144195144216%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind144190144201%_))))
                            (if (pair? _%hd144194144214%_)
                                (let ((_%hd144198144219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd144194144214%_)))
                                      (_%tl144199144221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144194144214%_))))
                                  (let ((_%id144224%_ _%hd144198144219%_))
                                    (if (null? _%tl144199144221%_)
                                        (if (pair? _%tl144195144216%_)
                                            (let ((_%hd144196144226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl144195144216%_)))
                                                  (_%tl144197144228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl144195144216%_))))
                                              (let ((_%expr144231%_
                                                     _%hd144196144226%_))
                                                (if (null? _%tl144197144228%_)
                                                    (_%K144193144211%_
                                                     _%expr144231%_
                                                     _%id144224%_)
                                                    (_%E144192144205%_))))
                                            (_%E144192144205%_))
                                        (_%E144192144205%_))))
                                (_%E144192144205%_)))
                          (_%E144192144205%_))))))
          (let* ((_%bind144152%_ (map _%generate1144150%_ _%hd144146%_))
                 (_%body144154%_
                  (if _%compiled-body?144148%_
                      _%body144147%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self144144%_ _%body144147%_))))
                 (_%body144186%_
                  (let* ((_%body144155144163%_ _%body144154%_)
                         (_%else144157144171%_
                          (lambda () (cons _%body144154%_ '())))
                         (_%K144159144176%_
                          (lambda (_%exprs144174%_) _%exprs144174%_)))
                    (if (pair? _%body144155144163%_)
                        (let ((_%hd144160144179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body144155144163%_)))
                              (_%tl144161144181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body144155144163%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd144160144179%_ 'begin))
                              (let ((_%exprs144184%_ _%tl144161144181%_))
                                (_%K144159144176%_ _%exprs144184%_))
                              (_%else144157144171%_)))
                        (_%else144157144171%_)))))
            (cons _%form144145%_ (cons _%bind144152%_ _%body144186%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self144044%_ _%stx144045%_)
        (letrec ((_%generate1144047%_
                  (lambda (_%datum144099%_)
                    (if (or (null? _%datum144099%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum144099%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum144099%_))
                            (eof-object? _%datum144099%_))
                        _%datum144099%_
                        (if (uninterned-symbol? _%datum144099%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum144099%_
                               '#t))
                            (if (pair? _%datum144099%_)
                                (cons (_%generate1144047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum144099%_)))
                                      (_%generate1144047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum144099%_))))
                                (if (box? _%datum144099%_)
                                    (box (_%generate1144047%_
                                          (unbox _%datum144099%_)))
                                    (if (vector? _%datum144099%_)
                                        (vector-map
                                         _%generate1144047%_
                                         _%datum144099%_)
                                        (if (or (s8vector? _%datum144099%_)
                                                (u8vector? _%datum144099%_)
                                                (s16vector? _%datum144099%_)
                                                (u16vector? _%datum144099%_)
                                                (s32vector? _%datum144099%_)
                                                (u32vector? _%datum144099%_)
                                                (s64vector? _%datum144099%_)
                                                (u64vector? _%datum144099%_)
                                                (f32vector? _%datum144099%_)
                                                (f64vector? _%datum144099%_))
                                            _%datum144099%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx144045%_)))))))))))
          (let* ((_%g144049144062%_
                  (lambda (_%g144050144059%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144050144059%_))))
                 (_%g144048144096%_
                  (lambda (_%g144050144065%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144050144065%_))
                        (let ((_%e144052144067%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144050144065%_))))
                          (let ((_%hd144053144070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144052144067%_)))
                                (_%tl144054144072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144052144067%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144054144072%_))
                                (let ((_%e144055144075%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144054144072%_))))
                                  (let ((_%hd144056144078%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144055144075%_)))
                                        (_%tl144057144080%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144055144075%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144057144080%_))
                                        ((lambda (_%L144083%_)
                                           (cons 'quote
                                                 (cons (_%generate1144047%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L144083%_)))
                                                       '())))
                                         _%hd144056144078%_)
                                        (_%g144049144062%_
                                         _%g144050144065%_))))
                                (_%g144049144062%_ _%g144050144065%_))))
                        (_%g144049144062%_ _%g144050144065%_)))))
            (_%g144048144096%_ _%stx144045%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self143485%_ _%stx143486%_)
        (letrec ((_%compile-call143488%_
                  (lambda (_%rator143777%_ _%rands143778%_)
                    (let ((_%rator143784%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self143485%_
                              _%rator143777%_)))
                          (_%rands143785%_
                           (map (lambda (_%g143779143781%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self143485%_
                                     _%g143779143781%_)))
                                _%rands143778%_)))
                      (let* ((_%__stx149587149588%_ _%rator143784%_)
                             (_%g143788143840%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149587149588%_)))))
                        (let ((_%__kont149589149590%_
                               (lambda (_%L143964%_
                                        _%L143965%_
                                        _%L143966%_
                                        _%L143967%_)
                                 (if (let ((__tmp150259
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands143785%_)))
                                           (__tmp150257
                                            (length (let ((__tmp150258
                                                           (lambda (_%g144003144006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144004144008%_)
                     (cons _%g144003144006%_ _%g144004144008%_))))
              (declare (not safe))
              (__foldr1 __tmp150258 '() _%L143966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150259 __tmp150257))
                                     (let* ((_%id144011%_ _%L143967%_)
                                            (_%args144020%_
                                             (let ((__tmp150260
                                                    (lambda (_%g144012144015%_
                                                             _%g144013144017%_)
                                                      (cons _%g144012144015%_
                                                            _%g144013144017%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150260
                                                '()
                                                _%L143966%_)))
                                            (_%body144029%_
                                             (let ((__tmp150261
                                                    (lambda (_%g144021144024%_
                                                             _%g144022144026%_)
                                                      (cons _%g144021144024%_
                                                            _%g144022144026%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150261
                                                '()
                                                _%L143965%_)))
                                            (_%init144031%_
                                             (map list
                                                  _%args144020%_
                                                  _%rands143785%_)))
                                       (cons 'let
                                             (cons _%id144011%_
                                                   (cons _%init144031%_
                                                         _%body144029%_))))
                                     (let ((__tmp150262
                                            (let ((__tmp150263
                                                   (lambda (_%g144033144036%_
                                                            _%g144034144038%_)
                                                     (cons _%g144033144036%_
                                                           _%g144034144038%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150263
                                               '()
                                               _%L143966%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx143486%_
                                        __tmp150262
                                        _%rands143785%_)))))
                              (_%__kont149595149596%_
                               (lambda ()
                                 (cons _%rator143784%_ _%rands143785%_))))
                          (let ((_%__match149654149655%_
                                 (lambda (_%e143794143852%_
                                          _%hd143795143855%_
                                          _%tl143796143857%_
                                          _%e143797143860%_
                                          _%hd143798143863%_
                                          _%tl143799143865%_
                                          _%e143800143868%_
                                          _%hd143801143871%_
                                          _%tl143802143873%_
                                          _%e143803143876%_
                                          _%hd143804143879%_
                                          _%tl143805143881%_
                                          _%e143806143884%_
                                          _%hd143807143887%_
                                          _%tl143808143889%_
                                          _%e143809143892%_
                                          _%hd143810143895%_
                                          _%tl143811143897%_
                                          _%e143812143900%_
                                          _%hd143813143903%_
                                          _%tl143814143905%_
                                          _%__splice149591149592%_
                                          _%target143815143908%_
                                          _%tl143817143910%_)
                                   (letrec ((_%loop143818143913%_
                                             (lambda (_%hd143816143916%_
                                                      _%arg143822143918%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd143816143916%_))
                                                   (let ((_%e143819143921%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd143816143916%_))))
                                                     (let ((_%lp-tl143821143926%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e143819143921%_)))
                                                           (_%lp-hd143820143924%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e143819143921%_))))
                                                       (_%loop143818143913%_
                                                        _%lp-tl143821143926%_
                                                        (cons _%lp-hd143820143924%_
                                                              _%arg143822143918%_))))
                                                   (let ((_%arg143823143929%_
                                                          (reverse _%arg143822143918%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl143814143905%_))
                                                         (let ((_%__splice149593149594%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl143814143905%_ '0))))
                   (let ((_%tl143826143934%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149593149594%_ '1)))
                         (_%target143824143932%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149593149594%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl143826143934%_))
                         (letrec ((_%loop143827143937%_
                                   (lambda (_%hd143825143940%_
                                            _%body143831143942%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd143825143940%_))
                                         (let ((_%e143828143945%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd143825143940%_))))
                                           (let ((_%lp-tl143830143950%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143828143945%_)))
                                                 (_%lp-hd143829143948%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143828143945%_))))
                                             (_%loop143827143937%_
                                              _%lp-tl143830143950%_
                                              (cons _%lp-hd143829143948%_
                                                    _%body143831143942%_))))
                                         (let ((_%body143832143953%_
                                                (reverse _%body143831143942%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl143808143889%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl143802143873%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl143799143865%_))
                                                       (let ((_%e143833143956%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl143799143865%_))))
                 (let ((_%tl143835143961%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e143833143956%_)))
                       (_%hd143834143959%_
                        (let ()
                          (declare (not safe))
                          (##car _%e143833143956%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl143835143961%_))
                       (let ((_%L143964%_ _%hd143834143959%_)
                             (_%L143965%_ _%body143832143953%_)
                             (_%L143966%_ _%arg143823143929%_)
                             (_%L143967%_ _%hd143804143879%_))
                         (if (eq? _%L143967%_ _%L143964%_)
                             (_%__kont149589149590%_
                              _%L143964%_
                              _%L143965%_
                              _%L143966%_
                              _%L143967%_)
                             (_%__kont149595149596%_)))
                       (_%__kont149595149596%_))))
               (_%__kont149595149596%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149595149596%_))
                                               (_%__kont149595149596%_)))))))
                           (_%loop143827143937%_ _%target143824143932%_ '()))
                         (_%__kont149595149596%_))))
                 (_%__kont149595149596%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop143818143913%_
                                      _%target143815143908%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149587149588%_))
                                (let ((_%e143794143852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149587149588%_))))
                                  (let ((_%tl143796143857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143794143852%_)))
                                        (_%hd143795143855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143794143852%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143795143855%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd143795143855%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143796143857%_))
                                                (let ((_%e143797143860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143796143857%_))))
                                                  (let ((_%tl143799143865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143797143860%_)))
                                                        (_%hd143798143863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143797143860%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143798143863%_))
                                                        (let ((_%e143800143868%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143798143863%_))))
                  (let ((_%tl143802143873%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143800143868%_)))
                        (_%hd143801143871%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143800143868%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143801143871%_))
                        (let ((_%e143803143876%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143801143871%_))))
                          (let ((_%tl143805143881%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143803143876%_)))
                                (_%hd143804143879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143803143876%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143805143881%_))
                                (let ((_%e143806143884%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143805143881%_))))
                                  (let ((_%tl143808143889%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143806143884%_)))
                                        (_%hd143807143887%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143806143884%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd143807143887%_))
                                        (let ((_%e143809143892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd143807143887%_))))
                                          (let ((_%tl143811143897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143809143892%_)))
                                                (_%hd143810143895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143809143892%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd143810143895%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd143810143895%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143811143897%_))
                                                        (let ((_%e143812143900%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143811143897%_))))
                  (let ((_%tl143814143905%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143812143900%_)))
                        (_%hd143813143903%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143812143900%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd143813143903%_))
                        (let ((_%__splice149591149592%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd143813143903%_
                                  '0))))
                          (let ((_%tl143817143910%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice149591149592%_ '1)))
                                (_%target143815143908%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice149591149592%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143817143910%_))
                                (_%__match149654149655%_
                                 _%e143794143852%_
                                 _%hd143795143855%_
                                 _%tl143796143857%_
                                 _%e143797143860%_
                                 _%hd143798143863%_
                                 _%tl143799143865%_
                                 _%e143800143868%_
                                 _%hd143801143871%_
                                 _%tl143802143873%_
                                 _%e143803143876%_
                                 _%hd143804143879%_
                                 _%tl143805143881%_
                                 _%e143806143884%_
                                 _%hd143807143887%_
                                 _%tl143808143889%_
                                 _%e143809143892%_
                                 _%hd143810143895%_
                                 _%tl143811143897%_
                                 _%e143812143900%_
                                 _%hd143813143903%_
                                 _%tl143814143905%_
                                 _%__splice149591149592%_
                                 _%target143815143908%_
                                 _%tl143817143910%_)
                                (_%__kont149595149596%_))))
                        (_%__kont149595149596%_))))
                (_%__kont149595149596%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149595149596%_))
                                                (_%__kont149595149596%_))))
                                        (_%__kont149595149596%_))))
                                (_%__kont149595149596%_))))
                        (_%__kont149595149596%_))))
                (_%__kont149595149596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149595149596%_))
                                            (_%__kont149595149596%_))
                                        (_%__kont149595149596%_))))
                                (_%__kont149595149596%_)))))))))
          (let* ((_%g143490143513%_
                  (lambda (_%g143491143510%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143491143510%_))))
                 (_%g143489143774%_
                  (lambda (_%g143491143516%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143491143516%_))
                        (let ((_%e143494143518%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143491143516%_))))
                          (let ((_%hd143495143521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143494143518%_)))
                                (_%tl143496143523%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143494143518%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143496143523%_))
                                (let ((_%e143497143526%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143496143523%_))))
                                  (let ((_%hd143498143529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143497143526%_)))
                                        (_%tl143499143531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143497143526%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143499143531%_))
                                        (let ((_g150264_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143499143531%_
                                                  '0))))
                                          (begin
                                            (let ((_g150265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g150264_)
                                                         (##values-length
                                                          _g150264_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g150265_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g150265_)))
                                            (let ((_%target143500143534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150264_
                                                      0)))
                                                  (_%tl143502143536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150264_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143502143536%_))
                                                  (letrec ((_%loop143503143539%_
                                                            (lambda (_%hd143501143542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand143507143544%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143501143542%_))
                          (let ((_%e143504143547%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143501143542%_))))
                            (let ((_%lp-hd143505143550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143504143547%_)))
                                  (_%lp-tl143506143552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143504143547%_))))
                              (_%loop143503143539%_
                               _%lp-tl143506143552%_
                               (cons _%lp-hd143505143550%_
                                     _%rand143507143544%_))))
                          (let ((_%rand143508143555%_
                                 (reverse _%rand143507143544%_)))
                            ((lambda (_%L143558%_ _%L143559%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call143488%_
                                    _%L143559%_
                                    (let ((__tmp150266
                                           (lambda (_%g143576143579%_
                                                    _%g143577143581%_)
                                             (cons _%g143576143579%_
                                                   _%g143577143581%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp150266 '() _%L143558%_)))
                                   (let* ((_%__stx149703149704%_ _%L143559%_)
                                          (_%g143585143597%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx149703149704%_)))))
                                     (let ((_%__kont149705149706%_
                                            (lambda ()
                                              (let ((_%f143634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self143485%_
                                                        _%L143559%_))))
                                                (if (and (let ((__tmp150267
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f143634%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp150267))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f143634%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp143636%_ ((_%rest143639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp150269
                                                (lambda (_%g143756143759%_
                                                         _%g143757143761%_)
                                                  (cons _%g143756143759%_
                                                        _%g143757143761%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp150269
                                            '()
                                            _%L143558%_))))
                               (_%bind143641%_ '())
                               (_%args143642%_ '()))
              (let* ((_%rest143643143651%_ _%rest143639%_)
                     (_%else143645143659%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind143641%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f143634%_
                                                      _%args143642%_)
                                                '()))))))
                     (_%K143647143745%_
                      (lambda (_%rest143662%_ _%e143663%_)
                        (let* ((_%__stx149657149658%_ _%e143663%_)
                               (_%g143668143686%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx149657149658%_)))))
                          (let ((_%__kont149659149660%_
                                 (lambda ()
                                   (_%lp143636%_
                                    _%rest143662%_
                                    _%bind143641%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143663%_))
                                          _%args143642%_))))
                                (_%__kont149661149662%_
                                 (lambda ()
                                   (_%lp143636%_
                                    _%rest143662%_
                                    _%bind143641%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143663%_))
                                          _%args143642%_))))
                                (_%__kont149663149664%_
                                 (lambda ()
                                   (let ((_%tmp143693%_
                                          (let ((__tmp150268
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp150268))))
                                     (_%lp143636%_
                                      _%rest143662%_
                                      (cons (cons _%tmp143693%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e143663%_))
                                                        '()))
                                            _%bind143641%_)
                                      (cons _%tmp143693%_ _%args143642%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149657149658%_))
                                (let ((_%e143670143724%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149657149658%_))))
                                  (let ((_%tl143672143729%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143670143724%_)))
                                        (_%hd143671143727%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143670143724%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143671143727%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd143671143727%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143672143729%_))
                                                (let ((_%e143673143732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143672143729%_))))
                                                  (let ((_%tl143675143737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143673143732%_)))
                                                        (_%hd143674143735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143673143732%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143675143737%_))
                                                        (_%__kont149659149660%_)
                                                        (_%__kont149663149664%_))))
                                                (_%__kont149663149664%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd143671143727%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143672143729%_))
                                                    (let ((_%e143679143709%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143672143729%_))))
                                                      (let ((_%tl143681143714%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143679143709%_)))
                    (_%hd143680143712%_
                     (let () (declare (not safe)) (##car _%e143679143709%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143681143714%_))
                    (_%__kont149661149662%_)
                    (_%__kont149663149664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149663149664%_))
                                                (_%__kont149663149664%_)))
                                        (_%__kont149663149664%_))))
                                (_%__kont149663149664%_)))))))
                (if (pair? _%rest143643143651%_)
                    (let ((_%hd143648143748%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143643143651%_)))
                          (_%tl143649143750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143643143651%_))))
                      (let* ((_%e143753%_ _%hd143648143748%_)
                             (_%rest143755%_ _%tl143649143750%_))
                        (_%K143647143745%_ _%rest143755%_ _%e143753%_)))
                    (_%else143645143659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call143488%_
                                                     _%L143559%_
                                                     (let ((__tmp150270
                                                            (lambda (_%g143763143766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g143764143768%_)
                      (cons _%g143763143766%_ _%g143764143768%_))))
               (declare (not safe))
               (__foldr1 __tmp150270 '() _%L143558%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont149707149708%_
                                            (lambda ()
                                              (_%compile-call143488%_
                                               _%L143559%_
                                               (let ((__tmp150271
                                                      (lambda (_%g143603143606%_
                                                               _%g143604143608%_)
                                                        (cons _%g143603143606%_
                                                              _%g143604143608%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp150271
                                                  '()
                                                  _%L143558%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx149703149704%_))
                                           (let ((_%e143587143616%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx149703149704%_))))
                                             (let ((_%tl143589143621%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e143587143616%_)))
                                                   (_%hd143588143619%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e143587143616%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd143588143619%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd143588143619%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl143589143621%_))
                                                           (let ((_%e143590143624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl143589143621%_))))
                     (let ((_%tl143592143629%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e143590143624%_)))
                           (_%hd143591143627%_
                            (let ()
                              (declare (not safe))
                              (##car _%e143590143624%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl143592143629%_))
                           (_%__kont149705149706%_)
                           (_%__kont149707149708%_))))
                   (_%__kont149707149708%_))
               (_%__kont149707149708%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149707149708%_))))
                                           (_%__kont149707149708%_))))))
                             _%rand143508143555%_
                             _%hd143498143529%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop143503143539%_
                                                     _%target143500143534%_
                                                     '()))
                                                  (_%g143490143513%_
                                                   _%g143491143516%_)))))
                                        (_%g143490143513%_
                                         _%g143491143516%_))))
                                (_%g143490143513%_ _%g143491143516%_))))
                        (_%g143490143513%_ _%g143491143516%_)))))
            (_%g143489143774%_ _%stx143486%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self143228%_ _%stx143229%_)
        (let* ((_%__stx149775149776%_ _%stx143229%_)
               (_%g143232143261%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149775149776%_)))))
          (let ((_%__kont149777149778%_
                 (lambda (_%L143329%_ _%L143330%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self143228%_
                        _%stx143229%_)
                       (let ((_%f143352%_
                              (let ((__tmp150272
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L143330%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self143228%_
                                 __tmp150272))))
                         (let _%lp143354%_ ((_%rest143357%_
                                             (reverse (let ((__tmp150274
                                                             (lambda (_%g143474143477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g143475143479%_)
                       (cons _%g143474143477%_ _%g143475143479%_))))
                (declare (not safe))
                (__foldr1 __tmp150274 '() _%L143329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind143359%_ '())
                                            (_%args143360%_ '()))
                           (let* ((_%rest143361143369%_ _%rest143357%_)
                                  (_%else143363143377%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind143359%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f143352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args143360%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K143365143463%_
                                   (lambda (_%rest143380%_ _%e143381%_)
                                     (let* ((_%__stx149729149730%_ _%e143381%_)
                                            (_%g143386143404%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx149729149730%_)))))
                                       (let ((_%__kont149731149732%_
                                              (lambda ()
                                                (_%lp143354%_
                                                 _%rest143380%_
                                                 _%bind143359%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143381%_))
                                                       _%args143360%_))))
                                             (_%__kont149733149734%_
                                              (lambda ()
                                                (_%lp143354%_
                                                 _%rest143380%_
                                                 _%bind143359%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143381%_))
                                                       _%args143360%_))))
                                             (_%__kont149735149736%_
                                              (lambda ()
                                                (let ((_%tmp143411%_
                                                       (let ((__tmp150273
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp150273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp143354%_
                                                   _%rest143380%_
                                                   (cons (cons _%tmp143411%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e143381%_))
                             '()))
                 _%bind143359%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp143411%_
                                                         _%args143360%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx149729149730%_))
                                             (let ((_%e143388143442%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx149729149730%_))))
                                               (let ((_%tl143390143447%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e143388143442%_)))
                                                     (_%hd143389143445%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e143388143442%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd143389143445%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd143389143445%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143390143447%_))
                     (let ((_%e143391143450%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143390143447%_))))
                       (let ((_%tl143393143455%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143391143450%_)))
                             (_%hd143392143453%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143391143450%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143393143455%_))
                             (_%__kont149731149732%_)
                             (_%__kont149735149736%_))))
                     (_%__kont149735149736%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd143389143445%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl143390143447%_))
                         (let ((_%e143397143427%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl143390143447%_))))
                           (let ((_%tl143399143432%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e143397143427%_)))
                                 (_%hd143398143430%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e143397143427%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl143399143432%_))
                                 (_%__kont149733149734%_)
                                 (_%__kont149735149736%_))))
                         (_%__kont149735149736%_))
                     (_%__kont149735149736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149735149736%_))))
                                             (_%__kont149735149736%_)))))))
                             (if (pair? _%rest143361143369%_)
                                 (let ((_%hd143366143466%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest143361143369%_)))
                                       (_%tl143367143468%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest143361143369%_))))
                                   (let* ((_%e143471%_ _%hd143366143466%_)
                                          (_%rest143473%_ _%tl143367143468%_))
                                     (_%K143365143463%_
                                      _%rest143473%_
                                      _%e143471%_)))
                                 (_%else143363143377%_))))))))
                (_%__kont149781149782%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self143228%_ _%stx143229%_))))
            (let ((_%__match149820149821%_
                   (lambda (_%e143236143273%_
                            _%hd143237143276%_
                            _%tl143238143278%_
                            _%e143239143281%_
                            _%hd143240143284%_
                            _%tl143241143286%_
                            _%e143242143289%_
                            _%hd143243143292%_
                            _%tl143244143294%_
                            _%e143245143297%_
                            _%hd143246143300%_
                            _%tl143247143302%_
                            _%__splice149779149780%_
                            _%target143248143305%_
                            _%tl143250143307%_)
                     (letrec ((_%loop143251143310%_
                               (lambda (_%hd143249143313%_
                                        _%rand143255143315%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd143249143313%_))
                                     (let ((_%e143252143318%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd143249143313%_))))
                                       (let ((_%lp-tl143254143323%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e143252143318%_)))
                                             (_%lp-hd143253143321%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e143252143318%_))))
                                         (_%loop143251143310%_
                                          _%lp-tl143254143323%_
                                          (cons _%lp-hd143253143321%_
                                                _%rand143255143315%_))))
                                     (let ((_%rand143256143326%_
                                            (reverse _%rand143255143315%_)))
                                       (_%__kont149777149778%_
                                        _%rand143256143326%_
                                        _%hd143246143300%_))))))
                       (_%loop143251143310%_ _%target143248143305%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149775149776%_))
                  (let ((_%e143236143273%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149775149776%_))))
                    (let ((_%tl143238143278%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143236143273%_)))
                          (_%hd143237143276%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143236143273%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143238143278%_))
                          (let ((_%e143239143281%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143238143278%_))))
                            (let ((_%tl143241143286%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143239143281%_)))
                                  (_%hd143240143284%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143239143281%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143240143284%_))
                                  (let ((_%e143242143289%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143240143284%_))))
                                    (let ((_%tl143244143294%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143242143289%_)))
                                          (_%hd143243143292%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143242143289%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143243143292%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143243143292%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143244143294%_))
                                                  (let ((_%e143245143297%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143244143294%_))))
                                                    (let ((_%tl143247143302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143245143297%_)))
                                                          (_%hd143246143300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143245143297%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143247143302%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl143241143286%_))
                      (let ((_%__splice149779149780%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl143241143286%_
                                '0))))
                        (let ((_%tl143250143307%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149779149780%_ '1)))
                              (_%target143248143305%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149779149780%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143250143307%_))
                              (_%__match149820149821%_
                               _%e143236143273%_
                               _%hd143237143276%_
                               _%tl143238143278%_
                               _%e143239143281%_
                               _%hd143240143284%_
                               _%tl143241143286%_
                               _%e143242143289%_
                               _%hd143243143292%_
                               _%tl143244143294%_
                               _%e143245143297%_
                               _%hd143246143300%_
                               _%tl143247143302%_
                               _%__splice149779149780%_
                               _%target143248143305%_
                               _%tl143250143307%_)
                              (_%__kont149781149782%_))))
                      (_%__kont149781149782%_))
                  (_%__kont149781149782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149781149782%_))
                                              (_%__kont149781149782%_))
                                          (_%__kont149781149782%_))))
                                  (_%__kont149781149782%_))))
                          (_%__kont149781149782%_))))
                  (_%__kont149781149782%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self143040%_ _%stx143041%_)
        (letrec ((_%simplify143043%_
                  (lambda (_%code143128%_)
                    (let* ((_%code143129143147%_ _%code143128%_)
                           (_%else143131143155%_ (lambda () _%code143128%_))
                           (_%K143133143191%_
                            (lambda (_%expr143158%_ _%test143159%_)
                              (let* ((_%expr143160143168%_ _%expr143158%_)
                                     (_%else143162143176%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test143159%_
                                                    (cons _%expr143158%_
                                                          '())))))
                                     (_%K143164143181%_
                                      (lambda (_%exprs143179%_)
                                        (cons 'and
                                              (cons _%test143159%_
                                                    _%exprs143179%_)))))
                                (if (pair? _%expr143160143168%_)
                                    (let ((_%hd143165143184%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr143160143168%_)))
                                          (_%tl143166143186%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr143160143168%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd143165143184%_ 'and))
                                          (let ((_%exprs143189%_
                                                 _%tl143166143186%_))
                                            (_%K143164143181%_
                                             _%exprs143189%_))
                                          (_%else143162143176%_)))
                                    (_%else143162143176%_))))))
                      (if (pair? _%code143129143147%_)
                          (let ((_%hd143134143194%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code143129143147%_)))
                                (_%tl143135143196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code143129143147%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd143134143194%_ 'if))
                                (if (pair? _%tl143135143196%_)
                                    (let ((_%hd143136143199%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143135143196%_)))
                                          (_%tl143137143201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143135143196%_))))
                                      (let ((_%test143204%_
                                             _%hd143136143199%_))
                                        (if (pair? _%tl143137143201%_)
                                            (let ((_%hd143138143206%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143137143201%_)))
                                                  (_%tl143139143208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143137143201%_))))
                                              (let ((_%expr143211%_
                                                     _%hd143138143206%_))
                                                (if (pair? _%tl143139143208%_)
                                                    (let ((_%hd143140143213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143139143208%_)))
                                                          (_%tl143141143215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143139143208%_))))
                                                      (if (pair? _%hd143140143213%_)
                                                          (let ((_%hd143142143218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd143140143213%_)))
                        (_%tl143143143220%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd143140143213%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd143142143218%_ 'quote))
                        (if (pair? _%tl143143143220%_)
                            (let ((_%hd143144143223%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl143143143220%_)))
                                  (_%tl143145143225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl143143143220%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143144143223%_ '#f))
                                  (if (null? _%tl143145143225%_)
                                      (if (null? _%tl143141143215%_)
                                          (_%K143133143191%_
                                           _%expr143211%_
                                           _%test143204%_)
                                          (_%else143131143155%_))
                                      (_%else143131143155%_))
                                  (_%else143131143155%_)))
                            (_%else143131143155%_))
                        (_%else143131143155%_)))
                  (_%else143131143155%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143131143155%_))))
                                            (_%else143131143155%_))))
                                    (_%else143131143155%_))
                                (_%else143131143155%_)))
                          (_%else143131143155%_))))))
          (let* ((_%g143045143066%_
                  (lambda (_%g143046143063%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143046143063%_))))
                 (_%g143044143125%_
                  (lambda (_%g143046143069%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143046143069%_))
                        (let ((_%e143050143071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143046143069%_))))
                          (let ((_%hd143051143074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143050143071%_)))
                                (_%tl143052143076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143050143071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143052143076%_))
                                (let ((_%e143053143079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143052143076%_))))
                                  (let ((_%hd143054143082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143053143079%_)))
                                        (_%tl143055143084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143053143079%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143055143084%_))
                                        (let ((_%e143056143087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143055143084%_))))
                                          (let ((_%hd143057143090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143056143087%_)))
                                                (_%tl143058143092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143056143087%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143058143092%_))
                                                (let ((_%e143059143095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143058143092%_))))
                                                  (let ((_%hd143060143098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143059143095%_)))
                                                        (_%tl143061143100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143059143095%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143061143100%_))
                                                        ((lambda (_%L143103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L143104%_
                          _%L143105%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify143043%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self143040%_
                                       _%L143105%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self143040%_
                                             _%L143104%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143040%_
                                                   _%L143103%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp150275
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self143040%_
                                               _%L143105%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp150275
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self143040%_
                                            _%L143104%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self143040%_
                                                  _%L143103%_))
                                               '()))))))
                 _%hd143060143098%_
                 _%hd143057143090%_
                 _%hd143054143082%_)
                (_%g143045143066%_ _%g143046143069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g143045143066%_
                                                 _%g143046143069%_))))
                                        (_%g143045143066%_
                                         _%g143046143069%_))))
                                (_%g143045143066%_ _%g143046143069%_))))
                        (_%g143045143066%_ _%g143046143069%_)))))
            (_%g143044143125%_ _%stx143041%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self142988%_ _%stx142989%_)
        (let* ((_%g142991143004%_
                (lambda (_%g142992143001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142992143001%_))))
               (_%g142990143037%_
                (lambda (_%g142992143007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142992143007%_))
                      (let ((_%e142994143009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142992143007%_))))
                        (let ((_%hd142995143012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142994143009%_)))
                              (_%tl142996143014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142994143009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142996143014%_))
                              (let ((_%e142997143017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142996143014%_))))
                                (let ((_%hd142998143020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142997143017%_)))
                                      (_%tl142999143022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142997143017%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142999143022%_))
                                      ((lambda (_%L143025%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L143025%_)))
                                       _%hd142998143020%_)
                                      (_%g142991143004%_ _%g142992143007%_))))
                              (_%g142991143004%_ _%g142992143007%_))))
                      (_%g142991143004%_ _%g142992143007%_)))))
          (_%g142990143037%_ _%stx142989%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self142920%_ _%stx142921%_)
        (let* ((_%g142923142940%_
                (lambda (_%g142924142937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142924142937%_))))
               (_%g142922142985%_
                (lambda (_%g142924142943%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142924142943%_))
                      (let ((_%e142927142945%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142924142943%_))))
                        (let ((_%hd142928142948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142927142945%_)))
                              (_%tl142929142950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142927142945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142929142950%_))
                              (let ((_%e142930142953%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142929142950%_))))
                                (let ((_%hd142931142956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142930142953%_)))
                                      (_%tl142932142958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142930142953%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142932142958%_))
                                      (let ((_%e142933142961%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142932142958%_))))
                                        (let ((_%hd142934142964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142933142961%_)))
                                              (_%tl142935142966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142933142961%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142935142966%_))
                                              ((lambda (_%L142969%_
                                                        _%L142970%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L142970%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self142920%_ _%L142969%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142934142964%_
                                               _%hd142931142956%_)
                                              (_%g142923142940%_
                                               _%g142924142943%_))))
                                      (_%g142923142940%_ _%g142924142943%_))))
                              (_%g142923142940%_ _%g142924142943%_))))
                      (_%g142923142940%_ _%g142924142943%_)))))
          (_%g142922142985%_ _%stx142921%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self142731%_ _%stx142732%_)
        (let* ((_%g142734142751%_
                (lambda (_%g142735142748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142735142748%_))))
               (_%g142733142917%_
                (lambda (_%g142735142754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142735142754%_))
                      (let ((_%e142738142756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142735142754%_))))
                        (let ((_%hd142739142759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142738142756%_)))
                              (_%tl142740142761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142738142756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142740142761%_))
                              (let ((_%e142741142764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142740142761%_))))
                                (let ((_%hd142742142767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142741142764%_)))
                                      (_%tl142743142769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142741142764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142743142769%_))
                                      (let ((_%e142744142772%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142743142769%_))))
                                        (let ((_%hd142745142775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142744142772%_)))
                                              (_%tl142746142777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142744142772%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142746142777%_))
                                              ((lambda (_%L142780%_
                                                        _%L142781%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142731%_ _%L142780%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142731%_ _%L142781%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142796%_ ((_%rest142799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142781%_ (cons _%L142780%_ '())))
                                (_%bind142801%_ '())
                                (_%args142802%_ '()))
               (let* ((_%rest142803142811%_ _%rest142799%_)
                      (_%else142805142819%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142801%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args142802%_)
                                                 '()))))))
                      (_%K142807142905%_
                       (lambda (_%rest142822%_ _%e142823%_)
                         (let* ((_%__stx149823149824%_ _%e142823%_)
                                (_%g142828142846%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149823149824%_)))))
                           (let ((_%__kont149825149826%_
                                  (lambda ()
                                    (_%lp142796%_
                                     _%rest142822%_
                                     _%bind142801%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142823%_))
                                           _%args142802%_))))
                                 (_%__kont149827149828%_
                                  (lambda ()
                                    (_%lp142796%_
                                     _%rest142822%_
                                     _%bind142801%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142823%_))
                                           _%args142802%_))))
                                 (_%__kont149829149830%_
                                  (lambda ()
                                    (let ((_%tmp142853%_
                                           (let ((__tmp150276
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150276))))
                                      (_%lp142796%_
                                       _%rest142822%_
                                       (cons (cons _%tmp142853%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142823%_))
                                                         '()))
                                             _%bind142801%_)
                                       (cons _%tmp142853%_ _%args142802%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149823149824%_))
                                 (let ((_%e142830142884%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149823149824%_))))
                                   (let ((_%tl142832142889%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142830142884%_)))
                                         (_%hd142831142887%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142830142884%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142831142887%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142831142887%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142832142889%_))
                                                 (let ((_%e142833142892%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142832142889%_))))
                                                   (let ((_%tl142835142897%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142833142892%_)))
                                                         (_%hd142834142895%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142833142892%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142835142897%_))
                                                         (_%__kont149825149826%_)
                                                         (_%__kont149829149830%_))))
                                                 (_%__kont149829149830%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142831142887%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142832142889%_))
                                                     (let ((_%e142839142869%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142832142889%_))))
                                                       (let ((_%tl142841142874%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142839142869%_)))
                     (_%hd142840142872%_
                      (let () (declare (not safe)) (##car _%e142839142869%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142841142874%_))
                     (_%__kont149827149828%_)
                     (_%__kont149829149830%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149829149830%_))
                                                 (_%__kont149829149830%_)))
                                         (_%__kont149829149830%_))))
                                 (_%__kont149829149830%_)))))))
                 (if (pair? _%rest142803142811%_)
                     (let ((_%hd142808142908%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142803142811%_)))
                           (_%tl142809142910%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142803142811%_))))
                       (let* ((_%e142913%_ _%hd142808142908%_)
                              (_%rest142915%_ _%tl142809142910%_))
                         (_%K142807142905%_ _%rest142915%_ _%e142913%_)))
                     (_%else142805142819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142745142775%_
                                               _%hd142742142767%_)
                                              (_%g142734142751%_
                                               _%g142735142754%_))))
                                      (_%g142734142751%_ _%g142735142754%_))))
                              (_%g142734142751%_ _%g142735142754%_))))
                      (_%g142734142751%_ _%g142735142754%_)))))
          (_%g142733142917%_ _%stx142732%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self142542%_ _%stx142543%_)
        (let* ((_%g142545142562%_
                (lambda (_%g142546142559%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142546142559%_))))
               (_%g142544142728%_
                (lambda (_%g142546142565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142546142565%_))
                      (let ((_%e142549142567%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142546142565%_))))
                        (let ((_%hd142550142570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142549142567%_)))
                              (_%tl142551142572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142549142567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142551142572%_))
                              (let ((_%e142552142575%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142551142572%_))))
                                (let ((_%hd142553142578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142552142575%_)))
                                      (_%tl142554142580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142552142575%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142554142580%_))
                                      (let ((_%e142555142583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142554142580%_))))
                                        (let ((_%hd142556142586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142555142583%_)))
                                              (_%tl142557142588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142555142583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142557142588%_))
                                              ((lambda (_%L142591%_
                                                        _%L142592%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142542%_ _%L142591%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142542%_ _%L142592%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142607%_ ((_%rest142610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142592%_ (cons _%L142591%_ '())))
                                (_%bind142612%_ '())
                                (_%args142613%_ '()))
               (let* ((_%rest142614142622%_ _%rest142610%_)
                      (_%else142616142630%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142612%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args142613%_)
                                                 '()))))))
                      (_%K142618142716%_
                       (lambda (_%rest142633%_ _%e142634%_)
                         (let* ((_%__stx149869149870%_ _%e142634%_)
                                (_%g142639142657%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149869149870%_)))))
                           (let ((_%__kont149871149872%_
                                  (lambda ()
                                    (_%lp142607%_
                                     _%rest142633%_
                                     _%bind142612%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142634%_))
                                           _%args142613%_))))
                                 (_%__kont149873149874%_
                                  (lambda ()
                                    (_%lp142607%_
                                     _%rest142633%_
                                     _%bind142612%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142634%_))
                                           _%args142613%_))))
                                 (_%__kont149875149876%_
                                  (lambda ()
                                    (let ((_%tmp142664%_
                                           (let ((__tmp150277
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150277))))
                                      (_%lp142607%_
                                       _%rest142633%_
                                       (cons (cons _%tmp142664%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142634%_))
                                                         '()))
                                             _%bind142612%_)
                                       (cons _%tmp142664%_ _%args142613%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149869149870%_))
                                 (let ((_%e142641142695%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149869149870%_))))
                                   (let ((_%tl142643142700%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142641142695%_)))
                                         (_%hd142642142698%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142641142695%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142642142698%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142642142698%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142643142700%_))
                                                 (let ((_%e142644142703%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142643142700%_))))
                                                   (let ((_%tl142646142708%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142644142703%_)))
                                                         (_%hd142645142706%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142644142703%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142646142708%_))
                                                         (_%__kont149871149872%_)
                                                         (_%__kont149875149876%_))))
                                                 (_%__kont149875149876%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142642142698%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142643142700%_))
                                                     (let ((_%e142650142680%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142643142700%_))))
                                                       (let ((_%tl142652142685%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142650142680%_)))
                     (_%hd142651142683%_
                      (let () (declare (not safe)) (##car _%e142650142680%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142652142685%_))
                     (_%__kont149873149874%_)
                     (_%__kont149875149876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149875149876%_))
                                                 (_%__kont149875149876%_)))
                                         (_%__kont149875149876%_))))
                                 (_%__kont149875149876%_)))))))
                 (if (pair? _%rest142614142622%_)
                     (let ((_%hd142619142719%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142614142622%_)))
                           (_%tl142620142721%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142614142622%_))))
                       (let* ((_%e142724%_ _%hd142619142719%_)
                              (_%rest142726%_ _%tl142620142721%_))
                         (_%K142618142716%_ _%rest142726%_ _%e142724%_)))
                     (_%else142616142630%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142556142586%_
                                               _%hd142553142578%_)
                                              (_%g142545142562%_
                                               _%g142546142565%_))))
                                      (_%g142545142562%_ _%g142546142565%_))))
                              (_%g142545142562%_ _%g142546142565%_))))
                      (_%g142545142562%_ _%g142546142565%_)))))
          (_%g142544142728%_ _%stx142543%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self142458%_ _%stx142459%_)
        (let* ((_%g142461142482%_
                (lambda (_%g142462142479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142462142479%_))))
               (_%g142460142539%_
                (lambda (_%g142462142485%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142462142485%_))
                      (let ((_%e142466142487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142462142485%_))))
                        (let ((_%hd142467142490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142466142487%_)))
                              (_%tl142468142492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142466142487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142468142492%_))
                              (let ((_%e142469142495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142468142492%_))))
                                (let ((_%hd142470142498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142469142495%_)))
                                      (_%tl142471142500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142469142495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142471142500%_))
                                      (let ((_%e142472142503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142471142500%_))))
                                        (let ((_%hd142473142506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142472142503%_)))
                                              (_%tl142474142508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142472142503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142474142508%_))
                                              (let ((_%e142475142511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142474142508%_))))
                                                (let ((_%hd142476142514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142475142511%_)))
                                                      (_%tl142477142516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142475142511%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142477142516%_))
                                                      ((lambda (_%L142519%_
                                                                _%L142520%_
                                                                _%L142521%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142458%_ _%L142519%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142458%_
                                      _%L142520%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142458%_
                                            _%L142521%_))
                                         (cons ''#f '()))))))
               _%hd142476142514%_
               _%hd142473142506%_
               _%hd142470142498%_)
              (_%g142461142482%_ _%g142462142485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142461142482%_
                                               _%g142462142485%_))))
                                      (_%g142461142482%_ _%g142462142485%_))))
                              (_%g142461142482%_ _%g142462142485%_))))
                      (_%g142461142482%_ _%g142462142485%_)))))
          (_%g142460142539%_ _%stx142459%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self142358%_ _%stx142359%_)
        (let* ((_%g142361142386%_
                (lambda (_%g142362142383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142362142383%_))))
               (_%g142360142455%_
                (lambda (_%g142362142389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142362142389%_))
                      (let ((_%e142367142391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142362142389%_))))
                        (let ((_%hd142368142394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142367142391%_)))
                              (_%tl142369142396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142367142391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142369142396%_))
                              (let ((_%e142370142399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142369142396%_))))
                                (let ((_%hd142371142402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142370142399%_)))
                                      (_%tl142372142404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142370142399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142372142404%_))
                                      (let ((_%e142373142407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142372142404%_))))
                                        (let ((_%hd142374142410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142373142407%_)))
                                              (_%tl142375142412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142373142407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142375142412%_))
                                              (let ((_%e142376142415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142375142412%_))))
                                                (let ((_%hd142377142418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142376142415%_)))
                                                      (_%tl142378142420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142376142415%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142378142420%_))
                                                      (let ((_%e142379142423%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142378142420%_))))
                (let ((_%hd142380142426%_
                       (let () (declare (not safe)) (##car _%e142379142423%_)))
                      (_%tl142381142428%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142379142423%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142381142428%_))
                      ((lambda (_%L142431%_
                                _%L142432%_
                                _%L142433%_
                                _%L142434%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142358%_
                                        _%L142432%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142358%_
                                              _%L142431%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142358%_
                                                    _%L142433%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142358%_
                                                          _%L142434%_))
                                                       (cons ''#f '())))))))
                       _%hd142380142426%_
                       _%hd142377142418%_
                       _%hd142374142410%_
                       _%hd142371142402%_)
                      (_%g142361142386%_ _%g142362142389%_))))
              (_%g142361142386%_ _%g142362142389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142361142386%_
                                               _%g142362142389%_))))
                                      (_%g142361142386%_ _%g142362142389%_))))
                              (_%g142361142386%_ _%g142362142389%_))))
                      (_%g142361142386%_ _%g142362142389%_)))))
          (_%g142360142455%_ _%stx142359%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self142274%_ _%stx142275%_)
        (let* ((_%g142277142298%_
                (lambda (_%g142278142295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142278142295%_))))
               (_%g142276142355%_
                (lambda (_%g142278142301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142278142301%_))
                      (let ((_%e142282142303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142278142301%_))))
                        (let ((_%hd142283142306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142282142303%_)))
                              (_%tl142284142308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142282142303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142284142308%_))
                              (let ((_%e142285142311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142284142308%_))))
                                (let ((_%hd142286142314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142285142311%_)))
                                      (_%tl142287142316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142285142311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142287142316%_))
                                      (let ((_%e142288142319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142287142316%_))))
                                        (let ((_%hd142289142322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142288142319%_)))
                                              (_%tl142290142324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142288142319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142290142324%_))
                                              (let ((_%e142291142327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142290142324%_))))
                                                (let ((_%hd142292142330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142291142327%_)))
                                                      (_%tl142293142332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142291142327%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142293142332%_))
                                                      ((lambda (_%L142335%_
                                                                _%L142336%_
                                                                _%L142337%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142274%_ _%L142335%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142274%_
                                      _%L142336%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142274%_
                                            _%L142337%_))
                                         (cons ''#f '()))))))
               _%hd142292142330%_
               _%hd142289142322%_
               _%hd142286142314%_)
              (_%g142277142298%_ _%g142278142301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142277142298%_
                                               _%g142278142301%_))))
                                      (_%g142277142298%_ _%g142278142301%_))))
                              (_%g142277142298%_ _%g142278142301%_))))
                      (_%g142277142298%_ _%g142278142301%_)))))
          (_%g142276142355%_ _%stx142275%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self142174%_ _%stx142175%_)
        (let* ((_%g142177142202%_
                (lambda (_%g142178142199%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142178142199%_))))
               (_%g142176142271%_
                (lambda (_%g142178142205%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142178142205%_))
                      (let ((_%e142183142207%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142178142205%_))))
                        (let ((_%hd142184142210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142183142207%_)))
                              (_%tl142185142212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142183142207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142185142212%_))
                              (let ((_%e142186142215%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142185142212%_))))
                                (let ((_%hd142187142218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142186142215%_)))
                                      (_%tl142188142220%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142186142215%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142188142220%_))
                                      (let ((_%e142189142223%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142188142220%_))))
                                        (let ((_%hd142190142226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142189142223%_)))
                                              (_%tl142191142228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142189142223%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142191142228%_))
                                              (let ((_%e142192142231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142191142228%_))))
                                                (let ((_%hd142193142234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142192142231%_)))
                                                      (_%tl142194142236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142192142231%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142194142236%_))
                                                      (let ((_%e142195142239%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142194142236%_))))
                (let ((_%hd142196142242%_
                       (let () (declare (not safe)) (##car _%e142195142239%_)))
                      (_%tl142197142244%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142195142239%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142197142244%_))
                      ((lambda (_%L142247%_
                                _%L142248%_
                                _%L142249%_
                                _%L142250%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142174%_
                                        _%L142248%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142174%_
                                              _%L142247%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142174%_
                                                    _%L142249%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142174%_
                                                          _%L142250%_))
                                                       (cons ''#f '())))))))
                       _%hd142196142242%_
                       _%hd142193142234%_
                       _%hd142190142226%_
                       _%hd142187142218%_)
                      (_%g142177142202%_ _%g142178142205%_))))
              (_%g142177142202%_ _%g142178142205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142177142202%_
                                               _%g142178142205%_))))
                                      (_%g142177142202%_ _%g142178142205%_))))
                              (_%g142177142202%_ _%g142178142205%_))))
                      (_%g142177142202%_ _%g142178142205%_)))))
          (_%g142176142271%_ _%stx142175%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self141969%_ _%stx141970%_)
        (let* ((_%g141972141993%_
                (lambda (_%g141973141990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141973141990%_))))
               (_%g141971142171%_
                (lambda (_%g141973141996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141973141996%_))
                      (let ((_%e141977141998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141973141996%_))))
                        (let ((_%hd141978142001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141977141998%_)))
                              (_%tl141979142003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141977141998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141979142003%_))
                              (let ((_%e141980142006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141979142003%_))))
                                (let ((_%hd141981142009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141980142006%_)))
                                      (_%tl141982142011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141980142006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141982142011%_))
                                      (let ((_%e141983142014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141982142011%_))))
                                        (let ((_%hd141984142017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141983142014%_)))
                                              (_%tl141985142019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141983142014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141985142019%_))
                                              (let ((_%e141986142022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141985142019%_))))
                                                (let ((_%hd141987142025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141986142022%_)))
                                                      (_%tl141988142027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141986142022%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141988142027%_))
                                                      ((lambda (_%L142030%_
                                                                _%L142031%_
                                                                _%L142032%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self141969%_
                                    _%L142030%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141969%_
                                          _%L142031%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp142050%_ ((_%rest142053%_
                                         (cons _%L142031%_
                                               (cons _%L142030%_ '())))
                                        (_%bind142055%_ '())
                                        (_%args142056%_ '()))
                       (let* ((_%rest142057142065%_ _%rest142053%_)
                              (_%else142059142073%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind142055%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp150278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp150278 _%args142056%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K142061142159%_
                               (lambda (_%rest142076%_ _%e142077%_)
                                 (let* ((_%__stx149915149916%_ _%e142077%_)
                                        (_%g142082142100%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149915149916%_)))))
                                   (let ((_%__kont149917149918%_
                                          (lambda ()
                                            (_%lp142050%_
                                             _%rest142076%_
                                             _%bind142055%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e142077%_))
                                                   _%args142056%_))))
                                         (_%__kont149919149920%_
                                          (lambda ()
                                            (_%lp142050%_
                                             _%rest142076%_
                                             _%bind142055%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e142077%_))
                                                   _%args142056%_))))
                                         (_%__kont149921149922%_
                                          (lambda ()
                                            (let ((_%tmp142107%_
                                                   (let ((__tmp150279
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp150279))))
                                              (_%lp142050%_
                                               _%rest142076%_
                                               (cons (cons _%tmp142107%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e142077%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142055%_)
                                               (cons _%tmp142107%_
                                                     _%args142056%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149915149916%_))
                                         (let ((_%e142084142138%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149915149916%_))))
                                           (let ((_%tl142086142143%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142084142138%_)))
                                                 (_%hd142085142141%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142084142138%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd142085142141%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd142085142141%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl142086142143%_))
                                                         (let ((_%e142087142146%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl142086142143%_))))
                   (let ((_%tl142089142151%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142087142146%_)))
                         (_%hd142088142149%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142087142146%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142089142151%_))
                         (_%__kont149917149918%_)
                         (_%__kont149921149922%_))))
                 (_%__kont149921149922%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd142085142141%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142086142143%_))
                     (let ((_%e142093142123%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142086142143%_))))
                       (let ((_%tl142095142128%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142093142123%_)))
                             (_%hd142094142126%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142093142123%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142095142128%_))
                             (_%__kont149919149920%_)
                             (_%__kont149921149922%_))))
                     (_%__kont149921149922%_))
                 (_%__kont149921149922%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149921149922%_))))
                                         (_%__kont149921149922%_)))))))
                         (if (pair? _%rest142057142065%_)
                             (let ((_%hd142062142162%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest142057142065%_)))
                                   (_%tl142063142164%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest142057142065%_))))
                               (let* ((_%e142167%_ _%hd142062142162%_)
                                      (_%rest142169%_ _%tl142063142164%_))
                                 (_%K142061142159%_
                                  _%rest142169%_
                                  _%e142167%_)))
                             (_%else142059142073%_))))))
               _%hd141987142025%_
               _%hd141984142017%_
               _%hd141981142009%_)
              (_%g141972141993%_ _%g141973141996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141972141993%_
                                               _%g141973141996%_))))
                                      (_%g141972141993%_ _%g141973141996%_))))
                              (_%g141972141993%_ _%g141973141996%_))))
                      (_%g141972141993%_ _%g141973141996%_)))))
          (_%g141971142171%_ _%stx141970%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self141748%_ _%stx141749%_)
        (let* ((_%g141751141776%_
                (lambda (_%g141752141773%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141752141773%_))))
               (_%g141750141966%_
                (lambda (_%g141752141779%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141752141779%_))
                      (let ((_%e141757141781%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141752141779%_))))
                        (let ((_%hd141758141784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141757141781%_)))
                              (_%tl141759141786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141757141781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141759141786%_))
                              (let ((_%e141760141789%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141759141786%_))))
                                (let ((_%hd141761141792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141760141789%_)))
                                      (_%tl141762141794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141760141789%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141762141794%_))
                                      (let ((_%e141763141797%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141762141794%_))))
                                        (let ((_%hd141764141800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141763141797%_)))
                                              (_%tl141765141802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141763141797%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141765141802%_))
                                              (let ((_%e141766141805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141765141802%_))))
                                                (let ((_%hd141767141808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141766141805%_)))
                                                      (_%tl141768141810%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141766141805%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141768141810%_))
                                                      (let ((_%e141769141813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141768141810%_))))
                (let ((_%hd141770141816%_
                       (let () (declare (not safe)) (##car _%e141769141813%_)))
                      (_%tl141771141818%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141769141813%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141771141818%_))
                      ((lambda (_%L141821%_
                                _%L141822%_
                                _%L141823%_
                                _%L141824%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141748%_
                                            _%L141822%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141748%_
                                                  _%L141821%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141748%_
                                                        _%L141823%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp141845%_ ((_%rest141848%_
                                                 (cons _%L141823%_
                                                       (cons _%L141821%_
                                                             (cons _%L141822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind141850%_ '())
                                                (_%args141851%_ '()))
                               (let* ((_%rest141852141860%_ _%rest141848%_)
                                      (_%else141854141868%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind141850%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150280 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp150280 _%args141851%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K141856141954%_
                                       (lambda (_%rest141871%_ _%e141872%_)
                                         (let* ((_%__stx149961149962%_
                                                 _%e141872%_)
                                                (_%g141877141895%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx149961149962%_)))))
                                           (let ((_%__kont149963149964%_
                                                  (lambda ()
                                                    (_%lp141845%_
                                                     _%rest141871%_
                                                     _%bind141850%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141872%_))
                                                           _%args141851%_))))
                                                 (_%__kont149965149966%_
                                                  (lambda ()
                                                    (_%lp141845%_
                                                     _%rest141871%_
                                                     _%bind141850%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141872%_))
                                                           _%args141851%_))))
                                                 (_%__kont149967149968%_
                                                  (lambda ()
                                                    (let ((_%tmp141902%_
                                                           (let ((__tmp150281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp150281))))
              (_%lp141845%_
               _%rest141871%_
               (cons (cons _%tmp141902%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e141872%_))
                                 '()))
                     _%bind141850%_)
               (cons _%tmp141902%_ _%args141851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx149961149962%_))
                                                 (let ((_%e141879141933%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx149961149962%_))))
                                                   (let ((_%tl141881141938%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141879141933%_)))
                                                         (_%hd141880141936%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141879141933%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd141880141936%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd141880141936%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl141881141938%_))
                         (let ((_%e141882141941%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl141881141938%_))))
                           (let ((_%tl141884141946%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e141882141941%_)))
                                 (_%hd141883141944%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e141882141941%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141884141946%_))
                                 (_%__kont149963149964%_)
                                 (_%__kont149967149968%_))))
                         (_%__kont149967149968%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd141880141936%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl141881141938%_))
                             (let ((_%e141888141918%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl141881141938%_))))
                               (let ((_%tl141890141923%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e141888141918%_)))
                                     (_%hd141889141921%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e141888141918%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl141890141923%_))
                                     (_%__kont149965149966%_)
                                     (_%__kont149967149968%_))))
                             (_%__kont149967149968%_))
                         (_%__kont149967149968%_)))
                 (_%__kont149967149968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149967149968%_)))))))
                                 (if (pair? _%rest141852141860%_)
                                     (let ((_%hd141857141957%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest141852141860%_)))
                                           (_%tl141858141959%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest141852141860%_))))
                                       (let* ((_%e141962%_ _%hd141857141957%_)
                                              (_%rest141964%_
                                               _%tl141858141959%_))
                                         (_%K141856141954%_
                                          _%rest141964%_
                                          _%e141962%_)))
                                     (_%else141854141868%_))))))
                       _%hd141770141816%_
                       _%hd141767141808%_
                       _%hd141764141800%_
                       _%hd141761141792%_)
                      (_%g141751141776%_ _%g141752141779%_))))
              (_%g141751141776%_ _%g141752141779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141751141776%_
                                               _%g141752141779%_))))
                                      (_%g141751141776%_ _%g141752141779%_))))
                              (_%g141751141776%_ _%g141752141779%_))))
                      (_%g141751141776%_ _%g141752141779%_)))))
          (_%g141750141966%_ _%stx141749%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self141587%_ _%stx141588%_)
        (letrec ((_%import-set-template141590%_
                  (lambda (_%in141693%_ _%phi141694%_)
                    (let ((_%iphi141696%_
                           (fx+ _%phi141694%_
                                (##direct-structure-ref
                                 _%in141693%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports141697%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in141693%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp141699%_ ((_%rest141701%_ _%imports141697%_)
                                         (_%r141702%_ '()))
                        (let* ((_%rest141703141711%_ _%rest141701%_)
                               (_%else141705141719%_ (lambda () _%r141702%_))
                               (_%K141707141736%_
                                (lambda (_%rest141722%_ _%in141723%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in141723%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi141696%_))
                                          (_%lp141699%_
                                           _%rest141722%_
                                           (cons _%in141723%_ _%r141702%_))
                                          (_%lp141699%_
                                           _%rest141722%_
                                           _%r141702%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in141723%_
                                             'gx#module-import::t))
                                          (let ((_%iphi141727%_
                                                 (fx+ _%phi141694%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in141723%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi141727%_))
                                                (_%lp141699%_
                                                 _%rest141722%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in141723%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r141702%_))
                                                (_%lp141699%_
                                                 _%rest141722%_
                                                 _%r141702%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in141723%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi141730%_
                                                     (fx+ _%iphi141696%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in141723%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi141730%_))
                                                    (_%lp141699%_
                                                     _%rest141722%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141723%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r141702%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi141730%_))
                                                        (_%lp141699%_
                                                         _%rest141722%_
                                                         (let ((__tmp150282
                                                                (_%import-set-template141590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in141723%_
                         _%iphi141696%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r141702%_ __tmp150282)))
                (_%lp141699%_ _%rest141722%_ _%r141702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp141699%_
                                               _%rest141722%_
                                               _%r141702%_)))))))
                          (if (pair? _%rest141703141711%_)
                              (let ((_%hd141708141739%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest141703141711%_)))
                                    (_%tl141709141741%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest141703141711%_))))
                                (let* ((_%in141744%_ _%hd141708141739%_)
                                       (_%rest141746%_ _%tl141709141741%_))
                                  (_%K141707141736%_
                                   _%rest141746%_
                                   _%in141744%_)))
                              (_%else141705141719%_))))))))
          (let* ((_%g141592141602%_
                  (lambda (_%g141593141599%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141593141599%_))))
                 (_%g141591141690%_
                  (lambda (_%g141593141605%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141593141605%_))
                        (let ((_%e141595141607%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141593141605%_))))
                          (let ((_%hd141596141610%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141595141607%_)))
                                (_%tl141597141612%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141595141607%_))))
                            ((lambda (_%L141615%_)
                               (let ((_%ht141626%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp141628%_ ((_%rest141630%_
                                                     _%L141615%_)
                                                    (_%loads141631%_ '()))
                                   (letrec ((_%K141633%_
                                             (lambda (_%ctx141683%_
                                                      _%rest141684%_)
                                               (let ((_%id141686%_
                                                      (##structure-ref
                                                       _%ctx141683%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht141626%_
                                                        _%id141686%_))
                                                     (_%lp141628%_
                                                      _%rest141684%_
                                                      _%loads141631%_)
                                                     (let ((_%rt141688%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id141686%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht141626%_
                                                          _%id141686%_
                                                          _%rt141688%_))
                                                       (_%lp141628%_
                                                        _%rest141684%_
                                                        (cons _%rt141688%_
                                                              _%loads141631%_))))))))
                                     (let* ((_%rest141634141642%_
                                             _%rest141630%_)
                                            (_%else141636141654%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp150284
                                                            (lambda (_%g141649141651%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141649141651%_)))
                   (__tmp150283 (reverse _%loads141631%_)))
               (declare (not safe))
               (##map __tmp150284 __tmp150283)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K141638141671%_
                                             (lambda (_%rest141657%_
                                                      _%in141658%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in141658%_
                                                      'gx#module-context::t))
                                                   (_%K141633%_
                                                    _%in141658%_
                                                    _%rest141657%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in141658%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in141658%_
                               '3
                               '#f
                               '#f)))
                   (_%K141633%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in141658%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest141657%_)
                   (_%lp141628%_ _%rest141657%_ _%loads141631%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in141658%_
                      'gx#import-set::t))
                   (let ((_%phi141663%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141658%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi141663%_)
                         (_%K141633%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141658%_
                             '1
                             '#f
                             '#f))
                          _%rest141657%_)
                         (if (fxpositive? _%phi141663%_)
                             (let ((_%deps141667%_
                                    (_%import-set-template141590%_
                                     _%in141658%_
                                     '0)))
                               (_%lp141628%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest141657%_
                                   _%deps141667%_))
                                _%loads141631%_))
                             (_%lp141628%_ _%rest141657%_ _%loads141631%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx141588%_
                      _%in141658%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest141634141642%_)
                                           (let ((_%hd141639141674%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest141634141642%_)))
                                                 (_%tl141640141676%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest141634141642%_))))
                                             (let* ((_%in141679%_
                                                     _%hd141639141674%_)
                                                    (_%rest141681%_
                                                     _%tl141640141676%_))
                                               (_%K141638141671%_
                                                _%rest141681%_
                                                _%in141679%_)))
                                           (_%else141636141654%_)))))))
                             _%tl141597141612%_)))
                        (_%g141592141602%_ _%g141593141605%_)))))
            (_%g141591141690%_ _%stx141588%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self141400%_ _%stx141401%_)
        (letrec ((_%add-lift!141403%_
                  (lambda (_%expr141585%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr141585%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote141404%_
                  (lambda (_%id141582%_ _%marks141583%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id141582%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks141583%_
                                                        '()))))))))
                 (_%generate-simple141405%_
                  (lambda (_%stxq141577%_)
                    (let ((_%gid141579%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid141580%_
                           (gxc#generate-runtime-identifier _%stxq141577%_)))
                      (_%add-lift!141403%_
                       (cons 'define
                             (cons _%gid141579%_
                                   (cons (_%generate-syntax-quote141404%_
                                          _%qid141580%_
                                          ''())
                                         '()))))
                      (let ((__tmp150285
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150285 _%stxq141577%_ _%gid141579%_))
                      _%gid141579%_)))
                 (_%generate-serialized141406%_
                  (lambda (_%stxq141567%_ _%marks141568%_)
                    (let* ((_%mark-refs141570%_
                            (map _%generate-mark141407%_ _%marks141568%_))
                           (_%gid141572%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid141574%_
                            (gxc#generate-runtime-identifier _%stxq141567%_)))
                      (_%add-lift!141403%_
                       (cons 'define
                             (cons _%gid141572%_
                                   (cons (_%generate-syntax-quote141404%_
                                          _%qid141574%_
                                          (cons 'list _%mark-refs141570%_))
                                         '()))))
                      (let ((__tmp150286
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150286 _%stxq141567%_ _%gid141572%_))
                      _%gid141572%_)))
                 (_%generate-mark141407%_
                  (lambda (_%mark141552%_)
                    (let ((_%$e141554%_
                           (let ((__tmp150287
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp150287 _%mark141552%_))))
                      (if _%$e141554%_
                          _%$e141554%_
                          (let* ((_%gid141558%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr141560%_
                                  (_%serialize-mark141408%_ _%mark141552%_))
                                 (_%ctx141562%_
                                  (let ((__tmp150288
                                         (##structure-ref
                                          _%mark141552%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp150288)))
                                 (_%ctx-ref141564%_
                                  (if (eq? _%ctx141562%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref141409%_
                                                               _%ctx141562%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp150289
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150289
                               _%mark141552%_
                               _%gid141558%_))
                            (_%add-lift!141403%_
                             (cons 'define
                                   (cons _%gid141558%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr141560%_ '()))
                   (cons _%ctx-ref141564%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid141558%_)))))
                 (_%serialize-mark141408%_
                  (lambda (_%mark141499%_)
                    (letrec ((_%quote-e141501%_
                              (lambda (_%sym141550%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym141550%_))
                                    _%sym141550%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym141550%_))))))
                      (let* ((_%mark141502141511%_ _%mark141499%_)
                             (_%E141504141515%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark141502141511%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K141505141527%_
                              (lambda (_%trace141518%_
                                       _%phi141519%_
                                       _%ctx141520%_
                                       _%subst141521%_)
                                (let ((_%subs141523%_
                                       (if _%subst141521%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst141521%_))
                                           '())))
                                  (cons _%phi141519%_
                                        (map (lambda (_%pair141525%_)
                                               (cons (_%quote-e141501%_
                                                      (car _%pair141525%_))
                                                     (_%quote-e141501%_
                                                      (cdr _%pair141525%_))))
                                             _%subs141523%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark141502141511%_
                               'gx#expander-mark::t))
                            (let* ((_%e141506141530%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141502141511%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst141533%_ _%e141506141530%_)
                                   (_%e141507141535%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141502141511%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx141538%_ _%e141507141535%_)
                                   (_%e141508141540%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141502141511%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi141543%_ _%e141508141540%_)
                                   (_%e141509141545%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141502141511%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace141548%_ _%e141509141545%_))
                              (_%K141505141527%_
                               _%trace141548%_
                               _%phi141543%_
                               _%ctx141538%_
                               _%subst141533%_))
                            (_%E141504141515%_))))))
                 (_%context-ref141409%_
                  (lambda (_%ctx141486%_)
                    (if (let ((__tmp150290
                               (##structure-ref
                                _%ctx141486%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp150290
                           'gx#module-context::t))
                        (let ((_%ctx-ref141488%_
                               (_%context-ref-nested141411%_ _%ctx141486%_))
                              (_%ctx-origin141489%_
                               (_%context-ref-origin141410%_ _%ctx141486%_))
                              (_%origin141490%_
                               (_%context-ref-origin141410%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin141490%_ _%ctx-origin141489%_)
                              (let ((_%ref141492%_
                                     (_%context-ref-nested141411%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp141494%_ ((_%ref141496%_
                                                    (cdr _%ref141492%_))
                                                   (_%ctx-ref141497%_
                                                    (cdr _%ctx-ref141488%_)))
                                  (if (and (pair? _%ref141496%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref141496%_))
                                                (car _%ctx-ref141497%_)))
                                      (_%lp141494%_
                                       (cdr _%ref141496%_)
                                       (cdr _%ctx-ref141497%_))
                                      (cons '#f _%ctx-ref141497%_))))
                              _%ctx-ref141488%_))
                        (let ((__tmp150291
                               (##structure-ref
                                _%ctx141486%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp150291)))))
                 (_%context-ref-origin141410%_
                  (lambda (_%ctx141478%_)
                    (let _%lp141480%_ ((_%ctx141482%_ _%ctx141478%_))
                      (let ((_%super141484%_
                             (##structure-ref
                              _%ctx141482%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141484%_
                               'gx#module-context::t))
                            (_%lp141480%_ _%super141484%_)
                            _%ctx141482%_)))))
                 (_%context-ref-nested141411%_
                  (lambda (_%ctx141469%_)
                    (let _%lp141471%_ ((_%ctx141473%_ _%ctx141469%_)
                                       (_%r141474%_ '()))
                      (let ((_%super141476%_
                             (##structure-ref
                              _%ctx141473%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141476%_
                               'gx#module-context::t))
                            (_%lp141471%_
                             _%super141476%_
                             (cons (car (##structure-ref
                                         _%ctx141473%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r141474%_))
                            (cons (let ((__tmp150292
                                         (##structure-ref
                                          _%ctx141473%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp150292))
                                  _%r141474%_)))))))
          (let* ((_%g141413141426%_
                  (lambda (_%g141414141423%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141414141423%_))))
                 (_%g141412141466%_
                  (lambda (_%g141414141429%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141414141429%_))
                        (let ((_%e141416141431%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141414141429%_))))
                          (let ((_%hd141417141434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141416141431%_)))
                                (_%tl141418141436%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141416141431%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141418141436%_))
                                (let ((_%e141419141439%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141418141436%_))))
                                  (let ((_%hd141420141442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141419141439%_)))
                                        (_%tl141421141444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141419141439%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141421141444%_))
                                        ((lambda (_%L141447%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L141447%_))
                                               (let ((_%$e141460%_
                                                      (let ((__tmp150293
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp150293 _%L141447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e141460%_
                                                     _%$e141460%_
                                                     (let ((_%marks141464%_
                                                            (##direct-structure-ref
                                                             _%L141447%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks141464%_)
                                                           (_%generate-simple141405%_
                                                            _%L141447%_)
                                                           (_%generate-serialized141406%_
                                                            _%L141447%_
                                                            _%marks141464%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L141447%_))))
                                         _%hd141420141442%_)
                                        (_%g141413141426%_
                                         _%g141414141429%_))))
                                (_%g141413141426%_ _%g141414141429%_))))
                        (_%g141413141426%_ _%g141414141429%_)))))
            (_%g141412141466%_ _%stx141401%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self141332%_ _%stx141333%_)
        (let* ((_%g141335141352%_
                (lambda (_%g141336141349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141336141349%_))))
               (_%g141334141397%_
                (lambda (_%g141336141355%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141336141355%_))
                      (let ((_%e141339141357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141336141355%_))))
                        (let ((_%hd141340141360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141339141357%_)))
                              (_%tl141341141362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141339141357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141341141362%_))
                              (let ((_%e141342141365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141341141362%_))))
                                (let ((_%hd141343141368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141342141365%_)))
                                      (_%tl141344141370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141342141365%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141344141370%_))
                                      (let ((_%e141345141373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141344141370%_))))
                                        (let ((_%hd141346141376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141345141373%_)))
                                              (_%tl141347141378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141345141373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141347141378%_))
                                              ((lambda (_%L141381%_
                                                        _%L141382%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L141382%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141332%_ _%L141381%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141346141376%_
                                               _%hd141343141368%_)
                                              (_%g141335141352%_
                                               _%g141336141355%_))))
                                      (_%g141335141352%_ _%g141336141355%_))))
                              (_%g141335141352%_ _%g141336141355%_))))
                      (_%g141335141352%_ _%g141336141355%_)))))
          (_%g141334141397%_ _%stx141333%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self141281%_ _%stx141282%_)
        (let* ((_%g141284141294%_
                (lambda (_%g141285141291%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141285141291%_))))
               (_%g141283141329%_
                (lambda (_%g141285141297%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141285141297%_))
                      (let ((_%e141287141299%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141285141297%_))))
                        (let ((_%hd141288141302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141287141299%_)))
                              (_%tl141289141304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141287141299%_))))
                          ((lambda (_%L141307%_)
                             (let* ((_%c-body141321%_
                                     (map (lambda (_%g141316141318%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141281%_
                                               _%g141316141318%_)))
                                          _%L141307%_))
                                    (_%c-body141326%_
                                     (let ((__tmp150294
                                            (lambda (_%$obj141323%_)
                                              (not (eq? _%$obj141323%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp150294
                                        _%c-body141321%_))))
                               (cons '%#begin _%c-body141326%_)))
                           _%tl141289141304%_)))
                      (_%g141284141294%_ _%g141285141297%_)))))
          (_%g141283141329%_ _%stx141282%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self141186%_ _%stx141187%_)
        (let* ((_%g141189141199%_
                (lambda (_%g141190141196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141190141196%_))))
               (_%g141188141278%_
                (lambda (_%g141190141202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141190141202%_))
                      (let ((_%e141192141204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141190141202%_))))
                        (let ((_%hd141193141207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141192141204%_)))
                              (_%tl141194141209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141192141204%_))))
                          ((lambda (_%L141212%_)
                             (let* ((_%phi141222%_
                                     (let ((__tmp150295
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp150295 '1)))
                                    (_%block141224%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self141186%_ 'state))
                                      _%phi141222%_))
                                    (_%compiled141227%_
                                     (let ((__tmp150296
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self141186%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L141212%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp150296
                                        gx#current-expander-phi
                                        _%phi141222%_)))
                                    (_%g141230141240%_
                                     (lambda (_%g141231141237%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g141231141237%_))))
                                    (_%g141229141275%_
                                     (lambda (_%g141231141243%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g141231141243%_))
                                           (let ((_%e141233141245%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g141231141243%_))))
                                             (let ((_%hd141234141248%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141233141245%_)))
                                                   (_%tl141235141250%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141233141245%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141234141248%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd141234141248%_))
                                                       ((lambda (_%L141253%_)
                                                          (let ((_%c-body141270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj141267%_)
                                   (not (eq? _%$obj141267%_ '#!void)))
                                 _%L141253%_)))
                    (if _%block141224%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block141224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body141270%_))
                        (if (null? _%c-body141270%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body141270%_)))))
                _%tl141235141250%_)
               (_%g141230141240%_ _%g141231141243%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g141230141240%_
                                                    _%g141231141243%_))))
                                           (_%g141230141240%_
                                            _%g141231141243%_)))))
                               (_%g141229141275%_ _%compiled141227%_)))
                           _%tl141194141209%_)))
                      (_%g141189141199%_ _%g141190141202%_)))))
          (_%g141188141278%_ _%stx141187%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self141117%_ _%stx141118%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self141117%_ 'state)))
        (let* ((_%g141120141134%_
                (lambda (_%g141121141131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141121141131%_))))
               (_%g141119141183%_
                (lambda (_%g141121141137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141121141137%_))
                      (let ((_%e141124141139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141121141137%_))))
                        (let ((_%hd141125141142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141124141139%_)))
                              (_%tl141126141144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141124141139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141126141144%_))
                              (let ((_%e141127141147%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141126141144%_))))
                                (let ((_%hd141128141150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141127141147%_)))
                                      (_%tl141129141152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141127141147%_))))
                                  ((lambda (_%L141155%_ _%L141156%_)
                                     (let ((_%key141169%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L141156%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key141169%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx141118%_
                                              _%L141156%_
                                              _%key141169%_)))
                                       (let* ((_%ctx141171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L141156%_)))
                                              (_%code141174%_
                                               (let ((__tmp150297
                                                      (lambda ()
                                                        (let ((__tmp150298
                                                               (##structure-ref
                                                                _%ctx141171%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self141117%_
                                                           __tmp150298)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp150297
                                                  gx#current-expander-context
                                                  _%ctx141171%_)))
                                              (_%rt141176%_
                                               (let ((__tmp150299
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp150299
                                                  _%ctx141171%_)))
                                              (_%loader141178%_
                                               (if _%rt141176%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt141176%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid141180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L141156%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self141117%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid141180%_
                                                     (cons _%code141174%_
                                                           _%loader141178%_))))))
                                   _%tl141129141152%_
                                   _%hd141128141150%_)))
                              (_%g141120141134%_ _%g141121141137%_))))
                      (_%g141120141134%_ _%g141121141137%_)))))
          (_%g141119141183%_ _%stx141118%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx141104%_ _%context-chain141105%_)
        (let _%lp141107%_ ((_%ctx141109%_ _%ctx141104%_) (_%path141110%_ '()))
          (let ((_%super141112%_
                 (##structure-ref _%ctx141109%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super141112%_ _%context-chain141105%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx141109%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path141110%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super141112%_
                       'gx#module-context::t))
                    (_%lp141107%_
                     _%super141112%_
                     (cons (car (##structure-ref
                                 _%ctx141109%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path141110%_))
                    (cons (let ((__tmp150300
                                 (##structure-ref
                                  _%ctx141109%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp150300))
                          _%path141110%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp141097%_ ((_%ctx141099%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r141100%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx141099%_ 'gx#module-context::t))
              (_%lp141097%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx141099%_ '3 '#f '#f))
               (cons _%ctx141099%_ _%r141100%_))
              _%r141100%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self140860%_ _%stx140861%_)
        (letrec* ((_%context-chain140863%_ (gxc#current-context-chain))
                  (_%make-import-spec140864%_
                   (lambda (_%in141033%_)
                     (let* ((_%in141034141046%_ _%in141033%_)
                            (_%E141036141050%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in141034141046%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K141037141060%_
                             (lambda (_%phi141053%_
                                      _%name141054%_
                                      _%src-name141055%_
                                      _%src-phi141056%_
                                      _%src-key141057%_
                                      _%src-ctx141058%_)
                               (cons _%phi141053%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name141054%_)
                                           (cons _%src-phi141056%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name141055%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in141034141046%_
                              'gx#module-import::t))
                           (let ((_%e141038141063%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in141034141046%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e141038141063%_
                                    'gx#module-export::t))
                                 (let* ((_%e141041141066%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141038141063%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx141069%_ _%e141041141066%_)
                                        (_%e141042141071%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141038141063%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key141074%_ _%e141042141071%_)
                                        (_%e141043141076%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141038141063%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi141079%_ _%e141043141076%_)
                                        (_%e141044141081%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141038141063%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name141084%_ _%e141044141081%_)
                                        (_%e141039141086%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in141034141046%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name141089%_ _%e141039141086%_)
                                        (_%e141040141091%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in141034141046%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi141094%_ _%e141040141091%_))
                                   (_%K141037141060%_
                                    _%phi141094%_
                                    _%name141089%_
                                    _%src-name141084%_
                                    _%src-phi141079%_
                                    _%src-key141074%_
                                    _%src-ctx141069%_))
                                 (_%E141036141050%_)))
                           (_%E141036141050%_)))))
                  (_%make-import-path140865%_
                   (lambda (_%ctx141031%_)
                     (gxc#generate-meta-import-path
                      _%ctx141031%_
                      _%context-chain140863%_)))
                  (_%make-import-spec-in140866%_
                   (lambda (_%ctx141028%_ _%in141029%_)
                     (cons 'spec:
                           (cons (_%make-import-path140865%_ _%ctx141028%_)
                                 (reverse _%in141029%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self140860%_ 'state)))
          (let* ((_%g140868140878%_
                  (lambda (_%g140869140875%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140869140875%_))))
                 (_%g140867141025%_
                  (lambda (_%g140869140881%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140869140881%_))
                        (let ((_%e140871140883%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140869140881%_))))
                          (let ((_%hd140872140886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140871140883%_)))
                                (_%tl140873140888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140871140883%_))))
                            ((lambda (_%L140891%_)
                               (let _%lp140902%_ ((_%rest140904%_ _%L140891%_)
                                                  (_%current-src140905%_ '#f)
                                                  (_%current-in140906%_ '())
                                                  (_%r140907%_ '()))
                                 (let* ((_%rest140908140916%_ _%rest140904%_)
                                        (_%else140910140926%_
                                         (lambda ()
                                           (let ((_%r140924%_
                                                  (if _%current-src140905%_
                                                      (cons (_%make-import-spec-in140866%_
                                                             _%current-src140905%_
                                                             _%current-in140906%_)
                                                            _%r140907%_)
                                                      _%r140907%_)))
                                             (cons '%#import
                                                   (reverse _%r140924%_)))))
                                        (_%K140912141013%_
                                         (lambda (_%rest140929%_ _%in140930%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in140930%_
                                                  'gx#module-import::t))
                                               (let* ((_%in140932140939%_
                                                       _%in140930%_)
                                                      (_%E140934140943%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in140932140939%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K140935140951%_
               (lambda (_%src-ctx140946%_)
                 (if (eq? _%current-src140905%_ _%src-ctx140946%_)
                     (_%lp140902%_
                      _%rest140929%_
                      _%current-src140905%_
                      (cons (_%make-import-spec140864%_ _%in140930%_)
                            _%current-in140906%_)
                      _%r140907%_)
                     (if _%current-src140905%_
                         (_%lp140902%_
                          _%rest140929%_
                          _%src-ctx140946%_
                          (cons (_%make-import-spec140864%_ _%in140930%_) '())
                          (cons (_%make-import-spec-in140866%_
                                 _%current-src140905%_
                                 _%current-in140906%_)
                                _%r140907%_))
                         (_%lp140902%_
                          _%rest140929%_
                          _%src-ctx140946%_
                          (cons (_%make-import-spec140864%_ _%in140930%_) '())
                          _%r140907%_)))))
              (_%e140936140954%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in140932140939%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e140936140954%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140937140957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e140936140954%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx140960%_ _%e140937140957%_))
               (_%K140935140951%_ _%src-ctx140960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E140934140943%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in140930%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi140963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140930%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src140965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140930%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in141005%_
                                                           (let* ((_%g140966140975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path140865%_ _%src140965%_))
                          (_%E140969140979%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g140966140975%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K140971140995%_
                            (lambda (_%path140993%_) _%path140993%_))
                           (_%K140970140985%_
                            (lambda (_%path140983%_)
                              (cons 'in: _%path140983%_))))
                       (if (pair? _%g140966140975%_)
                           (let ((_%tl140973141000%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g140966140975%_)))
                                 (_%hd140972140998%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g140966140975%_))))
                             (if (null? _%tl140973141000%_)
                                 (let ((_%path141003%_ _%hd140972140998%_))
                                   (_%K140971140995%_ _%path141003%_))
                                 (let ((_%path140988%_ _%g140966140975%_))
                                   (_%K140970140985%_ _%path140988%_))))
                           (let ((_%path140988%_ _%g140966140975%_))
                             (_%K140970140985%_ _%path140988%_))))))
                  (_%r141007%_
                   (if _%current-src140905%_
                       (cons (_%make-import-spec-in140866%_
                              _%current-src140905%_
                              _%current-in140906%_)
                             _%r140907%_)
                       _%r140907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp140902%_
                                                      _%rest140929%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi140963%_)
                                                                _%src-in141005%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi140963%_
                                    (cons _%src-in141005%_ '()))))
                    _%r141007%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in140930%_
                                                          'gx#module-context::t))
                                                       (let ((_%r141011%_
                                                              (if _%current-src140905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in140866%_
                                 _%current-src140905%_
                                 _%current-in140906%_)
                                _%r140907%_)
                          _%r140907%_)))
                 (_%lp140902%_
                  _%rest140929%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path140865%_ _%in140930%_))
                        _%r141011%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest140908140916%_)
                                       (let ((_%hd140913141016%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140908140916%_)))
                                             (_%tl140914141018%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140908140916%_))))
                                         (let* ((_%in141021%_
                                                 _%hd140913141016%_)
                                                (_%rest141023%_
                                                 _%tl140914141018%_))
                                           (_%K140912141013%_
                                            _%rest141023%_
                                            _%in141021%_)))
                                       (_%else140910140926%_)))))
                             _%tl140873140888%_)))
                        (_%g140868140878%_ _%g140869140881%_)))))
            (_%g140867141025%_ _%stx140861%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self140670%_ _%stx140671%_)
        (letrec* ((_%context-chain140673%_ (gxc#current-context-chain))
                  (_%make-import-path140674%_
                   (lambda (_%ctx140858%_)
                     (gxc#generate-meta-import-path
                      _%ctx140858%_
                      _%context-chain140673%_))))
          (let* ((_%g140676140686%_
                  (lambda (_%g140677140683%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140677140683%_))))
                 (_%g140675140855%_
                  (lambda (_%g140677140689%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140677140689%_))
                        (let ((_%e140679140691%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140677140689%_))))
                          (let ((_%hd140680140694%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140679140691%_)))
                                (_%tl140681140696%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140679140691%_))))
                            ((lambda (_%L140699%_)
                               (let _%lp140710%_ ((_%rest140712%_ _%L140699%_)
                                                  (_%r140713%_ '()))
                                 (let* ((_%rest140714140722%_ _%rest140712%_)
                                        (_%else140716140730%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r140713%_))))
                                        (_%K140718140843%_
                                         (lambda (_%rest140733%_ _%out140734%_)
                                           (let* ((_%out140735140748%_
                                                   _%out140734%_)
                                                  (_%E140738140752%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out140735140748%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K140742140822%_
                                                    (lambda (_%name140818%_
                                                             _%phi140819%_
                                                             _%key140820%_)
                                                      (_%lp140710%_
                                                       _%rest140733%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi140819%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key140820%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name140818%_)
                                             '()))))
                     _%r140713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K140739140802%_
                                                    (lambda (_%phi140756%_
                                                             _%src140757%_)
                                                      (let* ((_%out140797%_
                                                              (if _%src140757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g140758140767%_
                                              (_%make-import-path140674%_
                                               _%src140757%_))
                                             (_%E140761140771%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g140758140767%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K140763140787%_
                                               (lambda (_%path140785%_)
                                                 _%path140785%_))
                                              (_%K140762140777%_
                                               (lambda (_%path140775%_)
                                                 (cons 'in: _%path140775%_))))
                                          (if (pair? _%g140758140767%_)
                                              (let ((_%tl140765140792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g140758140767%_)))
                                                    (_%hd140764140790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g140758140767%_))))
                                                (if (null? _%tl140765140792%_)
                                                    (let ((_%path140795%_
                                                           _%hd140764140790%_))
                                                      (_%K140763140787%_
                                                       _%path140795%_))
                                                    (let ((_%path140780%_
                                                           _%g140758140767%_))
                                                      (_%K140762140777%_
                                                       _%path140780%_))))
                                              (let ((_%path140780%_
                                                     _%g140758140767%_))
                                                (_%K140762140777%_
                                                 _%path140780%_)))))
                                      '()))
                          '#t))
                     (_%out140799%_
                      (if (fxzero? _%phi140756%_)
                          _%out140797%_
                          (cons 'phi:
                                (cons _%phi140756%_
                                      (cons _%out140797%_ '()))))))
                (_%lp140710%_
                 _%rest140733%_
                 (cons _%out140799%_ _%r140713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match140737140815%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out140735140748%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e140740140805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140735140748%_
                               '1
                               '#f
                               '#f)))
                           (_%e140741140810%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140735140748%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src140808%_ _%e140740140805%_)
                            (_%phi140813%_ _%e140741140810%_))
                        (_%K140739140802%_ _%phi140813%_ _%src140808%_)))
                    (_%E140738140752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out140735140748%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140743140825%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out140735140748%_
                        '1
                        '#f
                        '#f)))
                    (_%e140744140828%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140735140748%_
                        '2
                        '#f
                        '#f)))
                    (_%e140745140833%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140735140748%_
                        '3
                        '#f
                        '#f)))
                    (_%e140746140838%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140735140748%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key140831%_ _%e140744140828%_)
                     (_%phi140836%_ _%e140745140833%_)
                     (_%name140841%_ _%e140746140838%_))
                 (_%K140742140822%_
                  _%name140841%_
                  _%phi140836%_
                  _%key140831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match140737140815%_))))))))
                                   (if (pair? _%rest140714140722%_)
                                       (let ((_%hd140719140846%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140714140722%_)))
                                             (_%tl140720140848%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140714140722%_))))
                                         (let* ((_%out140851%_
                                                 _%hd140719140846%_)
                                                (_%rest140853%_
                                                 _%tl140720140848%_))
                                           (_%K140718140843%_
                                            _%rest140853%_
                                            _%out140851%_)))
                                       (_%else140716140730%_)))))
                             _%tl140681140696%_)))
                        (_%g140676140686%_ _%g140677140689%_)))))
            (_%g140675140855%_ _%stx140671%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self140631%_ _%stx140632%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140631%_ 'state)))
        (let* ((_%g140634140644%_
                (lambda (_%g140635140641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140635140641%_))))
               (_%g140633140667%_
                (lambda (_%g140635140647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140635140647%_))
                      (let ((_%e140637140649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140635140647%_))))
                        (let ((_%hd140638140652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140637140649%_)))
                              (_%tl140639140654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140637140649%_))))
                          ((lambda (_%L140657%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L140657%_)))
                           _%tl140639140654%_)))
                      (_%g140634140644%_ _%g140635140647%_)))))
          (_%g140633140667%_ _%stx140632%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self140502%_ _%stx140503%_)
        (letrec ((_%generate1140505%_
                  (lambda (_%id140626%_ _%eid140627%_)
                    (let ((_%eid140629%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid140627%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid140629%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx140503%_
                             _%eid140629%_)))
                      (cons (gxc#generate-runtime-identifier _%id140626%_)
                            (cons _%eid140629%_ '()))))))
          (let* ((_%g140507140535%_
                  (lambda (_%g140508140532%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140508140532%_))))
                 (_%g140506140623%_
                  (lambda (_%g140508140538%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140508140538%_))
                        (let ((_%e140511140540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140508140538%_))))
                          (let ((_%hd140512140543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140511140540%_)))
                                (_%tl140513140545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140511140540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140513140545%_))
                                (let ((_g150301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140513140545%_
                                          '0))))
                                  (begin
                                    (let ((_g150302_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150301_)
                                                 (##values-length _g150301_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150302_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150302_)))
                                    (let ((_%target140514140548%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150301_ 0)))
                                          (_%tl140516140550%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150301_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140516140550%_))
                                          (letrec ((_%loop140517140553%_
                                                    (lambda (_%hd140515140556%_
                                                             _%eid140521140558%_
                                                             _%id140522140560%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140515140556%_))
                                                          (let ((_%e140518140563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140515140556%_))))
                    (let ((_%lp-hd140519140566%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140518140563%_)))
                          (_%lp-tl140520140568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140518140563%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140519140566%_))
                          (let ((_%e140525140571%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140519140566%_))))
                            (let ((_%hd140526140574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140525140571%_)))
                                  (_%tl140527140576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140525140571%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140527140576%_))
                                  (let ((_%e140528140579%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140527140576%_))))
                                    (let ((_%hd140529140582%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140528140579%_)))
                                          (_%tl140530140584%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140528140579%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140530140584%_))
                                          (_%loop140517140553%_
                                           _%lp-tl140520140568%_
                                           (cons _%hd140529140582%_
                                                 _%eid140521140558%_)
                                           (cons _%hd140526140574%_
                                                 _%id140522140560%_))
                                          (_%g140507140535%_
                                           _%g140508140538%_))))
                                  (_%g140507140535%_ _%g140508140538%_))))
                          (_%g140507140535%_ _%g140508140538%_))))
                  (let ((_%eid140523140587%_ (reverse _%eid140521140558%_))
                        (_%id140524140589%_ (reverse _%id140522140560%_)))
                    ((lambda (_%L140592%_ _%L140593%_)
                       (cons '%#extern
                             (map _%generate1140505%_
                                  (let ((__tmp150303
                                         (lambda (_%g140608140611%_
                                                  _%g140609140613%_)
                                           (cons _%g140608140611%_
                                                 _%g140609140613%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150303 '() _%L140593%_))
                                  (let ((__tmp150304
                                         (lambda (_%g140615140618%_
                                                  _%g140616140620%_)
                                           (cons _%g140615140618%_
                                                 _%g140616140620%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150304 '() _%L140592%_)))))
                     _%eid140523140587%_
                     _%id140524140589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140517140553%_
                                             _%target140514140548%_
                                             '()
                                             '()))
                                          (_%g140507140535%_
                                           _%g140508140538%_)))))
                                (_%g140507140535%_ _%g140508140538%_))))
                        (_%g140507140535%_ _%g140508140538%_)))))
            (_%g140506140623%_ _%stx140503%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self140292%_ _%stx140293%_)
        (letrec ((_%generate1140295%_
                  (lambda (_%id140497%_)
                    (let ((_%eid140499%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id140497%_)))
                          (_%ident140500%_
                           (gxc#generate-runtime-identifier _%id140497%_)))
                      (cons '%#define-runtime
                            (cons _%ident140500%_ (cons _%eid140499%_ '()))))))
                 (_%generate*140296%_
                  (lambda (_%all140465%_)
                    (let* ((_%all140466140474%_ _%all140465%_)
                           (_%else140468140482%_
                            (lambda () (cons '%#begin _%all140465%_)))
                           (_%K140470140487%_
                            (lambda (_%one140485%_) _%one140485%_)))
                      (if (pair? _%all140466140474%_)
                          (let ((_%hd140471140490%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all140466140474%_)))
                                (_%tl140472140492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all140466140474%_))))
                            (let ((_%one140495%_ _%hd140471140490%_))
                              (if (null? _%tl140472140492%_)
                                  (_%K140470140487%_ _%one140495%_)
                                  (_%else140468140482%_))))
                          (_%else140468140482%_))))))
          (let* ((_%g140298140315%_
                  (lambda (_%g140299140312%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140299140312%_))))
                 (_%g140297140462%_
                  (lambda (_%g140299140318%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140299140318%_))
                        (let ((_%e140302140320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140299140318%_))))
                          (let ((_%hd140303140323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140302140320%_)))
                                (_%tl140304140325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140302140320%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140304140325%_))
                                (let ((_%e140305140328%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140304140325%_))))
                                  (let ((_%hd140306140331%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140305140328%_)))
                                        (_%tl140307140333%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140305140328%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140307140333%_))
                                        (let ((_%e140308140336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140307140333%_))))
                                          (let ((_%hd140309140339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140308140336%_)))
                                                (_%tl140310140341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140308140336%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140310140341%_))
                                                ((lambda (_%L140344%_
                                                          _%L140345%_)
                                                   (let _%lp140361%_ ((_%rest140363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L140345%_)
                              (_%r140364%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx150040150041%_
                                                             _%rest140363%_)
                                                            (_%g140369140386%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx150040150041%_)))))
               (let ((_%__kont150042150043%_
                      (lambda (_%L140449%_)
                        (_%lp140361%_ _%L140449%_ _%r140364%_)))
                     (_%__kont150044150045%_
                      (lambda (_%L140422%_ _%L140423%_)
                        (_%lp140361%_
                         _%L140422%_
                         (cons (_%generate1140295%_ _%L140423%_)
                               _%r140364%_))))
                     (_%__kont150046150047%_
                      (lambda (_%L140398%_)
                        (_%generate*140296%_
                         (let ((__tmp150305
                                (cons (_%generate1140295%_ _%L140398%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp150305 _%r140364%_)))))
                     (_%__kont150048150049%_
                      (lambda () (_%generate*140296%_ (reverse _%r140364%_)))))
                 (let ((_%g140367140409%_
                        (lambda ()
                          (let ((_%L140398%_ _%__stx150040150041%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L140398%_))
                                (_%__kont150046150047%_ _%L140398%_)
                                (_%__kont150048150049%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx150040150041%_))
                       (let ((_%e140372140438%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx150040150041%_))))
                         (let ((_%tl140374140443%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e140372140438%_)))
                               (_%hd140373140441%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e140372140438%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd140373140441%_))
                               (let ((_%e140375140446%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd140373140441%_))))
                                 (if (equal? _%e140375140446%_ '#f)
                                     (_%__kont150042150043%_
                                      _%tl140374140443%_)
                                     (_%__kont150044150045%_
                                      _%tl140374140443%_
                                      _%hd140373140441%_)))
                               (_%__kont150044150045%_
                                _%tl140374140443%_
                                _%hd140373140441%_))))
                       (let () (declare (not safe)) (_%g140367140409%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd140309140339%_
                                                 _%hd140306140331%_)
                                                (_%g140298140315%_
                                                 _%g140299140318%_))))
                                        (_%g140298140315%_
                                         _%g140299140318%_))))
                                (_%g140298140315%_ _%g140299140318%_))))
                        (_%g140298140315%_ _%g140299140318%_)))))
            (_%g140297140462%_ _%stx140293%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self140189%_ _%stx140190%_)
        (let* ((_%g140192140209%_
                (lambda (_%g140193140206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140193140206%_))))
               (_%g140191140289%_
                (lambda (_%g140193140212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140193140212%_))
                      (let ((_%e140196140214%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140193140212%_))))
                        (let ((_%hd140197140217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140196140214%_)))
                              (_%tl140198140219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140196140214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140198140219%_))
                              (let ((_%e140199140222%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140198140219%_))))
                                (let ((_%hd140200140225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140199140222%_)))
                                      (_%tl140201140227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140199140222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140201140227%_))
                                      (let ((_%e140202140230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140201140227%_))))
                                        (let ((_%hd140203140233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140202140230%_)))
                                              (_%tl140204140235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140202140230%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140204140235%_))
                                              ((lambda (_%L140238%_
                                                        _%L140239%_)
                                                 (let* ((_%eid140254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L140239%_)))
                                                        (_%phi140256%_
                                                         (let ((__tmp150306
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp150306 '1)))
                (_%block140258%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self140189%_ 'state))
                  _%phi140256%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g140261140268%_
                                                           (lambda (_%g140262140265%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g140262140265%_))))
                  (_%g140260140286%_
                   (lambda (_%g140262140271%_)
                     ((lambda (_%L140273%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self140189%_ 'state))
                         _%phi140256%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L140273%_ (cons _%L140238%_ '())))))
                      _%g140262140271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g140260140286%_
                                                      _%eid140254%_))
                                                   (if _%block140258%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block140258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L140239%_)
                                             (cons _%eid140254%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L140239%_)
                           (cons _%eid140254%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140203140233%_
                                               _%hd140200140225%_)
                                              (_%g140192140209%_
                                               _%g140193140212%_))))
                                      (_%g140192140209%_ _%g140193140212%_))))
                              (_%g140192140209%_ _%g140193140212%_))))
                      (_%g140192140209%_ _%g140193140212%_)))))
          (_%g140191140289%_ _%stx140190%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self140121%_ _%stx140122%_)
        (let* ((_%g140124140141%_
                (lambda (_%g140125140138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140125140138%_))))
               (_%g140123140186%_
                (lambda (_%g140125140144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140125140144%_))
                      (let ((_%e140128140146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140125140144%_))))
                        (let ((_%hd140129140149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140128140146%_)))
                              (_%tl140130140151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140128140146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140130140151%_))
                              (let ((_%e140131140154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140130140151%_))))
                                (let ((_%hd140132140157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140131140154%_)))
                                      (_%tl140133140159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140131140154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140133140159%_))
                                      (let ((_%e140134140162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140133140159%_))))
                                        (let ((_%hd140135140165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140134140162%_)))
                                              (_%tl140136140167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140134140162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140136140167%_))
                                              ((lambda (_%L140170%_
                                                        _%L140171%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L140171%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L140170%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140135140165%_
                                               _%hd140132140157%_)
                                              (_%g140124140141%_
                                               _%g140125140144%_))))
                                      (_%g140124140141%_ _%g140125140144%_))))
                              (_%g140124140141%_ _%g140125140144%_))))
                      (_%g140124140141%_ _%g140125140144%_)))))
          (_%g140123140186%_ _%stx140122%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self140118%_ _%stx140119%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140118%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140119%_)
        (gxc#generate-meta-define-values% _%self140118%_ _%stx140119%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self140115%_ _%stx140116%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140115%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140116%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp150308 (list)) (__tmp150307 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp150308
         '(src n open blocks)
         __tmp150307
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args140112%_
        (apply make-instance gxc#meta-state::t _%$args140112%_)))
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
      (lambda (_%self139457140096%_ _%ctx140098%_)
        (let* ((_%self140100%_ _%self139457140096%_)
               (_%self140102%_ _%self140100%_))
          (if (let ((__tmp150309
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140102%_))))
                (declare (not safe))
                (##fx< '4 __tmp150309))
              (begin
                (let ((__tmp150310
                       (let ((__tmp150311
                              (##structure-ref
                               _%ctx140098%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp150311))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140102%_
                   __tmp150310
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140102%_ '1 '2 '#f '#f))
                (let ((__tmp150312
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140102%_
                   __tmp150312
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140102%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp150313
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self140102%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self140102%_
                       '4
                       __tmp150313))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp150315 (list)) (__tmp150314 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp150315
         '(ctx phi n code)
         __tmp150314
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args139971%_
        (apply make-instance gxc#meta-state-block::t _%$args139971%_)))
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
      (lambda (_%state139930%_ _%phi139931%_)
        (let* ((_%state139932139940%_ _%state139930%_)
               (_%E139934139944%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state139932139940%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K139935139953%_
                (lambda (_%open139947%_ _%n139948%_ _%src139949%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open139947%_ _%phi139931%_))
                      '#f
                      (let ((_%block-ref139951%_
                             (let ((__tmp150316 (number->string _%n139948%_)))
                               (declare (not safe))
                               (##string-append
                                _%src139949%_
                                '"~"
                                __tmp150316))))
                        (##structure-set!
                         _%state139930%_
                         (let () (declare (not safe)) (##fx+ _%n139948%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp150317
                               (let ((__tmp150318
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp150318
                                  _%phi139931%_
                                  _%n139948%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open139947%_ _%phi139931%_ __tmp150317))
                        _%block-ref139951%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state139932139940%_
                 'gxc#meta-state::t))
              (let* ((_%e139936139956%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139932139940%_
                         '1
                         '#f
                         '#f)))
                     (_%src139959%_ _%e139936139956%_)
                     (_%e139937139961%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139932139940%_
                         '2
                         '#f
                         '#f)))
                     (_%n139964%_ _%e139937139961%_)
                     (_%e139938139966%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139932139940%_
                         '3
                         '#f
                         '#f)))
                     (_%open139969%_ _%e139938139966%_))
                (_%K139935139953%_ _%open139969%_ _%n139964%_ _%src139959%_))
              (_%E139934139944%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state139924%_ _%phi139925%_ _%stx139926%_)
        (let ((_%block139928%_
               (let ((__tmp150319
                      (##structure-ref
                       _%state139924%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp150319 _%phi139925%_))))
          (##structure-set!
           _%block139928%_
           (cons _%stx139926%_
                 (##structure-ref
                  _%block139928%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state139918%_)
        (##structure-set!
         _%state139918%_
         (let ((__tmp150322
                (lambda (_%_139920%_ _%block139921%_ _%r139922%_)
                  (cons _%block139921%_ _%r139922%_)))
               (__tmp150321
                (##structure-ref _%state139918%_ '4 gxc#meta-state::t '#f))
               (__tmp150320
                (##structure-ref _%state139918%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp150322 __tmp150321 __tmp150320))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state139918%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state139870%_)
        (gxc#meta-state-end-phi! _%state139870%_)
        (let ((__tmp150324
               (lambda (_%block139872%_ _%r139873%_)
                 (let* ((_%block139874139883%_ _%block139872%_)
                        (_%E139876139887%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block139874139883%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K139877139895%_
                         (lambda (_%code139890%_
                                  _%n139891%_
                                  _%phi139892%_
                                  _%ctx139893%_)
                           (if (null? _%code139890%_)
                               _%r139873%_
                               (cons (cons _%ctx139893%_
                                           (cons _%phi139892%_
                                                 (cons _%n139891%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code139890%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r139873%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block139874139883%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e139878139898%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139874139883%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx139901%_ _%e139878139898%_)
                              (_%e139879139903%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139874139883%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi139906%_ _%e139879139903%_)
                              (_%e139880139908%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139874139883%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n139911%_ _%e139880139908%_)
                              (_%e139881139913%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139874139883%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code139916%_ _%e139881139913%_))
                         (_%K139877139895%_
                          _%code139916%_
                          _%n139911%_
                          _%phi139906%_
                          _%ctx139901%_))
                       (_%E139876139887%_)))))
              (__tmp150323
               (##structure-ref _%state139870%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp150324 '() __tmp150323))))
    (define gxc#collect-expression-refs
      (lambda (_%stx139866%_)
        (let ((_%ht139868%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht139868%_ _%stx139866%_)
          _%ht139868%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self139809%_ _%stx139810%_)
        (let* ((_%g139812139825%_
                (lambda (_%g139813139822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139813139822%_))))
               (_%g139811139863%_
                (lambda (_%g139813139828%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139813139828%_))
                      (let ((_%e139815139830%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139813139828%_))))
                        (let ((_%hd139816139833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139815139830%_)))
                              (_%tl139817139835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139815139830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139817139835%_))
                              (let ((_%e139818139838%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139817139835%_))))
                                (let ((_%hd139819139841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139818139838%_)))
                                      (_%tl139820139843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139818139838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139820139843%_))
                                      ((lambda (_%L139846%_)
                                         (let* ((_%bind139858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L139846%_)))
                                                (_%eid139860%_
                                                 (if _%bind139858%_
                                                     (##structure-ref
                                                      _%bind139858%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L139846%_))))
                                                (__tmp150325
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self139809%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp150325
                                            _%eid139860%_
                                            _%eid139860%_)))
                                       _%hd139819139841%_)
                                      (_%g139812139825%_ _%g139813139828%_))))
                              (_%g139812139825%_ _%g139813139828%_))))
                      (_%g139812139825%_ _%g139813139828%_)))))
          (_%g139811139863%_ _%stx139810%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self139736%_ _%stx139737%_)
        (let* ((_%g139739139756%_
                (lambda (_%g139740139753%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139740139753%_))))
               (_%g139738139806%_
                (lambda (_%g139740139759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139740139759%_))
                      (let ((_%e139743139761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139740139759%_))))
                        (let ((_%hd139744139764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139743139761%_)))
                              (_%tl139745139766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139743139761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139745139766%_))
                              (let ((_%e139746139769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139745139766%_))))
                                (let ((_%hd139747139772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139746139769%_)))
                                      (_%tl139748139774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139746139769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139748139774%_))
                                      (let ((_%e139749139777%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139748139774%_))))
                                        (let ((_%hd139750139780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139749139777%_)))
                                              (_%tl139751139782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139749139777%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139751139782%_))
                                              ((lambda (_%L139785%_
                                                        _%L139786%_)
                                                 (let* ((_%bind139801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L139786%_)))
                                                        (_%eid139803%_
                                                         (if _%bind139801%_
                                                             (##structure-ref
                                                              _%bind139801%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L139786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150326
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self139736%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150326
                                                      _%eid139803%_
                                                      _%eid139803%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139736%_
                                                      _%L139785%_))))
                                               _%hd139750139780%_
                                               _%hd139747139772%_)
                                              (_%g139739139756%_
                                               _%g139740139759%_))))
                                      (_%g139739139756%_ _%g139740139759%_))))
                              (_%g139739139756%_ _%g139740139759%_))))
                      (_%g139739139756%_ _%g139740139759%_)))))
          (_%g139738139806%_ _%stx139737%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self139693%_ _%stx139694%_)
        (let* ((_%g139696139706%_
                (lambda (_%g139697139703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139697139703%_))))
               (_%g139695139733%_
                (lambda (_%g139697139709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139697139709%_))
                      (let ((_%e139699139711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139697139709%_))))
                        (let ((_%hd139700139714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139699139711%_)))
                              (_%tl139701139716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139699139711%_))))
                          ((lambda (_%L139719%_)
                             (let ((__tmp150327
                                    (lambda (_%g139728139730%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self139693%_
                                         _%g139728139730%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp150327 _%L139719%_)))
                           _%tl139701139716%_)))
                      (_%g139696139706%_ _%g139697139709%_)))))
          (_%g139695139733%_ _%stx139694%_))))
    (define gxc#count-values-single%
      (lambda (_%self139690%_ _%stx139691%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self139556%_ _%stx139557%_)
        (let* ((_%__stx150070150071%_ _%stx139557%_)
               (_%g139560139589%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150070150071%_)))))
          (let ((_%__kont150072150073%_
                 (lambda (_%L139657%_ _%L139658%_)
                   (length (let ((__tmp150328
                                  (lambda (_%g139679139682%_ _%g139680139684%_)
                                    (cons _%g139679139682%_
                                          _%g139680139684%_))))
                             (declare (not safe))
                             (__foldr1 __tmp150328 '() _%L139657%_)))))
                (_%__kont150076150077%_ (lambda () '#f)))
            (let ((_%__match150115150116%_
                   (lambda (_%e139564139601%_
                            _%hd139565139604%_
                            _%tl139566139606%_
                            _%e139567139609%_
                            _%hd139568139612%_
                            _%tl139569139614%_
                            _%e139570139617%_
                            _%hd139571139620%_
                            _%tl139572139622%_
                            _%e139573139625%_
                            _%hd139574139628%_
                            _%tl139575139630%_
                            _%__splice150074150075%_
                            _%target139576139633%_
                            _%tl139578139635%_)
                     (letrec ((_%loop139579139638%_
                               (lambda (_%hd139577139641%_
                                        _%rand139583139643%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd139577139641%_))
                                     (let ((_%e139580139646%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd139577139641%_))))
                                       (let ((_%lp-tl139582139651%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e139580139646%_)))
                                             (_%lp-hd139581139649%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e139580139646%_))))
                                         (_%loop139579139638%_
                                          _%lp-tl139582139651%_
                                          (cons _%lp-hd139581139649%_
                                                _%rand139583139643%_))))
                                     (let ((_%rand139584139654%_
                                            (reverse _%rand139583139643%_)))
                                       (let ((_%L139657%_ _%rand139584139654%_)
                                             (_%L139658%_ _%hd139574139628%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L139658%_
                                                'values))
                                             (_%__kont150072150073%_
                                              _%L139657%_
                                              _%L139658%_)
                                             (_%__kont150076150077%_))))))))
                       (_%loop139579139638%_ _%target139576139633%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150070150071%_))
                  (let ((_%e139564139601%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150070150071%_))))
                    (let ((_%tl139566139606%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139564139601%_)))
                          (_%hd139565139604%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139564139601%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139566139606%_))
                          (let ((_%e139567139609%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139566139606%_))))
                            (let ((_%tl139569139614%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139567139609%_)))
                                  (_%hd139568139612%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139567139609%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd139568139612%_))
                                  (let ((_%e139570139617%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd139568139612%_))))
                                    (let ((_%tl139572139622%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139570139617%_)))
                                          (_%hd139571139620%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139570139617%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd139571139620%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd139571139620%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl139572139622%_))
                                                  (let ((_%e139573139625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl139572139622%_))))
                                                    (let ((_%tl139575139630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e139573139625%_)))
                                                          (_%hd139574139628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e139573139625%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl139575139630%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl139569139614%_))
                      (let ((_%__splice150074150075%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl139569139614%_
                                '0))))
                        (let ((_%tl139578139635%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice150074150075%_ '1)))
                              (_%target139576139633%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice150074150075%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl139578139635%_))
                              (_%__match150115150116%_
                               _%e139564139601%_
                               _%hd139565139604%_
                               _%tl139566139606%_
                               _%e139567139609%_
                               _%hd139568139612%_
                               _%tl139569139614%_
                               _%e139570139617%_
                               _%hd139571139620%_
                               _%tl139572139622%_
                               _%e139573139625%_
                               _%hd139574139628%_
                               _%tl139575139630%_
                               _%__splice150074150075%_
                               _%target139576139633%_
                               _%tl139578139635%_)
                              (_%__kont150076150077%_))))
                      (_%__kont150076150077%_))
                  (_%__kont150076150077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150076150077%_))
                                              (_%__kont150076150077%_))
                                          (_%__kont150076150077%_))))
                                  (_%__kont150076150077%_))))
                          (_%__kont150076150077%_))))
                  (_%__kont150076150077%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self139459%_ _%stx139460%_)
        (let* ((_%g139462139483%_
                (lambda (_%g139463139480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139463139480%_))))
               (_%g139461139553%_
                (lambda (_%g139463139486%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139463139486%_))
                      (let ((_%e139467139488%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139463139486%_))))
                        (let ((_%hd139468139491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139467139488%_)))
                              (_%tl139469139493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139467139488%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139469139493%_))
                              (let ((_%e139470139496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139469139493%_))))
                                (let ((_%hd139471139499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139470139496%_)))
                                      (_%tl139472139501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139470139496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139472139501%_))
                                      (let ((_%e139473139504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139472139501%_))))
                                        (let ((_%hd139474139507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139473139504%_)))
                                              (_%tl139475139509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139473139504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139475139509%_))
                                              (let ((_%e139476139512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139475139509%_))))
                                                (let ((_%hd139477139515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139476139512%_)))
                                                      (_%tl139478139517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139476139512%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139478139517%_))
                                                      ((lambda (_%L139520%_
                                                                _%L139521%_
                                                                _%L139522%_)
                                                         (let ((_%c1139539139541%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self139459%_ _%L139521%_))))
                   (if _%c1139539139541%_
                       (let* ((_%c1139544%_ _%c1139539139541%_)
                              (_%c2139545139547%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self139459%_
                                  _%L139520%_))))
                         (if _%c2139545139547%_
                             (let ((_%c2139550%_ _%c2139545139547%_))
                               (if (fx= _%c1139544%_ _%c2139550%_)
                                   _%c1139544%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd139477139515%_
               _%hd139474139507%_
               _%hd139471139499%_)
              (_%g139462139483%_ _%g139463139486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139462139483%_
                                               _%g139463139486%_))))
                                      (_%g139462139483%_ _%g139463139486%_))))
                              (_%g139462139483%_ _%g139463139486%_))))
                      (_%g139462139483%_ _%g139463139486%_)))))
          (_%g139461139553%_ _%stx139460%_))))))
