(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1779967244)
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
      (let ((__tmp208096 (list gxc#::void::t))
            (__tmp208095 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp208096
         '()
         __tmp208095
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args206710%_
        (apply make-instance gxc#::collect-bindings::t _%$args206710%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp208097
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
        (__make-atomic-promise __tmp208097)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx206702%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self206705%_
                (let ((__obj208071
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj208071))
               (__tmp208098
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206705%_ _%stx206702%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208098
           gxc#current-compile-method
           _%self206705%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp208100 (list gxc#::void::t))
            (__tmp208099 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp208100
         '(modules)
         __tmp208099
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args206699%_
        (apply make-instance gxc#::lift-modules::t _%$args206699%_)))
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
      (let ((__tmp208101
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
        (__make-atomic-promise __tmp208101)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords206674%_ _%modules206671206675%_ _%stx206676%_)
        (let ((_%modules206679%_
               (if (eq? _%modules206671206675%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules206671206675%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self206681%_
                  (let ((__obj208073
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208073
                       _%modules206679%_
                       '1
                       '#f
                       '#f))
                    __obj208073))
                 (__tmp208102
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206681%_ _%stx206676%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208102
             gxc#current-compile-method
             _%self206681%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords206688%_ . _%args206689%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords206688%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206688%_
                  'modules:
                  absent-value))
               _%args206689%_)))
    (define gxc#apply-lift-modules
      (lambda _%args206672206695%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args206672206695%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp208104 (list)) (__tmp208103 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp208104
         '()
         __tmp208103
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args206667%_
        (apply make-instance gxc#::find-runtime-code::t _%$args206667%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp208105
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
        (__make-atomic-promise __tmp208105)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx206659%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self206662%_
                (let ((__obj208075
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj208075))
               (__tmp208106
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206662%_ _%stx206659%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208106
           gxc#current-compile-method
           _%self206662%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp208108 (list gxc#::false::t))
            (__tmp208107 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp208108
         '()
         __tmp208107
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args206656%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args206656%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp208109
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
        (__make-atomic-promise __tmp208109)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx206648%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self206651%_
                (let ((__obj208077
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj208077))
               (__tmp208110
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206651%_ _%stx206648%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208110
           gxc#current-compile-method
           _%self206651%_))))
    (define gxc#::count-values::t
      (let ((__tmp208112 (list gxc#::false-expression::t))
            (__tmp208111 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp208112
         '()
         __tmp208111
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args206645%_
        (apply make-instance gxc#::count-values::t _%$args206645%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp208113
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
        (__make-atomic-promise __tmp208113)))
    (define gxc#apply-count-values
      (lambda (_%stx206637%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self206640%_
                (let ((__obj208079
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj208079))
               (__tmp208114
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206640%_ _%stx206637%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208114
           gxc#current-compile-method
           _%self206640%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp208115 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp208115
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args206634%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args206634%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp208116
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
        (__make-atomic-promise __tmp208116)))
    (define gxc#::generate-loader::t
      (let ((__tmp208118 (list gxc#::generate-runtime-empty::t))
            (__tmp208117 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp208118
         '()
         __tmp208117
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args206630%_
        (apply make-instance gxc#::generate-loader::t _%$args206630%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp208119
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
        (__make-atomic-promise __tmp208119)))
    (define gxc#apply-generate-loader
      (lambda (_%stx206622%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self206625%_
                (let ((__obj208082
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj208082))
               (__tmp208120
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206625%_ _%stx206622%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208120
           gxc#current-compile-method
           _%self206625%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp208121 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp208121
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args206619%_
        (apply make-instance gxc#::generate-runtime::t _%$args206619%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp208122
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
        (__make-atomic-promise __tmp208122)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx206611%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self206614%_
                (let ((__obj208084
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj208084))
               (__tmp208123
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206614%_ _%stx206611%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208123
           gxc#current-compile-method
           _%self206614%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp208125 (list gxc#::generate-runtime::t))
            (__tmp208124 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp208125
         '()
         __tmp208124
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args206608%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args206608%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp208126
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
        (__make-atomic-promise __tmp208126)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx206600%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self206603%_
                (let ((__obj208086
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj208086))
               (__tmp208127
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self206603%_ _%stx206600%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208127
           gxc#current-compile-method
           _%self206603%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp208128 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp208128
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args206597%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args206597%_)))
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
      (let ((__tmp208129
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
        (__make-atomic-promise __tmp208129)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords206572%_ _%table206569206573%_ _%stx206574%_)
        (let ((_%table206577%_
               (if (eq? _%table206569206573%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table206569206573%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self206579%_
                  (let ((__obj208088
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208088
                       _%table206577%_
                       '1
                       '#f
                       '#f))
                    __obj208088))
                 (__tmp208130
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206579%_ _%stx206574%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208130
             gxc#current-compile-method
             _%self206579%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords206586%_ . _%args206587%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords206586%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206586%_
                  'table:
                  absent-value))
               _%args206587%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args206570206593%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args206570206593%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp208132 (list gxc#::void-expression::t))
            (__tmp208131 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp208132
         '(state)
         __tmp208131
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args206565%_
        (apply make-instance gxc#::generate-meta::t _%$args206565%_)))
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
      (let ((__tmp208133
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
        (__make-atomic-promise __tmp208133)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords206540%_ _%state206537206541%_ _%stx206542%_)
        (let ((_%state206545%_
               (if (eq? _%state206537206541%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state206537206541%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self206547%_
                  (let ((__obj208090
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208090
                       _%state206545%_
                       '1
                       '#f
                       '#f))
                    __obj208090))
                 (__tmp208134
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206547%_ _%stx206542%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208134
             gxc#current-compile-method
             _%self206547%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords206554%_ . _%args206555%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords206554%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206554%_
                  'state:
                  absent-value))
               _%args206555%_)))
    (define gxc#apply-generate-meta
      (lambda _%args206538206561%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args206538206561%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp208136 (list)) (__tmp208135 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp208136
         '(state)
         __tmp208135
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args206533%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args206533%_)))
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
      (let ((__tmp208137
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
        (__make-atomic-promise __tmp208137)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords206508%_ _%state206505206509%_ _%stx206510%_)
        (let ((_%state206513%_
               (if (eq? _%state206505206509%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state206505206509%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self206515%_
                  (let ((__obj208092
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208092
                       _%state206513%_
                       '1
                       '#f
                       '#f))
                    __obj208092))
                 (__tmp208138
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self206515%_ _%stx206510%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208138
             gxc#current-compile-method
             _%self206515%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords206522%_ . _%args206523%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords206522%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206522%_
                  'state:
                  absent-value))
               _%args206523%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args206506206529%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args206506206529%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self206434%_ _%stx206435%_)
        (let* ((_%g206437206454%_
                (lambda (_%g206438206451%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206438206451%_))))
               (_%g206436206501%_
                (lambda (_%g206438206457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206438206457%_))
                      (let ((_%e206441206459%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206438206457%_))))
                        (let ((_%hd206442206462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206441206459%_)))
                              (_%tl206443206464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206441206459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206443206464%_))
                              (let ((_%e206444206467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206443206464%_))))
                                (let ((_%hd206445206470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206444206467%_)))
                                      (_%tl206446206472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206444206467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206446206472%_))
                                      (let ((_%e206447206475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206446206472%_))))
                                        (let ((_%hd206448206478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206447206475%_)))
                                              (_%tl206449206480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206447206475%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206449206480%_))
                                              (let ((__tmp208139
                                                     (lambda (_%bind206499%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _%bind206499%_))
                                                           (gxc#add-module-binding!
                                                            _%bind206499%_
                                                            '#f)
                                                           '#!void))))
                                                (declare (not safe))
                                                (gx#stx-for-each1
                                                 __tmp208139
                                                 _%hd206445206470%_))
                                              (_%g206437206454%_
                                               _%g206438206457%_))))
                                      (_%g206437206454%_ _%g206438206457%_))))
                              (_%g206437206454%_ _%g206438206457%_))))
                      (_%g206437206454%_ _%g206438206457%_)))))
          (_%g206436206501%_ _%stx206435%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self206366%_ _%stx206367%_)
        (let* ((_%g206369206386%_
                (lambda (_%g206370206383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206370206383%_))))
               (_%g206368206431%_
                (lambda (_%g206370206389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206370206389%_))
                      (let ((_%e206373206391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206370206389%_))))
                        (let ((_%hd206374206394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206373206391%_)))
                              (_%tl206375206396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206373206391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206375206396%_))
                              (let ((_%e206376206399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206375206396%_))))
                                (let ((_%hd206377206402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206376206399%_)))
                                      (_%tl206378206404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206376206399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206378206404%_))
                                      (let ((_%e206379206407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206378206404%_))))
                                        (let ((_%hd206380206410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206379206407%_)))
                                              (_%tl206381206412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206379206407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206381206412%_))
                                              (gxc#add-module-binding!
                                               _%hd206377206402%_
                                               '#t)
                                              (_%g206369206386%_
                                               _%g206370206389%_))))
                                      (_%g206369206386%_ _%g206370206389%_))))
                              (_%g206369206386%_ _%g206370206389%_))))
                      (_%g206369206386%_ _%g206370206389%_)))))
          (_%g206368206431%_ _%stx206367%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self206308%_ _%stx206309%_)
        (let* ((_%g206311206325%_
                (lambda (_%g206312206322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206312206322%_))))
               (_%g206310206363%_
                (lambda (_%g206312206328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206312206328%_))
                      (let ((_%e206315206330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206312206328%_))))
                        (let ((_%hd206316206333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206315206330%_)))
                              (_%tl206317206335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206315206330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206317206335%_))
                              (let ((_%e206318206338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl206317206335%_))))
                                (let ((_%hd206319206341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206318206338%_)))
                                      (_%tl206320206343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206318206338%_))))
                                  (let ((_%ctx206360%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-local-e__0
                                            _%hd206319206341%_))))
                                    (set-box!
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _%self206308%_ 'modules))
                                     (cons _%ctx206360%_
                                           (unbox (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self206308%_
                                                     'modules)))))
                                    (let ((__tmp208140
                                           (lambda ()
                                             (let ((__tmp208141
                                                    (##structure-ref
                                                     _%ctx206360%_
                                                     '11
                                                     gx#module-context::t
                                                     '#f)))
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self206308%_
                                                __tmp208141)))))
                                      (declare (not safe))
                                      (call-with-parameters__1
                                       __tmp208140
                                       gx#current-expander-context
                                       _%ctx206360%_)))))
                              (_%g206311206325%_ _%g206312206328%_))))
                      (_%g206311206325%_ _%g206312206328%_)))))
          (_%g206310206363%_ _%stx206309%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls206262206264%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls206262206264%_
              (let ((_%decls206266%_ _%decls206262206264%_))
                (let _%lp206268%_ ((_%rest206270%_ _%decls206266%_))
                  (let* ((_%rest206271206279%_ _%rest206270%_)
                         (_%else206273206287%_ (lambda () '#f))
                         (_%K206275206296%_
                          (lambda (_%decls206290%_ _%decl206291%_)
                            (if (equal? _%decl206291%_ '(not safe))
                                '#t
                                (if (equal? _%decl206291%_ '(safe))
                                    '#f
                                    (_%lp206268%_ _%decls206290%_))))))
                    (if (pair? _%rest206271206279%_)
                        (let ((_%hd206276206299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest206271206279%_)))
                              (_%tl206277206301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest206271206279%_))))
                          (let* ((_%decl206304%_ _%hd206276206299%_)
                                 (_%decls206306%_ _%tl206277206301%_))
                            (_%K206275206296%_
                             _%decls206306%_
                             _%decl206304%_)))
                        (_%else206273206287%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id206256%_ _%syntax?206257%_)
        (let ((_%eid206259%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id206256%_))
                '1
                gx#binding::t
                '#f))
              (_%ht206260%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid206259%_))
              '#!void
              (let ((__tmp208142
                     (let ((__tmp208143
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid206259%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp208143 _%syntax?206257%_))))
                (declare (not safe))
                (hash-put! _%ht206260%_ _%eid206259%_ __tmp208142))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self206253%_ _%stx206254%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self206100%_ _%stx206101%_)
        (letrec ((_%simplify206103%_
                  (lambda (_%body206151%_)
                    (let _%lp206153%_ ((_%rest206155%_ _%body206151%_)
                                       (_%r206156%_ '()))
                      (let* ((_%rest206157206165%_ _%rest206155%_)
                             (_%else206159206173%_
                              (lambda () (reverse _%r206156%_)))
                             (_%K206161206241%_
                              (lambda (_%rest206176%_ _%hd206177%_)
                                (let* ((_%hd206178206194%_ _%hd206177%_)
                                       (_%else206182206202%_
                                        (lambda ()
                                          (_%lp206153%_
                                           _%rest206176%_
                                           (cons _%hd206177%_ _%r206156%_)))))
                                  (let ((_%K206190206231%_
                                         (lambda (_%exprs206229%_)
                                           (_%lp206153%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest206176%_
                                               _%exprs206229%_))
                                            _%r206156%_)))
                                        (_%K206185206215%_
                                         (lambda ()
                                           (if (null? _%rest206176%_)
                                               (_%lp206153%_
                                                _%rest206176%_
                                                (cons _%hd206177%_
                                                      _%r206156%_))
                                               (_%lp206153%_
                                                _%rest206176%_
                                                _%r206156%_))))
                                        (_%K206184206207%_
                                         (lambda ()
                                           (if (null? _%rest206176%_)
                                               (_%lp206153%_
                                                _%rest206176%_
                                                (cons _%hd206177%_
                                                      _%r206156%_))
                                               (_%lp206153%_
                                                _%rest206176%_
                                                _%r206156%_)))))
                                    (let ((_%try-match206181206210%_
                                           (lambda ()
                                             (if (symbol? _%hd206178206194%_)
                                                 (_%K206184206207%_)
                                                 (_%else206182206202%_)))))
                                      (if (pair? _%hd206178206194%_)
                                          (let ((_%tl206192206236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd206178206194%_)))
                                                (_%hd206191206234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd206178206194%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd206191206234%_
                                                         'begin))
                                                (let ((_%exprs206239%_
                                                       _%tl206192206236%_))
                                                  (_%K206190206231%_
                                                   _%exprs206239%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd206191206234%_
                                                             'quote))
                                                    (if (pair? _%tl206192206236%_)
                                                        (let ((_%tl206189206223%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl206192206236%_))))
                  (if (null? _%tl206189206223%_)
                      (_%K206185206215%_)
                      (_%try-match206181206210%_)))
                (_%try-match206181206210%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match206181206210%_))))
                                          (_%try-match206181206210%_))))))))
                        (if (pair? _%rest206157206165%_)
                            (let ((_%hd206162206244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest206157206165%_)))
                                  (_%tl206163206246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest206157206165%_))))
                              (let* ((_%hd206249%_ _%hd206162206244%_)
                                     (_%rest206251%_ _%tl206163206246%_))
                                (_%K206161206241%_
                                 _%rest206251%_
                                 _%hd206249%_)))
                            (_%else206159206173%_)))))))
          (let* ((_%g206105206115%_
                  (lambda (_%g206106206112%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g206106206112%_))))
                 (_%g206104206148%_
                  (lambda (_%g206106206118%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g206106206118%_))
                        (let ((_%e206108206120%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g206106206118%_))))
                          (let ((_%hd206109206123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206108206120%_)))
                                (_%tl206110206125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206108206120%_))))
                            (let* ((_%body206143%_
                                    (map (lambda (_%g206138206140%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self206100%_
                                              _%g206138206140%_)))
                                         _%tl206110206125%_))
                                   (_%body206145%_
                                    (_%simplify206103%_ _%body206143%_)))
                              (if (let ((__tmp208144 (length _%body206145%_)))
                                    (declare (not safe))
                                    (##fx= __tmp208144 '1))
                                  (car _%body206145%_)
                                  (cons 'begin _%body206145%_)))))
                        (_%g206105206115%_ _%g206106206118%_)))))
            (_%g206104206148%_ _%stx206101%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self206061%_ _%stx206062%_)
        (let* ((_%g206064206074%_
                (lambda (_%g206065206071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206065206071%_))))
               (_%g206063206097%_
                (lambda (_%g206065206077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206065206077%_))
                      (let ((_%e206067206079%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g206065206077%_))))
                        (let ((_%hd206068206082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206067206079%_)))
                              (_%tl206069206084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206067206079%_))))
                          (cons 'begin
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax->datum _%tl206069206084%_)))))
                      (_%g206064206074%_ _%g206065206077%_)))))
          (_%g206063206097%_ _%stx206062%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self205827%_ _%stx205828%_)
        (let* ((_%__stx206734206735%_ _%stx205828%_)
               (_%g205832205884%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206734206735%_)))))
          (let ((_%__kont206736206737%_
                 (lambda (_%g205834206043%_ _%g205835206044%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self205827%_ _%g205834206043%_))))
                (_%__kont206738206739%_
                 (lambda (_%g205845205991%_
                          _%g205846205992%_
                          _%g205847205993%_)
                   (if (let ((__tmp208145
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g205847205993%_))))
                         (declare (not safe))
                         (##memq __tmp208145 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self205827%_
                          _%g205845205991%_)))))
                (_%__kont206742206743%_
                 (lambda (_%g205869205913%_ _%g205870205914%_)
                   (let ((_%decls205929%_
                          (map gx#syntax->datum _%g205870205914%_)))
                     (let ((__tmp208148
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls205929%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205827%_
                                                   _%g205869205913%_))
                                                '())))))
                           (__tmp208146
                            (let ((__tmp208147
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp208147 _%decls205929%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp208148
                        gxc#current-compile-decls
                        __tmp208146))))))
            (let* ((_%__match206789206790%_
                    (lambda (_%e205848205937%_
                             _%hd205849205940%_
                             _%tl205850205942%_
                             _%e205851205945%_
                             _%hd205852205948%_
                             _%tl205853205950%_
                             _%e205854205953%_
                             _%hd205855205956%_
                             _%tl205856205958%_
                             _%__splice206740206741%_
                             _%target205857205961%_
                             _%tl205859205963%_)
                      (letrec ((_%loop205860205966%_
                                (lambda (_%hd205858205969%_
                                         _%param205864205971%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205858205969%_))
                                      (let ((_%e205861205973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205858205969%_))))
                                        (let ((_%lp-tl205863205978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205861205973%_)))
                                              (_%lp-hd205862205976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205861205973%_))))
                                          (_%loop205860205966%_
                                           _%lp-tl205863205978%_
                                           (cons _%lp-hd205862205976%_
                                                 _%param205864205971%_))))
                                      (let ((_%param205865205981%_
                                             (reverse _%param205864205971%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205853205950%_))
                                            (let ((_%e205866205983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl205853205950%_))))
                                              (let ((_%tl205868205988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205866205983%_)))
                                                    (_%hd205867205986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205866205983%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl205868205988%_))
                                                    (let ((_%g205845205991%_
                                                           _%hd205867205986%_)
                                                          (_%g205846205992%_
                                                           _%param205865205981%_)
                                                          (_%g205847205993%_
                                                           _%hd205855205956%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g205847205993%_))
                       (not (let ((__tmp208149
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g205847205993%_))))
                              (declare (not safe))
                              (##memq __tmp208149 gxc#gambit-annotations))))
                  (_%__kont206738206739%_
                   _%g205845205991%_
                   _%g205846205992%_
                   _%g205847205993%_)
                  (_%__kont206742206743%_
                   _%hd205867205986%_
                   _%hd205852205948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g205832205884%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g205832205884%_))))))))
                        (_%loop205860205966%_ _%target205857205961%_ '()))))
                   (_%__match206763206764%_
                    (lambda (_%e205836206019%_
                             _%hd205837206022%_
                             _%tl205838206024%_
                             _%e205839206027%_
                             _%hd205840206030%_
                             _%tl205841206032%_
                             _%e205842206035%_
                             _%hd205843206038%_
                             _%tl205844206040%_)
                      (let ((_%g205834206043%_ _%hd205843206038%_)
                            (_%g205835206044%_ _%hd205840206030%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g205835206044%_))
                            (_%__kont206736206737%_
                             _%g205834206043%_
                             _%g205835206044%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd205840206030%_))
                                (let ((_%e205854205953%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd205840206030%_))))
                                  (let ((_%tl205856205958%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205854205953%_)))
                                        (_%hd205855205956%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205854205953%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl205856205958%_))
                                        (let ((_%__splice206740206741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl205856205958%_
                                                  '0))))
                                          (let ((_%tl205859205963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice206740206741%_
                                                    '1)))
                                                (_%target205857205961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice206740206741%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205859205963%_))
                                                (_%__match206789206790%_
                                                 _%e205836206019%_
                                                 _%hd205837206022%_
                                                 _%tl205838206024%_
                                                 _%e205839206027%_
                                                 _%hd205840206030%_
                                                 _%tl205841206032%_
                                                 _%e205854205953%_
                                                 _%hd205855205956%_
                                                 _%tl205856205958%_
                                                 _%__splice206740206741%_
                                                 _%target205857205961%_
                                                 _%tl205859205963%_)
                                                (_%__kont206742206743%_
                                                 _%hd205843206038%_
                                                 _%hd205840206030%_))))
                                        (_%__kont206742206743%_
                                         _%hd205843206038%_
                                         _%hd205840206030%_))))
                                (_%__kont206742206743%_
                                 _%hd205843206038%_
                                 _%hd205840206030%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206734206735%_))
                  (let ((_%e205836206019%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206734206735%_))))
                    (let ((_%tl205838206024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205836206019%_)))
                          (_%hd205837206022%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205836206019%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205838206024%_))
                          (let ((_%e205839206027%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl205838206024%_))))
                            (let ((_%tl205841206032%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205839206027%_)))
                                  (_%hd205840206030%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205839206027%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl205841206032%_))
                                  (let ((_%e205842206035%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl205841206032%_))))
                                    (let ((_%tl205844206040%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e205842206035%_)))
                                          (_%hd205843206038%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e205842206035%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl205844206040%_))
                                          (_%__match206763206764%_
                                           _%e205836206019%_
                                           _%hd205837206022%_
                                           _%tl205838206024%_
                                           _%e205839206027%_
                                           _%hd205840206030%_
                                           _%tl205841206032%_
                                           _%e205842206035%_
                                           _%hd205843206038%_
                                           _%tl205844206040%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd205840206030%_))
                                              (let ((_%e205854205953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd205840206030%_))))
                                                (let ((_%tl205856205958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205854205953%_)))
                                                      (_%hd205855205956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205854205953%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl205856205958%_))
                                                      (let ((_%__splice206740206741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl205856205958%_
                        '0))))
                (let ((_%tl205859205963%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206740206741%_ '1)))
                      (_%target205857205961%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206740206741%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl205859205963%_))
                      (_%__match206789206790%_
                       _%e205836206019%_
                       _%hd205837206022%_
                       _%tl205838206024%_
                       _%e205839206027%_
                       _%hd205840206030%_
                       _%tl205841206032%_
                       _%e205854205953%_
                       _%hd205855205956%_
                       _%tl205856205958%_
                       _%__splice206740206741%_
                       _%target205857205961%_
                       _%tl205859205963%_)
                      (let () (declare (not safe)) (_%g205832205884%_)))))
              (let () (declare (not safe)) (_%g205832205884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g205832205884%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd205840206030%_))
                                      (let ((_%e205854205953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd205840206030%_))))
                                        (let ((_%tl205856205958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205854205953%_)))
                                              (_%hd205855205956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205854205953%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl205856205958%_))
                                              (let ((_%__splice206740206741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl205856205958%_
                                                        '0))))
                                                (let ((_%tl205859205963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206740206741%_
                                                          '1)))
                                                      (_%target205857205961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206740206741%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205859205963%_))
                                                      (_%__match206789206790%_
                                                       _%e205836206019%_
                                                       _%hd205837206022%_
                                                       _%tl205838206024%_
                                                       _%e205839206027%_
                                                       _%hd205840206030%_
                                                       _%tl205841206032%_
                                                       _%e205854205953%_
                                                       _%hd205855205956%_
                                                       _%tl205856205958%_
                                                       _%__splice206740206741%_
                                                       _%target205857205961%_
                                                       _%tl205859205963%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g205832205884%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205832205884%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g205832205884%_))))))
                          (let () (declare (not safe)) (_%g205832205884%_)))))
                  (let () (declare (not safe)) (_%g205832205884%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self205786%_ _%stx205787%_)
        (let* ((_%g205789205799%_
                (lambda (_%g205790205796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205790205796%_))))
               (_%g205788205824%_
                (lambda (_%g205790205802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205790205802%_))
                      (let ((_%e205792205804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205790205802%_))))
                        (let ((_%hd205793205807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205792205804%_)))
                              (_%tl205794205809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205792205804%_))))
                          (let ((_%decls205822%_
                                 (map gx#syntax->datum _%tl205794205809%_)))
                            (let ((__tmp208150
                                   (let ((__tmp208151
                                          (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls))))
                                     (declare (not safe))
                                     (foldr__0
                                      cons
                                      __tmp208151
                                      _%decls205822%_))))
                              (declare (not safe))
                              (gxc#current-compile-decls __tmp208150))
                            (cons 'declare _%decls205822%_))))
                      (_%g205789205799%_ _%g205790205802%_)))))
          (_%g205788205824%_ _%stx205787%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self205533%_ _%stx205534%_)
        (let* ((_%g205536205553%_
                (lambda (_%g205537205550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205537205550%_))))
               (_%g205535205783%_
                (lambda (_%g205537205556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205537205556%_))
                      (let ((_%e205540205558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205537205556%_))))
                        (let ((_%hd205541205561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205540205558%_)))
                              (_%tl205542205563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205540205558%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205542205563%_))
                              (let ((_%e205543205566%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205542205563%_))))
                                (let ((_%hd205544205569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205543205566%_)))
                                      (_%tl205545205571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205543205566%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205545205571%_))
                                      (let ((_%e205546205574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205545205571%_))))
                                        (let ((_%hd205547205577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205546205574%_)))
                                              (_%tl205548205579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205546205574%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205548205579%_))
                                              (let* ((_%__stx206842206843%_
                                                      _%hd205544205569%_)
                                                     (_%g205600205614%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx206842206843%_)))))
                                                (let ((_%__kont206844206845%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self205533%_
                                                            _%hd205547205577%_))))
                                                      (_%__kont206846206847%_
                                                       (lambda (_%g205606205746%_)
                                                         (let ((_%eid205755%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id
                           _%g205606205746%_))))
                   (let ((_%lambda-expr205756205758%_
                          (gxc#apply-find-lambda-expression
                           _%hd205547205577%_)))
                     (if _%lambda-expr205756205758%_
                         (let* ((_%lambda-expr205760%_
                                 _%lambda-expr205756205758%_)
                                (__tmp208152
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-names))))
                           (declare (not safe))
                           (hash-put!
                            __tmp208152
                            _%lambda-expr205760%_
                            _%eid205755%_))
                         '#f))
                   (cons 'define
                         (cons _%eid205755%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self205533%_
                                        _%hd205547205577%_))
                                     '()))))))
              (_%__kont206848206849%_
               (lambda ()
                 (let* ((_%tmp205621%_
                         (let ()
                           (declare (not safe))
                           (gxc#generate-runtime-temporary__% '#t)))
                        (_%body205730%_
                         (let _%lp205623%_ ((_%rest205625%_ _%hd205544205569%_)
                                            (_%k205626%_ '0)
                                            (_%r205627%_ '()))
                           (let* ((_%__stx206812206813%_ _%rest205625%_)
                                  (_%g205632205649%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx206812206813%_)))))
                             (let ((_%__kont206814206815%_
                                    (lambda (_%g205634205717%_)
                                      (_%lp205623%_
                                       _%g205634205717%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k205626%_ '1))
                                       _%r205627%_)))
                                   (_%__kont206816206817%_
                                    (lambda (_%g205639205690%_
                                             _%g205640205691%_)
                                      (_%lp205623%_
                                       _%g205639205690%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k205626%_ '1))
                                       (cons (cons 'define
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g205640205691%_))
                                                         (cons (gxc#generate-runtime-values-ref
                                                                _%tmp205621%_
                                                                _%k205626%_
                                                                _%g205639205690%_)
                                                               '())))
                                             _%r205627%_))))
                                   (_%__kont206818206819%_
                                    (lambda (_%g205644205661%_)
                                      (let ((__tmp208153
                                             (cons (cons 'define
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _%g205644205661%_))
                       (cons (gxc#generate-runtime-values->list
                              _%tmp205621%_
                              _%k205626%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         __tmp208153
                                         _%r205627%_))))
                                   (_%__kont206820206821%_
                                    (lambda () (reverse _%r205627%_))))
                               (let ((_%g205630205677%_
                                      (lambda ()
                                        (let ((_%g205644205661%_
                                               _%__stx206812206813%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%g205644205661%_))
                                              (_%__kont206818206819%_
                                               _%g205644205661%_)
                                              (_%__kont206820206821%_))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx206812206813%_))
                                     (let ((_%e205635205706%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx206812206813%_))))
                                       (let ((_%tl205637205711%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205635205706%_)))
                                             (_%hd205636205709%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205635205706%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd205636205709%_))
                                             (let ((_%e205638205714%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd205636205709%_))))
                                               (if (equal? _%e205638205714%_
                                                           '#f)
                                                   (_%__kont206814206815%_
                                                    _%tl205637205711%_)
                                                   (_%__kont206816206817%_
                                                    _%tl205637205711%_
                                                    _%hd205636205709%_)))
                                             (_%__kont206816206817%_
                                              _%tl205637205711%_
                                              _%hd205636205709%_))))
                                     (_%g205630205677%_))))))))
                   (cons 'begin
                         (cons (cons 'define
                                     (cons _%tmp205621%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self205533%_
                                                    _%hd205547205577%_))
                                                 '())))
                               (cons (gxc#generate-runtime-check-values
                                      _%tmp205621%_
                                      _%hd205544205569%_
                                      _%hd205547205577%_)
                                     _%body205730%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx206842206843%_))
                                                      (let ((_%e205602205767%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx206842206843%_))))
                (let ((_%tl205604205772%_
                       (let () (declare (not safe)) (##cdr _%e205602205767%_)))
                      (_%hd205603205770%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205602205767%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205603205770%_))
                      (let ((_%e205605205775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205603205770%_))))
                        (if (equal? _%e205605205775%_ '#f)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205604205772%_))
                                (_%__kont206844206845%_)
                                (_%__kont206848206849%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205604205772%_))
                                (_%__kont206846206847%_ _%hd205603205770%_)
                                (_%__kont206848206849%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205604205772%_))
                          (_%__kont206846206847%_ _%hd205603205770%_)
                          (_%__kont206848206849%_)))))
              (_%__kont206848206849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205536205553%_
                                               _%g205537205556%_))))
                                      (_%g205536205553%_ _%g205537205556%_))))
                              (_%g205536205553%_ _%g205537205556%_))))
                      (_%g205536205553%_ _%g205537205556%_)))))
          (_%g205535205783%_ _%stx205534%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals205508%_ _%hd205509%_ _%expr205510%_)
        (let ((_%$e205512%_ (gxc#apply-count-values _%expr205510%_)))
          (if _%$e205512%_
              (let ((_%len205517%_
                     (let ()
                       (declare (not safe))
                       (gx#stx-length _%hd205509%_)))
                    (_%cmp205518%_
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-list? _%hd205509%_))
                         fx=
                         fx>=)))
                (if (or (let () (declare (not safe)) (##fx= _%len205517%_ '0))
                        (_%cmp205518%_ _%$e205512%_ _%len205517%_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Value count mismatch"
                       _%expr205510%_
                       _%hd205509%_))))
              (let* ((_%len205524%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd205509%_)))
                     (_%cmp205526%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd205509%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg205528%_
                      (let ((__tmp208155
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd205509%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp208154 (number->string _%len205524%_)))
                        (declare (not safe))
                        (##string-append __tmp208155 __tmp208154 '" values")))
                     (_%count205530%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd205509%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len205524%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count205530%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals205508%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp205526%_
                                (cons _%count205530%_
                                      (cons _%len205524%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp205526%_
                                                        (cons _%count205530%_
                                                              (cons _%len205524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg205528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count205530%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var205503%_)
        (letrec ((_%generate-inline205505%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var205503%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var205503%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline205505%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline205505%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var205496%_ _%i205497%_ _%rest205498%_)
        (letrec ((_%generate-inline205500%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i205497%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest205498%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var205496%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var205496%_
                                                      (cons '0 '())))
                                          (cons _%var205496%_ '()))))
                        (cons '##values-ref
                              (cons _%var205496%_ (cons _%i205497%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline205500%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline205500%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var205490%_ _%i205491%_)
        (if (let () (declare (not safe)) (##fx= _%i205491%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var205490%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var205490%_ '()))
                                  (cons (cons 'list (cons _%var205490%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var205490%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var205490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var205490%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i205491%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var205490%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var205490%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var205490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var205490%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var205490%_ '()))
                                (cons _%i205491%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var205490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i205491%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self205422%_ _%stx205423%_)
        (let* ((_%g205425205442%_
                (lambda (_%g205426205439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205426205439%_))))
               (_%g205424205487%_
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
                                              (gxc#generate-runtime-lambda-form
                                               _%self205422%_
                                               _%hd205433205458%_
                                               _%hd205436205466%_)
                                              (_%g205425205442%_
                                               _%g205426205445%_))))
                                      (_%g205425205442%_ _%g205426205445%_))))
                              (_%g205425205442%_ _%g205426205445%_))))
                      (_%g205425205442%_ _%g205426205445%_)))))
          (_%g205424205487%_ _%stx205423%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self205381%_ _%hd205382%_ _%body205383%_)
        (let* ((_%hd205385%_ (gxc#generate-runtime-lambda-head _%hd205382%_))
               (_%body205387%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self205381%_ _%body205383%_)))
               (_%body205419%_
                (let* ((_%body205388205396%_ _%body205387%_)
                       (_%else205390205404%_
                        (lambda () (cons _%body205387%_ '())))
                       (_%K205392205409%_
                        (lambda (_%exprs205407%_) _%exprs205407%_)))
                  (if (pair? _%body205388205396%_)
                      (let ((_%hd205393205412%_
                             (let ()
                               (declare (not safe))
                               (##car _%body205388205396%_)))
                            (_%tl205394205414%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body205388205396%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd205393205412%_ 'begin))
                            (let ((_%exprs205417%_ _%tl205394205414%_))
                              (_%K205392205409%_ _%exprs205417%_))
                            (_%else205390205404%_)))
                      (_%else205390205404%_)))))
          (cons 'lambda (cons _%hd205385%_ _%body205419%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd205379%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd205379%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self203936%_ _%stx203937%_)
        (letrec ((_%dispatch-case?203939%_
                  (lambda (_%hd204617%_ _%body204618%_)
                    (let* ((_%form204620%_
                            (cons _%hd204617%_ (cons _%body204618%_ '())))
                           (_%__stx206874206875%_ _%form204620%_)
                           (_%g204625204782%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206874206875%_)))))
                      (let ((_%__kont206876206877%_
                             (lambda (_%g204627205299%_
                                      _%g204628205300%_
                                      _%g204629205301%_)
                               '#t))
                            (_%__kont206882206883%_
                             (lambda (_%g204672205091%_
                                      _%g204673205092%_
                                      _%g204674205093%_
                                      _%g204675205094%_
                                      _%g204676205095%_
                                      _%g204677205096%_)
                               '#t))
                            (_%__kont206888206889%_
                             (lambda (_%g204738204890%_
                                      _%g204739204891%_
                                      _%g204740204892%_
                                      _%g204741204893%_)
                               '#t))
                            (_%__kont206890206891%_ (lambda () '#f)))
                        (let* ((_%__match207015207016%_
                                (lambda (_%e204742204794%_
                                         _%hd204743204797%_
                                         _%tl204744204799%_
                                         _%e204745204802%_
                                         _%hd204746204805%_
                                         _%tl204747204807%_
                                         _%e204748204810%_
                                         _%hd204749204813%_
                                         _%tl204750204815%_
                                         _%e204751204818%_
                                         _%hd204752204821%_
                                         _%tl204753204823%_
                                         _%e204754204826%_
                                         _%hd204755204829%_
                                         _%tl204756204831%_
                                         _%e204757204834%_
                                         _%hd204758204837%_
                                         _%tl204759204839%_
                                         _%e204760204842%_
                                         _%hd204761204845%_
                                         _%tl204762204847%_
                                         _%e204763204850%_
                                         _%hd204764204853%_
                                         _%tl204765204855%_
                                         _%e204766204858%_
                                         _%hd204767204861%_
                                         _%tl204768204863%_
                                         _%e204769204866%_
                                         _%hd204770204869%_
                                         _%tl204771204871%_
                                         _%e204772204874%_
                                         _%hd204773204877%_
                                         _%tl204774204879%_
                                         _%e204775204882%_
                                         _%hd204776204885%_
                                         _%tl204777204887%_)
                                  (let ((_%g204738204890%_ _%hd204776204885%_)
                                        (_%g204739204891%_ _%hd204767204861%_)
                                        (_%g204740204892%_ _%hd204758204837%_)
                                        (_%g204741204893%_ _%hd204743204797%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g204741204893%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g204740204892%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g204741204893%_
                                                _%g204738204890%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g204739204891%_
                                                     _%g204741204893%_))))
                                        (_%__kont206888206889%_
                                         _%g204738204890%_
                                         _%g204739204891%_
                                         _%g204740204892%_
                                         _%g204741204893%_)
                                        (_%__kont206890206891%_)))))
                               (_%__match206987206988%_
                                (lambda (_%e204742204794%_
                                         _%hd204743204797%_
                                         _%tl204744204799%_
                                         _%e204745204802%_
                                         _%hd204746204805%_
                                         _%tl204747204807%_
                                         _%e204748204810%_
                                         _%hd204749204813%_
                                         _%tl204750204815%_
                                         _%e204751204818%_
                                         _%hd204752204821%_
                                         _%tl204753204823%_
                                         _%e204754204826%_
                                         _%hd204755204829%_
                                         _%tl204756204831%_
                                         _%e204757204834%_
                                         _%hd204758204837%_
                                         _%tl204759204839%_
                                         _%e204760204842%_
                                         _%hd204761204845%_
                                         _%tl204762204847%_
                                         _%e204763204850%_
                                         _%hd204764204853%_
                                         _%tl204765204855%_
                                         _%e204766204858%_
                                         _%hd204767204861%_
                                         _%tl204768204863%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204762204847%_))
                                      (let ((_%e204769204866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204762204847%_))))
                                        (let ((_%tl204771204871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204769204866%_)))
                                              (_%hd204770204869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204769204866%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd204770204869%_))
                                              (let ((_%e204772204874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204770204869%_))))
                                                (let ((_%tl204774204879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204772204874%_)))
                                                      (_%hd204773204877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204772204874%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd204773204877%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd204773204877%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204774204879%_))
                      (let ((_%e204775204882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204774204879%_))))
                        (let ((_%tl204777204887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204775204882%_)))
                              (_%hd204776204885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204775204882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204777204887%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204771204871%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204747204807%_))
                                      (_%__match207015207016%_
                                       _%e204742204794%_
                                       _%hd204743204797%_
                                       _%tl204744204799%_
                                       _%e204745204802%_
                                       _%hd204746204805%_
                                       _%tl204747204807%_
                                       _%e204748204810%_
                                       _%hd204749204813%_
                                       _%tl204750204815%_
                                       _%e204751204818%_
                                       _%hd204752204821%_
                                       _%tl204753204823%_
                                       _%e204754204826%_
                                       _%hd204755204829%_
                                       _%tl204756204831%_
                                       _%e204757204834%_
                                       _%hd204758204837%_
                                       _%tl204759204839%_
                                       _%e204760204842%_
                                       _%hd204761204845%_
                                       _%tl204762204847%_
                                       _%e204763204850%_
                                       _%hd204764204853%_
                                       _%tl204765204855%_
                                       _%e204766204858%_
                                       _%hd204767204861%_
                                       _%tl204768204863%_
                                       _%e204769204866%_
                                       _%hd204770204869%_
                                       _%tl204771204871%_
                                       _%e204772204874%_
                                       _%hd204773204877%_
                                       _%tl204774204879%_
                                       _%e204775204882%_
                                       _%hd204776204885%_
                                       _%tl204777204887%_)
                                      (_%__kont206890206891%_))
                                  (_%__kont206890206891%_))
                              (_%__kont206890206891%_))))
                      (_%__kont206890206891%_))
                  (_%__kont206890206891%_))
              (_%__kont206890206891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont206890206891%_))))
                                      (_%__kont206890206891%_))))
                               (_%__match206917206918%_
                                (lambda (_%e204678204935%_
                                         _%hd204679204938%_
                                         _%tl204680204940%_
                                         _%__splice206884206885%_
                                         _%target204681204943%_
                                         _%tl204683204945%_)
                                  (letrec ((_%loop204684204948%_
                                            (lambda (_%hd204682204951%_
                                                     _%arg204688204953%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204682204951%_))
                                                  (let ((_%e204685204955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204682204951%_))))
                                                    (let ((_%lp-tl204687204960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204685204955%_)))
                                                          (_%lp-hd204686204958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204685204955%_))))
                                                      (_%loop204684204948%_
                                                       _%lp-tl204687204960%_
                                                       (cons _%lp-hd204686204958%_
                                                             _%arg204688204953%_))))
                                                  (let ((_%arg204689204963%_
                                                         (reverse _%arg204688204953%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204680204940%_))
                                                        (let ((_%e204690204965%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl204680204940%_))))
                  (let ((_%tl204692204970%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204690204965%_)))
                        (_%hd204691204968%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204690204965%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204691204968%_))
                        (let ((_%e204693204973%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd204691204968%_))))
                          (let ((_%tl204695204978%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204693204973%_)))
                                (_%hd204694204976%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204693204973%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204694204976%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd204694204976%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204695204978%_))
                                        (let ((_%e204696204981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204695204978%_))))
                                          (let ((_%tl204698204986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204696204981%_)))
                                                (_%hd204697204984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204696204981%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd204697204984%_))
                                                (let ((_%e204699204989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204697204984%_))))
                                                  (let ((_%tl204701204994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204699204989%_)))
                                                        (_%hd204700204992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204699204989%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd204700204992%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd204700204992%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204701204994%_))
                        (let ((_%e204702204997%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl204701204994%_))))
                          (let ((_%tl204704205002%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204702204997%_)))
                                (_%hd204703205000%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204702204997%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204704205002%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl204698204986%_))
                                    (let ((_%e204705205005%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl204698204986%_))))
                                      (let ((_%tl204707205010%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204705205005%_)))
                                            (_%hd204706205008%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204705205005%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd204706205008%_))
                                            (let ((_%e204708205013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd204706205008%_))))
                                              (let ((_%tl204710205018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204708205013%_)))
                                                    (_%hd204709205016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204708205013%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd204709205016%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd204709205016%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl204710205018%_))
                                                            (let ((_%e204711205021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl204710205018%_))))
                      (let ((_%tl204713205026%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204711205021%_)))
                            (_%hd204712205024%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204711205021%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204713205026%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl204707205010%_))
                                (if (let ((__tmp208156
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl204707205010%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp208156 '1))
                                    (let ((_%__splice206886206887%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl204707205010%_
                                              '1))))
                                      (let ((_%tl204716205031%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206886206887%_
                                                '1)))
                                            (_%target204714205029%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206886206887%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204716205031%_))
                                            (let ((_%e204723205034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204716205031%_))))
                                              (let ((_%tl204725205039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204723205034%_)))
                                                    (_%hd204724205037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204723205034%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd204724205037%_))
                                                    (let ((_%e204726205042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204724205037%_))))
                                                      (let ((_%tl204728205047%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e204726205042%_)))
                    (_%hd204727205045%_
                     (let () (declare (not safe)) (##car _%e204726205042%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd204727205045%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd204727205045%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204728205047%_))
                            (let ((_%e204729205050%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl204728205047%_))))
                              (let ((_%tl204731205055%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204729205050%_)))
                                    (_%hd204730205053%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204729205050%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204731205055%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204725205039%_))
                                        (letrec ((_%loop204717205058%_
                                                  (lambda (_%hd204715205061%_
                                                           _%xarg204721205063%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204715205061%_))
                                                        (let ((_%e204718205065%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd204715205061%_))))
                  (let ((_%lp-tl204720205070%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204718205065%_)))
                        (_%lp-hd204719205068%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204718205065%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204719205068%_))
                        (let ((_%e204732205073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd204719205068%_))))
                          (let ((_%tl204734205078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204732205073%_)))
                                (_%hd204733205076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204732205073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204733205076%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd204733205076%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204734205078%_))
                                        (let ((_%e204735205081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204734205078%_))))
                                          (let ((_%tl204737205086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204735205081%_)))
                                                (_%hd204736205084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204735205081%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204737205086%_))
                                                (_%loop204717205058%_
                                                 _%lp-tl204720205070%_
                                                 (cons _%hd204736205084%_
                                                       _%xarg204721205063%_))
                                                (_%__match206987206988%_
                                                 _%e204678204935%_
                                                 _%hd204679204938%_
                                                 _%tl204680204940%_
                                                 _%e204690204965%_
                                                 _%hd204691204968%_
                                                 _%tl204692204970%_
                                                 _%e204693204973%_
                                                 _%hd204694204976%_
                                                 _%tl204695204978%_
                                                 _%e204696204981%_
                                                 _%hd204697204984%_
                                                 _%tl204698204986%_
                                                 _%e204699204989%_
                                                 _%hd204700204992%_
                                                 _%tl204701204994%_
                                                 _%e204702204997%_
                                                 _%hd204703205000%_
                                                 _%tl204704205002%_
                                                 _%e204705205005%_
                                                 _%hd204706205008%_
                                                 _%tl204707205010%_
                                                 _%e204708205013%_
                                                 _%hd204709205016%_
                                                 _%tl204710205018%_
                                                 _%e204711205021%_
                                                 _%hd204712205024%_
                                                 _%tl204713205026%_))))
                                        (_%__match206987206988%_
                                         _%e204678204935%_
                                         _%hd204679204938%_
                                         _%tl204680204940%_
                                         _%e204690204965%_
                                         _%hd204691204968%_
                                         _%tl204692204970%_
                                         _%e204693204973%_
                                         _%hd204694204976%_
                                         _%tl204695204978%_
                                         _%e204696204981%_
                                         _%hd204697204984%_
                                         _%tl204698204986%_
                                         _%e204699204989%_
                                         _%hd204700204992%_
                                         _%tl204701204994%_
                                         _%e204702204997%_
                                         _%hd204703205000%_
                                         _%tl204704205002%_
                                         _%e204705205005%_
                                         _%hd204706205008%_
                                         _%tl204707205010%_
                                         _%e204708205013%_
                                         _%hd204709205016%_
                                         _%tl204710205018%_
                                         _%e204711205021%_
                                         _%hd204712205024%_
                                         _%tl204713205026%_))
                                    (_%__match206987206988%_
                                     _%e204678204935%_
                                     _%hd204679204938%_
                                     _%tl204680204940%_
                                     _%e204690204965%_
                                     _%hd204691204968%_
                                     _%tl204692204970%_
                                     _%e204693204973%_
                                     _%hd204694204976%_
                                     _%tl204695204978%_
                                     _%e204696204981%_
                                     _%hd204697204984%_
                                     _%tl204698204986%_
                                     _%e204699204989%_
                                     _%hd204700204992%_
                                     _%tl204701204994%_
                                     _%e204702204997%_
                                     _%hd204703205000%_
                                     _%tl204704205002%_
                                     _%e204705205005%_
                                     _%hd204706205008%_
                                     _%tl204707205010%_
                                     _%e204708205013%_
                                     _%hd204709205016%_
                                     _%tl204710205018%_
                                     _%e204711205021%_
                                     _%hd204712205024%_
                                     _%tl204713205026%_))
                                (_%__match206987206988%_
                                 _%e204678204935%_
                                 _%hd204679204938%_
                                 _%tl204680204940%_
                                 _%e204690204965%_
                                 _%hd204691204968%_
                                 _%tl204692204970%_
                                 _%e204693204973%_
                                 _%hd204694204976%_
                                 _%tl204695204978%_
                                 _%e204696204981%_
                                 _%hd204697204984%_
                                 _%tl204698204986%_
                                 _%e204699204989%_
                                 _%hd204700204992%_
                                 _%tl204701204994%_
                                 _%e204702204997%_
                                 _%hd204703205000%_
                                 _%tl204704205002%_
                                 _%e204705205005%_
                                 _%hd204706205008%_
                                 _%tl204707205010%_
                                 _%e204708205013%_
                                 _%hd204709205016%_
                                 _%tl204710205018%_
                                 _%e204711205021%_
                                 _%hd204712205024%_
                                 _%tl204713205026%_))))
                        (_%__match206987206988%_
                         _%e204678204935%_
                         _%hd204679204938%_
                         _%tl204680204940%_
                         _%e204690204965%_
                         _%hd204691204968%_
                         _%tl204692204970%_
                         _%e204693204973%_
                         _%hd204694204976%_
                         _%tl204695204978%_
                         _%e204696204981%_
                         _%hd204697204984%_
                         _%tl204698204986%_
                         _%e204699204989%_
                         _%hd204700204992%_
                         _%tl204701204994%_
                         _%e204702204997%_
                         _%hd204703205000%_
                         _%tl204704205002%_
                         _%e204705205005%_
                         _%hd204706205008%_
                         _%tl204707205010%_
                         _%e204708205013%_
                         _%hd204709205016%_
                         _%tl204710205018%_
                         _%e204711205021%_
                         _%hd204712205024%_
                         _%tl204713205026%_))))
                (let ((_%xarg204722205089%_ (reverse _%xarg204721205063%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204692204970%_))
                      (let ((_%g204672205091%_ _%hd204730205053%_)
                            (_%g204673205092%_ _%xarg204722205089%_)
                            (_%g204674205093%_ _%hd204712205024%_)
                            (_%g204675205094%_ _%hd204703205000%_)
                            (_%g204676205095%_ _%tl204683204945%_)
                            (_%g204677205096%_ _%arg204689204963%_))
                        (if (and (let ((__tmp208157
                                        (let ((__tmp208158
                                               (lambda (_%g205139205142%_
                                                        _%g205140205144%_)
                                                 (cons _%g205139205142%_
                                                       _%g205140205144%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp208158
                                           '()
                                           _%g204677205096%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp208157))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g204676205095%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g204675205094%_
                                    'apply))
                                 (let ((__tmp208161
                                        (length (let ((__tmp208162
                                                       (lambda (_%g205146205149%_
                                                                _%g205147205151%_)
                                                         (cons _%g205146205149%_
                                                               _%g205147205151%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp208162
                                                   '()
                                                   _%g204677205096%_))))
                                       (__tmp208159
                                        (length (let ((__tmp208160
                                                       (lambda (_%g205153205156%_
                                                                _%g205154205158%_)
                                                         (cons _%g205153205156%_
                                                               _%g205154205158%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp208160
                                                   '()
                                                   _%g204673205092%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp208161 __tmp208159))
                                 (let ((__tmp208165
                                        (let ((__tmp208166
                                               (lambda (_%g205160205163%_
                                                        _%g205161205165%_)
                                                 (cons _%g205160205163%_
                                                       _%g205161205165%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp208166
                                           '()
                                           _%g204677205096%_)))
                                       (__tmp208163
                                        (let ((__tmp208164
                                               (lambda (_%g205167205170%_
                                                        _%g205168205172%_)
                                                 (cons _%g205167205170%_
                                                       _%g205168205172%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp208164
                                           '()
                                           _%g204673205092%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp208165
                                    __tmp208163))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g204676205095%_
                                    _%g204672205091%_))
                                 (not (let ((__tmp208170
                                             (lambda (_%g205174205176%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g205174205176%_
                                                  _%g204674205093%_))))
                                            (__tmp208167
                                             (let ((__tmp208169
                                                    (lambda (_%g205178205181%_
                                                             _%g205179205183%_)
                                                      (cons _%g205178205181%_
                                                            _%g205179205183%_)))
                                                   (__tmp208168
                                                    (cons _%g204676205095%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp208169
                                                __tmp208168
                                                _%g204677205096%_))))
                                        (declare (not safe))
                                        (__find __tmp208170 __tmp208167))))
                            (_%__kont206882206883%_
                             _%g204672205091%_
                             _%g204673205092%_
                             _%g204674205093%_
                             _%g204675205094%_
                             _%g204676205095%_
                             _%g204677205096%_)
                            (_%__match206987206988%_
                             _%e204678204935%_
                             _%hd204679204938%_
                             _%tl204680204940%_
                             _%e204690204965%_
                             _%hd204691204968%_
                             _%tl204692204970%_
                             _%e204693204973%_
                             _%hd204694204976%_
                             _%tl204695204978%_
                             _%e204696204981%_
                             _%hd204697204984%_
                             _%tl204698204986%_
                             _%e204699204989%_
                             _%hd204700204992%_
                             _%tl204701204994%_
                             _%e204702204997%_
                             _%hd204703205000%_
                             _%tl204704205002%_
                             _%e204705205005%_
                             _%hd204706205008%_
                             _%tl204707205010%_
                             _%e204708205013%_
                             _%hd204709205016%_
                             _%tl204710205018%_
                             _%e204711205021%_
                             _%hd204712205024%_
                             _%tl204713205026%_)))
                      (_%__match206987206988%_
                       _%e204678204935%_
                       _%hd204679204938%_
                       _%tl204680204940%_
                       _%e204690204965%_
                       _%hd204691204968%_
                       _%tl204692204970%_
                       _%e204693204973%_
                       _%hd204694204976%_
                       _%tl204695204978%_
                       _%e204696204981%_
                       _%hd204697204984%_
                       _%tl204698204986%_
                       _%e204699204989%_
                       _%hd204700204992%_
                       _%tl204701204994%_
                       _%e204702204997%_
                       _%hd204703205000%_
                       _%tl204704205002%_
                       _%e204705205005%_
                       _%hd204706205008%_
                       _%tl204707205010%_
                       _%e204708205013%_
                       _%hd204709205016%_
                       _%tl204710205018%_
                       _%e204711205021%_
                       _%hd204712205024%_
                       _%tl204713205026%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204717205058%_
                                           _%target204714205029%_
                                           '()))
                                        (_%__match206987206988%_
                                         _%e204678204935%_
                                         _%hd204679204938%_
                                         _%tl204680204940%_
                                         _%e204690204965%_
                                         _%hd204691204968%_
                                         _%tl204692204970%_
                                         _%e204693204973%_
                                         _%hd204694204976%_
                                         _%tl204695204978%_
                                         _%e204696204981%_
                                         _%hd204697204984%_
                                         _%tl204698204986%_
                                         _%e204699204989%_
                                         _%hd204700204992%_
                                         _%tl204701204994%_
                                         _%e204702204997%_
                                         _%hd204703205000%_
                                         _%tl204704205002%_
                                         _%e204705205005%_
                                         _%hd204706205008%_
                                         _%tl204707205010%_
                                         _%e204708205013%_
                                         _%hd204709205016%_
                                         _%tl204710205018%_
                                         _%e204711205021%_
                                         _%hd204712205024%_
                                         _%tl204713205026%_))
                                    (_%__match206987206988%_
                                     _%e204678204935%_
                                     _%hd204679204938%_
                                     _%tl204680204940%_
                                     _%e204690204965%_
                                     _%hd204691204968%_
                                     _%tl204692204970%_
                                     _%e204693204973%_
                                     _%hd204694204976%_
                                     _%tl204695204978%_
                                     _%e204696204981%_
                                     _%hd204697204984%_
                                     _%tl204698204986%_
                                     _%e204699204989%_
                                     _%hd204700204992%_
                                     _%tl204701204994%_
                                     _%e204702204997%_
                                     _%hd204703205000%_
                                     _%tl204704205002%_
                                     _%e204705205005%_
                                     _%hd204706205008%_
                                     _%tl204707205010%_
                                     _%e204708205013%_
                                     _%hd204709205016%_
                                     _%tl204710205018%_
                                     _%e204711205021%_
                                     _%hd204712205024%_
                                     _%tl204713205026%_))))
                            (_%__match206987206988%_
                             _%e204678204935%_
                             _%hd204679204938%_
                             _%tl204680204940%_
                             _%e204690204965%_
                             _%hd204691204968%_
                             _%tl204692204970%_
                             _%e204693204973%_
                             _%hd204694204976%_
                             _%tl204695204978%_
                             _%e204696204981%_
                             _%hd204697204984%_
                             _%tl204698204986%_
                             _%e204699204989%_
                             _%hd204700204992%_
                             _%tl204701204994%_
                             _%e204702204997%_
                             _%hd204703205000%_
                             _%tl204704205002%_
                             _%e204705205005%_
                             _%hd204706205008%_
                             _%tl204707205010%_
                             _%e204708205013%_
                             _%hd204709205016%_
                             _%tl204710205018%_
                             _%e204711205021%_
                             _%hd204712205024%_
                             _%tl204713205026%_))
                        (_%__match206987206988%_
                         _%e204678204935%_
                         _%hd204679204938%_
                         _%tl204680204940%_
                         _%e204690204965%_
                         _%hd204691204968%_
                         _%tl204692204970%_
                         _%e204693204973%_
                         _%hd204694204976%_
                         _%tl204695204978%_
                         _%e204696204981%_
                         _%hd204697204984%_
                         _%tl204698204986%_
                         _%e204699204989%_
                         _%hd204700204992%_
                         _%tl204701204994%_
                         _%e204702204997%_
                         _%hd204703205000%_
                         _%tl204704205002%_
                         _%e204705205005%_
                         _%hd204706205008%_
                         _%tl204707205010%_
                         _%e204708205013%_
                         _%hd204709205016%_
                         _%tl204710205018%_
                         _%e204711205021%_
                         _%hd204712205024%_
                         _%tl204713205026%_))
                    (_%__match206987206988%_
                     _%e204678204935%_
                     _%hd204679204938%_
                     _%tl204680204940%_
                     _%e204690204965%_
                     _%hd204691204968%_
                     _%tl204692204970%_
                     _%e204693204973%_
                     _%hd204694204976%_
                     _%tl204695204978%_
                     _%e204696204981%_
                     _%hd204697204984%_
                     _%tl204698204986%_
                     _%e204699204989%_
                     _%hd204700204992%_
                     _%tl204701204994%_
                     _%e204702204997%_
                     _%hd204703205000%_
                     _%tl204704205002%_
                     _%e204705205005%_
                     _%hd204706205008%_
                     _%tl204707205010%_
                     _%e204708205013%_
                     _%hd204709205016%_
                     _%tl204710205018%_
                     _%e204711205021%_
                     _%hd204712205024%_
                     _%tl204713205026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match206987206988%_
                                                     _%e204678204935%_
                                                     _%hd204679204938%_
                                                     _%tl204680204940%_
                                                     _%e204690204965%_
                                                     _%hd204691204968%_
                                                     _%tl204692204970%_
                                                     _%e204693204973%_
                                                     _%hd204694204976%_
                                                     _%tl204695204978%_
                                                     _%e204696204981%_
                                                     _%hd204697204984%_
                                                     _%tl204698204986%_
                                                     _%e204699204989%_
                                                     _%hd204700204992%_
                                                     _%tl204701204994%_
                                                     _%e204702204997%_
                                                     _%hd204703205000%_
                                                     _%tl204704205002%_
                                                     _%e204705205005%_
                                                     _%hd204706205008%_
                                                     _%tl204707205010%_
                                                     _%e204708205013%_
                                                     _%hd204709205016%_
                                                     _%tl204710205018%_
                                                     _%e204711205021%_
                                                     _%hd204712205024%_
                                                     _%tl204713205026%_))))
                                            (_%__match206987206988%_
                                             _%e204678204935%_
                                             _%hd204679204938%_
                                             _%tl204680204940%_
                                             _%e204690204965%_
                                             _%hd204691204968%_
                                             _%tl204692204970%_
                                             _%e204693204973%_
                                             _%hd204694204976%_
                                             _%tl204695204978%_
                                             _%e204696204981%_
                                             _%hd204697204984%_
                                             _%tl204698204986%_
                                             _%e204699204989%_
                                             _%hd204700204992%_
                                             _%tl204701204994%_
                                             _%e204702204997%_
                                             _%hd204703205000%_
                                             _%tl204704205002%_
                                             _%e204705205005%_
                                             _%hd204706205008%_
                                             _%tl204707205010%_
                                             _%e204708205013%_
                                             _%hd204709205016%_
                                             _%tl204710205018%_
                                             _%e204711205021%_
                                             _%hd204712205024%_
                                             _%tl204713205026%_))))
                                    (_%__match206987206988%_
                                     _%e204678204935%_
                                     _%hd204679204938%_
                                     _%tl204680204940%_
                                     _%e204690204965%_
                                     _%hd204691204968%_
                                     _%tl204692204970%_
                                     _%e204693204973%_
                                     _%hd204694204976%_
                                     _%tl204695204978%_
                                     _%e204696204981%_
                                     _%hd204697204984%_
                                     _%tl204698204986%_
                                     _%e204699204989%_
                                     _%hd204700204992%_
                                     _%tl204701204994%_
                                     _%e204702204997%_
                                     _%hd204703205000%_
                                     _%tl204704205002%_
                                     _%e204705205005%_
                                     _%hd204706205008%_
                                     _%tl204707205010%_
                                     _%e204708205013%_
                                     _%hd204709205016%_
                                     _%tl204710205018%_
                                     _%e204711205021%_
                                     _%hd204712205024%_
                                     _%tl204713205026%_))
                                (_%__match206987206988%_
                                 _%e204678204935%_
                                 _%hd204679204938%_
                                 _%tl204680204940%_
                                 _%e204690204965%_
                                 _%hd204691204968%_
                                 _%tl204692204970%_
                                 _%e204693204973%_
                                 _%hd204694204976%_
                                 _%tl204695204978%_
                                 _%e204696204981%_
                                 _%hd204697204984%_
                                 _%tl204698204986%_
                                 _%e204699204989%_
                                 _%hd204700204992%_
                                 _%tl204701204994%_
                                 _%e204702204997%_
                                 _%hd204703205000%_
                                 _%tl204704205002%_
                                 _%e204705205005%_
                                 _%hd204706205008%_
                                 _%tl204707205010%_
                                 _%e204708205013%_
                                 _%hd204709205016%_
                                 _%tl204710205018%_
                                 _%e204711205021%_
                                 _%hd204712205024%_
                                 _%tl204713205026%_))
                            (_%__kont206890206891%_))))
                    (_%__kont206890206891%_))
                (_%__kont206890206891%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206890206891%_))))
                                            (_%__kont206890206891%_))))
                                    (_%__kont206890206891%_))
                                (_%__kont206890206891%_))))
                        (_%__kont206890206891%_))
                    (_%__kont206890206891%_))
                (_%__kont206890206891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont206890206891%_))))
                                        (_%__kont206890206891%_))
                                    (_%__kont206890206891%_))
                                (_%__kont206890206891%_))))
                        (_%__kont206890206891%_))))
                (_%__kont206890206891%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop204684204948%_
                                     _%target204681204943%_
                                     '()))))
                               (_%__match206905206906%_
                                (lambda (_%e204630205191%_
                                         _%hd204631205194%_
                                         _%tl204632205196%_
                                         _%__splice206878206879%_
                                         _%target204633205199%_
                                         _%tl204635205201%_)
                                  (letrec ((_%loop204636205204%_
                                            (lambda (_%hd204634205207%_
                                                     _%arg204640205209%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204634205207%_))
                                                  (let ((_%e204637205211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204634205207%_))))
                                                    (let ((_%lp-tl204639205216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204637205211%_)))
                                                          (_%lp-hd204638205214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204637205211%_))))
                                                      (_%loop204636205204%_
                                                       _%lp-tl204639205216%_
                                                       (cons _%lp-hd204638205214%_
                                                             _%arg204640205209%_))))
                                                  (let ((_%arg204641205219%_
                                                         (reverse _%arg204640205209%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204632205196%_))
                                                        (let ((_%e204642205221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl204632205196%_))))
                  (let ((_%tl204644205226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204642205221%_)))
                        (_%hd204643205224%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204642205221%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204643205224%_))
                        (let ((_%e204645205229%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd204643205224%_))))
                          (let ((_%tl204647205234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204645205229%_)))
                                (_%hd204646205232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204645205229%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204646205232%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd204646205232%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204647205234%_))
                                        (let ((_%e204648205237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204647205234%_))))
                                          (let ((_%tl204650205242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204648205237%_)))
                                                (_%hd204649205240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204648205237%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd204649205240%_))
                                                (let ((_%e204651205245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204649205240%_))))
                                                  (let ((_%tl204653205250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204651205245%_)))
                                                        (_%hd204652205248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204651205245%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd204652205248%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd204652205248%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204653205250%_))
                        (let ((_%e204654205253%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl204653205250%_))))
                          (let ((_%tl204656205258%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204654205253%_)))
                                (_%hd204655205256%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204654205253%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204656205258%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl204650205242%_))
                                    (let ((_%__splice206880206881%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl204650205242%_
                                              '0))))
                                      (let ((_%tl204659205263%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206880206881%_
                                                '1)))
                                            (_%target204657205261%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice206880206881%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl204659205263%_))
                                            (letrec ((_%loop204660205266%_
                                                      (lambda (_%hd204658205269%_
                                                               _%xarg204664205271%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd204658205269%_))
                                                            (let ((_%e204661205273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd204658205269%_))))
                      (let ((_%lp-tl204663205278%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204661205273%_)))
                            (_%lp-hd204662205276%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204661205273%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd204662205276%_))
                            (let ((_%e204666205281%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd204662205276%_))))
                              (let ((_%tl204668205286%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204666205281%_)))
                                    (_%hd204667205284%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204666205281%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd204667205284%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd204667205284%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204668205286%_))
                                            (let ((_%e204669205289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204668205286%_))))
                                              (let ((_%tl204671205294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204669205289%_)))
                                                    (_%hd204670205292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204669205289%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204671205294%_))
                                                    (_%loop204660205266%_
                                                     _%lp-tl204663205278%_
                                                     (cons _%hd204670205292%_
                                                           _%xarg204664205271%_))
                                                    (_%__match206917206918%_
                                                     _%e204630205191%_
                                                     _%hd204631205194%_
                                                     _%tl204632205196%_
                                                     _%__splice206878206879%_
                                                     _%target204633205199%_
                                                     _%tl204635205201%_))))
                                            (_%__match206917206918%_
                                             _%e204630205191%_
                                             _%hd204631205194%_
                                             _%tl204632205196%_
                                             _%__splice206878206879%_
                                             _%target204633205199%_
                                             _%tl204635205201%_))
                                        (_%__match206917206918%_
                                         _%e204630205191%_
                                         _%hd204631205194%_
                                         _%tl204632205196%_
                                         _%__splice206878206879%_
                                         _%target204633205199%_
                                         _%tl204635205201%_))
                                    (_%__match206917206918%_
                                     _%e204630205191%_
                                     _%hd204631205194%_
                                     _%tl204632205196%_
                                     _%__splice206878206879%_
                                     _%target204633205199%_
                                     _%tl204635205201%_))))
                            (_%__match206917206918%_
                             _%e204630205191%_
                             _%hd204631205194%_
                             _%tl204632205196%_
                             _%__splice206878206879%_
                             _%target204633205199%_
                             _%tl204635205201%_))))
                    (let ((_%xarg204665205297%_
                           (reverse _%xarg204664205271%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204644205226%_))
                          (let ((_%g204627205299%_ _%xarg204665205297%_)
                                (_%g204628205300%_ _%hd204655205256%_)
                                (_%g204629205301%_ _%arg204641205219%_))
                            (if (and (let ((__tmp208171
                                            (let ((__tmp208172
                                                   (lambda (_%g205329205332%_
                                                            _%g205330205334%_)
                                                     (cons _%g205329205332%_
                                                           _%g205330205334%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208172
                                               '()
                                               _%g204629205301%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp208171))
                                     (let ((__tmp208175
                                            (length (let ((__tmp208176
                                                           (lambda (_%g205336205339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g205337205341%_)
                     (cons _%g205336205339%_ _%g205337205341%_))))
              (declare (not safe))
              (foldr__0 __tmp208176 '() _%g204629205301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp208173
                                            (length (let ((__tmp208174
                                                           (lambda (_%g205343205346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g205344205348%_)
                     (cons _%g205343205346%_ _%g205344205348%_))))
              (declare (not safe))
              (foldr__0 __tmp208174 '() _%g204627205299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp208175 __tmp208173))
                                     (let ((__tmp208179
                                            (let ((__tmp208180
                                                   (lambda (_%g205350205353%_
                                                            _%g205351205355%_)
                                                     (cons _%g205350205353%_
                                                           _%g205351205355%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208180
                                               '()
                                               _%g204629205301%_)))
                                           (__tmp208177
                                            (let ((__tmp208178
                                                   (lambda (_%g205357205360%_
                                                            _%g205358205362%_)
                                                     (cons _%g205357205360%_
                                                           _%g205358205362%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208178
                                               '()
                                               _%g204627205299%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp208179
                                        __tmp208177))
                                     (not (let ((__tmp208183
                                                 (lambda (_%g205364205366%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g205364205366%_
                                                      _%g204628205300%_))))
                                                (__tmp208181
                                                 (let ((__tmp208182
                                                        (lambda (_%g205368205371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g205369205373%_)
                  (cons _%g205368205371%_ _%g205369205373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp208182
                                                    '()
                                                    _%g204629205301%_))))
                                            (declare (not safe))
                                            (__find __tmp208183 __tmp208181))))
                                (_%__kont206876206877%_
                                 _%g204627205299%_
                                 _%g204628205300%_
                                 _%g204629205301%_)
                                (_%__match206917206918%_
                                 _%e204630205191%_
                                 _%hd204631205194%_
                                 _%tl204632205196%_
                                 _%__splice206878206879%_
                                 _%target204633205199%_
                                 _%tl204635205201%_)))
                          (_%__match206917206918%_
                           _%e204630205191%_
                           _%hd204631205194%_
                           _%tl204632205196%_
                           _%__splice206878206879%_
                           _%target204633205199%_
                           _%tl204635205201%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop204660205266%_
                                               _%target204657205261%_
                                               '()))
                                            (_%__match206917206918%_
                                             _%e204630205191%_
                                             _%hd204631205194%_
                                             _%tl204632205196%_
                                             _%__splice206878206879%_
                                             _%target204633205199%_
                                             _%tl204635205201%_))))
                                    (_%__match206917206918%_
                                     _%e204630205191%_
                                     _%hd204631205194%_
                                     _%tl204632205196%_
                                     _%__splice206878206879%_
                                     _%target204633205199%_
                                     _%tl204635205201%_))
                                (_%__match206917206918%_
                                 _%e204630205191%_
                                 _%hd204631205194%_
                                 _%tl204632205196%_
                                 _%__splice206878206879%_
                                 _%target204633205199%_
                                 _%tl204635205201%_))))
                        (_%__match206917206918%_
                         _%e204630205191%_
                         _%hd204631205194%_
                         _%tl204632205196%_
                         _%__splice206878206879%_
                         _%target204633205199%_
                         _%tl204635205201%_))
                    (_%__match206917206918%_
                     _%e204630205191%_
                     _%hd204631205194%_
                     _%tl204632205196%_
                     _%__splice206878206879%_
                     _%target204633205199%_
                     _%tl204635205201%_))
                (_%__match206917206918%_
                 _%e204630205191%_
                 _%hd204631205194%_
                 _%tl204632205196%_
                 _%__splice206878206879%_
                 _%target204633205199%_
                 _%tl204635205201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match206917206918%_
                                                 _%e204630205191%_
                                                 _%hd204631205194%_
                                                 _%tl204632205196%_
                                                 _%__splice206878206879%_
                                                 _%target204633205199%_
                                                 _%tl204635205201%_))))
                                        (_%__match206917206918%_
                                         _%e204630205191%_
                                         _%hd204631205194%_
                                         _%tl204632205196%_
                                         _%__splice206878206879%_
                                         _%target204633205199%_
                                         _%tl204635205201%_))
                                    (_%__match206917206918%_
                                     _%e204630205191%_
                                     _%hd204631205194%_
                                     _%tl204632205196%_
                                     _%__splice206878206879%_
                                     _%target204633205199%_
                                     _%tl204635205201%_))
                                (_%__match206917206918%_
                                 _%e204630205191%_
                                 _%hd204631205194%_
                                 _%tl204632205196%_
                                 _%__splice206878206879%_
                                 _%target204633205199%_
                                 _%tl204635205201%_))))
                        (_%__match206917206918%_
                         _%e204630205191%_
                         _%hd204631205194%_
                         _%tl204632205196%_
                         _%__splice206878206879%_
                         _%target204633205199%_
                         _%tl204635205201%_))))
                (_%__match206917206918%_
                 _%e204630205191%_
                 _%hd204631205194%_
                 _%tl204632205196%_
                 _%__splice206878206879%_
                 _%target204633205199%_
                 _%tl204635205201%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop204636205204%_
                                     _%target204633205199%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206874206875%_))
                              (let ((_%e204630205191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206874206875%_))))
                                (let ((_%tl204632205196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204630205191%_)))
                                      (_%hd204631205194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204630205191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd204631205194%_))
                                      (let ((_%__splice206878206879%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd204631205194%_
                                                '0))))
                                        (let ((_%tl204635205201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206878206879%_
                                                  '1)))
                                              (_%target204633205199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206878206879%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204635205201%_))
                                              (_%__match206905206906%_
                                               _%e204630205191%_
                                               _%hd204631205194%_
                                               _%tl204632205196%_
                                               _%__splice206878206879%_
                                               _%target204633205199%_
                                               _%tl204635205201%_)
                                              (_%__match206917206918%_
                                               _%e204630205191%_
                                               _%hd204631205194%_
                                               _%tl204632205196%_
                                               _%__splice206878206879%_
                                               _%target204633205199%_
                                               _%tl204635205201%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204632205196%_))
                                          (let ((_%e204745204802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204632205196%_))))
                                            (let ((_%tl204747204807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204745204802%_)))
                                                  (_%hd204746204805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204745204802%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204746204805%_))
                                                  (let ((_%e204748204810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204746204805%_))))
                                                    (let ((_%tl204750204815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204748204810%_)))
                                                          (_%hd204749204813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204748204810%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd204749204813%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd204749204813%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204750204815%_))
                          (let ((_%e204751204818%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204750204815%_))))
                            (let ((_%tl204753204823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204751204818%_)))
                                  (_%hd204752204821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204751204818%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204752204821%_))
                                  (let ((_%e204754204826%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204752204821%_))))
                                    (let ((_%tl204756204831%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204754204826%_)))
                                          (_%hd204755204829%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204754204826%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204755204829%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204755204829%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204756204831%_))
                                                  (let ((_%e204757204834%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204756204831%_))))
                                                    (let ((_%tl204759204839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204757204834%_)))
                                                          (_%hd204758204837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204757204834%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204759204839%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204753204823%_))
                      (let ((_%e204760204842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204753204823%_))))
                        (let ((_%tl204762204847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204760204842%_)))
                              (_%hd204761204845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204760204842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204761204845%_))
                              (let ((_%e204763204850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd204761204845%_))))
                                (let ((_%tl204765204855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204763204850%_)))
                                      (_%hd204764204853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204763204850%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204764204853%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd204764204853%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204765204855%_))
                                              (let ((_%e204766204858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204765204855%_))))
                                                (let ((_%tl204768204863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204766204858%_)))
                                                      (_%hd204767204861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204766204858%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204768204863%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204762204847%_))
                                                          (let ((_%e204769204866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204762204847%_))))
                    (let ((_%tl204771204871%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204769204866%_)))
                          (_%hd204770204869%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204769204866%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd204770204869%_))
                          (let ((_%e204772204874%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204770204869%_))))
                            (let ((_%tl204774204879%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204772204874%_)))
                                  (_%hd204773204877%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204772204874%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd204773204877%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd204773204877%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204774204879%_))
                                          (let ((_%e204775204882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204774204879%_))))
                                            (let ((_%tl204777204887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204775204882%_)))
                                                  (_%hd204776204885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204775204882%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204777204887%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204771204871%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204747204807%_))
                                                          (_%__match207015207016%_
                                                           _%e204630205191%_
                                                           _%hd204631205194%_
                                                           _%tl204632205196%_
                                                           _%e204745204802%_
                                                           _%hd204746204805%_
                                                           _%tl204747204807%_
                                                           _%e204748204810%_
                                                           _%hd204749204813%_
                                                           _%tl204750204815%_
                                                           _%e204751204818%_
                                                           _%hd204752204821%_
                                                           _%tl204753204823%_
                                                           _%e204754204826%_
                                                           _%hd204755204829%_
                                                           _%tl204756204831%_
                                                           _%e204757204834%_
                                                           _%hd204758204837%_
                                                           _%tl204759204839%_
                                                           _%e204760204842%_
                                                           _%hd204761204845%_
                                                           _%tl204762204847%_
                                                           _%e204763204850%_
                                                           _%hd204764204853%_
                                                           _%tl204765204855%_
                                                           _%e204766204858%_
                                                           _%hd204767204861%_
                                                           _%tl204768204863%_
                                                           _%e204769204866%_
                                                           _%hd204770204869%_
                                                           _%tl204771204871%_
                                                           _%e204772204874%_
                                                           _%hd204773204877%_
                                                           _%tl204774204879%_
                                                           _%e204775204882%_
                                                           _%hd204776204885%_
                                                           _%tl204777204887%_)
                                                          (_%__kont206890206891%_))
                                                      (_%__kont206890206891%_))
                                                  (_%__kont206890206891%_))))
                                          (_%__kont206890206891%_))
                                      (_%__kont206890206891%_))
                                  (_%__kont206890206891%_))))
                          (_%__kont206890206891%_))))
                  (_%__kont206890206891%_))
              (_%__kont206890206891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont206890206891%_))
                                          (_%__kont206890206891%_))
                                      (_%__kont206890206891%_))))
                              (_%__kont206890206891%_))))
                      (_%__kont206890206891%_))
                  (_%__kont206890206891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206890206891%_))
                                              (_%__kont206890206891%_))
                                          (_%__kont206890206891%_))))
                                  (_%__kont206890206891%_))))
                          (_%__kont206890206891%_))
                      (_%__kont206890206891%_))
                  (_%__kont206890206891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206890206891%_))))
                                          (_%__kont206890206891%_)))))
                              (_%__kont206890206891%_)))))))
                 (_%dispatch-case-e203940%_
                  (lambda (_%hd204087%_ _%body204088%_)
                    (let* ((_%form204090%_
                            (cons _%hd204087%_ (cons _%body204088%_ '())))
                           (_%__stx207018207019%_ _%form204090%_)
                           (_%g204094204218%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx207018207019%_)))))
                      (let ((_%__kont207020207021%_
                             (lambda (_%g204096204583%_
                                      _%g204097204584%_
                                      _%g204098204585%_)
                               (let ((__tmp208184
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g204097204584%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self203936%_
                                  __tmp208184))))
                            (_%__kont207026207027%_
                             (lambda (_%g204141204435%_
                                      _%g204142204436%_
                                      _%g204143204437%_
                                      _%g204144204438%_)
                               (let ((__tmp208185
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g204141204435%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self203936%_
                                  __tmp208185))))
                            (_%__kont207030207031%_
                             (lambda (_%g204181204303%_
                                      _%g204182204304%_
                                      _%g204183204305%_)
                               (let ((__tmp208186
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g204181204303%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self203936%_
                                  __tmp208186)))))
                        (let* ((_%__match207127207128%_
                                (lambda (_%e204184204223%_
                                         _%hd204185204226%_
                                         _%tl204186204228%_
                                         _%e204187204231%_
                                         _%hd204188204234%_
                                         _%tl204189204236%_
                                         _%e204190204239%_
                                         _%hd204191204242%_
                                         _%tl204192204244%_
                                         _%e204193204247%_
                                         _%hd204194204250%_
                                         _%tl204195204252%_
                                         _%e204196204255%_
                                         _%hd204197204258%_
                                         _%tl204198204260%_
                                         _%e204199204263%_
                                         _%hd204200204266%_
                                         _%tl204201204268%_
                                         _%e204202204271%_
                                         _%hd204203204274%_
                                         _%tl204204204276%_
                                         _%e204205204279%_
                                         _%hd204206204282%_
                                         _%tl204207204284%_
                                         _%e204208204287%_
                                         _%hd204209204290%_
                                         _%tl204210204292%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204204204276%_))
                                      (let ((_%e204211204295%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204204204276%_))))
                                        (let ((_%tl204213204300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204211204295%_)))
                                              (_%hd204212204298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204211204295%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204213204300%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204189204236%_))
                                                  (_%__kont207030207031%_
                                                   _%hd204209204290%_
                                                   _%hd204200204266%_
                                                   _%hd204185204226%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204094204218%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204094204218%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204094204218%_)))))
                               (_%__match207057207058%_
                                (lambda (_%e204145204341%_
                                         _%hd204146204344%_
                                         _%tl204147204346%_
                                         _%__splice207028207029%_
                                         _%target204148204349%_
                                         _%tl204150204351%_)
                                  (letrec ((_%loop204151204354%_
                                            (lambda (_%hd204149204357%_
                                                     _%arg204155204359%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204149204357%_))
                                                  (let ((_%e204152204361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204149204357%_))))
                                                    (let ((_%lp-tl204154204366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204152204361%_)))
                                                          (_%lp-hd204153204364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204152204361%_))))
                                                      (_%loop204151204354%_
                                                       _%lp-tl204154204366%_
                                                       (cons _%lp-hd204153204364%_
                                                             _%arg204155204359%_))))
                                                  (let ((_%arg204156204369%_
                                                         (reverse _%arg204155204359%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204147204346%_))
                                                        (let ((_%e204157204371%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl204147204346%_))))
                  (let ((_%tl204159204376%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204157204371%_)))
                        (_%hd204158204374%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204157204371%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204158204374%_))
                        (let ((_%e204160204379%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd204158204374%_))))
                          (let ((_%tl204162204384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204160204379%_)))
                                (_%hd204161204382%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204160204379%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204161204382%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd204161204382%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204162204384%_))
                                        (let ((_%e204163204387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204162204384%_))))
                                          (let ((_%tl204165204392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204163204387%_)))
                                                (_%hd204164204390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204163204387%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd204164204390%_))
                                                (let ((_%e204166204395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204164204390%_))))
                                                  (let ((_%tl204168204400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204166204395%_)))
                                                        (_%hd204167204398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204166204395%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd204167204398%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd204167204398%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204168204400%_))
                        (let ((_%e204169204403%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl204168204400%_))))
                          (let ((_%tl204171204408%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204169204403%_)))
                                (_%hd204170204406%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204169204403%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204171204408%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl204165204392%_))
                                    (let ((_%e204172204411%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl204165204392%_))))
                                      (let ((_%tl204174204416%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204172204411%_)))
                                            (_%hd204173204414%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204172204411%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd204173204414%_))
                                            (let ((_%e204175204419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd204173204414%_))))
                                              (let ((_%tl204177204424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204175204419%_)))
                                                    (_%hd204176204422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204175204419%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd204176204422%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd204176204422%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl204177204424%_))
                                                            (let ((_%e204178204427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl204177204424%_))))
                      (let ((_%tl204180204432%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204178204427%_)))
                            (_%hd204179204430%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204178204427%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204180204432%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204159204376%_))
                                (_%__kont207026207027%_
                                 _%hd204179204430%_
                                 _%hd204170204406%_
                                 _%tl204150204351%_
                                 _%arg204156204369%_)
                                (_%__match207127207128%_
                                 _%e204145204341%_
                                 _%hd204146204344%_
                                 _%tl204147204346%_
                                 _%e204157204371%_
                                 _%hd204158204374%_
                                 _%tl204159204376%_
                                 _%e204160204379%_
                                 _%hd204161204382%_
                                 _%tl204162204384%_
                                 _%e204163204387%_
                                 _%hd204164204390%_
                                 _%tl204165204392%_
                                 _%e204166204395%_
                                 _%hd204167204398%_
                                 _%tl204168204400%_
                                 _%e204169204403%_
                                 _%hd204170204406%_
                                 _%tl204171204408%_
                                 _%e204172204411%_
                                 _%hd204173204414%_
                                 _%tl204174204416%_
                                 _%e204175204419%_
                                 _%hd204176204422%_
                                 _%tl204177204424%_
                                 _%e204178204427%_
                                 _%hd204179204430%_
                                 _%tl204180204432%_))
                            (let ()
                              (declare (not safe))
                              (_%g204094204218%_)))))
                    (let () (declare (not safe)) (_%g204094204218%_)))
                (let () (declare (not safe)) (_%g204094204218%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g204094204218%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g204094204218%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204094204218%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g204094204218%_)))))
                        (let () (declare (not safe)) (_%g204094204218%_)))
                    (let () (declare (not safe)) (_%g204094204218%_)))
                (let () (declare (not safe)) (_%g204094204218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204094204218%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g204094204218%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204094204218%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g204094204218%_)))))
                        (let () (declare (not safe)) (_%g204094204218%_)))))
                (let () (declare (not safe)) (_%g204094204218%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop204151204354%_
                                     _%target204148204349%_
                                     '()))))
                               (_%__match207045207046%_
                                (lambda (_%e204099204475%_
                                         _%hd204100204478%_
                                         _%tl204101204480%_
                                         _%__splice207022207023%_
                                         _%target204102204483%_
                                         _%tl204104204485%_)
                                  (letrec ((_%loop204105204488%_
                                            (lambda (_%hd204103204491%_
                                                     _%arg204109204493%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204103204491%_))
                                                  (let ((_%e204106204495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204103204491%_))))
                                                    (let ((_%lp-tl204108204500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204106204495%_)))
                                                          (_%lp-hd204107204498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204106204495%_))))
                                                      (_%loop204105204488%_
                                                       _%lp-tl204108204500%_
                                                       (cons _%lp-hd204107204498%_
                                                             _%arg204109204493%_))))
                                                  (let ((_%arg204110204503%_
                                                         (reverse _%arg204109204493%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204101204480%_))
                                                        (let ((_%e204111204505%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl204101204480%_))))
                  (let ((_%tl204113204510%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204111204505%_)))
                        (_%hd204112204508%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204111204505%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204112204508%_))
                        (let ((_%e204114204513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd204112204508%_))))
                          (let ((_%tl204116204518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204114204513%_)))
                                (_%hd204115204516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204114204513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd204115204516%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd204115204516%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204116204518%_))
                                        (let ((_%e204117204521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl204116204518%_))))
                                          (let ((_%tl204119204526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204117204521%_)))
                                                (_%hd204118204524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204117204521%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd204118204524%_))
                                                (let ((_%e204120204529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204118204524%_))))
                                                  (let ((_%tl204122204534%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204120204529%_)))
                                                        (_%hd204121204532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204120204529%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd204121204532%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd204121204532%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204122204534%_))
                        (let ((_%e204123204537%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl204122204534%_))))
                          (let ((_%tl204125204542%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204123204537%_)))
                                (_%hd204124204540%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204123204537%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204125204542%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl204119204526%_))
                                    (let ((_%__splice207024207025%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl204119204526%_
                                              '0))))
                                      (let ((_%tl204128204547%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207024207025%_
                                                '1)))
                                            (_%target204126204545%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice207024207025%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl204128204547%_))
                                            (letrec ((_%loop204129204550%_
                                                      (lambda (_%hd204127204553%_
                                                               _%xarg204133204555%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd204127204553%_))
                                                            (let ((_%e204130204557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd204127204553%_))))
                      (let ((_%lp-tl204132204562%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204130204557%_)))
                            (_%lp-hd204131204560%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204130204557%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd204131204560%_))
                            (let ((_%e204135204565%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd204131204560%_))))
                              (let ((_%tl204137204570%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204135204565%_)))
                                    (_%hd204136204568%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204135204565%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd204136204568%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd204136204568%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204137204570%_))
                                            (let ((_%e204138204573%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204137204570%_))))
                                              (let ((_%tl204140204578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204138204573%_)))
                                                    (_%hd204139204576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204138204573%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204140204578%_))
                                                    (_%loop204129204550%_
                                                     _%lp-tl204132204562%_
                                                     (cons _%hd204139204576%_
                                                           _%xarg204133204555%_))
                                                    (_%__match207057207058%_
                                                     _%e204099204475%_
                                                     _%hd204100204478%_
                                                     _%tl204101204480%_
                                                     _%__splice207022207023%_
                                                     _%target204102204483%_
                                                     _%tl204104204485%_))))
                                            (_%__match207057207058%_
                                             _%e204099204475%_
                                             _%hd204100204478%_
                                             _%tl204101204480%_
                                             _%__splice207022207023%_
                                             _%target204102204483%_
                                             _%tl204104204485%_))
                                        (_%__match207057207058%_
                                         _%e204099204475%_
                                         _%hd204100204478%_
                                         _%tl204101204480%_
                                         _%__splice207022207023%_
                                         _%target204102204483%_
                                         _%tl204104204485%_))
                                    (_%__match207057207058%_
                                     _%e204099204475%_
                                     _%hd204100204478%_
                                     _%tl204101204480%_
                                     _%__splice207022207023%_
                                     _%target204102204483%_
                                     _%tl204104204485%_))))
                            (_%__match207057207058%_
                             _%e204099204475%_
                             _%hd204100204478%_
                             _%tl204101204480%_
                             _%__splice207022207023%_
                             _%target204102204483%_
                             _%tl204104204485%_))))
                    (let ((_%xarg204134204581%_
                           (reverse _%xarg204133204555%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204113204510%_))
                          (_%__kont207020207021%_
                           _%xarg204134204581%_
                           _%hd204124204540%_
                           _%arg204110204503%_)
                          (_%__match207057207058%_
                           _%e204099204475%_
                           _%hd204100204478%_
                           _%tl204101204480%_
                           _%__splice207022207023%_
                           _%target204102204483%_
                           _%tl204104204485%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop204129204550%_
                                               _%target204126204545%_
                                               '()))
                                            (_%__match207057207058%_
                                             _%e204099204475%_
                                             _%hd204100204478%_
                                             _%tl204101204480%_
                                             _%__splice207022207023%_
                                             _%target204102204483%_
                                             _%tl204104204485%_))))
                                    (_%__match207057207058%_
                                     _%e204099204475%_
                                     _%hd204100204478%_
                                     _%tl204101204480%_
                                     _%__splice207022207023%_
                                     _%target204102204483%_
                                     _%tl204104204485%_))
                                (_%__match207057207058%_
                                 _%e204099204475%_
                                 _%hd204100204478%_
                                 _%tl204101204480%_
                                 _%__splice207022207023%_
                                 _%target204102204483%_
                                 _%tl204104204485%_))))
                        (_%__match207057207058%_
                         _%e204099204475%_
                         _%hd204100204478%_
                         _%tl204101204480%_
                         _%__splice207022207023%_
                         _%target204102204483%_
                         _%tl204104204485%_))
                    (_%__match207057207058%_
                     _%e204099204475%_
                     _%hd204100204478%_
                     _%tl204101204480%_
                     _%__splice207022207023%_
                     _%target204102204483%_
                     _%tl204104204485%_))
                (_%__match207057207058%_
                 _%e204099204475%_
                 _%hd204100204478%_
                 _%tl204101204480%_
                 _%__splice207022207023%_
                 _%target204102204483%_
                 _%tl204104204485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match207057207058%_
                                                 _%e204099204475%_
                                                 _%hd204100204478%_
                                                 _%tl204101204480%_
                                                 _%__splice207022207023%_
                                                 _%target204102204483%_
                                                 _%tl204104204485%_))))
                                        (_%__match207057207058%_
                                         _%e204099204475%_
                                         _%hd204100204478%_
                                         _%tl204101204480%_
                                         _%__splice207022207023%_
                                         _%target204102204483%_
                                         _%tl204104204485%_))
                                    (_%__match207057207058%_
                                     _%e204099204475%_
                                     _%hd204100204478%_
                                     _%tl204101204480%_
                                     _%__splice207022207023%_
                                     _%target204102204483%_
                                     _%tl204104204485%_))
                                (_%__match207057207058%_
                                 _%e204099204475%_
                                 _%hd204100204478%_
                                 _%tl204101204480%_
                                 _%__splice207022207023%_
                                 _%target204102204483%_
                                 _%tl204104204485%_))))
                        (_%__match207057207058%_
                         _%e204099204475%_
                         _%hd204100204478%_
                         _%tl204101204480%_
                         _%__splice207022207023%_
                         _%target204102204483%_
                         _%tl204104204485%_))))
                (_%__match207057207058%_
                 _%e204099204475%_
                 _%hd204100204478%_
                 _%tl204101204480%_
                 _%__splice207022207023%_
                 _%target204102204483%_
                 _%tl204104204485%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop204105204488%_
                                     _%target204102204483%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207018207019%_))
                              (let ((_%e204099204475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207018207019%_))))
                                (let ((_%tl204101204480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204099204475%_)))
                                      (_%hd204100204478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204099204475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd204100204478%_))
                                      (let ((_%__splice207022207023%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd204100204478%_
                                                '0))))
                                        (let ((_%tl204104204485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207022207023%_
                                                  '1)))
                                              (_%target204102204483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207022207023%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204104204485%_))
                                              (_%__match207045207046%_
                                               _%e204099204475%_
                                               _%hd204100204478%_
                                               _%tl204101204480%_
                                               _%__splice207022207023%_
                                               _%target204102204483%_
                                               _%tl204104204485%_)
                                              (_%__match207057207058%_
                                               _%e204099204475%_
                                               _%hd204100204478%_
                                               _%tl204101204480%_
                                               _%__splice207022207023%_
                                               _%target204102204483%_
                                               _%tl204104204485%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204101204480%_))
                                          (let ((_%e204187204231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204101204480%_))))
                                            (let ((_%tl204189204236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204187204231%_)))
                                                  (_%hd204188204234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204187204231%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd204188204234%_))
                                                  (let ((_%e204190204239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd204188204234%_))))
                                                    (let ((_%tl204192204244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204190204239%_)))
                                                          (_%hd204191204242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204190204239%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd204191204242%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd204191204242%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204192204244%_))
                          (let ((_%e204193204247%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204192204244%_))))
                            (let ((_%tl204195204252%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204193204247%_)))
                                  (_%hd204194204250%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204193204247%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204194204250%_))
                                  (let ((_%e204196204255%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204194204250%_))))
                                    (let ((_%tl204198204260%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204196204255%_)))
                                          (_%hd204197204258%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204196204255%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204197204258%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204197204258%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204198204260%_))
                                                  (let ((_%e204199204263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204198204260%_))))
                                                    (let ((_%tl204201204268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204199204263%_)))
                                                          (_%hd204200204266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204199204263%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204201204268%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204195204252%_))
                      (let ((_%e204202204271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204195204252%_))))
                        (let ((_%tl204204204276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204202204271%_)))
                              (_%hd204203204274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204202204271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204203204274%_))
                              (let ((_%e204205204279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd204203204274%_))))
                                (let ((_%tl204207204284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204205204279%_)))
                                      (_%hd204206204282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204205204279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204206204282%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd204206204282%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204207204284%_))
                                              (let ((_%e204208204287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204207204284%_))))
                                                (let ((_%tl204210204292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204208204287%_)))
                                                      (_%hd204209204290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204208204287%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204210204292%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204204204276%_))
                                                          (let ((_%e204211204295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204204204276%_))))
                    (let ((_%tl204213204300%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204211204295%_)))
                          (_%hd204212204298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204211204295%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204213204300%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204189204236%_))
                              (_%__kont207030207031%_
                               _%hd204209204290%_
                               _%hd204200204266%_
                               _%hd204100204478%_)
                              (let ()
                                (declare (not safe))
                                (_%g204094204218%_)))
                          (let () (declare (not safe)) (_%g204094204218%_)))))
                  (let () (declare (not safe)) (_%g204094204218%_)))
              (let () (declare (not safe)) (_%g204094204218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204094204218%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204094204218%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204094204218%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204094204218%_)))))
                      (let () (declare (not safe)) (_%g204094204218%_)))
                  (let () (declare (not safe)) (_%g204094204218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204094204218%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204094204218%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204094204218%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204094204218%_)))))
                          (let () (declare (not safe)) (_%g204094204218%_)))
                      (let () (declare (not safe)) (_%g204094204218%_)))
                  (let () (declare (not safe)) (_%g204094204218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204094204218%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204094204218%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g204094204218%_))))))))
                 (_%generate1203941%_
                  (lambda (_%args204072%_
                           _%arglen204073%_
                           _%hd204074%_
                           _%body204075%_)
                    (let* ((_%len204077%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd204074%_)))
                           (_%condition204082%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd204074%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen204073%_
                                                (cons _%len204077%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen204073%_ (cons _%len204077%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len204077%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen204073%_
                                                    (cons _%len204077%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen204073%_ (cons _%len204077%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch204084%_
                            (if (_%dispatch-case?203939%_
                                 _%hd204074%_
                                 _%body204075%_)
                                (_%dispatch-case-e203940%_
                                 _%hd204074%_
                                 _%body204075%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self203936%_
                                 _%hd204074%_
                                 _%body204075%_))))
                      (cons _%condition204082%_
                            (cons (cons 'apply
                                        (cons _%dispatch204084%_
                                              (cons _%args204072%_ '())))
                                  '()))))))
          (let* ((_%g203943203971%_
                  (lambda (_%g203944203968%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g203944203968%_))))
                 (_%g203942204069%_
                  (lambda (_%g203944203974%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g203944203974%_))
                        (let ((_%e203947203976%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g203944203974%_))))
                          (let ((_%hd203948203979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203947203976%_)))
                                (_%tl203949203981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203947203976%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl203949203981%_))
                                (let ((_g208187_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl203949203981%_
                                          '0))))
                                  (begin
                                    (let ((_g208188_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g208187_)
                                                 (##values-length _g208187_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g208188_ 2)))
                                          (error "Context expects 2 values"
                                                 _g208188_)))
                                    (let ((_%target203950203984%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208187_ 0)))
                                          (_%tl203952203986%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208187_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203952203986%_))
                                          (letrec ((_%loop203953203989%_
                                                    (lambda (_%hd203951203992%_
                                                             _%body203957203994%_
                                                             _%hd203958203995%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd203951203992%_))
                                                          (let ((_%e203954203997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd203951203992%_))))
                    (let ((_%lp-hd203955204000%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203954203997%_)))
                          (_%lp-tl203956204002%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203954203997%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd203955204000%_))
                          (let ((_%e203961204005%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd203955204000%_))))
                            (let ((_%hd203962204008%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203961204005%_)))
                                  (_%tl203963204010%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203961204005%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203963204010%_))
                                  (let ((_%e203964204013%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203963204010%_))))
                                    (let ((_%hd203965204016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203964204013%_)))
                                          (_%tl203966204018%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203964204013%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203966204018%_))
                                          (_%loop203953203989%_
                                           _%lp-tl203956204002%_
                                           (cons _%hd203965204016%_
                                                 _%body203957203994%_)
                                           (cons _%hd203962204008%_
                                                 _%hd203958203995%_))
                                          (_%g203943203971%_
                                           _%g203944203974%_))))
                                  (_%g203943203971%_ _%g203944203974%_))))
                          (_%g203943203971%_ _%g203944203974%_))))
                  (let ((_%body203959204021%_ (reverse _%body203957203994%_))
                        (_%hd203960204022%_ (reverse _%hd203958203995%_)))
                    (let ((_%args204044%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%arglen204045%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__0)))
                          (_%name204046%_
                           (let ((_%$e204041%_
                                  (let ((__tmp208189
                                         (let ()
                                           (declare (not safe))
                                           (gxc#current-compile-runtime-names))))
                                    (declare (not safe))
                                    (hash-get __tmp208189 _%stx203937%_))))
                             (if _%$e204041%_
                                 _%$e204041%_
                                 ''case-lambda-dispatch))))
                      (cons 'lambda
                            (cons _%args204044%_
                                  (cons (cons 'let
                                              (cons (cons (cons _%arglen204045%_
                                                                (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '##length (cons _%args204044%_ '()))
                                  (cons 'let
                                        (cons '()
                                              (cons '(declare (not safe))
                                                    (cons (cons '##length
                                                                (cons _%args204044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'cond
                                                                (let ((__tmp208193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'else
                                           (cons (cons '##raise-wrong-number-of-arguments-exception
                                                       (cons _%name204046%_
                                                             (cons _%args204044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '()))
                              (__tmp208190
                               (map (lambda (_%g204047204050%_
                                             _%g204048204052%_)
                                      (_%generate1203941%_
                                       _%args204044%_
                                       _%arglen204045%_
                                       _%g204047204050%_
                                       _%g204048204052%_))
                                    (let ((__tmp208191
                                           (lambda (_%g204054204057%_
                                                    _%g204055204059%_)
                                             (cons _%g204054204057%_
                                                   _%g204055204059%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp208191
                                       '()
                                       _%hd203960204022%_))
                                    (let ((__tmp208192
                                           (lambda (_%g204061204064%_
                                                    _%g204062204066%_)
                                             (cons _%g204061204064%_
                                                   _%g204062204066%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp208192
                                       '()
                                       _%body203959204021%_)))))
                          (declare (not safe))
                          (foldr__0 cons __tmp208193 __tmp208190)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop203953203989%_
                                             _%target203950203984%_
                                             '()
                                             '()))
                                          (_%g203943203971%_
                                           _%g203944203974%_)))))
                                (_%g203943203971%_ _%g203944203974%_))))
                        (_%g203943203971%_ _%g203944203974%_)))))
            (_%g203942204069%_ _%stx203937%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self203173%_ _%stx203174%_ _%compiled-body?203175%_)
        (letrec ((_%generate-simple203177%_
                  (lambda (_%hd203921%_ _%body203922%_)
                    (_%coalesce-boolean203178%_
                     (_%simplify-let203179%_
                      (gxc#generate-runtime-simple-let
                       _%self203173%_
                       'let
                       _%hd203921%_
                       _%body203922%_
                       _%compiled-body?203175%_)))))
                 (_%coalesce-boolean203178%_
                  (lambda (_%code203782%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code203783203809%_ _%code203782%_)
                               (_%else203785203817%_
                                (lambda () _%code203782%_))
                               (_%K203787203854%_
                                (lambda (_%expr2203820%_
                                         _%expr1203821%_
                                         _%id203822%_)
                                  (let* ((_%expr2203823203831%_
                                          _%expr2203820%_)
                                         (_%else203825203839%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1203821%_
                                                        (cons _%expr2203820%_
                                                              '())))))
                                         (_%K203827203844%_
                                          (lambda (_%exprs203842%_)
                                            (cons 'or
                                                  (cons _%expr1203821%_
                                                        _%exprs203842%_)))))
                                    (if (pair? _%expr2203823203831%_)
                                        (let ((_%hd203828203847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2203823203831%_)))
                                              (_%tl203829203849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2203823203831%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd203828203847%_ 'or))
                                              (let ((_%exprs203852%_
                                                     _%tl203829203849%_))
                                                (_%K203827203844%_
                                                 _%exprs203852%_))
                                              (_%else203825203839%_)))
                                        (_%else203825203839%_))))))
                          (if (pair? _%code203783203809%_)
                              (let ((_%hd203788203857%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code203783203809%_)))
                                    (_%tl203789203859%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code203783203809%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd203788203857%_ 'let))
                                    (if (pair? _%tl203789203859%_)
                                        (let ((_%hd203790203862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl203789203859%_)))
                                              (_%tl203791203864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl203789203859%_))))
                                          (if (pair? _%hd203790203862%_)
                                              (let ((_%hd203802203867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd203790203862%_)))
                                                    (_%tl203803203869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd203790203862%_))))
                                                (if (pair? _%hd203802203867%_)
                                                    (let ((_%hd203804203872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd203802203867%_)))
                                                          (_%tl203805203874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd203802203867%_))))
                                                      (let ((_%id203877%_
                                                             _%hd203804203872%_))
                                                        (if (pair? _%tl203805203874%_)
                                                            (let ((_%hd203806203879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl203805203874%_)))
                          (_%tl203807203881%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl203805203874%_))))
                      (let ((_%expr1203884%_ _%hd203806203879%_))
                        (if (null? _%tl203807203881%_)
                            (if (null? _%tl203803203869%_)
                                (if (pair? _%tl203791203864%_)
                                    (let ((_%hd203792203886%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl203791203864%_)))
                                          (_%tl203793203888%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl203791203864%_))))
                                      (if (pair? _%hd203792203886%_)
                                          (let ((_%hd203794203891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd203792203886%_)))
                                                (_%tl203795203893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd203792203886%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203794203891%_
                                                         'if))
                                                (if (pair? _%tl203795203893%_)
                                                    (let ((_%hd203796203896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl203795203893%_)))
                                                          (_%tl203797203898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl203795203893%_))))
                                                      (if (eq? _%hd203796203896%_
                                                               _%id203877%_)
                                                          (if (pair? _%tl203797203898%_)
                                                              (let ((_%hd203798203905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##car _%tl203797203898%_)))
                            (_%tl203799203907%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl203797203898%_))))
                        (if (eq? _%hd203798203905%_ _%id203877%_)
                            (if (pair? _%tl203799203907%_)
                                (let ((_%hd203800203914%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl203799203907%_)))
                                      (_%tl203801203916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl203799203907%_))))
                                  (let ((_%expr2203919%_ _%hd203800203914%_))
                                    (if (null? _%tl203801203916%_)
                                        (if (null? _%tl203793203888%_)
                                            (_%K203787203854%_
                                             _%expr2203919%_
                                             _%expr1203884%_
                                             _%id203877%_)
                                            (_%else203785203817%_))
                                        (_%else203785203817%_))))
                                (_%else203785203817%_))
                            (_%else203785203817%_)))
                      (_%else203785203817%_))
                  (_%else203785203817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else203785203817%_))
                                                (_%else203785203817%_)))
                                          (_%else203785203817%_)))
                                    (_%else203785203817%_))
                                (_%else203785203817%_))
                            (_%else203785203817%_))))
                    (_%else203785203817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else203785203817%_)))
                                              (_%else203785203817%_)))
                                        (_%else203785203817%_))
                                    (_%else203785203817%_)))
                              (_%else203785203817%_)))
                        _%code203782%_)))
                 (_%simplify-let203179%_
                  (lambda (_%code203481%_)
                    (let* ((_%code203482203554%_ _%code203481%_)
                           (_%else203487203562%_ (lambda () _%code203481%_)))
                      (let ((_%K203546203762%_
                             (lambda (_%expr203760%_) _%expr203760%_))
                            (_%K203529203708%_
                             (lambda (_%body203704%_
                                      _%expr203705%_
                                      _%id203706%_)
                               (cons 'let
                                     (cons (cons (cons _%id203706%_
                                                       (cons _%expr203705%_
                                                             '()))
                                                 '())
                                           _%body203704%_))))
                            (_%K203506203632%_
                             (lambda (_%body203626%_
                                      _%expr2203627%_
                                      _%id2203628%_
                                      _%expr1203629%_
                                      _%id1203630%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1203630%_
                                                       (cons _%expr1203629%_
                                                             '()))
                                                 (cons (cons _%id2203628%_
                                                             (cons _%expr2203627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body203626%_))))
                            (_%K203489203571%_
                             (lambda (_%body203566%_
                                      _%bind203567%_
                                      _%expr1203568%_
                                      _%id1203569%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1203569%_
                                                       (cons _%expr1203568%_
                                                             '()))
                                                 _%bind203567%_)
                                           _%body203566%_)))))
                        (if (pair? _%code203482203554%_)
                            (let ((_%tl203548203767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code203482203554%_)))
                                  (_%hd203547203765%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code203482203554%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd203547203765%_ 'let))
                                  (if (pair? _%tl203548203767%_)
                                      (let ((_%tl203550203772%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl203548203767%_)))
                                            (_%hd203549203770%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl203548203767%_))))
                                        (if (null? _%hd203549203770%_)
                                            (if (pair? _%tl203550203772%_)
                                                (let ((_%tl203552203777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl203550203772%_)))
                                                      (_%hd203551203775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl203550203772%_))))
                                                  (if (null? _%tl203552203777%_)
                                                      (let ((_%expr203780%_
                                                             _%hd203551203775%_))
                                                        (_%K203546203762%_
                                                         _%expr203780%_))
                                                      (_%else203487203562%_)))
                                                (_%else203487203562%_))
                                            (if (pair? _%hd203549203770%_)
                                                (let ((_%tl203541203723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd203549203770%_)))
                                                      (_%hd203540203721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd203549203770%_))))
                                                  (if (pair? _%hd203540203721%_)
                                                      (let ((_%tl203543203728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd203540203721%_)))
                    (_%hd203542203726%_
                     (let () (declare (not safe)) (##car _%hd203540203721%_))))
                (if (pair? _%tl203543203728%_)
                    (let ((_%tl203545203735%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl203543203728%_)))
                          (_%hd203544203733%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl203543203728%_))))
                      (if (null? _%tl203545203735%_)
                          (if (null? _%tl203541203723%_)
                              (if (pair? _%tl203550203772%_)
                                  (let ((_%tl203535203742%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl203550203772%_)))
                                        (_%hd203534203740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl203550203772%_))))
                                    (if (pair? _%hd203534203740%_)
                                        (let ((_%tl203537203747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd203534203740%_)))
                                              (_%hd203536203745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd203534203740%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd203536203745%_
                                                       'let))
                                              (if (pair? _%tl203537203747%_)
                                                  (let ((_%tl203539203752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl203537203747%_)))
                                                        (_%hd203538203750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl203537203747%_))))
                                                    (if (null? _%hd203538203750%_)
                                                        (if (null? _%tl203535203742%_)
                                                            (let ((_%id203731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd203542203726%_)
                          (_%expr203738%_ _%hd203544203733%_)
                          (_%body203755%_ _%tl203539203752%_))
                      (_%K203529203708%_
                       _%body203755%_
                       _%expr203738%_
                       _%id203731%_))
                    (_%else203487203562%_))
                (if (pair? _%hd203538203750%_)
                    (let ((_%tl203518203681%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd203538203750%_)))
                          (_%hd203517203679%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd203538203750%_))))
                      (if (pair? _%hd203517203679%_)
                          (let ((_%tl203520203686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd203517203679%_)))
                                (_%hd203519203684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd203517203679%_))))
                            (if (pair? _%tl203520203686%_)
                                (let ((_%tl203522203693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl203520203686%_)))
                                      (_%hd203521203691%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl203520203686%_))))
                                  (if (null? _%tl203522203693%_)
                                      (if (null? _%tl203518203681%_)
                                          (if (null? _%tl203535203742%_)
                                              (let ((_%id1203655%_
                                                     _%hd203542203726%_)
                                                    (_%expr1203662%_
                                                     _%hd203544203733%_)
                                                    (_%id2203689%_
                                                     _%hd203519203684%_)
                                                    (_%expr2203696%_
                                                     _%hd203521203691%_)
                                                    (_%body203698%_
                                                     _%tl203539203752%_))
                                                (_%K203506203632%_
                                                 _%body203698%_
                                                 _%expr2203696%_
                                                 _%id2203689%_
                                                 _%expr1203662%_
                                                 _%id1203655%_))
                                              (_%else203487203562%_))
                                          (_%else203487203562%_))
                                      (_%else203487203562%_)))
                                (_%else203487203562%_)))
                          (_%else203487203562%_)))
                    (_%else203487203562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else203487203562%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd203536203745%_
                                                           'let*))
                                                  (if (pair? _%tl203537203747%_)
                                                      (let ((_%tl203499203615%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl203537203747%_)))
                    (_%hd203498203613%_
                     (let () (declare (not safe)) (##car _%tl203537203747%_))))
                (if (null? _%tl203535203742%_)
                    (let ((_%id1203594%_ _%hd203542203726%_)
                          (_%expr1203601%_ _%hd203544203733%_)
                          (_%bind203618%_ _%hd203498203613%_)
                          (_%body203620%_ _%tl203499203615%_))
                      (_%K203489203571%_
                       _%body203620%_
                       _%bind203618%_
                       _%expr1203601%_
                       _%id1203594%_))
                    (_%else203487203562%_)))
              (_%else203487203562%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else203487203562%_))))
                                        (_%else203487203562%_)))
                                  (_%else203487203562%_))
                              (_%else203487203562%_))
                          (_%else203487203562%_)))
                    (_%else203487203562%_)))
              (_%else203487203562%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else203487203562%_))))
                                      (_%else203487203562%_))
                                  (_%else203487203562%_)))
                            (_%else203487203562%_))))))
                 (_%generate-values203180%_
                  (lambda (_%hd203294%_ _%body203295%_)
                    (let _%lp203297%_ ((_%rest203299%_ _%hd203294%_)
                                       (_%bind203300%_ '())
                                       (_%check203301%_ '())
                                       (_%post203302%_ '()))
                      (let* ((_%__stx207347207348%_ _%rest203299%_)
                             (_%g203305203316%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207347207348%_)))))
                        (let ((_%__kont207349207350%_
                               (lambda (_%g203307203343%_ _%g203308203344%_)
                                 (let* ((_%__stx207303207304%_
                                         _%g203308203344%_)
                                        (_%g203359203384%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx207303207304%_)))))
                                   (let ((_%__kont207305207306%_
                                          (lambda (_%g203361203457%_
                                                   _%g203362203458%_)
                                            (let ((_%eid203472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g203362203458%_)))
                                                  (_%expr203473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self203173%_
                                                      _%g203361203457%_))))
                                              (_%lp203297%_
                                               _%g203307203343%_
                                               (cons (cons _%eid203472%_
                                                           (cons _%expr203473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind203300%_)
                                               _%check203301%_
                                               _%post203302%_))))
                                         (_%__kont207307207308%_
                                          (lambda (_%g203372203405%_
                                                   _%g203373203406%_)
                                            (let* ((_%vals203419%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values203421%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals203419%_
                                                     _%g203373203406%_
                                                     _%g203372203405%_))
                                                   (_%refs203423%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals203419%_
                                                     _%g203373203406%_))
                                                   (_%expr203425%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203173%_
                                                       _%g203372203405%_))))
                                              (_%lp203297%_
                                               _%g203307203343%_
                                               (cons (cons _%vals203419%_
                                                           (cons _%expr203425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind203300%_)
                                               (cons _%check-values203421%_
                                                     _%check203301%_)
                                               (cons _%refs203423%_
                                                     _%post203302%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx207303207304%_))
                                         (let ((_%e203363203433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx207303207304%_))))
                                           (let ((_%tl203365203438%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e203363203433%_)))
                                                 (_%hd203364203436%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e203363203433%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd203364203436%_))
                                                 (let ((_%e203366203441%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd203364203436%_))))
                                                   (let ((_%tl203368203446%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e203366203441%_)))
                                                         (_%hd203367203444%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e203366203441%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl203368203446%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl203365203438%_))
                     (let ((_%e203369203449%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl203365203438%_))))
                       (let ((_%tl203371203454%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e203369203449%_)))
                             (_%hd203370203452%_
                              (let ()
                                (declare (not safe))
                                (##car _%e203369203449%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl203371203454%_))
                             (_%__kont207305207306%_
                              _%hd203370203452%_
                              _%hd203367203444%_)
                             (let ()
                               (declare (not safe))
                               (_%g203359203384%_)))))
                     (let () (declare (not safe)) (_%g203359203384%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl203365203438%_))
                     (let ((_%e203377203397%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl203365203438%_))))
                       (let ((_%tl203379203402%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e203377203397%_)))
                             (_%hd203378203400%_
                              (let ()
                                (declare (not safe))
                                (##car _%e203377203397%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl203379203402%_))
                             (_%__kont207307207308%_
                              _%hd203378203400%_
                              _%hd203364203436%_)
                             (let ()
                               (declare (not safe))
                               (_%g203359203384%_)))))
                     (let () (declare (not safe)) (_%g203359203384%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl203365203438%_))
                                                     (let ((_%e203377203397%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl203365203438%_))))
                                                       (let ((_%tl203379203402%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e203377203397%_)))
                     (_%hd203378203400%_
                      (let () (declare (not safe)) (##car _%e203377203397%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl203379203402%_))
                     (_%__kont207307207308%_
                      _%hd203378203400%_
                      _%hd203364203436%_)
                     (let () (declare (not safe)) (_%g203359203384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g203359203384%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g203359203384%_)))))))
                              (_%__kont207351207352%_
                               (lambda ()
                                 (let* ((_%body203323%_
                                         (if _%compiled-body?203175%_
                                             _%body203295%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self203173%_
                                                _%body203295%_))))
                                        (_%body203325%_
                                         (_%generate-values-post203181%_
                                          _%post203302%_
                                          _%body203323%_))
                                        (_%body203327%_
                                         (_%generate-values-check203182%_
                                          _%check203301%_
                                          _%body203325%_)))
                                   (cons 'let
                                         (cons (reverse _%bind203300%_)
                                               (cons _%body203327%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207347207348%_))
                              (let ((_%e203309203335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207347207348%_))))
                                (let ((_%tl203311203340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203309203335%_)))
                                      (_%hd203310203338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203309203335%_))))
                                  (_%__kont207349207350%_
                                   _%tl203311203340%_
                                   _%hd203310203338%_)))
                              (_%__kont207351207352%_)))))))
                 (_%generate-values-post203181%_
                  (lambda (_%post203253%_ _%body203254%_)
                    (let _%lp203256%_ ((_%rest203258%_ _%post203253%_)
                                       (_%body203259%_ _%body203254%_))
                      (let* ((_%rest203260203268%_ _%rest203258%_)
                             (_%else203262203276%_ (lambda () _%body203259%_))
                             (_%K203264203282%_
                              (lambda (_%rest203279%_ _%bind203280%_)
                                (_%lp203256%_
                                 _%rest203279%_
                                 (cons 'let
                                       (cons _%bind203280%_
                                             (cons _%body203259%_ '())))))))
                        (if (pair? _%rest203260203268%_)
                            (let ((_%hd203265203285%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203260203268%_)))
                                  (_%tl203266203287%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203260203268%_))))
                              (let* ((_%bind203290%_ _%hd203265203285%_)
                                     (_%rest203292%_ _%tl203266203287%_))
                                (_%K203264203282%_
                                 _%rest203292%_
                                 _%bind203290%_)))
                            (_%else203262203276%_))))))
                 (_%generate-values-check203182%_
                  (lambda (_%check203250%_ _%body203251%_)
                    (cons 'begin
                          (let ((__tmp208195 (cons _%body203251%_ '()))
                                (__tmp208194 (reverse _%check203250%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp208195 __tmp208194))))))
          (let* ((_%g203184203201%_
                  (lambda (_%g203185203198%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g203185203198%_))))
                 (_%g203183203247%_
                  (lambda (_%g203185203204%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g203185203204%_))
                        (let ((_%e203188203206%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g203185203204%_))))
                          (let ((_%hd203189203209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203188203206%_)))
                                (_%tl203190203211%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203188203206%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203190203211%_))
                                (let ((_%e203191203214%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl203190203211%_))))
                                  (let ((_%hd203192203217%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203191203214%_)))
                                        (_%tl203193203219%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203191203214%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203193203219%_))
                                        (let ((_%e203194203222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203193203219%_))))
                                          (let ((_%hd203195203225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203194203222%_)))
                                                (_%tl203196203227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203194203222%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203196203227%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%hd203192203217%_)
                                                    (_%generate-simple203177%_
                                                     _%hd203192203217%_
                                                     _%hd203195203225%_)
                                                    (_%generate-values203180%_
                                                     _%hd203192203217%_
                                                     _%hd203195203225%_))
                                                (_%g203184203201%_
                                                 _%g203185203204%_))))
                                        (_%g203184203201%_
                                         _%g203185203204%_))))
                                (_%g203184203201%_ _%g203185203204%_))))
                        (_%g203184203201%_ _%g203185203204%_)))))
            (_%g203183203247%_ _%stx203174%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self203927%_ _%stx203928%_)
        (let ((_%compiled-body?203930%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self203927%_
           _%stx203928%_
           _%compiled-body?203930%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g208196_
        (let ((_g208197_ (let () (declare (not safe)) (##length _g208196_))))
          (cond ((let () (declare (not safe)) (##fx= _g208197_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g208196_))
                ((let () (declare (not safe)) (##fx= _g208197_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g208196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g208196_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals203067%_ _%hd203068%_)
        (let _%lp203070%_ ((_%rest203072%_ _%hd203068%_)
                           (_%k203073%_ '0)
                           (_%r203074%_ '()))
          (let* ((_%__stx207361207362%_ _%rest203072%_)
                 (_%g203079203096%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx207361207362%_)))))
            (let ((_%__kont207363207364%_
                   (lambda (_%g203081203159%_)
                     (_%lp203070%_
                      _%g203081203159%_
                      (let () (declare (not safe)) (##fx+ _%k203073%_ '1))
                      _%r203074%_)))
                  (_%__kont207365207366%_
                   (lambda (_%g203086203132%_ _%g203087203133%_)
                     (_%lp203070%_
                      _%g203086203132%_
                      (let () (declare (not safe)) (##fx+ _%k203073%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g203087203133%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals203067%_
                                         _%k203073%_
                                         _%g203086203132%_)
                                        '()))
                            _%r203074%_))))
                  (_%__kont207367207368%_
                   (lambda (_%g203091203108%_)
                     (let ((__tmp208198
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g203091203108%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals203067%_
                                               _%k203073%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp208198 _%r203074%_))))
                  (_%__kont207369207370%_ (lambda () (reverse _%r203074%_))))
              (let ((_%g203077203119%_
                     (lambda ()
                       (let ((_%g203091203108%_ _%__stx207361207362%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g203091203108%_))
                             (_%__kont207367207368%_ _%g203091203108%_)
                             (_%__kont207369207370%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx207361207362%_))
                    (let ((_%e203082203148%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx207361207362%_))))
                      (let ((_%tl203084203153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203082203148%_)))
                            (_%hd203083203151%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203082203148%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd203083203151%_))
                            (let ((_%e203085203156%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd203083203151%_))))
                              (if (equal? _%e203085203156%_ '#f)
                                  (_%__kont207363207364%_ _%tl203084203153%_)
                                  (_%__kont207365207366%_
                                   _%tl203084203153%_
                                   _%hd203083203151%_)))
                            (_%__kont207365207366%_
                             _%tl203084203153%_
                             _%hd203083203151%_))))
                    (let () (declare (not safe)) (_%g203077203119%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self202746%_ _%stx202747%_ _%compiled-body?202748%_)
        (letrec ((_%generate-simple202750%_
                  (lambda (_%hd203052%_ _%body203053%_)
                    (gxc#generate-runtime-simple-let
                     _%self202746%_
                     'letrec
                     _%hd203052%_
                     _%body203053%_
                     _%compiled-body?202748%_)))
                 (_%generate-values202751%_
                  (lambda (_%hd202831%_ _%body202832%_)
                    (let _%lp202834%_ ((_%rest202836%_ _%hd202831%_)
                                       (_%bind202837%_ '())
                                       (_%check202838%_ '())
                                       (_%post202839%_ '()))
                      (let* ((_%__stx207435207436%_ _%rest202836%_)
                             (_%g202842202853%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207435207436%_)))))
                        (let ((_%__kont207437207438%_
                               (lambda (_%g202844202880%_ _%g202845202881%_)
                                 (let* ((_%__stx207391207392%_
                                         _%g202845202881%_)
                                        (_%g202896202921%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx207391207392%_)))))
                                   (let ((_%__kont207393207394%_
                                          (lambda (_%g202898203028%_
                                                   _%g202899203029%_)
                                            (let ((_%eid203043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g202899203029%_)))
                                                  (_%expr203044%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self202746%_
                                                      _%g202898203028%_))))
                                              (_%lp202834%_
                                               _%g202844202880%_
                                               (cons (cons _%eid203043%_
                                                           (cons _%expr203044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202837%_)
                                               _%check202838%_
                                               _%post202839%_))))
                                         (_%__kont207395207396%_
                                          (lambda (_%g202909202942%_
                                                   _%g202910202943%_)
                                            (let* ((_%vals202956%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values202958%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals202956%_
                                                     _%g202910202943%_
                                                     _%g202909202942%_))
                                                   (_%refs202960%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals202956%_
                                                     _%g202910202943%_))
                                                   (_%expr202962%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self202746%_
                                                       _%g202909202942%_))))
                                              (_%lp202834%_
                                               _%g202844202880%_
                                               (let ((__tmp208200
                                                      (cons (cons _%vals202956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr202962%_ '()))
                    _%bind202837%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp208199
                                                      (map (lambda (_%e202964202966%_)
                                                             (let* ((_%e202964202968202977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e202964202966%_)
                            (_%E202970202981%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e202964202968202977%_
                                        '([eid _])))
                               '#!void))
                            (_%K202971202986%_
                             (lambda (_%eid202984%_)
                               (cons _%eid202984%_ (cons '#!void '())))))
                       (if (pair? _%e202964202968202977%_)
                           (let ((_%hd202972202989%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e202964202968202977%_)))
                                 (_%tl202973202991%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e202964202968202977%_))))
                             (let ((_%eid202994%_ _%hd202972202989%_))
                               (if (pair? _%tl202973202991%_)
                                   (let ((_%tl202975202996%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl202973202991%_))))
                                     (if (null? _%tl202975202996%_)
                                         (_%K202971202986%_ _%eid202994%_)
                                         (_%E202970202981%_)))
                                   (_%E202970202981%_))))
                           (_%E202970202981%_))))
                   _%refs202960%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp208200
                                                  __tmp208199))
                                               (cons _%check-values202958%_
                                                     _%check202838%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs202960%_
                                                  _%post202839%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx207391207392%_))
                                         (let ((_%e202900203004%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx207391207392%_))))
                                           (let ((_%tl202902203009%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202900203004%_)))
                                                 (_%hd202901203007%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202900203004%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd202901203007%_))
                                                 (let ((_%e202903203012%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd202901203007%_))))
                                                   (let ((_%tl202905203017%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202903203012%_)))
                                                         (_%hd202904203015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202903203012%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202905203017%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202902203009%_))
                     (let ((_%e202906203020%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202902203009%_))))
                       (let ((_%tl202908203025%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202906203020%_)))
                             (_%hd202907203023%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202906203020%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202908203025%_))
                             (_%__kont207393207394%_
                              _%hd202907203023%_
                              _%hd202904203015%_)
                             (let ()
                               (declare (not safe))
                               (_%g202896202921%_)))))
                     (let () (declare (not safe)) (_%g202896202921%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl202902203009%_))
                     (let ((_%e202914202934%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202902203009%_))))
                       (let ((_%tl202916202939%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202914202934%_)))
                             (_%hd202915202937%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202914202934%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202916202939%_))
                             (_%__kont207395207396%_
                              _%hd202915202937%_
                              _%hd202901203007%_)
                             (let ()
                               (declare (not safe))
                               (_%g202896202921%_)))))
                     (let () (declare (not safe)) (_%g202896202921%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl202902203009%_))
                                                     (let ((_%e202914202934%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl202902203009%_))))
                                                       (let ((_%tl202916202939%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e202914202934%_)))
                     (_%hd202915202937%_
                      (let () (declare (not safe)) (##car _%e202914202934%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl202916202939%_))
                     (_%__kont207395207396%_
                      _%hd202915202937%_
                      _%hd202901203007%_)
                     (let () (declare (not safe)) (_%g202896202921%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g202896202921%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g202896202921%_)))))))
                              (_%__kont207439207440%_
                               (lambda ()
                                 (let* ((_%body202860%_
                                         (if _%compiled-body?202748%_
                                             _%body202832%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self202746%_
                                                _%body202832%_))))
                                        (_%body202862%_
                                         (_%generate-values-post202753%_
                                          _%post202839%_
                                          _%body202860%_))
                                        (_%body202864%_
                                         (_%generate-values-check202752%_
                                          _%check202838%_
                                          _%body202862%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind202837%_)
                                               (cons _%body202864%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207435207436%_))
                              (let ((_%e202846202872%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207435207436%_))))
                                (let ((_%tl202848202877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202846202872%_)))
                                      (_%hd202847202875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202846202872%_))))
                                  (_%__kont207437207438%_
                                   _%tl202848202877%_
                                   _%hd202847202875%_)))
                              (_%__kont207439207440%_)))))))
                 (_%generate-values-check202752%_
                  (lambda (_%check202828%_ _%body202829%_)
                    (cons 'begin
                          (let ((__tmp208202 (cons _%body202829%_ '()))
                                (__tmp208201 (reverse _%check202828%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp208202 __tmp208201)))))
                 (_%generate-values-post202753%_
                  (lambda (_%post202821%_ _%body202822%_)
                    (cons 'begin
                          (let ((__tmp208206 (cons _%body202822%_ '()))
                                (__tmp208203
                                 (let ((__tmp208205
                                        (lambda (_%g202823202825%_)
                                          (cons 'set! _%g202823202825%_)))
                                       (__tmp208204 (reverse _%post202821%_)))
                                   (declare (not safe))
                                   (##map __tmp208205 __tmp208204))))
                            (declare (not safe))
                            (foldr__0 cons __tmp208206 __tmp208203))))))
          (let* ((_%g202755202772%_
                  (lambda (_%g202756202769%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202756202769%_))))
                 (_%g202754202818%_
                  (lambda (_%g202756202775%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202756202775%_))
                        (let ((_%e202759202777%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202756202775%_))))
                          (let ((_%hd202760202780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202759202777%_)))
                                (_%tl202761202782%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202759202777%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202761202782%_))
                                (let ((_%e202762202785%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl202761202782%_))))
                                  (let ((_%hd202763202788%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202762202785%_)))
                                        (_%tl202764202790%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202762202785%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202764202790%_))
                                        (let ((_%e202765202793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202764202790%_))))
                                          (let ((_%hd202766202796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202765202793%_)))
                                                (_%tl202767202798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202765202793%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202767202798%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%hd202763202788%_)
                                                    (_%generate-simple202750%_
                                                     _%hd202763202788%_
                                                     _%hd202766202796%_)
                                                    (_%generate-values202751%_
                                                     _%hd202763202788%_
                                                     _%hd202766202796%_))
                                                (_%g202755202772%_
                                                 _%g202756202775%_))))
                                        (_%g202755202772%_
                                         _%g202756202775%_))))
                                (_%g202755202772%_ _%g202756202775%_))))
                        (_%g202755202772%_ _%g202756202775%_)))))
            (_%g202754202818%_ _%stx202747%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self203058%_ _%stx203059%_)
        (let ((_%compiled-body?203061%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self203058%_
           _%stx203059%_
           _%compiled-body?203061%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g208207_
        (let ((_g208208_ (let () (declare (not safe)) (##length _g208207_))))
          (cond ((let () (declare (not safe)) (##fx= _g208208_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g208207_))
                ((let () (declare (not safe)) (##fx= _g208208_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g208207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g208207_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self202327%_ _%stx202328%_)
        (letrec ((_%generate-values202330%_
                  (lambda (_%hd202573%_ _%body202574%_)
                    (let _%lp202576%_ ((_%rest202578%_ _%hd202573%_)
                                       (_%bind202579%_ '()))
                      (let* ((_%rest202580202588%_ _%rest202578%_)
                             (_%else202582202599%_
                              (lambda ()
                                (let ((_%bind202596%_ (reverse _%bind202579%_))
                                      (_%body202597%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self202327%_
                                          _%body202574%_))))
                                  (cons 'letrec*
                                        (cons _%bind202596%_
                                              (cons _%body202597%_ '()))))))
                             (_%K202584202733%_
                              (lambda (_%rest202602%_ _%hd-bind202603%_)
                                (let* ((_%__stx207449207450%_
                                        _%hd-bind202603%_)
                                       (_%g202606202631%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx207449207450%_)))))
                                  (let ((_%__kont207451207452%_
                                         (lambda (_%g202608202712%_
                                                  _%g202609202713%_)
                                           (let ((_%eid202727%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g202609202713%_)))
                                                 (_%expr202728%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self202327%_
                                                     _%g202608202712%_))))
                                             (_%lp202576%_
                                              _%rest202602%_
                                              (cons (cons _%eid202727%_
                                                          (cons _%expr202728%_
                                                                '()))
                                                    _%bind202579%_)))))
                                        (_%__kont207453207454%_
                                         (lambda (_%g202619202652%_
                                                  _%g202620202653%_)
                                           (let* ((_%vals202672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp202674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values202676%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp202674%_
                                                    _%g202620202653%_
                                                    _%g202619202652%_))
                                                  (_%refs202678%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals202672%_
                                                    _%g202620202653%_))
                                                  (_%expr202680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self202327%_
                                                      _%g202619202652%_))))
                                             (_%lp202576%_
                                              _%rest202602%_
                                              (let ((__tmp208209
                                                     (cons (cons _%vals202672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp202674%_
                                                       (cons _%expr202680%_
                                                             '()))
                                                 '())
                                           (cons _%check-values202676%_
                                                 (cons _%tmp202674%_ '()))))
                               '()))
                   _%bind202579%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp208209
                                                 _%refs202678%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx207449207450%_))
                                        (let ((_%e202610202688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx207449207450%_))))
                                          (let ((_%tl202612202693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202610202688%_)))
                                                (_%hd202611202691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202610202688%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202611202691%_))
                                                (let ((_%e202613202696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202611202691%_))))
                                                  (let ((_%tl202615202701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202613202696%_)))
                                                        (_%hd202614202699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202613202696%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl202615202701%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202612202693%_))
                                                            (let ((_%e202616202704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202612202693%_))))
                      (let ((_%tl202618202709%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202616202704%_)))
                            (_%hd202617202707%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202616202704%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202618202709%_))
                            (_%__kont207451207452%_
                             _%hd202617202707%_
                             _%hd202614202699%_)
                            (let ()
                              (declare (not safe))
                              (_%g202606202631%_)))))
                    (let () (declare (not safe)) (_%g202606202631%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl202612202693%_))
                    (let ((_%e202624202644%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202612202693%_))))
                      (let ((_%tl202626202649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202624202644%_)))
                            (_%hd202625202647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202624202644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202626202649%_))
                            (_%__kont207453207454%_
                             _%hd202625202647%_
                             _%hd202611202691%_)
                            (let ()
                              (declare (not safe))
                              (_%g202606202631%_)))))
                    (let () (declare (not safe)) (_%g202606202631%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl202612202693%_))
                                                    (let ((_%e202624202644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl202612202693%_))))
                                                      (let ((_%tl202626202649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e202624202644%_)))
                    (_%hd202625202647%_
                     (let () (declare (not safe)) (##car _%e202624202644%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl202626202649%_))
                    (_%__kont207453207454%_
                     _%hd202625202647%_
                     _%hd202611202691%_)
                    (let () (declare (not safe)) (_%g202606202631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202606202631%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202606202631%_))))))))
                        (if (pair? _%rest202580202588%_)
                            (let ((_%hd202585202736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202580202588%_)))
                                  (_%tl202586202738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202580202588%_))))
                              (let* ((_%hd-bind202741%_ _%hd202585202736%_)
                                     (_%rest202743%_ _%tl202586202738%_))
                                (_%K202584202733%_
                                 _%rest202743%_
                                 _%hd-bind202741%_)))
                            (_%else202582202599%_))))))
                 (_%generate-letrec?202331%_
                  (lambda (_%hd202463%_)
                    (let _%lp202465%_ ((_%rest202467%_ _%hd202463%_))
                      (let* ((_%rest202468202476%_ _%rest202467%_)
                             (_%else202470202484%_ (lambda () '#t))
                             (_%K202472202561%_
                              (lambda (_%rest202487%_ _%hd-bind202488%_)
                                (let* ((_%g202490202507%_
                                        (lambda (_%g202491202504%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g202491202504%_))))
                                       (_%g202489202558%_
                                        (lambda (_%g202491202510%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g202491202510%_))
                                              (let ((_%e202494202512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g202491202510%_))))
                                                (let ((_%hd202495202515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202494202512%_)))
                                                      (_%tl202496202517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202494202512%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd202495202515%_))
                                                      (let ((_%e202497202520%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd202495202515%_))))
                (let ((_%hd202498202523%_
                       (let () (declare (not safe)) (##car _%e202497202520%_)))
                      (_%tl202499202525%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202497202520%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202499202525%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202496202517%_))
                          (let ((_%e202500202528%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202496202517%_))))
                            (let ((_%hd202501202531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202500202528%_)))
                                  (_%tl202502202533%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202500202528%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202502202533%_))
                                  (if (_%is-lambda-expr?202332%_
                                       _%hd202501202531%_)
                                      (_%lp202465%_ _%rest202487%_)
                                      '#f)
                                  (_%g202490202507%_ _%g202491202510%_))))
                          (_%g202490202507%_ _%g202491202510%_))
                      (_%g202490202507%_ _%g202491202510%_))))
              (_%g202490202507%_ _%g202491202510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202490202507%_
                                               _%g202491202510%_)))))
                                  (_%g202489202558%_ _%hd-bind202488%_)))))
                        (if (pair? _%rest202468202476%_)
                            (let ((_%hd202473202564%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202468202476%_)))
                                  (_%tl202474202566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202468202476%_))))
                              (let* ((_%hd-bind202569%_ _%hd202473202564%_)
                                     (_%rest202571%_ _%tl202474202566%_))
                                (_%K202472202561%_
                                 _%rest202571%_
                                 _%hd-bind202569%_)))
                            (_%else202470202484%_))))))
                 (_%is-lambda-expr?202332%_
                  (lambda (_%expr202400%_)
                    (let* ((_%__stx207493207494%_ _%expr202400%_)
                           (_%g202403202417%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx207493207494%_)))))
                      (let ((_%__kont207495207496%_
                             (lambda (_%g202405202445%_ _%g202406202446%_)
                               '#t))
                            (_%__kont207497207498%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx207493207494%_))
                            (let ((_%e202407202429%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx207493207494%_))))
                              (let ((_%tl202409202434%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202407202429%_)))
                                    (_%hd202408202432%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202407202429%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202408202432%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd202408202432%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202409202434%_))
                                            (let ((_%e202410202437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202409202434%_))))
                                              (let ((_%tl202412202442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202410202437%_)))
                                                    (_%hd202411202440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202410202437%_))))
                                                (_%__kont207495207496%_
                                                 _%tl202412202442%_
                                                 _%hd202411202440%_)))
                                            (_%__kont207497207498%_))
                                        (_%__kont207497207498%_))
                                    (_%__kont207497207498%_))))
                            (_%__kont207497207498%_)))))))
          (let* ((_%g202334202351%_
                  (lambda (_%g202335202348%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202335202348%_))))
                 (_%g202333202397%_
                  (lambda (_%g202335202354%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202335202354%_))
                        (let ((_%e202338202356%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202335202354%_))))
                          (let ((_%hd202339202359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202338202356%_)))
                                (_%tl202340202361%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202338202356%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202340202361%_))
                                (let ((_%e202341202364%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl202340202361%_))))
                                  (let ((_%hd202342202367%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202341202364%_)))
                                        (_%tl202343202369%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202341202364%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202343202369%_))
                                        (let ((_%e202344202372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202343202369%_))))
                                          (let ((_%hd202345202375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202344202372%_)))
                                                (_%tl202346202377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202344202372%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202346202377%_))
                                                (if (gxc#generate-runtime-simple-let?
                                                     _%hd202342202367%_)
                                                    (if (_%generate-letrec?202331%_
                                                         _%hd202342202367%_)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self202327%_
                                                         'letrec
                                                         _%hd202342202367%_
                                                         _%hd202345202375%_
                                                         '#f)
                                                        (gxc#generate-runtime-simple-let
                                                         _%self202327%_
                                                         'letrec*
                                                         _%hd202342202367%_
                                                         _%hd202345202375%_
                                                         '#f))
                                                    (_%generate-values202330%_
                                                     _%hd202342202367%_
                                                     _%hd202345202375%_))
                                                (_%g202334202351%_
                                                 _%g202335202354%_))))
                                        (_%g202334202351%_
                                         _%g202335202354%_))))
                                (_%g202334202351%_ _%g202335202354%_))))
                        (_%g202334202351%_ _%g202335202354%_)))))
            (_%g202333202397%_ _%stx202328%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd202264%_)
        (let _%lp202266%_ ((_%rest202268%_ _%hd202264%_))
          (let* ((_%rest202269202285%_ _%rest202268%_)
                 (_%else202272202293%_ (lambda () '#f)))
            (let ((_%K202275202306%_
                   (lambda (_%rest202304%_) (_%lp202266%_ _%rest202304%_)))
                  (_%K202274202298%_ (lambda () '#t)))
              (let ((_%try-match202271202301%_
                     (lambda ()
                       (if (null? _%rest202269202285%_)
                           (_%K202274202298%_)
                           (_%else202272202293%_)))))
                (if (pair? _%rest202269202285%_)
                    (let ((_%tl202277202311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest202269202285%_)))
                          (_%hd202276202309%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest202269202285%_))))
                      (if (pair? _%hd202276202309%_)
                          (let ((_%tl202279202316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd202276202309%_)))
                                (_%hd202278202314%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd202276202309%_))))
                            (if (pair? _%hd202278202314%_)
                                (let ((_%tl202283202319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd202278202314%_))))
                                  (if (null? _%tl202283202319%_)
                                      (if (pair? _%tl202279202316%_)
                                          (let ((_%tl202281202322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202279202316%_))))
                                            (if (null? _%tl202281202322%_)
                                                (let ((_%rest202325%_
                                                       _%tl202277202311%_))
                                                  (_%lp202266%_
                                                   _%rest202325%_))
                                                (_%else202272202293%_)))
                                          (_%else202272202293%_))
                                      (_%else202272202293%_)))
                                (_%else202272202293%_)))
                          (_%else202272202293%_)))
                    (_%try-match202271202301%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self202176%_
               _%form202177%_
               _%hd202178%_
               _%body202179%_
               _%compiled-body?202180%_)
        (letrec ((_%generate1202182%_
                  (lambda (_%bind202221%_)
                    (let* ((_%bind202222202233%_ _%bind202221%_)
                           (_%E202224202236%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind202222202233%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K202225202242%_
                            (lambda (_%expr202239%_ _%id202240%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id202240%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self202176%_
                                             _%expr202239%_))
                                          '())))))
                      (if (pair? _%bind202222202233%_)
                          (let ((_%hd202226202245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind202222202233%_)))
                                (_%tl202227202247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind202222202233%_))))
                            (if (pair? _%hd202226202245%_)
                                (let ((_%hd202230202250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd202226202245%_)))
                                      (_%tl202231202252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd202226202245%_))))
                                  (let ((_%id202255%_ _%hd202230202250%_))
                                    (if (null? _%tl202231202252%_)
                                        (if (pair? _%tl202227202247%_)
                                            (let ((_%hd202228202257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl202227202247%_)))
                                                  (_%tl202229202259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl202227202247%_))))
                                              (let ((_%expr202262%_
                                                     _%hd202228202257%_))
                                                (if (null? _%tl202229202259%_)
                                                    (_%K202225202242%_
                                                     _%expr202262%_
                                                     _%id202255%_)
                                                    (_%E202224202236%_))))
                                            (_%E202224202236%_))
                                        (_%E202224202236%_))))
                                (_%E202224202236%_)))
                          (_%E202224202236%_))))))
          (let* ((_%bind202184%_ (map _%generate1202182%_ _%hd202178%_))
                 (_%body202186%_
                  (if _%compiled-body?202180%_
                      _%body202179%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self202176%_ _%body202179%_))))
                 (_%body202218%_
                  (let* ((_%body202187202195%_ _%body202186%_)
                         (_%else202189202203%_
                          (lambda () (cons _%body202186%_ '())))
                         (_%K202191202208%_
                          (lambda (_%exprs202206%_) _%exprs202206%_)))
                    (if (pair? _%body202187202195%_)
                        (let ((_%hd202192202211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body202187202195%_)))
                              (_%tl202193202213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body202187202195%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd202192202211%_ 'begin))
                              (let ((_%exprs202216%_ _%tl202193202213%_))
                                (_%K202191202208%_ _%exprs202216%_))
                              (_%else202189202203%_)))
                        (_%else202189202203%_)))))
            (cons _%form202177%_ (cons _%bind202184%_ _%body202218%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self202076%_ _%stx202077%_)
        (letrec ((_%generate1202079%_
                  (lambda (_%datum202131%_)
                    (if (or (null? _%datum202131%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum202131%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum202131%_))
                            (eof-object? _%datum202131%_))
                        _%datum202131%_
                        (if (uninterned-symbol? _%datum202131%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum202131%_
                               '#t))
                            (if (pair? _%datum202131%_)
                                (cons (_%generate1202079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum202131%_)))
                                      (_%generate1202079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum202131%_))))
                                (if (box? _%datum202131%_)
                                    (box (_%generate1202079%_
                                          (unbox _%datum202131%_)))
                                    (if (vector? _%datum202131%_)
                                        (vector-map
                                         _%generate1202079%_
                                         _%datum202131%_)
                                        (if (or (s8vector? _%datum202131%_)
                                                (u8vector? _%datum202131%_)
                                                (s16vector? _%datum202131%_)
                                                (u16vector? _%datum202131%_)
                                                (s32vector? _%datum202131%_)
                                                (u32vector? _%datum202131%_)
                                                (s64vector? _%datum202131%_)
                                                (u64vector? _%datum202131%_)
                                                (f32vector? _%datum202131%_)
                                                (f64vector? _%datum202131%_))
                                            _%datum202131%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx202077%_)))))))))))
          (let* ((_%g202081202094%_
                  (lambda (_%g202082202091%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202082202091%_))))
                 (_%g202080202128%_
                  (lambda (_%g202082202097%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202082202097%_))
                        (let ((_%e202084202099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202082202097%_))))
                          (let ((_%hd202085202102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202084202099%_)))
                                (_%tl202086202104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202084202099%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202086202104%_))
                                (let ((_%e202087202107%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl202086202104%_))))
                                  (let ((_%hd202088202110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202087202107%_)))
                                        (_%tl202089202112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202087202107%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202089202112%_))
                                        (cons 'quote
                                              (cons (_%generate1202079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202088202110%_)))
                                                    '()))
                                        (_%g202081202094%_
                                         _%g202082202097%_))))
                                (_%g202081202094%_ _%g202082202097%_))))
                        (_%g202081202094%_ _%g202082202097%_)))))
            (_%g202080202128%_ _%stx202077%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self201523%_ _%stx201524%_)
        (letrec ((_%compile-call201526%_
                  (lambda (_%rator201813%_ _%rands201814%_)
                    (let ((_%rator201820%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self201523%_
                              _%rator201813%_)))
                          (_%rands201821%_
                           (map (lambda (_%g201815201817%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self201523%_
                                     _%g201815201817%_)))
                                _%rands201814%_)))
                      (let* ((_%__stx207540207541%_ _%rator201820%_)
                             (_%g201824201876%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207540207541%_)))))
                        (let ((_%__kont207542207543%_
                               (lambda (_%g201826201996%_
                                        _%g201827201997%_
                                        _%g201828201998%_
                                        _%g201829201999%_)
                                 (if (let ((__tmp208212
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands201821%_)))
                                           (__tmp208210
                                            (length (let ((__tmp208211
                                                           (lambda (_%g202035202038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g202036202040%_)
                     (cons _%g202035202038%_ _%g202036202040%_))))
              (declare (not safe))
              (foldr__0 __tmp208211 '() _%g201828201998%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp208212 __tmp208210))
                                     (let* ((_%id202043%_ _%g201829201999%_)
                                            (_%args202052%_
                                             (let ((__tmp208213
                                                    (lambda (_%g202044202047%_
                                                             _%g202045202049%_)
                                                      (cons _%g202044202047%_
                                                            _%g202045202049%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp208213
                                                '()
                                                _%g201828201998%_)))
                                            (_%body202061%_
                                             (let ((__tmp208214
                                                    (lambda (_%g202053202056%_
                                                             _%g202054202058%_)
                                                      (cons _%g202053202056%_
                                                            _%g202054202058%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp208214
                                                '()
                                                _%g201827201997%_)))
                                            (_%init202063%_
                                             (map list
                                                  _%args202052%_
                                                  _%rands201821%_)))
                                       (cons 'let
                                             (cons _%id202043%_
                                                   (cons _%init202063%_
                                                         _%body202061%_))))
                                     (let ((__tmp208215
                                            (let ((__tmp208216
                                                   (lambda (_%g202065202068%_
                                                            _%g202066202070%_)
                                                     (cons _%g202065202068%_
                                                           _%g202066202070%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208216
                                               '()
                                               _%g201828201998%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx201524%_
                                        __tmp208215
                                        _%rands201821%_)))))
                              (_%__kont207548207549%_
                               (lambda ()
                                 (cons _%rator201820%_ _%rands201821%_))))
                          (let ((_%__match207607207608%_
                                 (lambda (_%e201830201888%_
                                          _%hd201831201891%_
                                          _%tl201832201893%_
                                          _%e201833201896%_
                                          _%hd201834201899%_
                                          _%tl201835201901%_
                                          _%e201836201904%_
                                          _%hd201837201907%_
                                          _%tl201838201909%_
                                          _%e201839201912%_
                                          _%hd201840201915%_
                                          _%tl201841201917%_
                                          _%e201842201920%_
                                          _%hd201843201923%_
                                          _%tl201844201925%_
                                          _%e201845201928%_
                                          _%hd201846201931%_
                                          _%tl201847201933%_
                                          _%e201848201936%_
                                          _%hd201849201939%_
                                          _%tl201850201941%_
                                          _%__splice207544207545%_
                                          _%target201851201944%_
                                          _%tl201853201946%_)
                                   (letrec ((_%loop201854201949%_
                                             (lambda (_%hd201852201952%_
                                                      _%arg201858201954%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd201852201952%_))
                                                   (let ((_%e201855201956%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd201852201952%_))))
                                                     (let ((_%lp-tl201857201961%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201855201956%_)))
                                                           (_%lp-hd201856201959%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201855201956%_))))
                                                       (_%loop201854201949%_
                                                        _%lp-tl201857201961%_
                                                        (cons _%lp-hd201856201959%_
                                                              _%arg201858201954%_))))
                                                   (let ((_%arg201859201964%_
                                                          (reverse _%arg201858201954%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl201850201941%_))
                                                         (let ((_%__splice207546207547%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl201850201941%_
                           '0))))
                   (let ((_%tl201862201968%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice207546207547%_ '1)))
                         (_%target201860201966%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice207546207547%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl201862201968%_))
                         (letrec ((_%loop201863201971%_
                                   (lambda (_%hd201861201974%_
                                            _%body201867201976%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd201861201974%_))
                                         (let ((_%e201864201978%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd201861201974%_))))
                                           (let ((_%lp-tl201866201983%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201864201978%_)))
                                                 (_%lp-hd201865201981%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201864201978%_))))
                                             (_%loop201863201971%_
                                              _%lp-tl201866201983%_
                                              (cons _%lp-hd201865201981%_
                                                    _%body201867201976%_))))
                                         (let ((_%body201868201986%_
                                                (reverse _%body201867201976%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201844201925%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201838201909%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201835201901%_))
                                                       (let ((_%e201869201988%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl201835201901%_))))
                 (let ((_%tl201871201993%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201869201988%_)))
                       (_%hd201870201991%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201869201988%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl201871201993%_))
                       (let ((_%g201826201996%_ _%hd201870201991%_)
                             (_%g201827201997%_ _%body201868201986%_)
                             (_%g201828201998%_ _%arg201859201964%_)
                             (_%g201829201999%_ _%hd201840201915%_))
                         (if (eq? _%g201829201999%_ _%g201826201996%_)
                             (_%__kont207542207543%_
                              _%g201826201996%_
                              _%g201827201997%_
                              _%g201828201998%_
                              _%g201829201999%_)
                             (_%__kont207548207549%_)))
                       (_%__kont207548207549%_))))
               (_%__kont207548207549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont207548207549%_))
                                               (_%__kont207548207549%_)))))))
                           (_%loop201863201971%_ _%target201860201966%_ '()))
                         (_%__kont207548207549%_))))
                 (_%__kont207548207549%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop201854201949%_
                                      _%target201851201944%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx207540207541%_))
                                (let ((_%e201830201888%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx207540207541%_))))
                                  (let ((_%tl201832201893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201830201888%_)))
                                        (_%hd201831201891%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201830201888%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd201831201891%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd201831201891%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201832201893%_))
                                                (let ((_%e201833201896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201832201893%_))))
                                                  (let ((_%tl201835201901%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201833201896%_)))
                                                        (_%hd201834201899%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201833201896%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201834201899%_))
                                                        (let ((_%e201836201904%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd201834201899%_))))
                  (let ((_%tl201838201909%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201836201904%_)))
                        (_%hd201837201907%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201836201904%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201837201907%_))
                        (let ((_%e201839201912%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201837201907%_))))
                          (let ((_%tl201841201917%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201839201912%_)))
                                (_%hd201840201915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201839201912%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201841201917%_))
                                (let ((_%e201842201920%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201841201917%_))))
                                  (let ((_%tl201844201925%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201842201920%_)))
                                        (_%hd201843201923%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201842201920%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd201843201923%_))
                                        (let ((_%e201845201928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd201843201923%_))))
                                          (let ((_%tl201847201933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201845201928%_)))
                                                (_%hd201846201931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201845201928%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd201846201931%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd201846201931%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201847201933%_))
                                                        (let ((_%e201848201936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201847201933%_))))
                  (let ((_%tl201850201941%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201848201936%_)))
                        (_%hd201849201939%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201848201936%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd201849201939%_))
                        (let ((_%__splice207544207545%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd201849201939%_
                                  '0))))
                          (let ((_%tl201853201946%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice207544207545%_ '1)))
                                (_%target201851201944%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice207544207545%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201853201946%_))
                                (_%__match207607207608%_
                                 _%e201830201888%_
                                 _%hd201831201891%_
                                 _%tl201832201893%_
                                 _%e201833201896%_
                                 _%hd201834201899%_
                                 _%tl201835201901%_
                                 _%e201836201904%_
                                 _%hd201837201907%_
                                 _%tl201838201909%_
                                 _%e201839201912%_
                                 _%hd201840201915%_
                                 _%tl201841201917%_
                                 _%e201842201920%_
                                 _%hd201843201923%_
                                 _%tl201844201925%_
                                 _%e201845201928%_
                                 _%hd201846201931%_
                                 _%tl201847201933%_
                                 _%e201848201936%_
                                 _%hd201849201939%_
                                 _%tl201850201941%_
                                 _%__splice207544207545%_
                                 _%target201851201944%_
                                 _%tl201853201946%_)
                                (_%__kont207548207549%_))))
                        (_%__kont207548207549%_))))
                (_%__kont207548207549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont207548207549%_))
                                                (_%__kont207548207549%_))))
                                        (_%__kont207548207549%_))))
                                (_%__kont207548207549%_))))
                        (_%__kont207548207549%_))))
                (_%__kont207548207549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont207548207549%_))
                                            (_%__kont207548207549%_))
                                        (_%__kont207548207549%_))))
                                (_%__kont207548207549%_)))))))))
          (let* ((_%g201528201551%_
                  (lambda (_%g201529201548%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201529201548%_))))
                 (_%g201527201810%_
                  (lambda (_%g201529201554%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201529201554%_))
                        (let ((_%e201532201556%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201529201554%_))))
                          (let ((_%hd201533201559%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201532201556%_)))
                                (_%tl201534201561%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201532201556%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201534201561%_))
                                (let ((_%e201535201564%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201534201561%_))))
                                  (let ((_%hd201536201567%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201535201564%_)))
                                        (_%tl201537201569%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201535201564%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl201537201569%_))
                                        (let ((_g208217_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl201537201569%_
                                                  '0))))
                                          (begin
                                            (let ((_g208218_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g208217_)
                                                         (##values-length
                                                          _g208217_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g208218_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g208218_)))
                                            (let ((_%target201538201572%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g208217_
                                                      0)))
                                                  (_%tl201540201574%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g208217_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201540201574%_))
                                                  (letrec ((_%loop201541201577%_
                                                            (lambda (_%hd201539201580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand201545201582%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd201539201580%_))
                          (let ((_%e201542201584%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd201539201580%_))))
                            (let ((_%lp-hd201543201587%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201542201584%_)))
                                  (_%lp-tl201544201589%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201542201584%_))))
                              (_%loop201541201577%_
                               _%lp-tl201544201589%_
                               (cons _%lp-hd201543201587%_
                                     _%rand201545201582%_))))
                          (let ((_%rand201546201592%_
                                 (reverse _%rand201545201582%_)))
                            (if (gxc#current-compile-decls-unsafe?)
                                (_%compile-call201526%_
                                 _%hd201536201567%_
                                 (let ((__tmp208219
                                        (lambda (_%g201612201615%_
                                                 _%g201613201617%_)
                                          (cons _%g201612201615%_
                                                _%g201613201617%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp208219
                                    '()
                                    _%rand201546201592%_)))
                                (let* ((_%__stx207656207657%_
                                        _%hd201536201567%_)
                                       (_%g201621201633%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx207656207657%_)))))
                                  (let ((_%__kont207658207659%_
                                         (lambda ()
                                           (let ((_%f201670%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self201523%_
                                                     _%hd201536201567%_))))
                                             (if (and (let ((__tmp208220
                                                             (symbol->string
                                                              _%f201670%_)))
                                                        (declare (not safe))
                                                        (##string-prefix?
                                                         '"##"
                                                         __tmp208220))
                                                      (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##memq _%f201670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let _%lp201672%_ ((_%rest201675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (reverse (let ((__tmp208222
                                             (lambda (_%g201792201795%_
                                                      _%g201793201797%_)
                                               (cons _%g201792201795%_
                                                     _%g201793201797%_))))
                                        (declare (not safe))
                                        (foldr__0
                                         __tmp208222
                                         '()
                                         _%rand201546201592%_))))
                            (_%bind201677%_ '())
                            (_%args201678%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%rest201679201687%_
                                                           _%rest201675%_)
                                                          (_%else201681201695%_
                                                           (lambda ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bind201677%_
                                 (cons '(declare (not safe))
                                       (cons (cons _%f201670%_ _%args201678%_)
                                             '()))))))
                  (_%K201683201781%_
                   (lambda (_%rest201698%_ _%e201699%_)
                     (let* ((_%__stx207610207611%_ _%e201699%_)
                            (_%g201704201722%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx207610207611%_)))))
                       (let ((_%__kont207612207613%_
                              (lambda ()
                                (_%lp201672%_
                                 _%rest201698%_
                                 _%bind201677%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e201699%_))
                                       _%args201678%_))))
                             (_%__kont207614207615%_
                              (lambda ()
                                (_%lp201672%_
                                 _%rest201698%_
                                 _%bind201677%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e201699%_))
                                       _%args201678%_))))
                             (_%__kont207616207617%_
                              (lambda ()
                                (let ((_%tmp201729%_
                                       (let ((__tmp208221
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__tmp))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp208221))))
                                  (_%lp201672%_
                                   _%rest201698%_
                                   (cons (cons _%tmp201729%_
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _%e201699%_))
                                                     '()))
                                         _%bind201677%_)
                                   (cons _%tmp201729%_ _%args201678%_))))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%__stx207610207611%_))
                             (let ((_%e201706201760%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%__stx207610207611%_))))
                               (let ((_%tl201708201765%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e201706201760%_)))
                                     (_%hd201707201763%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e201706201760%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%hd201707201763%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%hd201707201763%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201708201765%_))
                                             (let ((_%e201709201768%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl201708201765%_))))
                                               (let ((_%tl201711201773%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201709201768%_)))
                                                     (_%hd201710201771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201709201768%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl201711201773%_))
                                                     (_%__kont207612207613%_)
                                                     (_%__kont207616207617%_))))
                                             (_%__kont207616207617%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#quote
                                                _%hd201707201763%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201708201765%_))
                                                 (let ((_%e201715201745%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl201708201765%_))))
                                                   (let ((_%tl201717201750%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201715201745%_)))
                                                         (_%hd201716201748%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201715201745%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201717201750%_))
                                                         (_%__kont207614207615%_)
                                                         (_%__kont207616207617%_))))
                                                 (_%__kont207616207617%_))
                                             (_%__kont207616207617%_)))
                                     (_%__kont207616207617%_))))
                             (_%__kont207616207617%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (pair? _%rest201679201687%_)
                                                         (let ((_%hd201684201784%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%rest201679201687%_)))
                       (_%tl201685201786%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%rest201679201687%_))))
                   (let* ((_%e201789%_ _%hd201684201784%_)
                          (_%rest201791%_ _%tl201685201786%_))
                     (_%K201683201781%_ _%rest201791%_ _%e201789%_)))
                 (_%else201681201695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%compile-call201526%_
                                                  _%hd201536201567%_
                                                  (let ((__tmp208223
                                                         (lambda (_%g201799201802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g201800201804%_)
                   (cons _%g201799201802%_ _%g201800201804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp208223
                                                     '()
                                                     _%rand201546201592%_)))))))
                                        (_%__kont207660207661%_
                                         (lambda ()
                                           (_%compile-call201526%_
                                            _%hd201536201567%_
                                            (let ((__tmp208224
                                                   (lambda (_%g201639201642%_
                                                            _%g201640201644%_)
                                                     (cons _%g201639201642%_
                                                           _%g201640201644%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp208224
                                               '()
                                               _%rand201546201592%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx207656207657%_))
                                        (let ((_%e201623201652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx207656207657%_))))
                                          (let ((_%tl201625201657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201623201652%_)))
                                                (_%hd201624201655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201623201652%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd201624201655%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd201624201655%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201625201657%_))
                                                        (let ((_%e201626201660%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201625201657%_))))
                  (let ((_%tl201628201665%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201626201660%_)))
                        (_%hd201627201663%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201626201660%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl201628201665%_))
                        (_%__kont207658207659%_)
                        (_%__kont207660207661%_))))
                (_%__kont207660207661%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont207660207661%_))
                                                (_%__kont207660207661%_))))
                                        (_%__kont207660207661%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop201541201577%_
                                                     _%target201538201572%_
                                                     '()))
                                                  (_%g201528201551%_
                                                   _%g201529201554%_)))))
                                        (_%g201528201551%_
                                         _%g201529201554%_))))
                                (_%g201528201551%_ _%g201529201554%_))))
                        (_%g201528201551%_ _%g201529201554%_)))))
            (_%g201527201810%_ _%stx201524%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self201268%_ _%stx201269%_)
        (let* ((_%__stx207728207729%_ _%stx201269%_)
               (_%g201272201301%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207728207729%_)))))
          (let ((_%__kont207730207731%_
                 (lambda (_%g201274201367%_ _%g201275201368%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self201268%_
                        _%stx201269%_)
                       (let ((_%f201390%_
                              (let ((__tmp208225
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g201275201368%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self201268%_
                                 __tmp208225))))
                         (let _%lp201392%_ ((_%rest201395%_
                                             (reverse (let ((__tmp208227
                                                             (lambda (_%g201512201515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g201513201517%_)
                       (cons _%g201512201515%_ _%g201513201517%_))))
                (declare (not safe))
                (foldr__0 __tmp208227 '() _%g201274201367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind201397%_ '())
                                            (_%args201398%_ '()))
                           (let* ((_%rest201399201407%_ _%rest201395%_)
                                  (_%else201401201415%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind201397%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f201390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args201398%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K201403201501%_
                                   (lambda (_%rest201418%_ _%e201419%_)
                                     (let* ((_%__stx207682207683%_ _%e201419%_)
                                            (_%g201424201442%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx207682207683%_)))))
                                       (let ((_%__kont207684207685%_
                                              (lambda ()
                                                (_%lp201392%_
                                                 _%rest201418%_
                                                 _%bind201397%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e201419%_))
                                                       _%args201398%_))))
                                             (_%__kont207686207687%_
                                              (lambda ()
                                                (_%lp201392%_
                                                 _%rest201418%_
                                                 _%bind201397%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e201419%_))
                                                       _%args201398%_))))
                                             (_%__kont207688207689%_
                                              (lambda ()
                                                (let ((_%tmp201449%_
                                                       (let ((__tmp208226
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp208226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp201392%_
                                                   _%rest201418%_
                                                   (cons (cons _%tmp201449%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e201419%_))
                             '()))
                 _%bind201397%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp201449%_
                                                         _%args201398%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx207682207683%_))
                                             (let ((_%e201426201480%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx207682207683%_))))
                                               (let ((_%tl201428201485%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201426201480%_)))
                                                     (_%hd201427201483%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201426201480%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd201427201483%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd201427201483%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201428201485%_))
                     (let ((_%e201429201488%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201428201485%_))))
                       (let ((_%tl201431201493%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201429201488%_)))
                             (_%hd201430201491%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201429201488%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201431201493%_))
                             (_%__kont207684207685%_)
                             (_%__kont207688207689%_))))
                     (_%__kont207688207689%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd201427201483%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201428201485%_))
                         (let ((_%e201435201465%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl201428201485%_))))
                           (let ((_%tl201437201470%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201435201465%_)))
                                 (_%hd201436201468%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201435201465%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201437201470%_))
                                 (_%__kont207686207687%_)
                                 (_%__kont207688207689%_))))
                         (_%__kont207688207689%_))
                     (_%__kont207688207689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont207688207689%_))))
                                             (_%__kont207688207689%_)))))))
                             (if (pair? _%rest201399201407%_)
                                 (let ((_%hd201404201504%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201399201407%_)))
                                       (_%tl201405201506%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201399201407%_))))
                                   (let* ((_%e201509%_ _%hd201404201504%_)
                                          (_%rest201511%_ _%tl201405201506%_))
                                     (_%K201403201501%_
                                      _%rest201511%_
                                      _%e201509%_)))
                                 (_%else201401201415%_))))))))
                (_%__kont207734207735%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self201268%_ _%stx201269%_))))
            (let ((_%__match207773207774%_
                   (lambda (_%e201276201313%_
                            _%hd201277201316%_
                            _%tl201278201318%_
                            _%e201279201321%_
                            _%hd201280201324%_
                            _%tl201281201326%_
                            _%e201282201329%_
                            _%hd201283201332%_
                            _%tl201284201334%_
                            _%e201285201337%_
                            _%hd201286201340%_
                            _%tl201287201342%_
                            _%__splice207732207733%_
                            _%target201288201345%_
                            _%tl201290201347%_)
                     (letrec ((_%loop201291201350%_
                               (lambda (_%hd201289201353%_
                                        _%rand201295201355%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd201289201353%_))
                                     (let ((_%e201292201357%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd201289201353%_))))
                                       (let ((_%lp-tl201294201362%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201292201357%_)))
                                             (_%lp-hd201293201360%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201292201357%_))))
                                         (_%loop201291201350%_
                                          _%lp-tl201294201362%_
                                          (cons _%lp-hd201293201360%_
                                                _%rand201295201355%_))))
                                     (let ((_%rand201296201365%_
                                            (reverse _%rand201295201355%_)))
                                       (_%__kont207730207731%_
                                        _%rand201296201365%_
                                        _%hd201286201340%_))))))
                       (_%loop201291201350%_ _%target201288201345%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207728207729%_))
                  (let ((_%e201276201313%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx207728207729%_))))
                    (let ((_%tl201278201318%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201276201313%_)))
                          (_%hd201277201316%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201276201313%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201278201318%_))
                          (let ((_%e201279201321%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201278201318%_))))
                            (let ((_%tl201281201326%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201279201321%_)))
                                  (_%hd201280201324%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201279201321%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201280201324%_))
                                  (let ((_%e201282201329%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201280201324%_))))
                                    (let ((_%tl201284201334%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201282201329%_)))
                                          (_%hd201283201332%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201282201329%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201283201332%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd201283201332%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201284201334%_))
                                                  (let ((_%e201285201337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201284201334%_))))
                                                    (let ((_%tl201287201342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201285201337%_)))
                                                          (_%hd201286201340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201285201337%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201287201342%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl201281201326%_))
                      (let ((_%__splice207732207733%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl201281201326%_
                                '0))))
                        (let ((_%tl201290201347%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207732207733%_ '1)))
                              (_%target201288201345%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207732207733%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201290201347%_))
                              (_%__match207773207774%_
                               _%e201276201313%_
                               _%hd201277201316%_
                               _%tl201278201318%_
                               _%e201279201321%_
                               _%hd201280201324%_
                               _%tl201281201326%_
                               _%e201282201329%_
                               _%hd201283201332%_
                               _%tl201284201334%_
                               _%e201285201337%_
                               _%hd201286201340%_
                               _%tl201287201342%_
                               _%__splice207732207733%_
                               _%target201288201345%_
                               _%tl201290201347%_)
                              (_%__kont207734207735%_))))
                      (_%__kont207734207735%_))
                  (_%__kont207734207735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207734207735%_))
                                              (_%__kont207734207735%_))
                                          (_%__kont207734207735%_))))
                                  (_%__kont207734207735%_))))
                          (_%__kont207734207735%_))))
                  (_%__kont207734207735%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self201080%_ _%stx201081%_)
        (letrec ((_%simplify201083%_
                  (lambda (_%code201168%_)
                    (let* ((_%code201169201187%_ _%code201168%_)
                           (_%else201171201195%_ (lambda () _%code201168%_))
                           (_%K201173201231%_
                            (lambda (_%expr201198%_ _%test201199%_)
                              (let* ((_%expr201200201208%_ _%expr201198%_)
                                     (_%else201202201216%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test201199%_
                                                    (cons _%expr201198%_
                                                          '())))))
                                     (_%K201204201221%_
                                      (lambda (_%exprs201219%_)
                                        (cons 'and
                                              (cons _%test201199%_
                                                    _%exprs201219%_)))))
                                (if (pair? _%expr201200201208%_)
                                    (let ((_%hd201205201224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr201200201208%_)))
                                          (_%tl201206201226%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr201200201208%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd201205201224%_ 'and))
                                          (let ((_%exprs201229%_
                                                 _%tl201206201226%_))
                                            (_%K201204201221%_
                                             _%exprs201229%_))
                                          (_%else201202201216%_)))
                                    (_%else201202201216%_))))))
                      (if (pair? _%code201169201187%_)
                          (let ((_%hd201174201234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code201169201187%_)))
                                (_%tl201175201236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code201169201187%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd201174201234%_ 'if))
                                (if (pair? _%tl201175201236%_)
                                    (let ((_%hd201176201239%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl201175201236%_)))
                                          (_%tl201177201241%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl201175201236%_))))
                                      (let ((_%test201244%_
                                             _%hd201176201239%_))
                                        (if (pair? _%tl201177201241%_)
                                            (let ((_%hd201178201246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl201177201241%_)))
                                                  (_%tl201179201248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl201177201241%_))))
                                              (let ((_%expr201251%_
                                                     _%hd201178201246%_))
                                                (if (pair? _%tl201179201248%_)
                                                    (let ((_%hd201180201253%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl201179201248%_)))
                                                          (_%tl201181201255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl201179201248%_))))
                                                      (if (pair? _%hd201180201253%_)
                                                          (let ((_%hd201182201258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd201180201253%_)))
                        (_%tl201183201260%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd201180201253%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd201182201258%_ 'quote))
                        (if (pair? _%tl201183201260%_)
                            (let ((_%hd201184201263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl201183201260%_)))
                                  (_%tl201185201265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl201183201260%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd201184201263%_ '#f))
                                  (if (null? _%tl201185201265%_)
                                      (if (null? _%tl201181201255%_)
                                          (_%K201173201231%_
                                           _%expr201251%_
                                           _%test201244%_)
                                          (_%else201171201195%_))
                                      (_%else201171201195%_))
                                  (_%else201171201195%_)))
                            (_%else201171201195%_))
                        (_%else201171201195%_)))
                  (_%else201171201195%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201171201195%_))))
                                            (_%else201171201195%_))))
                                    (_%else201171201195%_))
                                (_%else201171201195%_)))
                          (_%else201171201195%_))))))
          (let* ((_%g201085201106%_
                  (lambda (_%g201086201103%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201086201103%_))))
                 (_%g201084201165%_
                  (lambda (_%g201086201109%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201086201109%_))
                        (let ((_%e201090201111%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201086201109%_))))
                          (let ((_%hd201091201114%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201090201111%_)))
                                (_%tl201092201116%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201090201111%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201092201116%_))
                                (let ((_%e201093201119%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201092201116%_))))
                                  (let ((_%hd201094201122%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201093201119%_)))
                                        (_%tl201095201124%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201093201119%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201095201124%_))
                                        (let ((_%e201096201127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201095201124%_))))
                                          (let ((_%hd201097201130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201096201127%_)))
                                                (_%tl201098201132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201096201127%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201098201132%_))
                                                (let ((_%e201099201135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201098201132%_))))
                                                  (let ((_%hd201100201138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201099201135%_)))
                                                        (_%tl201101201140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201099201135%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201101201140%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#current-compile-boolean-context))
                                                            (_%simplify201083%_
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self201080%_
                                    _%hd201094201122%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self201080%_
                                          _%hd201097201130%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201080%_
                                                _%hd201100201138%_))
                                             '())))))
                    (cons 'if
                          (cons (let ((__tmp208228
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self201080%_
                                            _%hd201094201122%_)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp208228
                                   gxc#current-compile-boolean-context
                                   '#t))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self201080%_
                                         _%hd201097201130%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self201080%_
                                               _%hd201100201138%_))
                                            '())))))
                (_%g201085201106%_ _%g201086201109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g201085201106%_
                                                 _%g201086201109%_))))
                                        (_%g201085201106%_
                                         _%g201086201109%_))))
                                (_%g201085201106%_ _%g201086201109%_))))
                        (_%g201085201106%_ _%g201086201109%_)))))
            (_%g201084201165%_ _%stx201081%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self201028%_ _%stx201029%_)
        (let* ((_%g201031201044%_
                (lambda (_%g201032201041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201032201041%_))))
               (_%g201030201077%_
                (lambda (_%g201032201047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201032201047%_))
                      (let ((_%e201034201049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201032201047%_))))
                        (let ((_%hd201035201052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201034201049%_)))
                              (_%tl201036201054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201034201049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201036201054%_))
                              (let ((_%e201037201057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201036201054%_))))
                                (let ((_%hd201038201060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201037201057%_)))
                                      (_%tl201039201062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201037201057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201039201062%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-binding-id
                                         _%hd201038201060%_))
                                      (_%g201031201044%_ _%g201032201047%_))))
                              (_%g201031201044%_ _%g201032201047%_))))
                      (_%g201031201044%_ _%g201032201047%_)))))
          (_%g201030201077%_ _%stx201029%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self200960%_ _%stx200961%_)
        (let* ((_%g200963200980%_
                (lambda (_%g200964200977%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200964200977%_))))
               (_%g200962201025%_
                (lambda (_%g200964200983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200964200983%_))
                      (let ((_%e200967200985%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200964200983%_))))
                        (let ((_%hd200968200988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200967200985%_)))
                              (_%tl200969200990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200967200985%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200969200990%_))
                              (let ((_%e200970200993%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200969200990%_))))
                                (let ((_%hd200971200996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200970200993%_)))
                                      (_%tl200972200998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200970200993%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200972200998%_))
                                      (let ((_%e200973201001%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200972200998%_))))
                                        (let ((_%hd200974201004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200973201001%_)))
                                              (_%tl200975201006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200973201001%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200975201006%_))
                                              (cons 'set!
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-binding-id
                                                             _%hd200971200996%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self200960%_ _%hd200974201004%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200963200980%_
                                               _%g200964200983%_))))
                                      (_%g200963200980%_ _%g200964200983%_))))
                              (_%g200963200980%_ _%g200964200983%_))))
                      (_%g200963200980%_ _%g200964200983%_)))))
          (_%g200962201025%_ _%stx200961%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self200771%_ _%stx200772%_)
        (let* ((_%g200774200791%_
                (lambda (_%g200775200788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200775200788%_))))
               (_%g200773200957%_
                (lambda (_%g200775200794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200775200794%_))
                      (let ((_%e200778200796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200775200794%_))))
                        (let ((_%hd200779200799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200778200796%_)))
                              (_%tl200780200801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200778200796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200780200801%_))
                              (let ((_%e200781200804%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200780200801%_))))
                                (let ((_%hd200782200807%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200781200804%_)))
                                      (_%tl200783200809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200781200804%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200783200809%_))
                                      (let ((_%e200784200812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200783200809%_))))
                                        (let ((_%hd200785200815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200784200812%_)))
                                              (_%tl200786200817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200784200812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200786200817%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self200771%_ _%hd200785200815%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self200771%_
                               _%hd200782200807%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp200836%_ ((_%rest200839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%hd200782200807%_
                                    (cons _%hd200785200815%_ '())))
                             (_%bind200841%_ '())
                             (_%args200842%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%rest200843200851%_
                                                            _%rest200839%_)
                                                           (_%else200845200859%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind200841%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-instance-of?
                                                    _%args200842%_)
                                              '()))))))
                   (_%K200847200945%_
                    (lambda (_%rest200862%_ _%e200863%_)
                      (let* ((_%__stx207776207777%_ _%e200863%_)
                             (_%g200868200886%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207776207777%_)))))
                        (let ((_%__kont207778207779%_
                               (lambda ()
                                 (_%lp200836%_
                                  _%rest200862%_
                                  _%bind200841%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200863%_))
                                        _%args200842%_))))
                              (_%__kont207780207781%_
                               (lambda ()
                                 (_%lp200836%_
                                  _%rest200862%_
                                  _%bind200841%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200863%_))
                                        _%args200842%_))))
                              (_%__kont207782207783%_
                               (lambda ()
                                 (let ((_%tmp200893%_
                                        (let ((__tmp208229
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp208229))))
                                   (_%lp200836%_
                                    _%rest200862%_
                                    (cons (cons _%tmp200893%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e200863%_))
                                                      '()))
                                          _%bind200841%_)
                                    (cons _%tmp200893%_ _%args200842%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207776207777%_))
                              (let ((_%e200870200924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207776207777%_))))
                                (let ((_%tl200872200929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200870200924%_)))
                                      (_%hd200871200927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200870200924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200871200927%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200871200927%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200872200929%_))
                                              (let ((_%e200873200932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200872200929%_))))
                                                (let ((_%tl200875200937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200873200932%_)))
                                                      (_%hd200874200935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200873200932%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200875200937%_))
                                                      (_%__kont207778207779%_)
                                                      (_%__kont207782207783%_))))
                                              (_%__kont207782207783%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd200871200927%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200872200929%_))
                                                  (let ((_%e200879200909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200872200929%_))))
                                                    (let ((_%tl200881200914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200879200909%_)))
                                                          (_%hd200880200912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200879200909%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200881200914%_))
                                                          (_%__kont207780207781%_)
                                                          (_%__kont207782207783%_))))
                                                  (_%__kont207782207783%_))
                                              (_%__kont207782207783%_)))
                                      (_%__kont207782207783%_))))
                              (_%__kont207782207783%_)))))))
              (if (pair? _%rest200843200851%_)
                  (let ((_%hd200848200948%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200843200851%_)))
                        (_%tl200849200950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200843200851%_))))
                    (let* ((_%e200953%_ _%hd200848200948%_)
                           (_%rest200955%_ _%tl200849200950%_))
                      (_%K200847200945%_ _%rest200955%_ _%e200953%_)))
                  (_%else200845200859%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200774200791%_
                                               _%g200775200794%_))))
                                      (_%g200774200791%_ _%g200775200794%_))))
                              (_%g200774200791%_ _%g200775200794%_))))
                      (_%g200774200791%_ _%g200775200794%_)))))
          (_%g200773200957%_ _%stx200772%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self200582%_ _%stx200583%_)
        (let* ((_%g200585200602%_
                (lambda (_%g200586200599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200586200599%_))))
               (_%g200584200768%_
                (lambda (_%g200586200605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200586200605%_))
                      (let ((_%e200589200607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200586200605%_))))
                        (let ((_%hd200590200610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200589200607%_)))
                              (_%tl200591200612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200589200607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200591200612%_))
                              (let ((_%e200592200615%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200591200612%_))))
                                (let ((_%hd200593200618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200592200615%_)))
                                      (_%tl200594200620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200592200615%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200594200620%_))
                                      (let ((_%e200595200623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200594200620%_))))
                                        (let ((_%hd200596200626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200595200623%_)))
                                              (_%tl200597200628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200595200623%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200597200628%_))
                                              (if (gxc#current-compile-decls-unsafe?)
                                                  (cons '##structure-direct-instance-of?
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__1 _%self200582%_ _%hd200596200626%_))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self200582%_
                               _%hd200593200618%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let _%lp200647%_ ((_%rest200650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%hd200593200618%_
                                    (cons _%hd200596200626%_ '())))
                             (_%bind200652%_ '())
                             (_%args200653%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%rest200654200662%_
                                                            _%rest200650%_)
                                                           (_%else200656200670%_
                                                            (lambda ()
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%bind200652%_
                                  (cons '(declare (not safe))
                                        (cons (cons '##structure-direct-instance-of?
                                                    _%args200653%_)
                                              '()))))))
                   (_%K200658200756%_
                    (lambda (_%rest200673%_ _%e200674%_)
                      (let* ((_%__stx207822207823%_ _%e200674%_)
                             (_%g200679200697%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx207822207823%_)))))
                        (let ((_%__kont207824207825%_
                               (lambda ()
                                 (_%lp200647%_
                                  _%rest200673%_
                                  _%bind200652%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200674%_))
                                        _%args200653%_))))
                              (_%__kont207826207827%_
                               (lambda ()
                                 (_%lp200647%_
                                  _%rest200673%_
                                  _%bind200652%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__0 _%e200674%_))
                                        _%args200653%_))))
                              (_%__kont207828207829%_
                               (lambda ()
                                 (let ((_%tmp200704%_
                                        (let ((__tmp208230
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__tmp))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp208230))))
                                   (_%lp200647%_
                                    _%rest200673%_
                                    (cons (cons _%tmp200704%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__0
                                                         _%e200674%_))
                                                      '()))
                                          _%bind200652%_)
                                    (cons _%tmp200704%_ _%args200653%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx207822207823%_))
                              (let ((_%e200681200735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx207822207823%_))))
                                (let ((_%tl200683200740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200681200735%_)))
                                      (_%hd200682200738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200681200735%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200682200738%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200682200738%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200683200740%_))
                                              (let ((_%e200684200743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200683200740%_))))
                                                (let ((_%tl200686200748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200684200743%_)))
                                                      (_%hd200685200746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200684200743%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200686200748%_))
                                                      (_%__kont207824207825%_)
                                                      (_%__kont207828207829%_))))
                                              (_%__kont207828207829%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd200682200738%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200683200740%_))
                                                  (let ((_%e200690200720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200683200740%_))))
                                                    (let ((_%tl200692200725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200690200720%_)))
                                                          (_%hd200691200723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200690200720%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200692200725%_))
                                                          (_%__kont207826207827%_)
                                                          (_%__kont207828207829%_))))
                                                  (_%__kont207828207829%_))
                                              (_%__kont207828207829%_)))
                                      (_%__kont207828207829%_))))
                              (_%__kont207828207829%_)))))))
              (if (pair? _%rest200654200662%_)
                  (let ((_%hd200659200759%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200654200662%_)))
                        (_%tl200660200761%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200654200662%_))))
                    (let* ((_%e200764%_ _%hd200659200759%_)
                           (_%rest200766%_ _%tl200660200761%_))
                      (_%K200658200756%_ _%rest200766%_ _%e200764%_)))
                  (_%else200656200670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200585200602%_
                                               _%g200586200605%_))))
                                      (_%g200585200602%_ _%g200586200605%_))))
                              (_%g200585200602%_ _%g200586200605%_))))
                      (_%g200585200602%_ _%g200586200605%_)))))
          (_%g200584200768%_ _%stx200583%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self200498%_ _%stx200499%_)
        (let* ((_%g200501200522%_
                (lambda (_%g200502200519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200502200519%_))))
               (_%g200500200579%_
                (lambda (_%g200502200525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200502200525%_))
                      (let ((_%e200506200527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200502200525%_))))
                        (let ((_%hd200507200530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200506200527%_)))
                              (_%tl200508200532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200506200527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200508200532%_))
                              (let ((_%e200509200535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200508200532%_))))
                                (let ((_%hd200510200538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200509200535%_)))
                                      (_%tl200511200540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200509200535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200511200540%_))
                                      (let ((_%e200512200543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200511200540%_))))
                                        (let ((_%hd200513200546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200512200543%_)))
                                              (_%tl200514200548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200512200543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200514200548%_))
                                              (let ((_%e200515200551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200514200548%_))))
                                                (let ((_%hd200516200554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200515200551%_)))
                                                      (_%tl200517200556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200515200551%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200517200556%_))
                                                      (cons '##structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self200498%_
                             _%hd200516200554%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self200498%_
                                   _%hd200513200546%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self200498%_
                                         _%hd200510200538%_))
                                      (cons ''#f '())))))
              (_%g200501200522%_ _%g200502200525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200501200522%_
                                               _%g200502200525%_))))
                                      (_%g200501200522%_ _%g200502200525%_))))
                              (_%g200501200522%_ _%g200502200525%_))))
                      (_%g200501200522%_ _%g200502200525%_)))))
          (_%g200500200579%_ _%stx200499%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self200398%_ _%stx200399%_)
        (let* ((_%g200401200426%_
                (lambda (_%g200402200423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200402200423%_))))
               (_%g200400200495%_
                (lambda (_%g200402200429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200402200429%_))
                      (let ((_%e200407200431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200402200429%_))))
                        (let ((_%hd200408200434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200407200431%_)))
                              (_%tl200409200436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200407200431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200409200436%_))
                              (let ((_%e200410200439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200409200436%_))))
                                (let ((_%hd200411200442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200410200439%_)))
                                      (_%tl200412200444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200410200439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200412200444%_))
                                      (let ((_%e200413200447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200412200444%_))))
                                        (let ((_%hd200414200450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200413200447%_)))
                                              (_%tl200415200452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200413200447%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200415200452%_))
                                              (let ((_%e200416200455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200415200452%_))))
                                                (let ((_%hd200417200458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200416200455%_)))
                                                      (_%tl200418200460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200416200455%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200418200460%_))
                                                      (let ((_%e200419200463%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200418200460%_))))
                (let ((_%hd200420200466%_
                       (let () (declare (not safe)) (##car _%e200419200463%_)))
                      (_%tl200421200468%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200419200463%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200421200468%_))
                      (cons '##structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200398%_
                                     _%hd200417200458%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self200398%_
                                           _%hd200420200466%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self200398%_
                                                 _%hd200414200450%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200398%_
                                                       _%hd200411200442%_))
                                                    (cons ''#f '()))))))
                      (_%g200401200426%_ _%g200402200429%_))))
              (_%g200401200426%_ _%g200402200429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200401200426%_
                                               _%g200402200429%_))))
                                      (_%g200401200426%_ _%g200402200429%_))))
                              (_%g200401200426%_ _%g200402200429%_))))
                      (_%g200401200426%_ _%g200402200429%_)))))
          (_%g200400200495%_ _%stx200399%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self200314%_ _%stx200315%_)
        (let* ((_%g200317200338%_
                (lambda (_%g200318200335%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200318200335%_))))
               (_%g200316200395%_
                (lambda (_%g200318200341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200318200341%_))
                      (let ((_%e200322200343%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200318200341%_))))
                        (let ((_%hd200323200346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200322200343%_)))
                              (_%tl200324200348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200322200343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200324200348%_))
                              (let ((_%e200325200351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200324200348%_))))
                                (let ((_%hd200326200354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200325200351%_)))
                                      (_%tl200327200356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200325200351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200327200356%_))
                                      (let ((_%e200328200359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200327200356%_))))
                                        (let ((_%hd200329200362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200328200359%_)))
                                              (_%tl200330200364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200328200359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200330200364%_))
                                              (let ((_%e200331200367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200330200364%_))))
                                                (let ((_%hd200332200370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200331200367%_)))
                                                      (_%tl200333200372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200331200367%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200333200372%_))
                                                      (cons '##direct-structure-ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#compile-e__1
                             _%self200314%_
                             _%hd200332200370%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self200314%_
                                   _%hd200329200362%_))
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self200314%_
                                         _%hd200326200354%_))
                                      (cons ''#f '())))))
              (_%g200317200338%_ _%g200318200341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200317200338%_
                                               _%g200318200341%_))))
                                      (_%g200317200338%_ _%g200318200341%_))))
                              (_%g200317200338%_ _%g200318200341%_))))
                      (_%g200317200338%_ _%g200318200341%_)))))
          (_%g200316200395%_ _%stx200315%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self200214%_ _%stx200215%_)
        (let* ((_%g200217200242%_
                (lambda (_%g200218200239%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200218200239%_))))
               (_%g200216200311%_
                (lambda (_%g200218200245%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200218200245%_))
                      (let ((_%e200223200247%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200218200245%_))))
                        (let ((_%hd200224200250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200223200247%_)))
                              (_%tl200225200252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200223200247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200225200252%_))
                              (let ((_%e200226200255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200225200252%_))))
                                (let ((_%hd200227200258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200226200255%_)))
                                      (_%tl200228200260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200226200255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200228200260%_))
                                      (let ((_%e200229200263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200228200260%_))))
                                        (let ((_%hd200230200266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200229200263%_)))
                                              (_%tl200231200268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200229200263%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200231200268%_))
                                              (let ((_%e200232200271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200231200268%_))))
                                                (let ((_%hd200233200274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200232200271%_)))
                                                      (_%tl200234200276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200232200271%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200234200276%_))
                                                      (let ((_%e200235200279%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200234200276%_))))
                (let ((_%hd200236200282%_
                       (let () (declare (not safe)) (##car _%e200235200279%_)))
                      (_%tl200237200284%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200235200279%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200237200284%_))
                      (cons '##direct-structure-set!
                            (cons (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200214%_
                                     _%hd200233200274%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self200214%_
                                           _%hd200236200282%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self200214%_
                                                 _%hd200230200266%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200214%_
                                                       _%hd200227200258%_))
                                                    (cons ''#f '()))))))
                      (_%g200217200242%_ _%g200218200245%_))))
              (_%g200217200242%_ _%g200218200245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200217200242%_
                                               _%g200218200245%_))))
                                      (_%g200217200242%_ _%g200218200245%_))))
                              (_%g200217200242%_ _%g200218200245%_))))
                      (_%g200217200242%_ _%g200218200245%_)))))
          (_%g200216200311%_ _%stx200215%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self200009%_ _%stx200010%_)
        (let* ((_%g200012200033%_
                (lambda (_%g200013200030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200013200030%_))))
               (_%g200011200211%_
                (lambda (_%g200013200036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200013200036%_))
                      (let ((_%e200017200038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200013200036%_))))
                        (let ((_%hd200018200041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200017200038%_)))
                              (_%tl200019200043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200017200038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200019200043%_))
                              (let ((_%e200020200046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200019200043%_))))
                                (let ((_%hd200021200049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200020200046%_)))
                                      (_%tl200022200051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200020200046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200022200051%_))
                                      (let ((_%e200023200054%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200022200051%_))))
                                        (let ((_%hd200024200057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200023200054%_)))
                                              (_%tl200025200059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200023200054%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200025200059%_))
                                              (let ((_%e200026200062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200025200059%_))))
                                                (let ((_%hd200027200065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200026200062%_)))
                                                      (_%tl200028200067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200026200062%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200028200067%_))
                                                      (if (gxc#current-compile-decls-unsafe?)
                                                          (cons '##unchecked-structure-ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self200009%_
                                 _%hd200027200065%_))
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self200009%_
                                       _%hd200024200057%_))
                                    (cons ''#f (cons ''#f '())))))
                  (let _%lp200090%_ ((_%rest200093%_
                                      (cons _%hd200024200057%_
                                            (cons _%hd200027200065%_ '())))
                                     (_%bind200095%_ '())
                                     (_%args200096%_ '()))
                    (let* ((_%rest200097200105%_ _%rest200093%_)
                           (_%else200099200113%_
                            (lambda ()
                              (cons 'let
                                    (cons _%bind200095%_
                                          (cons '(declare (not safe))
                                                (cons (cons '##unchecked-structure-ref
                                                            (let ((__tmp208231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons ''#f (cons ''#f '()))))
                      (declare (not safe))
                      (foldr__0 cons __tmp208231 _%args200096%_)))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_%K200101200199%_
                            (lambda (_%rest200116%_ _%e200117%_)
                              (let* ((_%__stx207868207869%_ _%e200117%_)
                                     (_%g200122200140%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx207868207869%_)))))
                                (let ((_%__kont207870207871%_
                                       (lambda ()
                                         (_%lp200090%_
                                          _%rest200116%_
                                          _%bind200095%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e200117%_))
                                                _%args200096%_))))
                                      (_%__kont207872207873%_
                                       (lambda ()
                                         (_%lp200090%_
                                          _%rest200116%_
                                          _%bind200095%_
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e200117%_))
                                                _%args200096%_))))
                                      (_%__kont207874207875%_
                                       (lambda ()
                                         (let ((_%tmp200147%_
                                                (let ((__tmp208232
                                                       (let ()
                                                         (declare (not safe))
                                                         (##gensym '__tmp))))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp208232))))
                                           (_%lp200090%_
                                            _%rest200116%_
                                            (cons (cons _%tmp200147%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e200117%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind200095%_)
                                            (cons _%tmp200147%_
                                                  _%args200096%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx207868207869%_))
                                      (let ((_%e200124200178%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx207868207869%_))))
                                        (let ((_%tl200126200183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200124200178%_)))
                                              (_%hd200125200181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200124200178%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd200125200181%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd200125200181%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200126200183%_))
                                                      (let ((_%e200127200186%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200126200183%_))))
                (let ((_%tl200129200191%_
                       (let () (declare (not safe)) (##cdr _%e200127200186%_)))
                      (_%hd200128200189%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200127200186%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200129200191%_))
                      (_%__kont207870207871%_)
                      (_%__kont207874207875%_))))
              (_%__kont207874207875%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _%hd200125200181%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200126200183%_))
                                                          (let ((_%e200133200163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200126200183%_))))
                    (let ((_%tl200135200168%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200133200163%_)))
                          (_%hd200134200166%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200133200163%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200135200168%_))
                          (_%__kont207872207873%_)
                          (_%__kont207874207875%_))))
                  (_%__kont207874207875%_))
              (_%__kont207874207875%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207874207875%_))))
                                      (_%__kont207874207875%_)))))))
                      (if (pair? _%rest200097200105%_)
                          (let ((_%hd200102200202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%rest200097200105%_)))
                                (_%tl200103200204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%rest200097200105%_))))
                            (let* ((_%e200207%_ _%hd200102200202%_)
                                   (_%rest200209%_ _%tl200103200204%_))
                              (_%K200101200199%_ _%rest200209%_ _%e200207%_)))
                          (_%else200099200113%_)))))
              (_%g200012200033%_ _%g200013200036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200012200033%_
                                               _%g200013200036%_))))
                                      (_%g200012200033%_ _%g200013200036%_))))
                              (_%g200012200033%_ _%g200013200036%_))))
                      (_%g200012200033%_ _%g200013200036%_)))))
          (_%g200011200211%_ _%stx200010%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self199788%_ _%stx199789%_)
        (let* ((_%g199791199816%_
                (lambda (_%g199792199813%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199792199813%_))))
               (_%g199790200006%_
                (lambda (_%g199792199819%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199792199819%_))
                      (let ((_%e199797199821%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199792199819%_))))
                        (let ((_%hd199798199824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199797199821%_)))
                              (_%tl199799199826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199797199821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199799199826%_))
                              (let ((_%e199800199829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199799199826%_))))
                                (let ((_%hd199801199832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199800199829%_)))
                                      (_%tl199802199834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199800199829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199802199834%_))
                                      (let ((_%e199803199837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199802199834%_))))
                                        (let ((_%hd199804199840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199803199837%_)))
                                              (_%tl199805199842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199803199837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199805199842%_))
                                              (let ((_%e199806199845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199805199842%_))))
                                                (let ((_%hd199807199848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199806199845%_)))
                                                      (_%tl199808199850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199806199845%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199808199850%_))
                                                      (let ((_%e199809199853%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199808199850%_))))
                (let ((_%hd199810199856%_
                       (let () (declare (not safe)) (##car _%e199809199853%_)))
                      (_%tl199811199858%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199809199853%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199811199858%_))
                      (if (gxc#current-compile-decls-unsafe?)
                          (cons '##unchecked-structure-set!
                                (cons (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self199788%_
                                         _%hd199807199848%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199788%_
                                               _%hd199810199856%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self199788%_
                                                     _%hd199804199840%_))
                                                  (cons ''#f
                                                        (cons ''#f '()))))))
                          (let _%lp199885%_ ((_%rest199888%_
                                              (cons _%hd199804199840%_
                                                    (cons _%hd199810199856%_
                                                          (cons _%hd199807199848%_
                                                                '()))))
                                             (_%bind199890%_ '())
                                             (_%args199891%_ '()))
                            (let* ((_%rest199892199900%_ _%rest199888%_)
                                   (_%else199894199908%_
                                    (lambda ()
                                      (cons 'let
                                            (cons _%bind199890%_
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp208233 (cons ''#f (cons ''#f '()))))
                              (declare (not safe))
                              (foldr__0 cons __tmp208233 _%args199891%_)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%K199896199994%_
                                    (lambda (_%rest199911%_ _%e199912%_)
                                      (let* ((_%__stx207914207915%_
                                              _%e199912%_)
                                             (_%g199917199935%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx207914207915%_)))))
                                        (let ((_%__kont207916207917%_
                                               (lambda ()
                                                 (_%lp199885%_
                                                  _%rest199911%_
                                                  _%bind199890%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199912%_))
                                                        _%args199891%_))))
                                              (_%__kont207918207919%_
                                               (lambda ()
                                                 (_%lp199885%_
                                                  _%rest199911%_
                                                  _%bind199890%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199912%_))
                                                        _%args199891%_))))
                                              (_%__kont207920207921%_
                                               (lambda ()
                                                 (let ((_%tmp199942%_
                                                        (let ((__tmp208234
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##gensym '__tmp))))
                  (declare (not safe))
                  (make-symbol__0 __tmp208234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%lp199885%_
                                                    _%rest199911%_
                                                    (cons (cons _%tmp199942%_
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gxc#compile-e__0 _%e199912%_))
                              '()))
                  _%bind199890%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%tmp199942%_
                                                          _%args199891%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%__stx207914207915%_))
                                              (let ((_%e199919199973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%__stx207914207915%_))))
                                                (let ((_%tl199921199978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199919199973%_)))
                                                      (_%hd199920199976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199919199973%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd199920199976%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd199920199976%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199921199978%_))
                      (let ((_%e199922199981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199921199978%_))))
                        (let ((_%tl199924199986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199922199981%_)))
                              (_%hd199923199984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199922199981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199924199986%_))
                              (_%__kont207916207917%_)
                              (_%__kont207920207921%_))))
                      (_%__kont207920207921%_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-eq? '%#quote _%hd199920199976%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199921199978%_))
                          (let ((_%e199928199958%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199921199978%_))))
                            (let ((_%tl199930199963%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199928199958%_)))
                                  (_%hd199929199961%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199928199958%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199930199963%_))
                                  (_%__kont207918207919%_)
                                  (_%__kont207920207921%_))))
                          (_%__kont207920207921%_))
                      (_%__kont207920207921%_)))
              (_%__kont207920207921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207920207921%_)))))))
                              (if (pair? _%rest199892199900%_)
                                  (let ((_%hd199897199997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest199892199900%_)))
                                        (_%tl199898199999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest199892199900%_))))
                                    (let* ((_%e200002%_ _%hd199897199997%_)
                                           (_%rest200004%_ _%tl199898199999%_))
                                      (_%K199896199994%_
                                       _%rest200004%_
                                       _%e200002%_)))
                                  (_%else199894199908%_)))))
                      (_%g199791199816%_ _%g199792199819%_))))
              (_%g199791199816%_ _%g199792199819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199791199816%_
                                               _%g199792199819%_))))
                                      (_%g199791199816%_ _%g199792199819%_))))
                              (_%g199791199816%_ _%g199792199819%_))))
                      (_%g199791199816%_ _%g199792199819%_)))))
          (_%g199790200006%_ _%stx199789%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self199627%_ _%stx199628%_)
        (letrec ((_%import-set-template199630%_
                  (lambda (_%in199733%_ _%phi199734%_)
                    (let ((_%iphi199736%_
                           (fx+ _%phi199734%_
                                (##direct-structure-ref
                                 _%in199733%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports199737%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in199733%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp199739%_ ((_%rest199741%_ _%imports199737%_)
                                         (_%r199742%_ '()))
                        (let* ((_%rest199743199751%_ _%rest199741%_)
                               (_%else199745199759%_ (lambda () _%r199742%_))
                               (_%K199747199776%_
                                (lambda (_%rest199762%_ _%in199763%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in199763%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi199736%_))
                                          (_%lp199739%_
                                           _%rest199762%_
                                           (cons _%in199763%_ _%r199742%_))
                                          (_%lp199739%_
                                           _%rest199762%_
                                           _%r199742%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in199763%_
                                             'gx#module-import::t))
                                          (let ((_%iphi199767%_
                                                 (fx+ _%phi199734%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in199763%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi199767%_))
                                                (_%lp199739%_
                                                 _%rest199762%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in199763%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r199742%_))
                                                (_%lp199739%_
                                                 _%rest199762%_
                                                 _%r199742%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in199763%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi199770%_
                                                     (fx+ _%iphi199736%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in199763%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi199770%_))
                                                    (_%lp199739%_
                                                     _%rest199762%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in199763%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r199742%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi199770%_))
                                                        (_%lp199739%_
                                                         _%rest199762%_
                                                         (let ((__tmp208235
                                                                (_%import-set-template199630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in199763%_
                         _%iphi199736%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r199742%_ __tmp208235)))
                (_%lp199739%_ _%rest199762%_ _%r199742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp199739%_
                                               _%rest199762%_
                                               _%r199742%_)))))))
                          (if (pair? _%rest199743199751%_)
                              (let ((_%hd199748199779%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest199743199751%_)))
                                    (_%tl199749199781%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest199743199751%_))))
                                (let* ((_%in199784%_ _%hd199748199779%_)
                                       (_%rest199786%_ _%tl199749199781%_))
                                  (_%K199747199776%_
                                   _%rest199786%_
                                   _%in199784%_)))
                              (_%else199745199759%_))))))))
          (let* ((_%g199632199642%_
                  (lambda (_%g199633199639%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199633199639%_))))
                 (_%g199631199730%_
                  (lambda (_%g199633199645%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199633199645%_))
                        (let ((_%e199635199647%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199633199645%_))))
                          (let ((_%hd199636199650%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199635199647%_)))
                                (_%tl199637199652%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199635199647%_))))
                            (let ((_%ht199666%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let _%lp199668%_ ((_%rest199670%_
                                                  _%tl199637199652%_)
                                                 (_%loads199671%_ '()))
                                (letrec ((_%K199673%_
                                          (lambda (_%ctx199723%_
                                                   _%rest199724%_)
                                            (let ((_%id199726%_
                                                   (##structure-ref
                                                    _%ctx199723%_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__hash-get
                                                     _%ht199666%_
                                                     _%id199726%_))
                                                  (_%lp199668%_
                                                   _%rest199724%_
                                                   _%loads199671%_)
                                                  (let ((_%rt199728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#module-id->path-string
                                                            _%id199726%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht199666%_
                                                       _%id199726%_
                                                       _%rt199728%_))
                                                    (_%lp199668%_
                                                     _%rest199724%_
                                                     (cons _%rt199728%_
                                                           _%loads199671%_))))))))
                                  (let* ((_%rest199674199682%_ _%rest199670%_)
                                         (_%else199676199694%_
                                          (lambda ()
                                            (cons 'begin
                                                  (let ((__tmp208237
                                                         (lambda (_%g199689199691%_)
                                                           (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g199689199691%_)))
                (__tmp208236 (reverse _%loads199671%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##map __tmp208237
                                                           __tmp208236)))))
                                         (_%K199678199711%_
                                          (lambda (_%rest199697%_ _%in199698%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%in199698%_
                                                   'gx#module-context::t))
                                                (_%K199673%_
                                                 _%in199698%_
                                                 _%rest199697%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       _%in199698%_
                                                       'gx#module-import::t))
                                                    (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%in199698%_
                            '3
                            '#f
                            '#f)))
                (_%K199673%_
                 (##direct-structure-ref
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%in199698%_ '1 '#f '#f))
                  '1
                  gx#module-export::t
                  '#f)
                 _%rest199697%_)
                (_%lp199668%_ _%rest199697%_ _%loads199671%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           _%in199698%_
                                                           'gx#import-set::t))
                                                        (let ((_%phi199703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%in199698%_ '2 '#f '#f))))
                  (if (fxzero? _%phi199703%_)
                      (_%K199673%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%in199698%_ '1 '#f '#f))
                       _%rest199697%_)
                      (if (fxpositive? _%phi199703%_)
                          (let ((_%deps199707%_
                                 (_%import-set-template199630%_
                                  _%in199698%_
                                  '0)))
                            (_%lp199668%_
                             (let ()
                               (declare (not safe))
                               (foldl__0 cons _%rest199697%_ _%deps199707%_))
                             _%loads199671%_))
                          (_%lp199668%_ _%rest199697%_ _%loads199671%_))))
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Unexpected import"
                   _%stx199628%_
                   _%in199698%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%rest199674199682%_)
                                        (let ((_%hd199679199714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest199674199682%_)))
                                              (_%tl199680199716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest199674199682%_))))
                                          (let* ((_%in199719%_
                                                  _%hd199679199714%_)
                                                 (_%rest199721%_
                                                  _%tl199680199716%_))
                                            (_%K199678199711%_
                                             _%rest199721%_
                                             _%in199719%_)))
                                        (_%else199676199694%_))))))))
                        (_%g199632199642%_ _%g199633199645%_)))))
            (_%g199631199730%_ _%stx199628%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self199441%_ _%stx199442%_)
        (letrec ((_%add-lift!199444%_
                  (lambda (_%expr199625%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr199625%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote199445%_
                  (lambda (_%id199622%_ _%marks199623%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id199622%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks199623%_
                                                        '()))))))))
                 (_%generate-simple199446%_
                  (lambda (_%stxq199617%_)
                    (let ((_%gid199619%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid199620%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq199617%_))))
                      (_%add-lift!199444%_
                       (cons 'define
                             (cons _%gid199619%_
                                   (cons (_%generate-syntax-quote199445%_
                                          _%qid199620%_
                                          ''())
                                         '()))))
                      (let ((__tmp208238
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp208238 _%stxq199617%_ _%gid199619%_))
                      _%gid199619%_)))
                 (_%generate-serialized199447%_
                  (lambda (_%stxq199607%_ _%marks199608%_)
                    (let* ((_%mark-refs199610%_
                            (map _%generate-mark199448%_ _%marks199608%_))
                           (_%gid199612%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid199614%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq199607%_))))
                      (_%add-lift!199444%_
                       (cons 'define
                             (cons _%gid199612%_
                                   (cons (_%generate-syntax-quote199445%_
                                          _%qid199614%_
                                          (cons 'list _%mark-refs199610%_))
                                         '()))))
                      (let ((__tmp208239
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp208239 _%stxq199607%_ _%gid199612%_))
                      _%gid199612%_)))
                 (_%generate-mark199448%_
                  (lambda (_%mark199592%_)
                    (let ((_%$e199594%_
                           (let ((__tmp208240
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp208240 _%mark199592%_))))
                      (if _%$e199594%_
                          _%$e199594%_
                          (let* ((_%gid199598%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr199600%_
                                  (_%serialize-mark199449%_ _%mark199592%_))
                                 (_%ctx199602%_
                                  (let ((__tmp208241
                                         (##structure-ref
                                          _%mark199592%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp208241)))
                                 (_%ctx-ref199604%_
                                  (if (eq? _%ctx199602%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref199450%_
                                                               _%ctx199602%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp208242
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp208242
                               _%mark199592%_
                               _%gid199598%_))
                            (_%add-lift!199444%_
                             (cons 'define
                                   (cons _%gid199598%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr199600%_ '()))
                   (cons _%ctx-ref199604%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid199598%_)))))
                 (_%serialize-mark199449%_
                  (lambda (_%mark199540%_)
                    (letrec ((_%quote-e199542%_
                              (lambda (_%sym199590%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym199590%_))
                                    _%sym199590%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym199590%_))))))
                      (let* ((_%mark199543199552%_ _%mark199540%_)
                             (_%E199545199555%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark199543199552%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K199546199567%_
                              (lambda (_%trace199558%_
                                       _%phi199559%_
                                       _%ctx199560%_
                                       _%subst199561%_)
                                (let ((_%subs199563%_
                                       (if _%subst199561%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst199561%_))
                                           '())))
                                  (cons _%phi199559%_
                                        (let ((__tmp208243
                                               (lambda (_%pair199565%_)
                                                 (cons (_%quote-e199542%_
                                                        (car _%pair199565%_))
                                                       (_%quote-e199542%_
                                                        (cdr _%pair199565%_))))))
                                          (declare (not safe))
                                          (##map __tmp208243
                                                 _%subs199563%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark199543199552%_
                               'gx#expander-mark::t))
                            (let* ((_%e199547199570%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark199543199552%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst199573%_ _%e199547199570%_)
                                   (_%e199548199575%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark199543199552%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx199578%_ _%e199548199575%_)
                                   (_%e199549199580%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark199543199552%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi199583%_ _%e199549199580%_)
                                   (_%e199550199585%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark199543199552%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace199588%_ _%e199550199585%_))
                              (_%K199546199567%_
                               _%trace199588%_
                               _%phi199583%_
                               _%ctx199578%_
                               _%subst199573%_))
                            (_%E199545199555%_))))))
                 (_%context-ref199450%_
                  (lambda (_%ctx199527%_)
                    (if (let ((__tmp208244
                               (##structure-ref
                                _%ctx199527%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp208244
                           'gx#module-context::t))
                        (let ((_%ctx-ref199529%_
                               (_%context-ref-nested199452%_ _%ctx199527%_))
                              (_%ctx-origin199530%_
                               (_%context-ref-origin199451%_ _%ctx199527%_))
                              (_%origin199531%_
                               (_%context-ref-origin199451%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin199531%_ _%ctx-origin199530%_)
                              (let ((_%ref199533%_
                                     (_%context-ref-nested199452%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp199535%_ ((_%ref199537%_
                                                    (cdr _%ref199533%_))
                                                   (_%ctx-ref199538%_
                                                    (cdr _%ctx-ref199529%_)))
                                  (if (and (pair? _%ref199537%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref199537%_))
                                                (car _%ctx-ref199538%_)))
                                      (_%lp199535%_
                                       (cdr _%ref199537%_)
                                       (cdr _%ctx-ref199538%_))
                                      (cons '#f _%ctx-ref199538%_))))
                              _%ctx-ref199529%_))
                        (let ((__tmp208245
                               (##structure-ref
                                _%ctx199527%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp208245)))))
                 (_%context-ref-origin199451%_
                  (lambda (_%ctx199519%_)
                    (let _%lp199521%_ ((_%ctx199523%_ _%ctx199519%_))
                      (let ((_%super199525%_
                             (##structure-ref
                              _%ctx199523%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super199525%_
                               'gx#module-context::t))
                            (_%lp199521%_ _%super199525%_)
                            _%ctx199523%_)))))
                 (_%context-ref-nested199452%_
                  (lambda (_%ctx199510%_)
                    (let _%lp199512%_ ((_%ctx199514%_ _%ctx199510%_)
                                       (_%r199515%_ '()))
                      (let ((_%super199517%_
                             (##structure-ref
                              _%ctx199514%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super199517%_
                               'gx#module-context::t))
                            (_%lp199512%_
                             _%super199517%_
                             (cons (car (##structure-ref
                                         _%ctx199514%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r199515%_))
                            (cons (let ((__tmp208246
                                         (##structure-ref
                                          _%ctx199514%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp208246))
                                  _%r199515%_)))))))
          (let* ((_%g199454199467%_
                  (lambda (_%g199455199464%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199455199464%_))))
                 (_%g199453199507%_
                  (lambda (_%g199455199470%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199455199470%_))
                        (let ((_%e199457199472%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199455199470%_))))
                          (let ((_%hd199458199475%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199457199472%_)))
                                (_%tl199459199477%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199457199472%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199459199477%_))
                                (let ((_%e199460199480%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199459199477%_))))
                                  (let ((_%hd199461199483%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199460199480%_)))
                                        (_%tl199462199485%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199460199480%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199462199485%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199461199483%_))
                                            (let ((_%$e199501%_
                                                   (let ((__tmp208247
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-identifiers))))
                                                     (declare (not safe))
                                                     (hash-get
                                                      __tmp208247
                                                      _%hd199461199483%_))))
                                              (if _%$e199501%_
                                                  _%$e199501%_
                                                  (let ((_%marks199505%_
                                                         (##direct-structure-ref
                                                          _%hd199461199483%_
                                                          '4
                                                          gx#syntax-quote::t
                                                          '#f)))
                                                    (if (null? _%marks199505%_)
                                                        (_%generate-simple199446%_
                                                         _%hd199461199483%_)
                                                        (_%generate-serialized199447%_
                                                         _%hd199461199483%_
                                                         _%marks199505%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot quote non-identifier syntax"
                                               _%hd199461199483%_)))
                                        (_%g199454199467%_
                                         _%g199455199470%_))))
                                (_%g199454199467%_ _%g199455199470%_))))
                        (_%g199454199467%_ _%g199455199470%_)))))
            (_%g199453199507%_ _%stx199442%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self199373%_ _%stx199374%_)
        (let* ((_%g199376199393%_
                (lambda (_%g199377199390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199377199390%_))))
               (_%g199375199438%_
                (lambda (_%g199377199396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199377199396%_))
                      (let ((_%e199380199398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199377199396%_))))
                        (let ((_%hd199381199401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199380199398%_)))
                              (_%tl199382199403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199380199398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199382199403%_))
                              (let ((_%e199383199406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199382199403%_))))
                                (let ((_%hd199384199409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199383199406%_)))
                                      (_%tl199385199411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199383199406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199385199411%_))
                                      (let ((_%e199386199414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199385199411%_))))
                                        (let ((_%hd199387199417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199386199414%_)))
                                              (_%tl199388199419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199386199414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199388199419%_))
                                              (cons 'define
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd199384199409%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self199373%_ _%hd199387199417%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199376199393%_
                                               _%g199377199396%_))))
                                      (_%g199376199393%_ _%g199377199396%_))))
                              (_%g199376199393%_ _%g199377199396%_))))
                      (_%g199376199393%_ _%g199377199396%_)))))
          (_%g199375199438%_ _%stx199374%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self199322%_ _%stx199323%_)
        (let* ((_%g199325199335%_
                (lambda (_%g199326199332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199326199332%_))))
               (_%g199324199370%_
                (lambda (_%g199326199338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199326199338%_))
                      (let ((_%e199328199340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199326199338%_))))
                        (let ((_%hd199329199343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199328199340%_)))
                              (_%tl199330199345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199328199340%_))))
                          (let* ((_%c-body199362%_
                                  (map (lambda (_%g199357199359%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199322%_
                                            _%g199357199359%_)))
                                       _%tl199330199345%_))
                                 (_%c-body199367%_
                                  (let ((__tmp208248
                                         (lambda (_%$obj199364%_)
                                           (not (eq? _%$obj199364%_
                                                     '#!void)))))
                                    (declare (not safe))
                                    (##filter __tmp208248 _%c-body199362%_))))
                            (cons '%#begin _%c-body199367%_))))
                      (_%g199325199335%_ _%g199326199338%_)))))
          (_%g199324199370%_ _%stx199323%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self199227%_ _%stx199228%_)
        (let* ((_%g199230199240%_
                (lambda (_%g199231199237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199231199237%_))))
               (_%g199229199319%_
                (lambda (_%g199231199243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199231199243%_))
                      (let ((_%e199233199245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199231199243%_))))
                        (let ((_%hd199234199248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199233199245%_)))
                              (_%tl199235199250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199233199245%_))))
                          (let* ((_%phi199263%_
                                  (let ((__tmp208249
                                         (let ()
                                           (declare (not safe))
                                           (gx#current-expander-phi))))
                                    (declare (not safe))
                                    (##fx+ __tmp208249 '1)))
                                 (_%block199265%_
                                  (gxc#meta-state-begin-phi!
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self199227%_ 'state))
                                   _%phi199263%_))
                                 (_%compiled199268%_
                                  (let ((__tmp208250
                                         (lambda ()
                                           (gxc#apply-generate-meta-phi__%
                                            '#f
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self199227%_
                                               'state))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '%#begin))
                                                  _%tl199235199250%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp208250
                                     gx#current-expander-phi
                                     _%phi199263%_)))
                                 (_%g199271199281%_
                                  (lambda (_%g199272199278%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g199272199278%_))))
                                 (_%g199270199316%_
                                  (lambda (_%g199272199284%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g199272199284%_))
                                        (let ((_%e199274199286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g199272199284%_))))
                                          (let ((_%hd199275199289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199274199286%_)))
                                                (_%tl199276199291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199274199286%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199275199289%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#begin
                                                       _%hd199275199289%_))
                                                    (let ((_%c-body199311%_
                                                           (filter (lambda (_%$obj199308%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (eq? _%$obj199308%_ '#!void)))
                           _%tl199276199291%_)))
              (if _%block199265%_
                  (cons '%#begin-syntax
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%block199265%_
                                                            '()))
                                                '())))
                              _%c-body199311%_))
                  (if (null? _%c-body199311%_)
                      '#!void
                      (cons '%#begin-syntax _%c-body199311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199271199281%_
                                                     _%g199272199284%_))
                                                (_%g199271199281%_
                                                 _%g199272199284%_))))
                                        (_%g199271199281%_
                                         _%g199272199284%_)))))
                            (_%g199270199316%_ _%compiled199268%_))))
                      (_%g199230199240%_ _%g199231199243%_)))))
          (_%g199229199319%_ _%stx199228%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self199158%_ _%stx199159%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self199158%_ 'state)))
        (let* ((_%g199161199175%_
                (lambda (_%g199162199172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199162199172%_))))
               (_%g199160199224%_
                (lambda (_%g199162199178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199162199178%_))
                      (let ((_%e199165199180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199162199178%_))))
                        (let ((_%hd199166199183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199165199180%_)))
                              (_%tl199167199185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199165199180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199167199185%_))
                              (let ((_%e199168199188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199167199185%_))))
                                (let ((_%hd199169199191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199168199188%_)))
                                      (_%tl199170199193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199168199188%_))))
                                  (let ((_%key199210%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-identifier-key
                                            _%hd199169199191%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (interned-symbol? _%key199210%_))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Cannot compile module with uninterned id"
                                           _%stx199159%_
                                           _%hd199169199191%_
                                           _%key199210%_)))
                                    (let* ((_%ctx199212%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%hd199169199191%_)))
                                           (_%code199215%_
                                            (let ((__tmp208251
                                                   (lambda ()
                                                     (let ((__tmp208252
                                                            (##structure-ref
                                                             _%ctx199212%_
                                                             '11
                                                             gx#module-context::t
                                                             '#f)))
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self199158%_
                                                        __tmp208252)))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp208251
                                               gx#current-expander-context
                                               _%ctx199212%_)))
                                           (_%rt199217%_
                                            (let ((__tmp208253
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-runtime-sections))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp208253
                                               _%ctx199212%_)))
                                           (_%loader199219%_
                                            (if _%rt199217%_
                                                (cons (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'load-module '()))
                          (cons (cons '%#quote (cons _%rt199217%_ '())) '())))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                           (_%modid199221%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd199169199191%_))))
                                      (gxc#meta-state-end-phi!
                                       (let ()
                                         (declare (not safe))
                                         (slot-ref__0 _%self199158%_ 'state)))
                                      (cons '%#module
                                            (cons _%modid199221%_
                                                  (cons _%code199215%_
                                                        _%loader199219%_)))))))
                              (_%g199161199175%_ _%g199162199178%_))))
                      (_%g199161199175%_ _%g199162199178%_)))))
          (_%g199160199224%_ _%stx199159%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx199145%_ _%context-chain199146%_)
        (let _%lp199148%_ ((_%ctx199150%_ _%ctx199145%_) (_%path199151%_ '()))
          (let ((_%super199153%_
                 (##structure-ref _%ctx199150%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super199153%_ _%context-chain199146%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx199150%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path199151%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super199153%_
                       'gx#module-context::t))
                    (_%lp199148%_
                     _%super199153%_
                     (cons (car (##structure-ref
                                 _%ctx199150%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path199151%_))
                    (cons (let ((__tmp208254
                                 (##structure-ref
                                  _%ctx199150%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp208254))
                          _%path199151%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp199138%_ ((_%ctx199140%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r199141%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx199140%_ 'gx#module-context::t))
              (_%lp199138%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx199140%_ '3 '#f '#f))
               (cons _%ctx199140%_ _%r199141%_))
              _%r199141%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self198903%_ _%stx198904%_)
        (letrec* ((_%context-chain198906%_ (gxc#current-context-chain))
                  (_%make-import-spec198907%_
                   (lambda (_%in199075%_)
                     (let* ((_%in199076199088%_ _%in199075%_)
                            (_%E199078199091%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in199076199088%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K199079199101%_
                             (lambda (_%phi199094%_
                                      _%name199095%_
                                      _%src-name199096%_
                                      _%src-phi199097%_
                                      _%src-key199098%_
                                      _%src-ctx199099%_)
                               (cons _%phi199094%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name199095%_))
                                           (cons _%src-phi199097%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name199096%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in199076199088%_
                              'gx#module-import::t))
                           (let ((_%e199080199104%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in199076199088%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e199080199104%_
                                    'gx#module-export::t))
                                 (let* ((_%e199083199107%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e199080199104%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx199110%_ _%e199083199107%_)
                                        (_%e199084199112%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e199080199104%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key199115%_ _%e199084199112%_)
                                        (_%e199085199117%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e199080199104%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi199120%_ _%e199085199117%_)
                                        (_%e199086199122%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e199080199104%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name199125%_ _%e199086199122%_)
                                        (_%e199081199127%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in199076199088%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name199130%_ _%e199081199127%_)
                                        (_%e199082199132%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in199076199088%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi199135%_ _%e199082199132%_))
                                   (_%K199079199101%_
                                    _%phi199135%_
                                    _%name199130%_
                                    _%src-name199125%_
                                    _%src-phi199120%_
                                    _%src-key199115%_
                                    _%src-ctx199110%_))
                                 (_%E199078199091%_)))
                           (_%E199078199091%_)))))
                  (_%make-import-path198908%_
                   (lambda (_%ctx199073%_)
                     (gxc#generate-meta-import-path
                      _%ctx199073%_
                      _%context-chain198906%_)))
                  (_%make-import-spec-in198909%_
                   (lambda (_%ctx199070%_ _%in199071%_)
                     (cons 'spec:
                           (cons (_%make-import-path198908%_ _%ctx199070%_)
                                 (reverse _%in199071%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self198903%_ 'state)))
          (let* ((_%g198911198921%_
                  (lambda (_%g198912198918%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198912198918%_))))
                 (_%g198910199067%_
                  (lambda (_%g198912198924%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198912198924%_))
                        (let ((_%e198914198926%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198912198924%_))))
                          (let ((_%hd198915198929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198914198926%_)))
                                (_%tl198916198931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198914198926%_))))
                            (let _%lp198945%_ ((_%rest198947%_
                                                _%tl198916198931%_)
                                               (_%current-src198948%_ '#f)
                                               (_%current-in198949%_ '())
                                               (_%r198950%_ '()))
                              (let* ((_%rest198951198959%_ _%rest198947%_)
                                     (_%else198953198969%_
                                      (lambda ()
                                        (let ((_%r198967%_
                                               (if _%current-src198948%_
                                                   (cons (_%make-import-spec-in198909%_
                                                          _%current-src198948%_
                                                          _%current-in198949%_)
                                                         _%r198950%_)
                                                   _%r198950%_)))
                                          (cons '%#import
                                                (reverse _%r198967%_)))))
                                     (_%K198955199055%_
                                      (lambda (_%rest198972%_ _%in198973%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               _%in198973%_
                                               'gx#module-import::t))
                                            (let* ((_%in198975198982%_
                                                    _%in198973%_)
                                                   (_%E198977198985%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"No clause matching"
                                                               _%in198975198982%_
                                                               '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (module-export src-ctx)))))
              '#!void))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K198978198993%_
                                                    (lambda (_%src-ctx198988%_)
                                                      (if (eq? _%current-src198948%_
                                                               _%src-ctx198988%_)
                                                          (_%lp198945%_
                                                           _%rest198972%_
                                                           _%current-src198948%_
                                                           (cons (_%make-import-spec198907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in198973%_)
                         _%current-in198949%_)
                   _%r198950%_)
                  (if _%current-src198948%_
                      (_%lp198945%_
                       _%rest198972%_
                       _%src-ctx198988%_
                       (cons (_%make-import-spec198907%_ _%in198973%_) '())
                       (cons (_%make-import-spec-in198909%_
                              _%current-src198948%_
                              _%current-in198949%_)
                             _%r198950%_))
                      (_%lp198945%_
                       _%rest198972%_
                       _%src-ctx198988%_
                       (cons (_%make-import-spec198907%_ _%in198973%_) '())
                       _%r198950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%e198979198996%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%in198975198982%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%e198979198996%_
                                                     'gx#module-export::t))
                                                  (let* ((_%e198980198999%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%e198979198996%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%src-ctx199002%_
                                                          _%e198980198999%_))
                                                    (_%K198978198993%_
                                                     _%src-ctx199002%_))
                                                  (_%E198977198985%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   _%in198973%_
                                                   'gx#import-set::t))
                                                (let* ((_%phi199005%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in198973%_
                                                           '2
                                                           '#f
                                                           '#f)))
                                                       (_%src199007%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in198973%_
                                                           '1
                                                           '#f
                                                           '#f)))
                                                       (_%src-in199047%_
                                                        (let* ((_%g199008199017%_
                                                                (_%make-import-path198908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src199007%_))
                       (_%E199011199021%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%g199008199017%_
                                   '([path])
                                   '(path)))
                          '#!void)))
                  (let ((_%K199013199037%_
                         (lambda (_%path199035%_) _%path199035%_))
                        (_%K199012199027%_
                         (lambda (_%path199025%_) (cons 'in: _%path199025%_))))
                    (if (pair? _%g199008199017%_)
                        (let ((_%tl199015199042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%g199008199017%_)))
                              (_%hd199014199040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%g199008199017%_))))
                          (if (null? _%tl199015199042%_)
                              (let ((_%path199045%_ _%hd199014199040%_))
                                (_%K199013199037%_ _%path199045%_))
                              (let ((_%path199030%_ _%g199008199017%_))
                                (_%K199012199027%_ _%path199030%_))))
                        (let ((_%path199030%_ _%g199008199017%_))
                          (_%K199012199027%_ _%path199030%_))))))
               (_%r199049%_
                (if _%current-src198948%_
                    (cons (_%make-import-spec-in198909%_
                           _%current-src198948%_
                           _%current-in198949%_)
                          _%r198950%_)
                    _%r198950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp198945%_
                                                   _%rest198972%_
                                                   '#f
                                                   '()
                                                   (cons (if (fxzero? _%phi199005%_)
                                                             _%src-in199047%_
                                                             (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi199005%_ (cons _%src-in199047%_ '()))))
                 _%r199049%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-instance-of?
                                                       _%in198973%_
                                                       'gx#module-context::t))
                                                    (let ((_%r199053%_
                                                           (if _%current-src198948%_
                                                               (cons (_%make-import-spec-in198909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%current-src198948%_
                              _%current-in198949%_)
                             _%r198950%_)
                       _%r198950%_)))
              (_%lp198945%_
               _%rest198972%_
               '#f
               '()
               (cons (cons 'runtime: (_%make-import-path198908%_ _%in198973%_))
                     _%r199053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#!void))))))
                                (if (pair? _%rest198951198959%_)
                                    (let ((_%hd198956199058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest198951198959%_)))
                                          (_%tl198957199060%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest198951198959%_))))
                                      (let* ((_%in199063%_ _%hd198956199058%_)
                                             (_%rest199065%_
                                              _%tl198957199060%_))
                                        (_%K198955199055%_
                                         _%rest199065%_
                                         _%in199063%_)))
                                    (_%else198953198969%_))))))
                        (_%g198911198921%_ _%g198912198924%_)))))
            (_%g198910199067%_ _%stx198904%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self198713%_ _%stx198714%_)
        (letrec* ((_%context-chain198716%_ (gxc#current-context-chain))
                  (_%make-import-path198717%_
                   (lambda (_%ctx198901%_)
                     (gxc#generate-meta-import-path
                      _%ctx198901%_
                      _%context-chain198716%_))))
          (let* ((_%g198719198729%_
                  (lambda (_%g198720198726%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198720198726%_))))
                 (_%g198718198898%_
                  (lambda (_%g198720198732%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198720198732%_))
                        (let ((_%e198722198734%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198720198732%_))))
                          (let ((_%hd198723198737%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198722198734%_)))
                                (_%tl198724198739%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198722198734%_))))
                            (let _%lp198753%_ ((_%rest198755%_
                                                _%tl198724198739%_)
                                               (_%r198756%_ '()))
                              (let* ((_%rest198757198765%_ _%rest198755%_)
                                     (_%else198759198773%_
                                      (lambda ()
                                        (cons '%#export
                                              (reverse _%r198756%_))))
                                     (_%K198761198886%_
                                      (lambda (_%rest198776%_ _%out198777%_)
                                        (let* ((_%out198778198791%_
                                                _%out198777%_)
                                               (_%E198781198795%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _%out198778198791%_
                                                           '((module-export
                                                              _
                                                              key
                                                              phi
                                                              name))
                                                           '((export-set
                                                              src
                                                              phi))))
                                                  '#!void)))
                                          (let ((_%K198785198865%_
                                                 (lambda (_%name198861%_
                                                          _%phi198862%_
                                                          _%key198863%_)
                                                   (_%lp198753%_
                                                    _%rest198776%_
                                                    (cons (cons 'spec:
                                                                (cons _%phi198862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%key198863%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier-key
                                             _%name198861%_))
                                          '()))))
                  _%r198756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%K198782198845%_
                                                 (lambda (_%phi198799%_
                                                          _%src198800%_)
                                                   (let* ((_%out198840%_
                                                           (if _%src198800%_
                                                               (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let* ((_%g198801198810%_
                                           (_%make-import-path198717%_
                                            _%src198800%_))
                                          (_%E198804198814%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (error '"No clause matching"
                                                      _%g198801198810%_
                                                      '([path])
                                                      '(path)))
                                             '#!void)))
                                     (let ((_%K198806198830%_
                                            (lambda (_%path198828%_)
                                              _%path198828%_))
                                           (_%K198805198820%_
                                            (lambda (_%path198818%_)
                                              (cons 'in: _%path198818%_))))
                                       (if (pair? _%g198801198810%_)
                                           (let ((_%tl198808198835%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%g198801198810%_)))
                                                 (_%hd198807198833%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%g198801198810%_))))
                                             (if (null? _%tl198808198835%_)
                                                 (let ((_%path198838%_
                                                        _%hd198807198833%_))
                                                   (_%K198806198830%_
                                                    _%path198838%_))
                                                 (let ((_%path198823%_
                                                        _%g198801198810%_))
                                                   (_%K198805198820%_
                                                    _%path198823%_))))
                                           (let ((_%path198823%_
                                                  _%g198801198810%_))
                                             (_%K198805198820%_
                                              _%path198823%_)))))
                                   '()))
                       '#t))
                  (_%out198842%_
                   (if (fxzero? _%phi198799%_)
                       _%out198840%_
                       (cons 'phi:
                             (cons _%phi198799%_ (cons _%out198840%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp198753%_
                                                      _%rest198776%_
                                                      (cons _%out198842%_
                                                            _%r198756%_))))))
                                            (let ((_%try-match198780198858%_
                                                   (lambda ()
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            _%out198778198791%_
                                                            'gx#export-set::t))
                                                         (let* ((_%e198783198848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%out198778198791%_
                            '1
                            '#f
                            '#f)))
                        (_%e198784198853%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%out198778198791%_
                            '2
                            '#f
                            '#f))))
                   (let ((_%src198851%_ _%e198783198848%_)
                         (_%phi198856%_ _%e198784198853%_))
                     (_%K198782198845%_ _%phi198856%_ _%src198851%_)))
                 (_%E198781198795%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%out198778198791%_
                                                     'gx#module-export::t))
                                                  (let* ((_%e198786198868%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198778198791%_
                                                             '1
                                                             '#f
                                                             '#f)))
                                                         (_%e198787198871%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198778198791%_
                                                             '2
                                                             '#f
                                                             '#f)))
                                                         (_%e198788198876%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198778198791%_
                                                             '3
                                                             '#f
                                                             '#f)))
                                                         (_%e198789198881%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%out198778198791%_
                                                             '4
                                                             '#f
                                                             '#f))))
                                                    (let ((_%key198874%_
                                                           _%e198787198871%_)
                                                          (_%phi198879%_
                                                           _%e198788198876%_)
                                                          (_%name198884%_
                                                           _%e198789198881%_))
                                                      (_%K198785198865%_
                                                       _%name198884%_
                                                       _%phi198879%_
                                                       _%key198874%_)))
                                                  (_%try-match198780198858%_))))))))
                                (if (pair? _%rest198757198765%_)
                                    (let ((_%hd198762198889%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest198757198765%_)))
                                          (_%tl198763198891%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest198757198765%_))))
                                      (let* ((_%out198894%_ _%hd198762198889%_)
                                             (_%rest198896%_
                                              _%tl198763198891%_))
                                        (_%K198761198886%_
                                         _%rest198896%_
                                         _%out198894%_)))
                                    (_%else198759198773%_))))))
                        (_%g198719198729%_ _%g198720198732%_)))))
            (_%g198718198898%_ _%stx198714%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self198674%_ _%stx198675%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198674%_ 'state)))
        (let* ((_%g198677198687%_
                (lambda (_%g198678198684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198678198684%_))))
               (_%g198676198710%_
                (lambda (_%g198678198690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198678198690%_))
                      (let ((_%e198680198692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198678198690%_))))
                        (let ((_%hd198681198695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198680198692%_)))
                              (_%tl198682198697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198680198692%_))))
                          (cons '%#provide
                                (map gxc#generate-runtime-identifier
                                     _%tl198682198697%_))))
                      (_%g198677198687%_ _%g198678198690%_)))))
          (_%g198676198710%_ _%stx198675%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self198549%_ _%stx198550%_)
        (letrec ((_%generate1198552%_
                  (lambda (_%id198669%_ _%eid198670%_)
                    (let ((_%eid198672%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid198670%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid198672%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx198550%_
                             _%eid198672%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id198669%_))
                            (cons _%eid198672%_ '()))))))
          (let* ((_%g198554198582%_
                  (lambda (_%g198555198579%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198555198579%_))))
                 (_%g198553198666%_
                  (lambda (_%g198555198585%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198555198585%_))
                        (let ((_%e198558198587%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198555198585%_))))
                          (let ((_%hd198559198590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198558198587%_)))
                                (_%tl198560198592%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198558198587%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl198560198592%_))
                                (let ((_g208255_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl198560198592%_
                                          '0))))
                                  (begin
                                    (let ((_g208256_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g208255_)
                                                 (##values-length _g208255_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g208256_ 2)))
                                          (error "Context expects 2 values"
                                                 _g208256_)))
                                    (let ((_%target198561198595%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208255_ 0)))
                                          (_%tl198563198597%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g208255_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198563198597%_))
                                          (letrec ((_%loop198564198600%_
                                                    (lambda (_%hd198562198603%_
                                                             _%eid198568198605%_
                                                             _%id198569198606%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198562198603%_))
                                                          (let ((_%e198565198608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198562198603%_))))
                    (let ((_%lp-hd198566198611%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198565198608%_)))
                          (_%lp-tl198567198613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198565198608%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd198566198611%_))
                          (let ((_%e198572198616%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd198566198611%_))))
                            (let ((_%hd198573198619%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198572198616%_)))
                                  (_%tl198574198621%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198572198616%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198574198621%_))
                                  (let ((_%e198575198624%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl198574198621%_))))
                                    (let ((_%hd198576198627%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198575198624%_)))
                                          (_%tl198577198629%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198575198624%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198577198629%_))
                                          (_%loop198564198600%_
                                           _%lp-tl198567198613%_
                                           (cons _%hd198576198627%_
                                                 _%eid198568198605%_)
                                           (cons _%hd198573198619%_
                                                 _%id198569198606%_))
                                          (_%g198554198582%_
                                           _%g198555198585%_))))
                                  (_%g198554198582%_ _%g198555198585%_))))
                          (_%g198554198582%_ _%g198555198585%_))))
                  (let ((_%eid198570198632%_ (reverse _%eid198568198605%_))
                        (_%id198571198633%_ (reverse _%id198569198606%_)))
                    (cons '%#extern
                          (map _%generate1198552%_
                               (let ((__tmp208257
                                      (lambda (_%g198651198654%_
                                               _%g198652198656%_)
                                        (cons _%g198651198654%_
                                              _%g198652198656%_))))
                                 (declare (not safe))
                                 (foldr__0 __tmp208257 '() _%id198571198633%_))
                               (let ((__tmp208258
                                      (lambda (_%g198658198661%_
                                               _%g198659198663%_)
                                        (cons _%g198658198661%_
                                              _%g198659198663%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp208258
                                  '()
                                  _%eid198570198632%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop198564198600%_
                                             _%target198561198595%_
                                             '()
                                             '()))
                                          (_%g198554198582%_
                                           _%g198555198585%_)))))
                                (_%g198554198582%_ _%g198555198585%_))))
                        (_%g198554198582%_ _%g198555198585%_)))))
            (_%g198553198666%_ _%stx198550%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self198338%_ _%stx198339%_)
        (letrec ((_%generate1198341%_
                  (lambda (_%id198543%_)
                    (let ((_%eid198545%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id198543%_)))
                          (_%ident198546%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id198543%_)))
                          (_%props198547%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id198543%_))))
                      (cons '%#define-runtime
                            (cons _%ident198546%_
                                  (cons _%eid198545%_ _%props198547%_))))))
                 (_%generate*198342%_
                  (lambda (_%all198511%_)
                    (let* ((_%all198512198520%_ _%all198511%_)
                           (_%else198514198528%_
                            (lambda () (cons '%#begin _%all198511%_)))
                           (_%K198516198533%_
                            (lambda (_%one198531%_) _%one198531%_)))
                      (if (pair? _%all198512198520%_)
                          (let ((_%hd198517198536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all198512198520%_)))
                                (_%tl198518198538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all198512198520%_))))
                            (let ((_%one198541%_ _%hd198517198536%_))
                              (if (null? _%tl198518198538%_)
                                  (_%K198516198533%_ _%one198541%_)
                                  (_%else198514198528%_))))
                          (_%else198514198528%_))))))
          (let* ((_%g198344198361%_
                  (lambda (_%g198345198358%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198345198358%_))))
                 (_%g198343198508%_
                  (lambda (_%g198345198364%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198345198364%_))
                        (let ((_%e198348198366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198345198364%_))))
                          (let ((_%hd198349198369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198348198366%_)))
                                (_%tl198350198371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198348198366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198350198371%_))
                                (let ((_%e198351198374%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198350198371%_))))
                                  (let ((_%hd198352198377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198351198374%_)))
                                        (_%tl198353198379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198351198374%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198353198379%_))
                                        (let ((_%e198354198382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198353198379%_))))
                                          (let ((_%hd198355198385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198354198382%_)))
                                                (_%tl198356198387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198354198382%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198356198387%_))
                                                (let _%lp198407%_ ((_%rest198409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd198352198377%_)
                           (_%r198410%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%__stx207993207994%_
                                                          _%rest198409%_)
                                                         (_%g198415198432%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx207993207994%_)))))
                                                    (let ((_%__kont207995207996%_
                                                           (lambda (_%g198417198495%_)
                                                             (_%lp198407%_
                                                              _%g198417198495%_
                                                              _%r198410%_)))
                                                          (_%__kont207997207998%_
                                                           (lambda (_%g198422198468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g198423198469%_)
                     (_%lp198407%_
                      _%g198422198468%_
                      (cons (_%generate1198341%_ _%g198423198469%_)
                            _%r198410%_))))
                  (_%__kont207999208000%_
                   (lambda (_%g198427198444%_)
                     (_%generate*198342%_
                      (let ((__tmp208259
                             (cons (_%generate1198341%_ _%g198427198444%_)
                                   '())))
                        (declare (not safe))
                        (foldl__0 cons __tmp208259 _%r198410%_)))))
                  (_%__kont208001208002%_
                   (lambda () (_%generate*198342%_ (reverse! _%r198410%_)))))
              (let ((_%g198413198455%_
                     (lambda ()
                       (let ((_%g198427198444%_ _%__stx207993207994%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g198427198444%_))
                             (_%__kont207999208000%_ _%g198427198444%_)
                             (_%__kont208001208002%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx207993207994%_))
                    (let ((_%e198418198484%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx207993207994%_))))
                      (let ((_%tl198420198489%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198418198484%_)))
                            (_%hd198419198487%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198418198484%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd198419198487%_))
                            (let ((_%e198421198492%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd198419198487%_))))
                              (if (equal? _%e198421198492%_ '#f)
                                  (_%__kont207995207996%_ _%tl198420198489%_)
                                  (_%__kont207997207998%_
                                   _%tl198420198489%_
                                   _%hd198419198487%_)))
                            (_%__kont207997207998%_
                             _%tl198420198489%_
                             _%hd198419198487%_))))
                    (_%g198413198455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198344198361%_
                                                 _%g198345198364%_))))
                                        (_%g198344198361%_
                                         _%g198345198364%_))))
                                (_%g198344198361%_ _%g198345198364%_))))
                        (_%g198344198361%_ _%g198345198364%_)))))
            (_%g198343198508%_ _%stx198339%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self198235%_ _%stx198236%_)
        (let* ((_%g198238198255%_
                (lambda (_%g198239198252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198239198252%_))))
               (_%g198237198335%_
                (lambda (_%g198239198258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198239198258%_))
                      (let ((_%e198242198260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198239198258%_))))
                        (let ((_%hd198243198263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198242198260%_)))
                              (_%tl198244198265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198242198260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198244198265%_))
                              (let ((_%e198245198268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198244198265%_))))
                                (let ((_%hd198246198271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198245198268%_)))
                                      (_%tl198247198273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198245198268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198247198273%_))
                                      (let ((_%e198248198276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198247198273%_))))
                                        (let ((_%hd198249198279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198248198276%_)))
                                              (_%tl198250198281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198248198276%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198250198281%_))
                                              (let* ((_%eid198300%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-binding-id
                                                         _%hd198246198271%_)))
                                                     (_%phi198302%_
                                                      (let ((__tmp208260
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#current-expander-phi))))
                (declare (not safe))
                (##fx+ __tmp208260 '1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%block198304%_
                                                      (gxc#meta-state-begin-phi!
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self198235%_
                                                          'state))
                                                       _%phi198302%_)))
                                                (let* ((_%g198307198314%_
                                                        (lambda (_%g198308198311%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g198308198311%_))))
                                                       (_%g198306198332%_
                                                        (lambda (_%g198308198317%_)
                                                          (gxc#meta-state-add-phi!
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self198235%_
                                                              'state))
                                                           _%phi198302%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#define-runtime))
                         (cons _%g198308198317%_
                               (cons _%hd198249198279%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g198306198332%_
                                                   _%eid198300%_))
                                                (if _%block198304%_
                                                    (cons '%#begin
                                                          (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block198304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons '%#define-syntax
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-identifier
                                             _%hd198246198271%_))
                                          (cons _%eid198300%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '%#define-syntax
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier _%hd198246198271%_))
                        (cons _%eid198300%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198238198255%_
                                               _%g198239198258%_))))
                                      (_%g198238198255%_ _%g198239198258%_))))
                              (_%g198238198255%_ _%g198239198258%_))))
                      (_%g198238198255%_ _%g198239198258%_)))))
          (_%g198237198335%_ _%stx198236%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self198167%_ _%stx198168%_)
        (let* ((_%g198170198187%_
                (lambda (_%g198171198184%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198171198184%_))))
               (_%g198169198232%_
                (lambda (_%g198171198190%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198171198190%_))
                      (let ((_%e198174198192%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198171198190%_))))
                        (let ((_%hd198175198195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198174198192%_)))
                              (_%tl198176198197%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198174198192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198176198197%_))
                              (let ((_%e198177198200%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198176198197%_))))
                                (let ((_%hd198178198203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198177198200%_)))
                                      (_%tl198179198205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198177198200%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198179198205%_))
                                      (let ((_%e198180198208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198179198205%_))))
                                        (let ((_%hd198181198211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198180198208%_)))
                                              (_%tl198182198213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198180198208%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198182198213%_))
                                              (cons '%#define-alias
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#generate-runtime-identifier
                                                             _%hd198178198203%_))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#generate-runtime-identifier _%hd198181198211%_))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198170198187%_
                                               _%g198171198190%_))))
                                      (_%g198170198187%_ _%g198171198190%_))))
                              (_%g198170198187%_ _%g198171198190%_))))
                      (_%g198170198187%_ _%g198171198190%_)))))
          (_%g198169198232%_ _%stx198168%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self198164%_ _%stx198165%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198164%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx198165%_)
        (gxc#generate-meta-define-values% _%self198164%_ _%stx198165%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self198161%_ _%stx198162%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self198161%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx198162%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp208262 (list)) (__tmp208261 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp208262
         '(src n open blocks)
         __tmp208261
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args198158%_
        (apply make-instance gxc#meta-state::t _%$args198158%_)))
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
      (lambda (_%self198144%_ _%ctx198145%_)
        (let ((_%self198148%_ _%self198144%_))
          (if (let ((__tmp208263
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self198148%_))))
                (declare (not safe))
                (##fx< '4 __tmp208263))
              (begin
                (let ((__tmp208264
                       (let ((__tmp208265
                              (##structure-ref
                               _%ctx198145%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp208265))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self198148%_
                   __tmp208264
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self198148%_ '1 '2 '#f '#f))
                (let ((__tmp208266
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self198148%_
                   __tmp208266
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self198148%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp208267
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self198148%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self198148%_
                       '4
                       __tmp208267))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp208269 (list)) (__tmp208268 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp208269
         '(ctx phi n code)
         __tmp208268
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args198019%_
        (apply make-instance gxc#meta-state-block::t _%$args198019%_)))
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
      (lambda (_%state197979%_ _%phi197980%_)
        (let* ((_%state197981197989%_ _%state197979%_)
               (_%E197983197992%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state197981197989%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K197984198001%_
                (lambda (_%open197995%_ _%n197996%_ _%src197997%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open197995%_ _%phi197980%_))
                      '#f
                      (let ((_%block-ref197999%_
                             (let ((__tmp208270 (number->string _%n197996%_)))
                               (declare (not safe))
                               (##string-append
                                _%src197997%_
                                '"~"
                                __tmp208270))))
                        (##structure-set!
                         _%state197979%_
                         (let () (declare (not safe)) (##fx+ _%n197996%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp208271
                               (let ((__tmp208272
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp208272
                                  _%phi197980%_
                                  _%n197996%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open197995%_ _%phi197980%_ __tmp208271))
                        _%block-ref197999%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state197981197989%_
                 'gxc#meta-state::t))
              (let* ((_%e197985198004%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state197981197989%_
                         '1
                         '#f
                         '#f)))
                     (_%src198007%_ _%e197985198004%_)
                     (_%e197986198009%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state197981197989%_
                         '2
                         '#f
                         '#f)))
                     (_%n198012%_ _%e197986198009%_)
                     (_%e197987198014%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state197981197989%_
                         '3
                         '#f
                         '#f)))
                     (_%open198017%_ _%e197987198014%_))
                (_%K197984198001%_ _%open198017%_ _%n198012%_ _%src198007%_))
              (_%E197983197992%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state197973%_ _%phi197974%_ _%stx197975%_)
        (let ((_%block197977%_
               (let ((__tmp208273
                      (##structure-ref
                       _%state197973%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp208273 _%phi197974%_))))
          (##structure-set!
           _%block197977%_
           (cons _%stx197975%_
                 (##structure-ref
                  _%block197977%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state197967%_)
        (##structure-set!
         _%state197967%_
         (let ((__tmp208276
                (lambda (_%_197969%_ _%block197970%_ _%r197971%_)
                  (cons _%block197970%_ _%r197971%_)))
               (__tmp208275
                (##structure-ref _%state197967%_ '4 gxc#meta-state::t '#f))
               (__tmp208274
                (##structure-ref _%state197967%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp208276 __tmp208275 __tmp208274))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state197967%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state197920%_)
        (gxc#meta-state-end-phi! _%state197920%_)
        (let ((__tmp208278
               (lambda (_%block197922%_ _%r197923%_)
                 (let* ((_%block197924197933%_ _%block197922%_)
                        (_%E197926197936%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block197924197933%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K197927197944%_
                         (lambda (_%code197939%_
                                  _%n197940%_
                                  _%phi197941%_
                                  _%ctx197942%_)
                           (if (null? _%code197939%_)
                               _%r197923%_
                               (cons (cons _%ctx197942%_
                                           (cons _%phi197941%_
                                                 (cons _%n197940%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code197939%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r197923%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block197924197933%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e197928197947%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197924197933%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx197950%_ _%e197928197947%_)
                              (_%e197929197952%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197924197933%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi197955%_ _%e197929197952%_)
                              (_%e197930197957%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197924197933%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n197960%_ _%e197930197957%_)
                              (_%e197931197962%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block197924197933%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code197965%_ _%e197931197962%_))
                         (_%K197927197944%_
                          _%code197965%_
                          _%n197960%_
                          _%phi197955%_
                          _%ctx197950%_))
                       (_%E197926197936%_)))))
              (__tmp208277
               (##structure-ref _%state197920%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp208278 '() __tmp208277))))
    (define gxc#collect-expression-refs
      (lambda (_%stx197916%_)
        (let ((_%ht197918%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht197918%_ _%stx197916%_)
          _%ht197918%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self197859%_ _%stx197860%_)
        (let* ((_%g197862197875%_
                (lambda (_%g197863197872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197863197872%_))))
               (_%g197861197913%_
                (lambda (_%g197863197878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197863197878%_))
                      (let ((_%e197865197880%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197863197878%_))))
                        (let ((_%hd197866197883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197865197880%_)))
                              (_%tl197867197885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197865197880%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197867197885%_))
                              (let ((_%e197868197888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197867197885%_))))
                                (let ((_%hd197869197891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197868197888%_)))
                                      (_%tl197870197893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197868197888%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197870197893%_))
                                      (let* ((_%bind197908%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#resolve-identifier__0
                                                 _%hd197869197891%_)))
                                             (_%eid197910%_
                                              (if _%bind197908%_
                                                  (##structure-ref
                                                   _%bind197908%_
                                                   '1
                                                   gx#binding::t
                                                   '#f)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd197869197891%_))))
                                             (__tmp208279
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self197859%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-put!
                                         __tmp208279
                                         _%eid197910%_
                                         _%eid197910%_))
                                      (_%g197862197875%_ _%g197863197878%_))))
                              (_%g197862197875%_ _%g197863197878%_))))
                      (_%g197862197875%_ _%g197863197878%_)))))
          (_%g197861197913%_ _%stx197860%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self197786%_ _%stx197787%_)
        (let* ((_%g197789197806%_
                (lambda (_%g197790197803%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197790197803%_))))
               (_%g197788197856%_
                (lambda (_%g197790197809%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197790197809%_))
                      (let ((_%e197793197811%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197790197809%_))))
                        (let ((_%hd197794197814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197793197811%_)))
                              (_%tl197795197816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197793197811%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197795197816%_))
                              (let ((_%e197796197819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197795197816%_))))
                                (let ((_%hd197797197822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197796197819%_)))
                                      (_%tl197798197824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197796197819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197798197824%_))
                                      (let ((_%e197799197827%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197798197824%_))))
                                        (let ((_%hd197800197830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197799197827%_)))
                                              (_%tl197801197832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197799197827%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197801197832%_))
                                              (let* ((_%bind197851%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#resolve-identifier__0
                                                         _%hd197797197822%_)))
                                                     (_%eid197853%_
                                                      (if _%bind197851%_
                                                          (##structure-ref
                                                           _%bind197851%_
                                                           '1
                                                           gx#binding::t
                                                           '#f)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd197797197822%_)))))
                                                (let ((__tmp208280
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self197786%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp208280
                                                   _%eid197853%_
                                                   _%eid197853%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self197786%_
                                                   _%hd197800197830%_)))
                                              (_%g197789197806%_
                                               _%g197790197809%_))))
                                      (_%g197789197806%_ _%g197790197809%_))))
                              (_%g197789197806%_ _%g197790197809%_))))
                      (_%g197789197806%_ _%g197790197809%_)))))
          (_%g197788197856%_ _%stx197787%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self197743%_ _%stx197744%_)
        (let* ((_%g197746197756%_
                (lambda (_%g197747197753%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197747197753%_))))
               (_%g197745197783%_
                (lambda (_%g197747197759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197747197759%_))
                      (let ((_%e197749197761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197747197759%_))))
                        (let ((_%hd197750197764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197749197761%_)))
                              (_%tl197751197766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197749197761%_))))
                          (let ((__tmp208281
                                 (lambda (_%g197778197780%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self197743%_
                                      _%g197778197780%_)))))
                            (declare (not safe))
                            (ormap__0 __tmp208281 _%tl197751197766%_))))
                      (_%g197746197756%_ _%g197747197759%_)))))
          (_%g197745197783%_ _%stx197744%_))))
    (define gxc#count-values-single%
      (lambda (_%self197740%_ _%stx197741%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self197608%_ _%stx197609%_)
        (let* ((_%__stx208023208024%_ _%stx197609%_)
               (_%g197612197641%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208023208024%_)))))
          (let ((_%__kont208025208026%_
                 (lambda (_%g197614197707%_ _%g197615197708%_)
                   (length (let ((__tmp208282
                                  (lambda (_%g197729197732%_ _%g197730197734%_)
                                    (cons _%g197729197732%_
                                          _%g197730197734%_))))
                             (declare (not safe))
                             (foldr__0 __tmp208282 '() _%g197614197707%_)))))
                (_%__kont208029208030%_ (lambda () '#f)))
            (let ((_%__match208068208069%_
                   (lambda (_%e197616197653%_
                            _%hd197617197656%_
                            _%tl197618197658%_
                            _%e197619197661%_
                            _%hd197620197664%_
                            _%tl197621197666%_
                            _%e197622197669%_
                            _%hd197623197672%_
                            _%tl197624197674%_
                            _%e197625197677%_
                            _%hd197626197680%_
                            _%tl197627197682%_
                            _%__splice208027208028%_
                            _%target197628197685%_
                            _%tl197630197687%_)
                     (letrec ((_%loop197631197690%_
                               (lambda (_%hd197629197693%_
                                        _%rand197635197695%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197629197693%_))
                                     (let ((_%e197632197697%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd197629197693%_))))
                                       (let ((_%lp-tl197634197702%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197632197697%_)))
                                             (_%lp-hd197633197700%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197632197697%_))))
                                         (_%loop197631197690%_
                                          _%lp-tl197634197702%_
                                          (cons _%lp-hd197633197700%_
                                                _%rand197635197695%_))))
                                     (let ((_%rand197636197705%_
                                            (reverse _%rand197635197695%_)))
                                       (let ((_%g197614197707%_
                                              _%rand197636197705%_)
                                             (_%g197615197708%_
                                              _%hd197626197680%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g197615197708%_
                                                'values))
                                             (_%__kont208025208026%_
                                              _%g197614197707%_
                                              _%g197615197708%_)
                                             (_%__kont208029208030%_))))))))
                       (_%loop197631197690%_ _%target197628197685%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208023208024%_))
                  (let ((_%e197616197653%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208023208024%_))))
                    (let ((_%tl197618197658%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197616197653%_)))
                          (_%hd197617197656%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197616197653%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197618197658%_))
                          (let ((_%e197619197661%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197618197658%_))))
                            (let ((_%tl197621197666%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197619197661%_)))
                                  (_%hd197620197664%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197619197661%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197620197664%_))
                                  (let ((_%e197622197669%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197620197664%_))))
                                    (let ((_%tl197624197674%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197622197669%_)))
                                          (_%hd197623197672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197622197669%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197623197672%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197623197672%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197624197674%_))
                                                  (let ((_%e197625197677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197624197674%_))))
                                                    (let ((_%tl197627197682%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197625197677%_)))
                                                          (_%hd197626197680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197625197677%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197627197682%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197621197666%_))
                      (let ((_%__splice208027208028%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197621197666%_
                                '0))))
                        (let ((_%tl197630197687%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208027208028%_ '1)))
                              (_%target197628197685%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice208027208028%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197630197687%_))
                              (_%__match208068208069%_
                               _%e197616197653%_
                               _%hd197617197656%_
                               _%tl197618197658%_
                               _%e197619197661%_
                               _%hd197620197664%_
                               _%tl197621197666%_
                               _%e197622197669%_
                               _%hd197623197672%_
                               _%tl197624197674%_
                               _%e197625197677%_
                               _%hd197626197680%_
                               _%tl197627197682%_
                               _%__splice208027208028%_
                               _%target197628197685%_
                               _%tl197630197687%_)
                              (_%__kont208029208030%_))))
                      (_%__kont208029208030%_))
                  (_%__kont208029208030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208029208030%_))
                                              (_%__kont208029208030%_))
                                          (_%__kont208029208030%_))))
                                  (_%__kont208029208030%_))))
                          (_%__kont208029208030%_))))
                  (_%__kont208029208030%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self197513%_ _%stx197514%_)
        (let* ((_%g197516197537%_
                (lambda (_%g197517197534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197517197534%_))))
               (_%g197515197605%_
                (lambda (_%g197517197540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197517197540%_))
                      (let ((_%e197521197542%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197517197540%_))))
                        (let ((_%hd197522197545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197521197542%_)))
                              (_%tl197523197547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197521197542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197523197547%_))
                              (let ((_%e197524197550%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197523197547%_))))
                                (let ((_%hd197525197553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197524197550%_)))
                                      (_%tl197526197555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197524197550%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197526197555%_))
                                      (let ((_%e197527197558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197526197555%_))))
                                        (let ((_%hd197528197561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197527197558%_)))
                                              (_%tl197529197563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197527197558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197529197563%_))
                                              (let ((_%e197530197566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197529197563%_))))
                                                (let ((_%hd197531197569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197530197566%_)))
                                                      (_%tl197532197571%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197530197566%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197532197571%_))
                                                      (let ((_%c1197593197595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self197513%_ _%hd197528197561%_))))
                (if _%c1197593197595%_
                    (let* ((_%c1197597%_ _%c1197593197595%_)
                           (_%c2197598197600%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self197513%_
                               _%hd197531197569%_))))
                      (if _%c2197598197600%_
                          (let ((_%c2197602%_ _%c2197598197600%_))
                            (if (fx= _%c1197597%_ _%c2197602%_)
                                _%c1197597%_
                                '#f))
                          '#f))
                    '#f))
              (_%g197516197537%_ _%g197517197540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197516197537%_
                                               _%g197517197540%_))))
                                      (_%g197516197537%_ _%g197517197540%_))))
                              (_%g197516197537%_ _%g197517197540%_))))
                      (_%g197516197537%_ _%g197517197540%_)))))
          (_%g197515197605%_ _%stx197514%_))))))
