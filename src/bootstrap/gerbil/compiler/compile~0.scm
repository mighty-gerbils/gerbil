(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712997787)
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
        (letrec ((_%hash-e145717%_
                  (lambda (_%id145719%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id145719%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e145717%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147104 (list gxc#::void::t))
            (__tmp147103 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147104
         '()
         __tmp147103
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args145713%_
        (apply make-instance gxc#::collect-bindings::t _%$args145713%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147105
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
        (__make-promise __tmp147105)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx145705%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self145708%_
                (let ((__obj147079
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147079))
               (__tmp147106
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145708%_ _%stx145705%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147106
           gxc#current-compile-method
           _%self145708%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147108 (list gxc#::void::t))
            (__tmp147107 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147108
         '(modules)
         __tmp147107
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args145702%_
        (apply make-instance gxc#::lift-modules::t _%$args145702%_)))
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
      (let ((__tmp147109
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
        (__make-promise __tmp147109)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords145676%_ _%modules145673145677%_ _%stx145679%_)
        (let ((_%modules145682%_
               (if (eq? _%modules145673145677%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules145673145677%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self145684%_
                  (let ((__obj147081
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147081
                       _%modules145682%_
                       '1
                       '#f
                       '#f))
                    __obj147081))
                 (__tmp147110
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145684%_ _%stx145679%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147110
             gxc#current-compile-method
             _%self145684%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords145691%_ . _%args145692%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords145691%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145691%_
                  'modules:
                  absent-value))
               _%args145692%_)))
    (define gxc#apply-lift-modules
      (lambda _%args145674145698%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args145674145698%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147112 (list)) (__tmp147111 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147112
         '()
         __tmp147111
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args145669%_
        (apply make-instance gxc#::find-runtime-code::t _%$args145669%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147113
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
        (__make-promise __tmp147113)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx145661%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self145664%_
                (let ((__obj147083
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147083))
               (__tmp147114
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145664%_ _%stx145661%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147114
           gxc#current-compile-method
           _%self145664%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147116 (list gxc#::false::t))
            (__tmp147115 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147116
         '()
         __tmp147115
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args145658%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args145658%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147117
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
        (__make-promise __tmp147117)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx145650%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self145653%_
                (let ((__obj147085
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147085))
               (__tmp147118
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145653%_ _%stx145650%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147118
           gxc#current-compile-method
           _%self145653%_))))
    (define gxc#::count-values::t
      (let ((__tmp147120 (list gxc#::false-expression::t))
            (__tmp147119 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147120
         '()
         __tmp147119
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args145647%_
        (apply make-instance gxc#::count-values::t _%$args145647%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147121
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
        (__make-promise __tmp147121)))
    (define gxc#apply-count-values
      (lambda (_%stx145639%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self145642%_
                (let ((__obj147087
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147087))
               (__tmp147122
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145642%_ _%stx145639%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147122
           gxc#current-compile-method
           _%self145642%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147123 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147123
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args145636%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args145636%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147124
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
        (__make-promise __tmp147124)))
    (define gxc#::generate-loader::t
      (let ((__tmp147126 (list gxc#::generate-runtime-empty::t))
            (__tmp147125 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147126
         '()
         __tmp147125
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args145632%_
        (apply make-instance gxc#::generate-loader::t _%$args145632%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147127
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
        (__make-promise __tmp147127)))
    (define gxc#apply-generate-loader
      (lambda (_%stx145624%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self145627%_
                (let ((__obj147090
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147090))
               (__tmp147128
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145627%_ _%stx145624%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147128
           gxc#current-compile-method
           _%self145627%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147129 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147129
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args145621%_
        (apply make-instance gxc#::generate-runtime::t _%$args145621%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147130
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
        (__make-promise __tmp147130)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx145613%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self145616%_
                (let ((__obj147092
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147092))
               (__tmp147131
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145616%_ _%stx145613%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147131
           gxc#current-compile-method
           _%self145616%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147133 (list gxc#::generate-runtime::t))
            (__tmp147132 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147133
         '()
         __tmp147132
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args145610%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args145610%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147134
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
        (__make-promise __tmp147134)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx145602%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self145605%_
                (let ((__obj147094
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147094))
               (__tmp147135
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145605%_ _%stx145602%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147135
           gxc#current-compile-method
           _%self145605%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147136 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147136
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args145599%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args145599%_)))
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
      (let ((__tmp147137
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
        (__make-promise __tmp147137)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords145573%_ _%table145570145574%_ _%stx145576%_)
        (let ((_%table145579%_
               (if (eq? _%table145570145574%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table145570145574%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self145581%_
                  (let ((__obj147096
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147096
                       _%table145579%_
                       '1
                       '#f
                       '#f))
                    __obj147096))
                 (__tmp147138
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145581%_ _%stx145576%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147138
             gxc#current-compile-method
             _%self145581%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords145588%_ . _%args145589%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords145588%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145588%_
                  'table:
                  absent-value))
               _%args145589%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args145571145595%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args145571145595%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147140 (list gxc#::void-expression::t))
            (__tmp147139 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147140
         '(state)
         __tmp147139
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args145566%_
        (apply make-instance gxc#::generate-meta::t _%$args145566%_)))
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
      (let ((__tmp147141
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
        (__make-promise __tmp147141)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords145540%_ _%state145537145541%_ _%stx145543%_)
        (let ((_%state145546%_
               (if (eq? _%state145537145541%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145537145541%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self145548%_
                  (let ((__obj147098
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147098
                       _%state145546%_
                       '1
                       '#f
                       '#f))
                    __obj147098))
                 (__tmp147142
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145548%_ _%stx145543%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147142
             gxc#current-compile-method
             _%self145548%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords145555%_ . _%args145556%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords145555%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145555%_
                  'state:
                  absent-value))
               _%args145556%_)))
    (define gxc#apply-generate-meta
      (lambda _%args145538145562%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args145538145562%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147144 (list)) (__tmp147143 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147144
         '(state)
         __tmp147143
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args145533%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args145533%_)))
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
      (let ((__tmp147145
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
        (__make-promise __tmp147145)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords145507%_ _%state145504145508%_ _%stx145510%_)
        (let ((_%state145513%_
               (if (eq? _%state145504145508%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145504145508%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self145515%_
                  (let ((__obj147100
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147100
                       _%state145513%_
                       '1
                       '#f
                       '#f))
                    __obj147100))
                 (__tmp147146
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145515%_ _%stx145510%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147146
             gxc#current-compile-method
             _%self145515%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords145522%_ . _%args145523%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords145522%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145522%_
                  'state:
                  absent-value))
               _%args145523%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args145505145529%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args145505145529%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self145433%_ _%stx145434%_)
        (let* ((_%g145436145453%_
                (lambda (_%g145437145450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145437145450%_))))
               (_%g145435145500%_
                (lambda (_%g145437145456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145437145456%_))
                      (let ((_%e145440145458%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145437145456%_))))
                        (let ((_%hd145441145461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145440145458%_)))
                              (_%tl145442145463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145440145458%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145442145463%_))
                              (let ((_%e145443145466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145442145463%_))))
                                (let ((_%hd145444145469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145443145466%_)))
                                      (_%tl145445145471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145443145466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145445145471%_))
                                      (let ((_%e145446145474%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145445145471%_))))
                                        (let ((_%hd145447145477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145446145474%_)))
                                              (_%tl145448145479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145446145474%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145448145479%_))
                                              ((lambda (_%L145482%_
                                                        _%L145483%_)
                                                 (let ((__tmp147147
                                                        (lambda (_%bind145498%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind145498%_))
                      (gxc#add-module-binding! _%bind145498%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147147
                                                    _%L145483%_)))
                                               _%hd145447145477%_
                                               _%hd145444145469%_)
                                              (_%g145436145453%_
                                               _%g145437145456%_))))
                                      (_%g145436145453%_ _%g145437145456%_))))
                              (_%g145436145453%_ _%g145437145456%_))))
                      (_%g145436145453%_ _%g145437145456%_)))))
          (_%g145435145500%_ _%stx145434%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145365%_ _%stx145366%_)
        (let* ((_%g145368145385%_
                (lambda (_%g145369145382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145369145382%_))))
               (_%g145367145430%_
                (lambda (_%g145369145388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145369145388%_))
                      (let ((_%e145372145390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145369145388%_))))
                        (let ((_%hd145373145393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145372145390%_)))
                              (_%tl145374145395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145372145390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145374145395%_))
                              (let ((_%e145375145398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145374145395%_))))
                                (let ((_%hd145376145401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145375145398%_)))
                                      (_%tl145377145403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145375145398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145377145403%_))
                                      (let ((_%e145378145406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145377145403%_))))
                                        (let ((_%hd145379145409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145378145406%_)))
                                              (_%tl145380145411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145378145406%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145380145411%_))
                                              ((lambda (_%L145414%_
                                                        _%L145415%_)
                                                 (gxc#add-module-binding!
                                                  _%L145415%_
                                                  '#t))
                                               _%hd145379145409%_
                                               _%hd145376145401%_)
                                              (_%g145368145385%_
                                               _%g145369145388%_))))
                                      (_%g145368145385%_ _%g145369145388%_))))
                              (_%g145368145385%_ _%g145369145388%_))))
                      (_%g145368145385%_ _%g145369145388%_)))))
          (_%g145367145430%_ _%stx145366%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145307%_ _%stx145308%_)
        (let* ((_%g145310145324%_
                (lambda (_%g145311145321%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145311145321%_))))
               (_%g145309145362%_
                (lambda (_%g145311145327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145311145327%_))
                      (let ((_%e145314145329%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145311145327%_))))
                        (let ((_%hd145315145332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145314145329%_)))
                              (_%tl145316145334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145314145329%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145316145334%_))
                              (let ((_%e145317145337%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145316145334%_))))
                                (let ((_%hd145318145340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145317145337%_)))
                                      (_%tl145319145342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145317145337%_))))
                                  ((lambda (_%L145345%_ _%L145346%_)
                                     (let ((_%ctx145359%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145346%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145307%_
                                           'modules))
                                        (cons _%ctx145359%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145307%_
                                                        'modules)))))
                                       (let ((__tmp147148
                                              (lambda ()
                                                (let ((__tmp147149
                                                       (##structure-ref
                                                        _%ctx145359%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145307%_
                                                   __tmp147149)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147148
                                          gx#current-expander-context
                                          _%ctx145359%_))))
                                   _%tl145319145342%_
                                   _%hd145318145340%_)))
                              (_%g145310145324%_ _%g145311145327%_))))
                      (_%g145310145324%_ _%g145311145327%_)))))
          (_%g145309145362%_ _%stx145308%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145260145262%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145260145262%_
              (let ((_%decls145265%_ _%decls145260145262%_))
                (let _%lp145267%_ ((_%rest145269%_ _%decls145265%_))
                  (let* ((_%rest145270145278%_ _%rest145269%_)
                         (_%else145272145286%_ (lambda () '#f))
                         (_%K145274145295%_
                          (lambda (_%decls145289%_ _%decl145290%_)
                            (if (equal? _%decl145290%_ '(not safe))
                                '#t
                                (if (equal? _%decl145290%_ '(safe))
                                    '#f
                                    (_%lp145267%_ _%decls145289%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145270145278%_))
                        (let ((_%hd145275145298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145270145278%_)))
                              (_%tl145276145300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145270145278%_))))
                          (let* ((_%decl145303%_ _%hd145275145298%_)
                                 (_%decls145305%_ _%tl145276145300%_))
                            (_%K145274145295%_
                             _%decls145305%_
                             _%decl145303%_)))
                        (_%else145272145286%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145254%_ _%syntax?145255%_)
        (let ((_%eid145257%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145254%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145258%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145257%_))
              '#!void
              (let ((__tmp147150
                     (let ((__tmp147151
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145257%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147151 _%syntax?145255%_))))
                (declare (not safe))
                (hash-put! _%ht145258%_ _%eid145257%_ __tmp147150))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145252%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145252%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145207%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145207%_))
            _%key145207%_
            (if (uninterned-symbol? _%key145207%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145207%_))
                (let* ((_%key145211145218%_ _%key145207%_)
                       (_%E145213145222%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145211145218%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145214145240%_
                        (lambda (_%mark145225%_ _%eid145226%_)
                          (let ((_%$e145228%_
                                 (##structure-ref
                                  _%mark145225%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145228%_
                                ((lambda (_%ht145231%_)
                                   (let ((_%$e145233%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145231%_
                                             _%eid145226%_))))
                                     (if _%$e145233%_
                                         ((lambda (_%id145236%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145236%_))
                                                _%id145236%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145236%_))))
                                          _%$e145233%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145226%_))))
                                 _%$e145228%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145226%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145211145218%_))
                      (let ((_%hd145215145243%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145211145218%_)))
                            (_%tl145216145245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145211145218%_))))
                        (let* ((_%eid145248%_ _%hd145215145243%_)
                               (_%mark145250%_ _%tl145216145245%_))
                          (_%K145214145240%_ _%mark145250%_ _%eid145248%_)))
                      (_%E145213145222%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145204%_ _%stx145205%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self145051%_ _%stx145052%_)
        (letrec ((_%simplify145054%_
                  (lambda (_%body145102%_)
                    (let _%lp145104%_ ((_%rest145106%_ _%body145102%_)
                                       (_%r145107%_ '()))
                      (let* ((_%rest145108145116%_ _%rest145106%_)
                             (_%else145110145124%_
                              (lambda () (reverse _%r145107%_)))
                             (_%K145112145192%_
                              (lambda (_%rest145127%_ _%hd145128%_)
                                (let* ((_%hd145129145145%_ _%hd145128%_)
                                       (_%else145133145153%_
                                        (lambda ()
                                          (_%lp145104%_
                                           _%rest145127%_
                                           (cons _%hd145128%_ _%r145107%_)))))
                                  (let ((_%K145141145182%_
                                         (lambda (_%exprs145180%_)
                                           (_%lp145104%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145127%_
                                               _%exprs145180%_))
                                            _%r145107%_)))
                                        (_%K145136145166%_
                                         (lambda ()
                                           (if (null? _%rest145127%_)
                                               (_%lp145104%_
                                                _%rest145127%_
                                                (cons _%hd145128%_
                                                      _%r145107%_))
                                               (_%lp145104%_
                                                _%rest145127%_
                                                _%r145107%_))))
                                        (_%K145135145158%_
                                         (lambda ()
                                           (if (null? _%rest145127%_)
                                               (_%lp145104%_
                                                _%rest145127%_
                                                (cons _%hd145128%_
                                                      _%r145107%_))
                                               (_%lp145104%_
                                                _%rest145127%_
                                                _%r145107%_)))))
                                    (let ((_%try-match145132145161%_
                                           (lambda ()
                                             (if (symbol? _%hd145129145145%_)
                                                 (_%K145135145158%_)
                                                 (_%else145133145153%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145129145145%_))
                                          (let ((_%tl145143145187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145129145145%_)))
                                                (_%hd145142145185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145129145145%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145142145185%_
                                                         'begin))
                                                (let ((_%exprs145190%_
                                                       _%tl145143145187%_))
                                                  (_%K145141145182%_
                                                   _%exprs145190%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145142145185%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145143145187%_))
                                                        (let ((_%tl145140145174%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145143145187%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145140145174%_))
                      (_%K145136145166%_)
                      (_%try-match145132145161%_)))
                (_%try-match145132145161%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145132145161%_))))
                                          (_%try-match145132145161%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145108145116%_))
                            (let ((_%hd145113145195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145108145116%_)))
                                  (_%tl145114145197%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145108145116%_))))
                              (let* ((_%hd145200%_ _%hd145113145195%_)
                                     (_%rest145202%_ _%tl145114145197%_))
                                (_%K145112145192%_
                                 _%rest145202%_
                                 _%hd145200%_)))
                            (_%else145110145124%_)))))))
          (let* ((_%g145056145066%_
                  (lambda (_%g145057145063%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145057145063%_))))
                 (_%g145055145099%_
                  (lambda (_%g145057145069%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145057145069%_))
                        (let ((_%e145059145071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145057145069%_))))
                          (let ((_%hd145060145074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145059145071%_)))
                                (_%tl145061145076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145059145071%_))))
                            ((lambda (_%L145079%_)
                               (let* ((_%body145094%_
                                       (map (lambda (_%g145089145091%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self145051%_
                                                 _%g145089145091%_)))
                                            _%L145079%_))
                                      (_%body145096%_
                                       (_%simplify145054%_ _%body145094%_)))
                                 (if (let ((__tmp147152
                                            (length _%body145096%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147152 '1))
                                     (car _%body145096%_)
                                     (cons 'begin _%body145096%_))))
                             _%tl145061145076%_)))
                        (_%g145056145066%_ _%g145057145069%_)))))
            (_%g145055145099%_ _%stx145052%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self145012%_ _%stx145013%_)
        (let* ((_%g145015145025%_
                (lambda (_%g145016145022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145016145022%_))))
               (_%g145014145048%_
                (lambda (_%g145016145028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145016145028%_))
                      (let ((_%e145018145030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145016145028%_))))
                        (let ((_%hd145019145033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145018145030%_)))
                              (_%tl145020145035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145018145030%_))))
                          ((lambda (_%L145038%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L145038%_))))
                           _%tl145020145035%_)))
                      (_%g145015145025%_ _%g145016145028%_)))))
          (_%g145014145048%_ _%stx145013%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self144776%_ _%stx144777%_)
        (let* ((_%__stx145742145743%_ _%stx144777%_)
               (_%g144781144833%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145742145743%_)))))
          (let ((_%__kont145744145745%_
                 (lambda (_%L144994%_ _%L144995%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self144776%_ _%L144994%_))))
                (_%__kont145746145747%_
                 (lambda (_%L144942%_ _%L144943%_ _%L144944%_)
                   (if (let ((__tmp147153
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L144944%_))))
                         (declare (not safe))
                         (##memq __tmp147153 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self144776%_ _%L144942%_)))))
                (_%__kont145750145751%_
                 (lambda (_%L144862%_ _%L144863%_)
                   (let ((_%decls144878%_ (map gx#syntax->datum _%L144863%_)))
                     (let ((__tmp147156
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls144878%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self144776%_
                                                   _%L144862%_))
                                                '())))))
                           (__tmp147154
                            (let ((__tmp147155
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147155 _%decls144878%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147156
                        gxc#current-compile-decls
                        __tmp147154))))))
            (let* ((_%__match145797145798%_
                    (lambda (_%e144797144886%_
                             _%hd144798144889%_
                             _%tl144799144891%_
                             _%e144800144894%_
                             _%hd144801144897%_
                             _%tl144802144899%_
                             _%e144803144902%_
                             _%hd144804144905%_
                             _%tl144805144907%_
                             _%__splice145748145749%_
                             _%target144806144910%_
                             _%tl144808144912%_)
                      (letrec ((_%loop144809144915%_
                                (lambda (_%hd144807144918%_
                                         _%param144813144920%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144807144918%_))
                                      (let ((_%e144810144923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144807144918%_))))
                                        (let ((_%lp-tl144812144928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144810144923%_)))
                                              (_%lp-hd144811144926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144810144923%_))))
                                          (_%loop144809144915%_
                                           _%lp-tl144812144928%_
                                           (cons _%lp-hd144811144926%_
                                                 _%param144813144920%_))))
                                      (let ((_%param144814144931%_
                                             (reverse _%param144813144920%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144802144899%_))
                                            (let ((_%e144815144934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144802144899%_))))
                                              (let ((_%tl144817144939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144815144934%_)))
                                                    (_%hd144816144937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144815144934%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144817144939%_))
                                                    (let ((_%L144942%_
                                                           _%hd144816144937%_)
                                                          (_%L144943%_
                                                           _%param144814144931%_)
                                                          (_%L144944%_
                                                           _%hd144804144905%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L144944%_))
                       (not (let ((__tmp147157
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L144944%_))))
                              (declare (not safe))
                              (##memq __tmp147157 gxc#gambit-annotations))))
                  (_%__kont145746145747%_ _%L144942%_ _%L144943%_ _%L144944%_)
                  (_%__kont145750145751%_
                   _%hd144816144937%_
                   _%hd144801144897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144781144833%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144781144833%_))))))))
                        (_%loop144809144915%_ _%target144806144910%_ '()))))
                   (_%__match145771145772%_
                    (lambda (_%e144785144970%_
                             _%hd144786144973%_
                             _%tl144787144975%_
                             _%e144788144978%_
                             _%hd144789144981%_
                             _%tl144790144983%_
                             _%e144791144986%_
                             _%hd144792144989%_
                             _%tl144793144991%_)
                      (let ((_%L144994%_ _%hd144792144989%_)
                            (_%L144995%_ _%hd144789144981%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L144995%_))
                            (_%__kont145744145745%_ _%L144994%_ _%L144995%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd144789144981%_))
                                (let ((_%e144803144902%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd144789144981%_))))
                                  (let ((_%tl144805144907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144803144902%_)))
                                        (_%hd144804144905%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144803144902%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl144805144907%_))
                                        (let ((_%__splice145748145749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl144805144907%_
                                                  '0))))
                                          (let ((_%tl144808144912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145748145749%_
                                                    '1)))
                                                (_%target144806144910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145748145749%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144808144912%_))
                                                (_%__match145797145798%_
                                                 _%e144785144970%_
                                                 _%hd144786144973%_
                                                 _%tl144787144975%_
                                                 _%e144788144978%_
                                                 _%hd144789144981%_
                                                 _%tl144790144983%_
                                                 _%e144803144902%_
                                                 _%hd144804144905%_
                                                 _%tl144805144907%_
                                                 _%__splice145748145749%_
                                                 _%target144806144910%_
                                                 _%tl144808144912%_)
                                                (_%__kont145750145751%_
                                                 _%hd144792144989%_
                                                 _%hd144789144981%_))))
                                        (_%__kont145750145751%_
                                         _%hd144792144989%_
                                         _%hd144789144981%_))))
                                (_%__kont145750145751%_
                                 _%hd144792144989%_
                                 _%hd144789144981%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145742145743%_))
                  (let ((_%e144785144970%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145742145743%_))))
                    (let ((_%tl144787144975%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144785144970%_)))
                          (_%hd144786144973%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144785144970%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144787144975%_))
                          (let ((_%e144788144978%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144787144975%_))))
                            (let ((_%tl144790144983%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144788144978%_)))
                                  (_%hd144789144981%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144788144978%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144790144983%_))
                                  (let ((_%e144791144986%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144790144983%_))))
                                    (let ((_%tl144793144991%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144791144986%_)))
                                          (_%hd144792144989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144791144986%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144793144991%_))
                                          (_%__match145771145772%_
                                           _%e144785144970%_
                                           _%hd144786144973%_
                                           _%tl144787144975%_
                                           _%e144788144978%_
                                           _%hd144789144981%_
                                           _%tl144790144983%_
                                           _%e144791144986%_
                                           _%hd144792144989%_
                                           _%tl144793144991%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144789144981%_))
                                              (let ((_%e144803144902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144789144981%_))))
                                                (let ((_%tl144805144907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144803144902%_)))
                                                      (_%hd144804144905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144803144902%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl144805144907%_))
                                                      (let ((_%__splice145748145749%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl144805144907%_ '0))))
                (let ((_%tl144808144912%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145748145749%_ '1)))
                      (_%target144806144910%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145748145749%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144808144912%_))
                      (_%__match145797145798%_
                       _%e144785144970%_
                       _%hd144786144973%_
                       _%tl144787144975%_
                       _%e144788144978%_
                       _%hd144789144981%_
                       _%tl144790144983%_
                       _%e144803144902%_
                       _%hd144804144905%_
                       _%tl144805144907%_
                       _%__splice145748145749%_
                       _%target144806144910%_
                       _%tl144808144912%_)
                      (let () (declare (not safe)) (_%g144781144833%_)))))
              (let () (declare (not safe)) (_%g144781144833%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144781144833%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144789144981%_))
                                      (let ((_%e144803144902%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144789144981%_))))
                                        (let ((_%tl144805144907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144803144902%_)))
                                              (_%hd144804144905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144803144902%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl144805144907%_))
                                              (let ((_%__splice145748145749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl144805144907%_
                                                        '0))))
                                                (let ((_%tl144808144912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145748145749%_
                                                          '1)))
                                                      (_%target144806144910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145748145749%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144808144912%_))
                                                      (_%__match145797145798%_
                                                       _%e144785144970%_
                                                       _%hd144786144973%_
                                                       _%tl144787144975%_
                                                       _%e144788144978%_
                                                       _%hd144789144981%_
                                                       _%tl144790144983%_
                                                       _%e144803144902%_
                                                       _%hd144804144905%_
                                                       _%tl144805144907%_
                                                       _%__splice145748145749%_
                                                       _%target144806144910%_
                                                       _%tl144808144912%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g144781144833%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144781144833%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144781144833%_))))))
                          (let () (declare (not safe)) (_%g144781144833%_)))))
                  (let () (declare (not safe)) (_%g144781144833%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self144735%_ _%stx144736%_)
        (let* ((_%g144738144748%_
                (lambda (_%g144739144745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144739144745%_))))
               (_%g144737144773%_
                (lambda (_%g144739144751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144739144751%_))
                      (let ((_%e144741144753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144739144751%_))))
                        (let ((_%hd144742144756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144741144753%_)))
                              (_%tl144743144758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144741144753%_))))
                          ((lambda (_%L144761%_)
                             (let ((_%decls144771%_
                                    (map gx#syntax->datum _%L144761%_)))
                               (let ((__tmp147158
                                      (let ((__tmp147159
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147159
                                         _%decls144771%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147158))
                               (cons 'declare _%decls144771%_)))
                           _%tl144743144758%_)))
                      (_%g144738144748%_ _%g144739144751%_)))))
          (_%g144737144773%_ _%stx144736%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self144481%_ _%stx144482%_)
        (let* ((_%g144484144501%_
                (lambda (_%g144485144498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144485144498%_))))
               (_%g144483144732%_
                (lambda (_%g144485144504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144485144504%_))
                      (let ((_%e144488144506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144485144504%_))))
                        (let ((_%hd144489144509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144488144506%_)))
                              (_%tl144490144511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144488144506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144490144511%_))
                              (let ((_%e144491144514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144490144511%_))))
                                (let ((_%hd144492144517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144491144514%_)))
                                      (_%tl144493144519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144491144514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144493144519%_))
                                      (let ((_%e144494144522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144493144519%_))))
                                        (let ((_%hd144495144525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144494144522%_)))
                                              (_%tl144496144527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144494144522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144496144527%_))
                                              ((lambda (_%L144530%_
                                                        _%L144531%_)
                                                 (let* ((_%__stx145850145851%_
                                                         _%L144531%_)
                                                        (_%g144548144562%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx145850145851%_)))))
                                                   (let ((_%__kont145852145853%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self144481%_
                                                               _%L144530%_))))
                                                         (_%__kont145854145855%_
                                                          (lambda (_%L144694%_)
                                                            (let ((_%eid144703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L144694%_))))
                      (let ((_%lambda-expr144704144706%_
                             (gxc#apply-find-lambda-expression _%L144530%_)))
                        (if _%lambda-expr144704144706%_
                            (let* ((_%lambda-expr144709%_
                                    _%lambda-expr144704144706%_)
                                   (__tmp147160
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147160
                               _%lambda-expr144709%_
                               _%eid144703%_))
                            '#f))
                      (cons 'define
                            (cons _%eid144703%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self144481%_
                                           _%L144530%_))
                                        '()))))))
                 (_%__kont145856145857%_
                  (lambda ()
                    (let* ((_%tmp144569%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body144678%_
                            (let _%lp144571%_ ((_%rest144573%_ _%L144531%_)
                                               (_%k144574%_ '0)
                                               (_%r144575%_ '()))
                              (let* ((_%__stx145820145821%_ _%rest144573%_)
                                     (_%g144580144597%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx145820145821%_)))))
                                (let ((_%__kont145822145823%_
                                       (lambda (_%L144665%_)
                                         (_%lp144571%_
                                          _%L144665%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144574%_ '1))
                                          _%r144575%_)))
                                      (_%__kont145824145825%_
                                       (lambda (_%L144638%_ _%L144639%_)
                                         (_%lp144571%_
                                          _%L144638%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144574%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L144639%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp144569%_
                           _%k144574%_
                           _%L144638%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r144575%_))))
                                      (_%__kont145826145827%_
                                       (lambda (_%L144609%_)
                                         (let ((__tmp147161
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L144609%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp144569%_
                                 _%k144574%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147161
                                            _%r144575%_))))
                                      (_%__kont145828145829%_
                                       (lambda () (reverse _%r144575%_))))
                                  (let ((_%g144578144625%_
                                         (lambda ()
                                           (let ((_%L144609%_
                                                  _%__stx145820145821%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L144609%_))
                                                 (_%__kont145826145827%_
                                                  _%L144609%_)
                                                 (_%__kont145828145829%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145820145821%_))
                                        (let ((_%e144583144654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145820145821%_))))
                                          (let ((_%tl144585144659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144583144654%_)))
                                                (_%hd144584144657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144583144654%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd144584144657%_))
                                                (let ((_%e144586144662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144584144657%_))))
                                                  (if (equal? _%e144586144662%_
                                                              '#f)
                                                      (_%__kont145822145823%_
                                                       _%tl144585144659%_)
                                                      (_%__kont145824145825%_
                                                       _%tl144585144659%_
                                                       _%hd144584144657%_)))
                                                (_%__kont145824145825%_
                                                 _%tl144585144659%_
                                                 _%hd144584144657%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144578144625%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp144569%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144481%_
                                                       _%L144530%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp144569%_
                                         _%L144531%_
                                         _%L144530%_)
                                        _%body144678%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx145850145851%_))
                                                         (let ((_%e144550144716%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx145850145851%_))))
                   (let ((_%tl144552144721%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e144550144716%_)))
                         (_%hd144551144719%_
                          (let ()
                            (declare (not safe))
                            (##car _%e144550144716%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd144551144719%_))
                         (let ((_%e144553144724%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd144551144719%_))))
                           (if (equal? _%e144553144724%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144552144721%_))
                                   (_%__kont145852145853%_)
                                   (_%__kont145856145857%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144552144721%_))
                                   (_%__kont145854145855%_ _%hd144551144719%_)
                                   (_%__kont145856145857%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144552144721%_))
                             (_%__kont145854145855%_ _%hd144551144719%_)
                             (_%__kont145856145857%_)))))
                 (_%__kont145856145857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144495144525%_
                                               _%hd144492144517%_)
                                              (_%g144484144501%_
                                               _%g144485144504%_))))
                                      (_%g144484144501%_ _%g144485144504%_))))
                              (_%g144484144501%_ _%g144485144504%_))))
                      (_%g144484144501%_ _%g144485144504%_)))))
          (_%g144483144732%_ _%stx144482%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals144456%_ _%hd144457%_ _%expr144458%_)
        (let ((_%$e144460%_ (gxc#apply-count-values _%expr144458%_)))
          (if _%$e144460%_
              ((lambda (_%count144463%_)
                 (let ((_%len144465%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd144457%_)))
                       (_%cmp144466%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd144457%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len144465%_ '0))
                           (_%cmp144466%_ _%count144463%_ _%len144465%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr144458%_
                          _%hd144457%_)))))
               _%$e144460%_)
              (let* ((_%len144472%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd144457%_)))
                     (_%cmp144474%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd144457%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg144476%_
                      (let ((__tmp147163
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd144457%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147162 (number->string _%len144472%_)))
                        (declare (not safe))
                        (##string-append __tmp147163 __tmp147162 '" values")))
                     (_%count144478%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd144457%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len144472%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count144478%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals144456%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp144474%_
                                (cons _%count144478%_
                                      (cons _%len144472%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp144474%_
                                                        (cons _%count144478%_
                                                              (cons _%len144472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg144476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count144478%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var144451%_)
        (letrec ((_%generate-inline144453%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var144451%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var144451%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144453%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144453%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var144444%_ _%i144445%_ _%rest144446%_)
        (letrec ((_%generate-inline144448%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i144445%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest144446%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var144444%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var144444%_
                                                      (cons '0 '())))
                                          (cons _%var144444%_ '()))))
                        (cons '##vector-ref
                              (cons _%var144444%_ (cons _%i144445%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144448%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144448%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var144438%_ _%i144439%_)
        (if (let () (declare (not safe)) (##fx= _%i144439%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var144438%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var144438%_ '()))
                                  (cons (cons 'list (cons _%var144438%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var144438%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var144438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var144438%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i144439%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var144438%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var144438%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var144438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var144438%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var144438%_ '()))
                                (cons _%i144439%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var144438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i144439%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144370%_ _%stx144371%_)
        (let* ((_%g144373144390%_
                (lambda (_%g144374144387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144374144387%_))))
               (_%g144372144435%_
                (lambda (_%g144374144393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144374144393%_))
                      (let ((_%e144377144395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144374144393%_))))
                        (let ((_%hd144378144398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144377144395%_)))
                              (_%tl144379144400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144377144395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144379144400%_))
                              (let ((_%e144380144403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144379144400%_))))
                                (let ((_%hd144381144406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144380144403%_)))
                                      (_%tl144382144408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144380144403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144382144408%_))
                                      (let ((_%e144383144411%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144382144408%_))))
                                        (let ((_%hd144384144414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144383144411%_)))
                                              (_%tl144385144416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144383144411%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144385144416%_))
                                              ((lambda (_%L144419%_
                                                        _%L144420%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144370%_
                                                  _%L144420%_
                                                  _%L144419%_))
                                               _%hd144384144414%_
                                               _%hd144381144406%_)
                                              (_%g144373144390%_
                                               _%g144374144393%_))))
                                      (_%g144373144390%_ _%g144374144393%_))))
                              (_%g144373144390%_ _%g144374144393%_))))
                      (_%g144373144390%_ _%g144374144393%_)))))
          (_%g144372144435%_ _%stx144371%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144329%_ _%hd144330%_ _%body144331%_)
        (let* ((_%hd144333%_ (gxc#generate-runtime-lambda-head _%hd144330%_))
               (_%body144335%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144329%_ _%body144331%_)))
               (_%body144367%_
                (let* ((_%body144336144344%_ _%body144335%_)
                       (_%else144338144352%_
                        (lambda () (cons _%body144335%_ '())))
                       (_%K144340144357%_
                        (lambda (_%exprs144355%_) _%exprs144355%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144336144344%_))
                      (let ((_%hd144341144360%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144336144344%_)))
                            (_%tl144342144362%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144336144344%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144341144360%_ 'begin))
                            (let ((_%exprs144365%_ _%tl144342144362%_))
                              (_%K144340144357%_ _%exprs144365%_))
                            (_%else144338144352%_)))
                      (_%else144338144352%_)))))
          (cons 'lambda (cons _%hd144333%_ _%body144367%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144327%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144327%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self142866%_ _%stx142867%_)
        (letrec ((_%dispatch-case?142869%_
                  (lambda (_%hd143557%_ _%body143558%_)
                    (let* ((_%form143560%_
                            (cons _%hd143557%_ (cons _%body143558%_ '())))
                           (_%__stx145882145883%_ _%form143560%_)
                           (_%g143565143722%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145882145883%_)))))
                      (let ((_%__kont145884145885%_
                             (lambda (_%L144247%_ _%L144248%_ _%L144249%_)
                               '#t))
                            (_%__kont145890145891%_
                             (lambda (_%L144035%_
                                      _%L144036%_
                                      _%L144037%_
                                      _%L144038%_
                                      _%L144039%_
                                      _%L144040%_)
                               '#t))
                            (_%__kont145896145897%_
                             (lambda (_%L143830%_
                                      _%L143831%_
                                      _%L143832%_
                                      _%L143833%_)
                               '#t))
                            (_%__kont145898145899%_ (lambda () '#f)))
                        (let* ((_%__match146023146024%_
                                (lambda (_%e143682143734%_
                                         _%hd143683143737%_
                                         _%tl143684143739%_
                                         _%e143685143742%_
                                         _%hd143686143745%_
                                         _%tl143687143747%_
                                         _%e143688143750%_
                                         _%hd143689143753%_
                                         _%tl143690143755%_
                                         _%e143691143758%_
                                         _%hd143692143761%_
                                         _%tl143693143763%_
                                         _%e143694143766%_
                                         _%hd143695143769%_
                                         _%tl143696143771%_
                                         _%e143697143774%_
                                         _%hd143698143777%_
                                         _%tl143699143779%_
                                         _%e143700143782%_
                                         _%hd143701143785%_
                                         _%tl143702143787%_
                                         _%e143703143790%_
                                         _%hd143704143793%_
                                         _%tl143705143795%_
                                         _%e143706143798%_
                                         _%hd143707143801%_
                                         _%tl143708143803%_
                                         _%e143709143806%_
                                         _%hd143710143809%_
                                         _%tl143711143811%_
                                         _%e143712143814%_
                                         _%hd143713143817%_
                                         _%tl143714143819%_
                                         _%e143715143822%_
                                         _%hd143716143825%_
                                         _%tl143717143827%_)
                                  (let ((_%L143830%_ _%hd143716143825%_)
                                        (_%L143831%_ _%hd143707143801%_)
                                        (_%L143832%_ _%hd143698143777%_)
                                        (_%L143833%_ _%hd143683143737%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L143833%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L143832%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L143833%_
                                                _%L143830%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L143831%_
                                                     _%L143833%_))))
                                        (_%__kont145896145897%_
                                         _%L143830%_
                                         _%L143831%_
                                         _%L143832%_
                                         _%L143833%_)
                                        (_%__kont145898145899%_)))))
                               (_%__match145995145996%_
                                (lambda (_%e143682143734%_
                                         _%hd143683143737%_
                                         _%tl143684143739%_
                                         _%e143685143742%_
                                         _%hd143686143745%_
                                         _%tl143687143747%_
                                         _%e143688143750%_
                                         _%hd143689143753%_
                                         _%tl143690143755%_
                                         _%e143691143758%_
                                         _%hd143692143761%_
                                         _%tl143693143763%_
                                         _%e143694143766%_
                                         _%hd143695143769%_
                                         _%tl143696143771%_
                                         _%e143697143774%_
                                         _%hd143698143777%_
                                         _%tl143699143779%_
                                         _%e143700143782%_
                                         _%hd143701143785%_
                                         _%tl143702143787%_
                                         _%e143703143790%_
                                         _%hd143704143793%_
                                         _%tl143705143795%_
                                         _%e143706143798%_
                                         _%hd143707143801%_
                                         _%tl143708143803%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143702143787%_))
                                      (let ((_%e143709143806%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143702143787%_))))
                                        (let ((_%tl143711143811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143709143806%_)))
                                              (_%hd143710143809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143709143806%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143710143809%_))
                                              (let ((_%e143712143814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143710143809%_))))
                                                (let ((_%tl143714143819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143712143814%_)))
                                                      (_%hd143713143817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143712143814%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd143713143817%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd143713143817%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143714143819%_))
                      (let ((_%e143715143822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143714143819%_))))
                        (let ((_%tl143717143827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143715143822%_)))
                              (_%hd143716143825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143715143822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143717143827%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143711143811%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143687143747%_))
                                      (_%__match146023146024%_
                                       _%e143682143734%_
                                       _%hd143683143737%_
                                       _%tl143684143739%_
                                       _%e143685143742%_
                                       _%hd143686143745%_
                                       _%tl143687143747%_
                                       _%e143688143750%_
                                       _%hd143689143753%_
                                       _%tl143690143755%_
                                       _%e143691143758%_
                                       _%hd143692143761%_
                                       _%tl143693143763%_
                                       _%e143694143766%_
                                       _%hd143695143769%_
                                       _%tl143696143771%_
                                       _%e143697143774%_
                                       _%hd143698143777%_
                                       _%tl143699143779%_
                                       _%e143700143782%_
                                       _%hd143701143785%_
                                       _%tl143702143787%_
                                       _%e143703143790%_
                                       _%hd143704143793%_
                                       _%tl143705143795%_
                                       _%e143706143798%_
                                       _%hd143707143801%_
                                       _%tl143708143803%_
                                       _%e143709143806%_
                                       _%hd143710143809%_
                                       _%tl143711143811%_
                                       _%e143712143814%_
                                       _%hd143713143817%_
                                       _%tl143714143819%_
                                       _%e143715143822%_
                                       _%hd143716143825%_
                                       _%tl143717143827%_)
                                      (_%__kont145898145899%_))
                                  (_%__kont145898145899%_))
                              (_%__kont145898145899%_))))
                      (_%__kont145898145899%_))
                  (_%__kont145898145899%_))
              (_%__kont145898145899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145898145899%_))))
                                      (_%__kont145898145899%_))))
                               (_%__match145925145926%_
                                (lambda (_%e143618143875%_
                                         _%hd143619143878%_
                                         _%tl143620143880%_
                                         _%__splice145892145893%_
                                         _%target143621143883%_
                                         _%tl143623143885%_)
                                  (letrec ((_%loop143624143888%_
                                            (lambda (_%hd143622143891%_
                                                     _%arg143628143893%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143622143891%_))
                                                  (let ((_%e143625143896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143622143891%_))))
                                                    (let ((_%lp-tl143627143901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143625143896%_)))
                                                          (_%lp-hd143626143899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143625143896%_))))
                                                      (_%loop143624143888%_
                                                       _%lp-tl143627143901%_
                                                       (cons _%lp-hd143626143899%_
                                                             _%arg143628143893%_))))
                                                  (let ((_%arg143629143904%_
                                                         (reverse _%arg143628143893%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143620143880%_))
                                                        (let ((_%e143630143907%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143620143880%_))))
                  (let ((_%tl143632143912%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143630143907%_)))
                        (_%hd143631143910%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143630143907%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143631143910%_))
                        (let ((_%e143633143915%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143631143910%_))))
                          (let ((_%tl143635143920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143633143915%_)))
                                (_%hd143634143918%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143633143915%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143634143918%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143634143918%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143635143920%_))
                                        (let ((_%e143636143923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143635143920%_))))
                                          (let ((_%tl143638143928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143636143923%_)))
                                                (_%hd143637143926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143636143923%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143637143926%_))
                                                (let ((_%e143639143931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143637143926%_))))
                                                  (let ((_%tl143641143936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143639143931%_)))
                                                        (_%hd143640143934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143639143931%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143640143934%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143640143934%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143641143936%_))
                        (let ((_%e143642143939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143641143936%_))))
                          (let ((_%tl143644143944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143642143939%_)))
                                (_%hd143643143942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143642143939%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143644143944%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143638143928%_))
                                    (let ((_%e143645143947%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143638143928%_))))
                                      (let ((_%tl143647143952%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143645143947%_)))
                                            (_%hd143646143950%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143645143947%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143646143950%_))
                                            (let ((_%e143648143955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143646143950%_))))
                                              (let ((_%tl143650143960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143648143955%_)))
                                                    (_%hd143649143958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143648143955%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143649143958%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143649143958%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143650143960%_))
                                                            (let ((_%e143651143963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143650143960%_))))
                      (let ((_%tl143653143968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143651143963%_)))
                            (_%hd143652143966%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143651143963%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143653143968%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143647143952%_))
                                (if (let ((__tmp147164
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl143647143952%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147164 '1))
                                    (let ((_%__splice145894145895%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143647143952%_
                                              '1))))
                                      (let ((_%tl143656143973%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145894145895%_
                                                '1)))
                                            (_%target143654143971%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145894145895%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143656143973%_))
                                            (let ((_%e143663143976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143656143973%_))))
                                              (let ((_%tl143665143981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143663143976%_)))
                                                    (_%hd143664143979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143663143976%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd143664143979%_))
                                                    (let ((_%e143666143984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd143664143979%_))))
                                                      (let ((_%tl143668143989%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143666143984%_)))
                    (_%hd143667143987%_
                     (let () (declare (not safe)) (##car _%e143666143984%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd143667143987%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd143667143987%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl143668143989%_))
                            (let ((_%e143669143992%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl143668143989%_))))
                              (let ((_%tl143671143997%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143669143992%_)))
                                    (_%hd143670143995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143669143992%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl143671143997%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143665143981%_))
                                        (letrec ((_%loop143657144000%_
                                                  (lambda (_%hd143655144003%_
                                                           _%xarg143661144005%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143655144003%_))
                                                        (let ((_%e143658144008%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143655144003%_))))
                  (let ((_%lp-tl143660144013%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143658144008%_)))
                        (_%lp-hd143659144011%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143658144008%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd143659144011%_))
                        (let ((_%e143672144016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd143659144011%_))))
                          (let ((_%tl143674144021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143672144016%_)))
                                (_%hd143673144019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143672144016%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143673144019%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd143673144019%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143674144021%_))
                                        (let ((_%e143675144024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143674144021%_))))
                                          (let ((_%tl143677144029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143675144024%_)))
                                                (_%hd143676144027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143675144024%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143677144029%_))
                                                (_%loop143657144000%_
                                                 _%lp-tl143660144013%_
                                                 (cons _%hd143676144027%_
                                                       _%xarg143661144005%_))
                                                (_%__match145995145996%_
                                                 _%e143618143875%_
                                                 _%hd143619143878%_
                                                 _%tl143620143880%_
                                                 _%e143630143907%_
                                                 _%hd143631143910%_
                                                 _%tl143632143912%_
                                                 _%e143633143915%_
                                                 _%hd143634143918%_
                                                 _%tl143635143920%_
                                                 _%e143636143923%_
                                                 _%hd143637143926%_
                                                 _%tl143638143928%_
                                                 _%e143639143931%_
                                                 _%hd143640143934%_
                                                 _%tl143641143936%_
                                                 _%e143642143939%_
                                                 _%hd143643143942%_
                                                 _%tl143644143944%_
                                                 _%e143645143947%_
                                                 _%hd143646143950%_
                                                 _%tl143647143952%_
                                                 _%e143648143955%_
                                                 _%hd143649143958%_
                                                 _%tl143650143960%_
                                                 _%e143651143963%_
                                                 _%hd143652143966%_
                                                 _%tl143653143968%_))))
                                        (_%__match145995145996%_
                                         _%e143618143875%_
                                         _%hd143619143878%_
                                         _%tl143620143880%_
                                         _%e143630143907%_
                                         _%hd143631143910%_
                                         _%tl143632143912%_
                                         _%e143633143915%_
                                         _%hd143634143918%_
                                         _%tl143635143920%_
                                         _%e143636143923%_
                                         _%hd143637143926%_
                                         _%tl143638143928%_
                                         _%e143639143931%_
                                         _%hd143640143934%_
                                         _%tl143641143936%_
                                         _%e143642143939%_
                                         _%hd143643143942%_
                                         _%tl143644143944%_
                                         _%e143645143947%_
                                         _%hd143646143950%_
                                         _%tl143647143952%_
                                         _%e143648143955%_
                                         _%hd143649143958%_
                                         _%tl143650143960%_
                                         _%e143651143963%_
                                         _%hd143652143966%_
                                         _%tl143653143968%_))
                                    (_%__match145995145996%_
                                     _%e143618143875%_
                                     _%hd143619143878%_
                                     _%tl143620143880%_
                                     _%e143630143907%_
                                     _%hd143631143910%_
                                     _%tl143632143912%_
                                     _%e143633143915%_
                                     _%hd143634143918%_
                                     _%tl143635143920%_
                                     _%e143636143923%_
                                     _%hd143637143926%_
                                     _%tl143638143928%_
                                     _%e143639143931%_
                                     _%hd143640143934%_
                                     _%tl143641143936%_
                                     _%e143642143939%_
                                     _%hd143643143942%_
                                     _%tl143644143944%_
                                     _%e143645143947%_
                                     _%hd143646143950%_
                                     _%tl143647143952%_
                                     _%e143648143955%_
                                     _%hd143649143958%_
                                     _%tl143650143960%_
                                     _%e143651143963%_
                                     _%hd143652143966%_
                                     _%tl143653143968%_))
                                (_%__match145995145996%_
                                 _%e143618143875%_
                                 _%hd143619143878%_
                                 _%tl143620143880%_
                                 _%e143630143907%_
                                 _%hd143631143910%_
                                 _%tl143632143912%_
                                 _%e143633143915%_
                                 _%hd143634143918%_
                                 _%tl143635143920%_
                                 _%e143636143923%_
                                 _%hd143637143926%_
                                 _%tl143638143928%_
                                 _%e143639143931%_
                                 _%hd143640143934%_
                                 _%tl143641143936%_
                                 _%e143642143939%_
                                 _%hd143643143942%_
                                 _%tl143644143944%_
                                 _%e143645143947%_
                                 _%hd143646143950%_
                                 _%tl143647143952%_
                                 _%e143648143955%_
                                 _%hd143649143958%_
                                 _%tl143650143960%_
                                 _%e143651143963%_
                                 _%hd143652143966%_
                                 _%tl143653143968%_))))
                        (_%__match145995145996%_
                         _%e143618143875%_
                         _%hd143619143878%_
                         _%tl143620143880%_
                         _%e143630143907%_
                         _%hd143631143910%_
                         _%tl143632143912%_
                         _%e143633143915%_
                         _%hd143634143918%_
                         _%tl143635143920%_
                         _%e143636143923%_
                         _%hd143637143926%_
                         _%tl143638143928%_
                         _%e143639143931%_
                         _%hd143640143934%_
                         _%tl143641143936%_
                         _%e143642143939%_
                         _%hd143643143942%_
                         _%tl143644143944%_
                         _%e143645143947%_
                         _%hd143646143950%_
                         _%tl143647143952%_
                         _%e143648143955%_
                         _%hd143649143958%_
                         _%tl143650143960%_
                         _%e143651143963%_
                         _%hd143652143966%_
                         _%tl143653143968%_))))
                (let ((_%xarg143662144032%_ (reverse _%xarg143661144005%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143632143912%_))
                      (let ((_%L144035%_ _%hd143670143995%_)
                            (_%L144036%_ _%xarg143662144032%_)
                            (_%L144037%_ _%hd143652143966%_)
                            (_%L144038%_ _%hd143643143942%_)
                            (_%L144039%_ _%tl143623143885%_)
                            (_%L144040%_ _%arg143629143904%_))
                        (if (and (let ((__tmp147165
                                        (let ((__tmp147166
                                               (lambda (_%g144083144086%_
                                                        _%g144084144088%_)
                                                 (cons _%g144083144086%_
                                                       _%g144084144088%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147166
                                           '()
                                           _%L144040%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147165))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L144039%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L144038%_
                                    'apply))
                                 (let ((__tmp147169
                                        (length (let ((__tmp147170
                                                       (lambda (_%g144090144093%_
                                                                _%g144091144095%_)
                                                         (cons _%g144090144093%_
                                                               _%g144091144095%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147170
                                                   '()
                                                   _%L144040%_))))
                                       (__tmp147167
                                        (length (let ((__tmp147168
                                                       (lambda (_%g144097144100%_
                                                                _%g144098144102%_)
                                                         (cons _%g144097144100%_
                                                               _%g144098144102%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147168
                                                   '()
                                                   _%L144036%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147169 __tmp147167))
                                 (let ((__tmp147173
                                        (let ((__tmp147174
                                               (lambda (_%g144104144107%_
                                                        _%g144105144109%_)
                                                 (cons _%g144104144107%_
                                                       _%g144105144109%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147174
                                           '()
                                           _%L144040%_)))
                                       (__tmp147171
                                        (let ((__tmp147172
                                               (lambda (_%g144111144114%_
                                                        _%g144112144116%_)
                                                 (cons _%g144111144114%_
                                                       _%g144112144116%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147172
                                           '()
                                           _%L144036%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147173
                                    __tmp147171))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L144039%_
                                    _%L144035%_))
                                 (not (let ((__tmp147178
                                             (lambda (_%g144118144120%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144118144120%_
                                                  _%L144037%_))))
                                            (__tmp147175
                                             (let ((__tmp147177
                                                    (lambda (_%g144122144125%_
                                                             _%g144123144127%_)
                                                      (cons _%g144122144125%_
                                                            _%g144123144127%_)))
                                                   (__tmp147176
                                                    (cons _%L144039%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147177
                                                __tmp147176
                                                _%L144040%_))))
                                        (declare (not safe))
                                        (__find __tmp147178 __tmp147175))))
                            (_%__kont145890145891%_
                             _%L144035%_
                             _%L144036%_
                             _%L144037%_
                             _%L144038%_
                             _%L144039%_
                             _%L144040%_)
                            (_%__match145995145996%_
                             _%e143618143875%_
                             _%hd143619143878%_
                             _%tl143620143880%_
                             _%e143630143907%_
                             _%hd143631143910%_
                             _%tl143632143912%_
                             _%e143633143915%_
                             _%hd143634143918%_
                             _%tl143635143920%_
                             _%e143636143923%_
                             _%hd143637143926%_
                             _%tl143638143928%_
                             _%e143639143931%_
                             _%hd143640143934%_
                             _%tl143641143936%_
                             _%e143642143939%_
                             _%hd143643143942%_
                             _%tl143644143944%_
                             _%e143645143947%_
                             _%hd143646143950%_
                             _%tl143647143952%_
                             _%e143648143955%_
                             _%hd143649143958%_
                             _%tl143650143960%_
                             _%e143651143963%_
                             _%hd143652143966%_
                             _%tl143653143968%_)))
                      (_%__match145995145996%_
                       _%e143618143875%_
                       _%hd143619143878%_
                       _%tl143620143880%_
                       _%e143630143907%_
                       _%hd143631143910%_
                       _%tl143632143912%_
                       _%e143633143915%_
                       _%hd143634143918%_
                       _%tl143635143920%_
                       _%e143636143923%_
                       _%hd143637143926%_
                       _%tl143638143928%_
                       _%e143639143931%_
                       _%hd143640143934%_
                       _%tl143641143936%_
                       _%e143642143939%_
                       _%hd143643143942%_
                       _%tl143644143944%_
                       _%e143645143947%_
                       _%hd143646143950%_
                       _%tl143647143952%_
                       _%e143648143955%_
                       _%hd143649143958%_
                       _%tl143650143960%_
                       _%e143651143963%_
                       _%hd143652143966%_
                       _%tl143653143968%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop143657144000%_
                                           _%target143654143971%_
                                           '()))
                                        (_%__match145995145996%_
                                         _%e143618143875%_
                                         _%hd143619143878%_
                                         _%tl143620143880%_
                                         _%e143630143907%_
                                         _%hd143631143910%_
                                         _%tl143632143912%_
                                         _%e143633143915%_
                                         _%hd143634143918%_
                                         _%tl143635143920%_
                                         _%e143636143923%_
                                         _%hd143637143926%_
                                         _%tl143638143928%_
                                         _%e143639143931%_
                                         _%hd143640143934%_
                                         _%tl143641143936%_
                                         _%e143642143939%_
                                         _%hd143643143942%_
                                         _%tl143644143944%_
                                         _%e143645143947%_
                                         _%hd143646143950%_
                                         _%tl143647143952%_
                                         _%e143648143955%_
                                         _%hd143649143958%_
                                         _%tl143650143960%_
                                         _%e143651143963%_
                                         _%hd143652143966%_
                                         _%tl143653143968%_))
                                    (_%__match145995145996%_
                                     _%e143618143875%_
                                     _%hd143619143878%_
                                     _%tl143620143880%_
                                     _%e143630143907%_
                                     _%hd143631143910%_
                                     _%tl143632143912%_
                                     _%e143633143915%_
                                     _%hd143634143918%_
                                     _%tl143635143920%_
                                     _%e143636143923%_
                                     _%hd143637143926%_
                                     _%tl143638143928%_
                                     _%e143639143931%_
                                     _%hd143640143934%_
                                     _%tl143641143936%_
                                     _%e143642143939%_
                                     _%hd143643143942%_
                                     _%tl143644143944%_
                                     _%e143645143947%_
                                     _%hd143646143950%_
                                     _%tl143647143952%_
                                     _%e143648143955%_
                                     _%hd143649143958%_
                                     _%tl143650143960%_
                                     _%e143651143963%_
                                     _%hd143652143966%_
                                     _%tl143653143968%_))))
                            (_%__match145995145996%_
                             _%e143618143875%_
                             _%hd143619143878%_
                             _%tl143620143880%_
                             _%e143630143907%_
                             _%hd143631143910%_
                             _%tl143632143912%_
                             _%e143633143915%_
                             _%hd143634143918%_
                             _%tl143635143920%_
                             _%e143636143923%_
                             _%hd143637143926%_
                             _%tl143638143928%_
                             _%e143639143931%_
                             _%hd143640143934%_
                             _%tl143641143936%_
                             _%e143642143939%_
                             _%hd143643143942%_
                             _%tl143644143944%_
                             _%e143645143947%_
                             _%hd143646143950%_
                             _%tl143647143952%_
                             _%e143648143955%_
                             _%hd143649143958%_
                             _%tl143650143960%_
                             _%e143651143963%_
                             _%hd143652143966%_
                             _%tl143653143968%_))
                        (_%__match145995145996%_
                         _%e143618143875%_
                         _%hd143619143878%_
                         _%tl143620143880%_
                         _%e143630143907%_
                         _%hd143631143910%_
                         _%tl143632143912%_
                         _%e143633143915%_
                         _%hd143634143918%_
                         _%tl143635143920%_
                         _%e143636143923%_
                         _%hd143637143926%_
                         _%tl143638143928%_
                         _%e143639143931%_
                         _%hd143640143934%_
                         _%tl143641143936%_
                         _%e143642143939%_
                         _%hd143643143942%_
                         _%tl143644143944%_
                         _%e143645143947%_
                         _%hd143646143950%_
                         _%tl143647143952%_
                         _%e143648143955%_
                         _%hd143649143958%_
                         _%tl143650143960%_
                         _%e143651143963%_
                         _%hd143652143966%_
                         _%tl143653143968%_))
                    (_%__match145995145996%_
                     _%e143618143875%_
                     _%hd143619143878%_
                     _%tl143620143880%_
                     _%e143630143907%_
                     _%hd143631143910%_
                     _%tl143632143912%_
                     _%e143633143915%_
                     _%hd143634143918%_
                     _%tl143635143920%_
                     _%e143636143923%_
                     _%hd143637143926%_
                     _%tl143638143928%_
                     _%e143639143931%_
                     _%hd143640143934%_
                     _%tl143641143936%_
                     _%e143642143939%_
                     _%hd143643143942%_
                     _%tl143644143944%_
                     _%e143645143947%_
                     _%hd143646143950%_
                     _%tl143647143952%_
                     _%e143648143955%_
                     _%hd143649143958%_
                     _%tl143650143960%_
                     _%e143651143963%_
                     _%hd143652143966%_
                     _%tl143653143968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match145995145996%_
                                                     _%e143618143875%_
                                                     _%hd143619143878%_
                                                     _%tl143620143880%_
                                                     _%e143630143907%_
                                                     _%hd143631143910%_
                                                     _%tl143632143912%_
                                                     _%e143633143915%_
                                                     _%hd143634143918%_
                                                     _%tl143635143920%_
                                                     _%e143636143923%_
                                                     _%hd143637143926%_
                                                     _%tl143638143928%_
                                                     _%e143639143931%_
                                                     _%hd143640143934%_
                                                     _%tl143641143936%_
                                                     _%e143642143939%_
                                                     _%hd143643143942%_
                                                     _%tl143644143944%_
                                                     _%e143645143947%_
                                                     _%hd143646143950%_
                                                     _%tl143647143952%_
                                                     _%e143648143955%_
                                                     _%hd143649143958%_
                                                     _%tl143650143960%_
                                                     _%e143651143963%_
                                                     _%hd143652143966%_
                                                     _%tl143653143968%_))))
                                            (_%__match145995145996%_
                                             _%e143618143875%_
                                             _%hd143619143878%_
                                             _%tl143620143880%_
                                             _%e143630143907%_
                                             _%hd143631143910%_
                                             _%tl143632143912%_
                                             _%e143633143915%_
                                             _%hd143634143918%_
                                             _%tl143635143920%_
                                             _%e143636143923%_
                                             _%hd143637143926%_
                                             _%tl143638143928%_
                                             _%e143639143931%_
                                             _%hd143640143934%_
                                             _%tl143641143936%_
                                             _%e143642143939%_
                                             _%hd143643143942%_
                                             _%tl143644143944%_
                                             _%e143645143947%_
                                             _%hd143646143950%_
                                             _%tl143647143952%_
                                             _%e143648143955%_
                                             _%hd143649143958%_
                                             _%tl143650143960%_
                                             _%e143651143963%_
                                             _%hd143652143966%_
                                             _%tl143653143968%_))))
                                    (_%__match145995145996%_
                                     _%e143618143875%_
                                     _%hd143619143878%_
                                     _%tl143620143880%_
                                     _%e143630143907%_
                                     _%hd143631143910%_
                                     _%tl143632143912%_
                                     _%e143633143915%_
                                     _%hd143634143918%_
                                     _%tl143635143920%_
                                     _%e143636143923%_
                                     _%hd143637143926%_
                                     _%tl143638143928%_
                                     _%e143639143931%_
                                     _%hd143640143934%_
                                     _%tl143641143936%_
                                     _%e143642143939%_
                                     _%hd143643143942%_
                                     _%tl143644143944%_
                                     _%e143645143947%_
                                     _%hd143646143950%_
                                     _%tl143647143952%_
                                     _%e143648143955%_
                                     _%hd143649143958%_
                                     _%tl143650143960%_
                                     _%e143651143963%_
                                     _%hd143652143966%_
                                     _%tl143653143968%_))
                                (_%__match145995145996%_
                                 _%e143618143875%_
                                 _%hd143619143878%_
                                 _%tl143620143880%_
                                 _%e143630143907%_
                                 _%hd143631143910%_
                                 _%tl143632143912%_
                                 _%e143633143915%_
                                 _%hd143634143918%_
                                 _%tl143635143920%_
                                 _%e143636143923%_
                                 _%hd143637143926%_
                                 _%tl143638143928%_
                                 _%e143639143931%_
                                 _%hd143640143934%_
                                 _%tl143641143936%_
                                 _%e143642143939%_
                                 _%hd143643143942%_
                                 _%tl143644143944%_
                                 _%e143645143947%_
                                 _%hd143646143950%_
                                 _%tl143647143952%_
                                 _%e143648143955%_
                                 _%hd143649143958%_
                                 _%tl143650143960%_
                                 _%e143651143963%_
                                 _%hd143652143966%_
                                 _%tl143653143968%_))
                            (_%__kont145898145899%_))))
                    (_%__kont145898145899%_))
                (_%__kont145898145899%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145898145899%_))))
                                            (_%__kont145898145899%_))))
                                    (_%__kont145898145899%_))
                                (_%__kont145898145899%_))))
                        (_%__kont145898145899%_))
                    (_%__kont145898145899%_))
                (_%__kont145898145899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145898145899%_))))
                                        (_%__kont145898145899%_))
                                    (_%__kont145898145899%_))
                                (_%__kont145898145899%_))))
                        (_%__kont145898145899%_))))
                (_%__kont145898145899%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143624143888%_
                                     _%target143621143883%_
                                     '()))))
                               (_%__match145913145914%_
                                (lambda (_%e143570144135%_
                                         _%hd143571144138%_
                                         _%tl143572144140%_
                                         _%__splice145886145887%_
                                         _%target143573144143%_
                                         _%tl143575144145%_)
                                  (letrec ((_%loop143576144148%_
                                            (lambda (_%hd143574144151%_
                                                     _%arg143580144153%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143574144151%_))
                                                  (let ((_%e143577144156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143574144151%_))))
                                                    (let ((_%lp-tl143579144161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143577144156%_)))
                                                          (_%lp-hd143578144159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143577144156%_))))
                                                      (_%loop143576144148%_
                                                       _%lp-tl143579144161%_
                                                       (cons _%lp-hd143578144159%_
                                                             _%arg143580144153%_))))
                                                  (let ((_%arg143581144164%_
                                                         (reverse _%arg143580144153%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143572144140%_))
                                                        (let ((_%e143582144167%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143572144140%_))))
                  (let ((_%tl143584144172%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143582144167%_)))
                        (_%hd143583144170%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143582144167%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143583144170%_))
                        (let ((_%e143585144175%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143583144170%_))))
                          (let ((_%tl143587144180%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143585144175%_)))
                                (_%hd143586144178%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143585144175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143586144178%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143586144178%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143587144180%_))
                                        (let ((_%e143588144183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143587144180%_))))
                                          (let ((_%tl143590144188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143588144183%_)))
                                                (_%hd143589144186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143588144183%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143589144186%_))
                                                (let ((_%e143591144191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143589144186%_))))
                                                  (let ((_%tl143593144196%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143591144191%_)))
                                                        (_%hd143592144194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143591144191%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143592144194%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143592144194%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143593144196%_))
                        (let ((_%e143594144199%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143593144196%_))))
                          (let ((_%tl143596144204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143594144199%_)))
                                (_%hd143595144202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143594144199%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143596144204%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143590144188%_))
                                    (let ((_%__splice145888145889%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143590144188%_
                                              '0))))
                                      (let ((_%tl143599144209%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145888145889%_
                                                '1)))
                                            (_%target143597144207%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145888145889%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143599144209%_))
                                            (letrec ((_%loop143600144212%_
                                                      (lambda (_%hd143598144215%_
                                                               _%xarg143604144217%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143598144215%_))
                                                            (let ((_%e143601144220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143598144215%_))))
                      (let ((_%lp-tl143603144225%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143601144220%_)))
                            (_%lp-hd143602144223%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143601144220%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143602144223%_))
                            (let ((_%e143606144228%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143602144223%_))))
                              (let ((_%tl143608144233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143606144228%_)))
                                    (_%hd143607144231%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143606144228%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143607144231%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143607144231%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143608144233%_))
                                            (let ((_%e143609144236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143608144233%_))))
                                              (let ((_%tl143611144241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143609144236%_)))
                                                    (_%hd143610144239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143609144236%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143611144241%_))
                                                    (_%loop143600144212%_
                                                     _%lp-tl143603144225%_
                                                     (cons _%hd143610144239%_
                                                           _%xarg143604144217%_))
                                                    (_%__match145925145926%_
                                                     _%e143570144135%_
                                                     _%hd143571144138%_
                                                     _%tl143572144140%_
                                                     _%__splice145886145887%_
                                                     _%target143573144143%_
                                                     _%tl143575144145%_))))
                                            (_%__match145925145926%_
                                             _%e143570144135%_
                                             _%hd143571144138%_
                                             _%tl143572144140%_
                                             _%__splice145886145887%_
                                             _%target143573144143%_
                                             _%tl143575144145%_))
                                        (_%__match145925145926%_
                                         _%e143570144135%_
                                         _%hd143571144138%_
                                         _%tl143572144140%_
                                         _%__splice145886145887%_
                                         _%target143573144143%_
                                         _%tl143575144145%_))
                                    (_%__match145925145926%_
                                     _%e143570144135%_
                                     _%hd143571144138%_
                                     _%tl143572144140%_
                                     _%__splice145886145887%_
                                     _%target143573144143%_
                                     _%tl143575144145%_))))
                            (_%__match145925145926%_
                             _%e143570144135%_
                             _%hd143571144138%_
                             _%tl143572144140%_
                             _%__splice145886145887%_
                             _%target143573144143%_
                             _%tl143575144145%_))))
                    (let ((_%xarg143605144244%_
                           (reverse _%xarg143604144217%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143584144172%_))
                          (let ((_%L144247%_ _%xarg143605144244%_)
                                (_%L144248%_ _%hd143595144202%_)
                                (_%L144249%_ _%arg143581144164%_))
                            (if (and (let ((__tmp147179
                                            (let ((__tmp147180
                                                   (lambda (_%g144277144280%_
                                                            _%g144278144282%_)
                                                     (cons _%g144277144280%_
                                                           _%g144278144282%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147180
                                               '()
                                               _%L144249%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147179))
                                     (let ((__tmp147183
                                            (length (let ((__tmp147184
                                                           (lambda (_%g144284144287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144285144289%_)
                     (cons _%g144284144287%_ _%g144285144289%_))))
              (declare (not safe))
              (__foldr1 __tmp147184 '() _%L144249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147181
                                            (length (let ((__tmp147182
                                                           (lambda (_%g144291144294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144292144296%_)
                     (cons _%g144291144294%_ _%g144292144296%_))))
              (declare (not safe))
              (__foldr1 __tmp147182 '() _%L144247%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147183 __tmp147181))
                                     (let ((__tmp147187
                                            (let ((__tmp147188
                                                   (lambda (_%g144298144301%_
                                                            _%g144299144303%_)
                                                     (cons _%g144298144301%_
                                                           _%g144299144303%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147188
                                               '()
                                               _%L144249%_)))
                                           (__tmp147185
                                            (let ((__tmp147186
                                                   (lambda (_%g144305144308%_
                                                            _%g144306144310%_)
                                                     (cons _%g144305144308%_
                                                           _%g144306144310%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147186
                                               '()
                                               _%L144247%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147187
                                        __tmp147185))
                                     (not (let ((__tmp147191
                                                 (lambda (_%g144312144314%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144312144314%_
                                                      _%L144248%_))))
                                                (__tmp147189
                                                 (let ((__tmp147190
                                                        (lambda (_%g144316144319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144317144321%_)
                  (cons _%g144316144319%_ _%g144317144321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147190
                                                    '()
                                                    _%L144249%_))))
                                            (declare (not safe))
                                            (__find __tmp147191 __tmp147189))))
                                (_%__kont145884145885%_
                                 _%L144247%_
                                 _%L144248%_
                                 _%L144249%_)
                                (_%__match145925145926%_
                                 _%e143570144135%_
                                 _%hd143571144138%_
                                 _%tl143572144140%_
                                 _%__splice145886145887%_
                                 _%target143573144143%_
                                 _%tl143575144145%_)))
                          (_%__match145925145926%_
                           _%e143570144135%_
                           _%hd143571144138%_
                           _%tl143572144140%_
                           _%__splice145886145887%_
                           _%target143573144143%_
                           _%tl143575144145%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143600144212%_
                                               _%target143597144207%_
                                               '()))
                                            (_%__match145925145926%_
                                             _%e143570144135%_
                                             _%hd143571144138%_
                                             _%tl143572144140%_
                                             _%__splice145886145887%_
                                             _%target143573144143%_
                                             _%tl143575144145%_))))
                                    (_%__match145925145926%_
                                     _%e143570144135%_
                                     _%hd143571144138%_
                                     _%tl143572144140%_
                                     _%__splice145886145887%_
                                     _%target143573144143%_
                                     _%tl143575144145%_))
                                (_%__match145925145926%_
                                 _%e143570144135%_
                                 _%hd143571144138%_
                                 _%tl143572144140%_
                                 _%__splice145886145887%_
                                 _%target143573144143%_
                                 _%tl143575144145%_))))
                        (_%__match145925145926%_
                         _%e143570144135%_
                         _%hd143571144138%_
                         _%tl143572144140%_
                         _%__splice145886145887%_
                         _%target143573144143%_
                         _%tl143575144145%_))
                    (_%__match145925145926%_
                     _%e143570144135%_
                     _%hd143571144138%_
                     _%tl143572144140%_
                     _%__splice145886145887%_
                     _%target143573144143%_
                     _%tl143575144145%_))
                (_%__match145925145926%_
                 _%e143570144135%_
                 _%hd143571144138%_
                 _%tl143572144140%_
                 _%__splice145886145887%_
                 _%target143573144143%_
                 _%tl143575144145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match145925145926%_
                                                 _%e143570144135%_
                                                 _%hd143571144138%_
                                                 _%tl143572144140%_
                                                 _%__splice145886145887%_
                                                 _%target143573144143%_
                                                 _%tl143575144145%_))))
                                        (_%__match145925145926%_
                                         _%e143570144135%_
                                         _%hd143571144138%_
                                         _%tl143572144140%_
                                         _%__splice145886145887%_
                                         _%target143573144143%_
                                         _%tl143575144145%_))
                                    (_%__match145925145926%_
                                     _%e143570144135%_
                                     _%hd143571144138%_
                                     _%tl143572144140%_
                                     _%__splice145886145887%_
                                     _%target143573144143%_
                                     _%tl143575144145%_))
                                (_%__match145925145926%_
                                 _%e143570144135%_
                                 _%hd143571144138%_
                                 _%tl143572144140%_
                                 _%__splice145886145887%_
                                 _%target143573144143%_
                                 _%tl143575144145%_))))
                        (_%__match145925145926%_
                         _%e143570144135%_
                         _%hd143571144138%_
                         _%tl143572144140%_
                         _%__splice145886145887%_
                         _%target143573144143%_
                         _%tl143575144145%_))))
                (_%__match145925145926%_
                 _%e143570144135%_
                 _%hd143571144138%_
                 _%tl143572144140%_
                 _%__splice145886145887%_
                 _%target143573144143%_
                 _%tl143575144145%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143576144148%_
                                     _%target143573144143%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145882145883%_))
                              (let ((_%e143570144135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145882145883%_))))
                                (let ((_%tl143572144140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143570144135%_)))
                                      (_%hd143571144138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143570144135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143571144138%_))
                                      (let ((_%__splice145886145887%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143571144138%_
                                                '0))))
                                        (let ((_%tl143575144145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145886145887%_
                                                  '1)))
                                              (_%target143573144143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145886145887%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143575144145%_))
                                              (_%__match145913145914%_
                                               _%e143570144135%_
                                               _%hd143571144138%_
                                               _%tl143572144140%_
                                               _%__splice145886145887%_
                                               _%target143573144143%_
                                               _%tl143575144145%_)
                                              (_%__match145925145926%_
                                               _%e143570144135%_
                                               _%hd143571144138%_
                                               _%tl143572144140%_
                                               _%__splice145886145887%_
                                               _%target143573144143%_
                                               _%tl143575144145%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143572144140%_))
                                          (let ((_%e143685143742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143572144140%_))))
                                            (let ((_%tl143687143747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143685143742%_)))
                                                  (_%hd143686143745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143685143742%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143686143745%_))
                                                  (let ((_%e143688143750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143686143745%_))))
                                                    (let ((_%tl143690143755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143688143750%_)))
                                                          (_%hd143689143753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143688143750%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143689143753%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143689143753%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143690143755%_))
                          (let ((_%e143691143758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143690143755%_))))
                            (let ((_%tl143693143763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143691143758%_)))
                                  (_%hd143692143761%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143691143758%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143692143761%_))
                                  (let ((_%e143694143766%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143692143761%_))))
                                    (let ((_%tl143696143771%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143694143766%_)))
                                          (_%hd143695143769%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143694143766%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143695143769%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143695143769%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143696143771%_))
                                                  (let ((_%e143697143774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143696143771%_))))
                                                    (let ((_%tl143699143779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143697143774%_)))
                                                          (_%hd143698143777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143697143774%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143699143779%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143693143763%_))
                      (let ((_%e143700143782%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143693143763%_))))
                        (let ((_%tl143702143787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143700143782%_)))
                              (_%hd143701143785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143700143782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143701143785%_))
                              (let ((_%e143703143790%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143701143785%_))))
                                (let ((_%tl143705143795%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143703143790%_)))
                                      (_%hd143704143793%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143703143790%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143704143793%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143704143793%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143705143795%_))
                                              (let ((_%e143706143798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143705143795%_))))
                                                (let ((_%tl143708143803%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143706143798%_)))
                                                      (_%hd143707143801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143706143798%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143708143803%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143702143787%_))
                                                          (let ((_%e143709143806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143702143787%_))))
                    (let ((_%tl143711143811%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143709143806%_)))
                          (_%hd143710143809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143709143806%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143710143809%_))
                          (let ((_%e143712143814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143710143809%_))))
                            (let ((_%tl143714143819%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143712143814%_)))
                                  (_%hd143713143817%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143712143814%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd143713143817%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd143713143817%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143714143819%_))
                                          (let ((_%e143715143822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143714143819%_))))
                                            (let ((_%tl143717143827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143715143822%_)))
                                                  (_%hd143716143825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143715143822%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143717143827%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143711143811%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143687143747%_))
                                                          (_%__match146023146024%_
                                                           _%e143570144135%_
                                                           _%hd143571144138%_
                                                           _%tl143572144140%_
                                                           _%e143685143742%_
                                                           _%hd143686143745%_
                                                           _%tl143687143747%_
                                                           _%e143688143750%_
                                                           _%hd143689143753%_
                                                           _%tl143690143755%_
                                                           _%e143691143758%_
                                                           _%hd143692143761%_
                                                           _%tl143693143763%_
                                                           _%e143694143766%_
                                                           _%hd143695143769%_
                                                           _%tl143696143771%_
                                                           _%e143697143774%_
                                                           _%hd143698143777%_
                                                           _%tl143699143779%_
                                                           _%e143700143782%_
                                                           _%hd143701143785%_
                                                           _%tl143702143787%_
                                                           _%e143703143790%_
                                                           _%hd143704143793%_
                                                           _%tl143705143795%_
                                                           _%e143706143798%_
                                                           _%hd143707143801%_
                                                           _%tl143708143803%_
                                                           _%e143709143806%_
                                                           _%hd143710143809%_
                                                           _%tl143711143811%_
                                                           _%e143712143814%_
                                                           _%hd143713143817%_
                                                           _%tl143714143819%_
                                                           _%e143715143822%_
                                                           _%hd143716143825%_
                                                           _%tl143717143827%_)
                                                          (_%__kont145898145899%_))
                                                      (_%__kont145898145899%_))
                                                  (_%__kont145898145899%_))))
                                          (_%__kont145898145899%_))
                                      (_%__kont145898145899%_))
                                  (_%__kont145898145899%_))))
                          (_%__kont145898145899%_))))
                  (_%__kont145898145899%_))
              (_%__kont145898145899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145898145899%_))
                                          (_%__kont145898145899%_))
                                      (_%__kont145898145899%_))))
                              (_%__kont145898145899%_))))
                      (_%__kont145898145899%_))
                  (_%__kont145898145899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145898145899%_))
                                              (_%__kont145898145899%_))
                                          (_%__kont145898145899%_))))
                                  (_%__kont145898145899%_))))
                          (_%__kont145898145899%_))
                      (_%__kont145898145899%_))
                  (_%__kont145898145899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145898145899%_))))
                                          (_%__kont145898145899%_)))))
                              (_%__kont145898145899%_)))))))
                 (_%dispatch-case-e142870%_
                  (lambda (_%hd143021%_ _%body143022%_)
                    (let* ((_%form143024%_
                            (cons _%hd143021%_ (cons _%body143022%_ '())))
                           (_%__stx146026146027%_ _%form143024%_)
                           (_%g143028143152%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146026146027%_)))))
                      (let ((_%__kont146028146029%_
                             (lambda (_%L143523%_ _%L143524%_ _%L143525%_)
                               (let ((__tmp147192
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143524%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142866%_
                                  __tmp147192))))
                            (_%__kont146034146035%_
                             (lambda (_%L143371%_
                                      _%L143372%_
                                      _%L143373%_
                                      _%L143374%_)
                               (let ((__tmp147193
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143371%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142866%_
                                  __tmp147193))))
                            (_%__kont146038146039%_
                             (lambda (_%L143237%_ _%L143238%_ _%L143239%_)
                               (let ((__tmp147194
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143237%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142866%_
                                  __tmp147194)))))
                        (let* ((_%__match146135146136%_
                                (lambda (_%e143118143157%_
                                         _%hd143119143160%_
                                         _%tl143120143162%_
                                         _%e143121143165%_
                                         _%hd143122143168%_
                                         _%tl143123143170%_
                                         _%e143124143173%_
                                         _%hd143125143176%_
                                         _%tl143126143178%_
                                         _%e143127143181%_
                                         _%hd143128143184%_
                                         _%tl143129143186%_
                                         _%e143130143189%_
                                         _%hd143131143192%_
                                         _%tl143132143194%_
                                         _%e143133143197%_
                                         _%hd143134143200%_
                                         _%tl143135143202%_
                                         _%e143136143205%_
                                         _%hd143137143208%_
                                         _%tl143138143210%_
                                         _%e143139143213%_
                                         _%hd143140143216%_
                                         _%tl143141143218%_
                                         _%e143142143221%_
                                         _%hd143143143224%_
                                         _%tl143144143226%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143138143210%_))
                                      (let ((_%e143145143229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143138143210%_))))
                                        (let ((_%tl143147143234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143145143229%_)))
                                              (_%hd143146143232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143145143229%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143147143234%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143123143170%_))
                                                  (_%__kont146038146039%_
                                                   _%hd143143143224%_
                                                   _%hd143134143200%_
                                                   _%hd143119143160%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143028143152%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143028143152%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143028143152%_)))))
                               (_%__match146065146066%_
                                (lambda (_%e143079143275%_
                                         _%hd143080143278%_
                                         _%tl143081143280%_
                                         _%__splice146036146037%_
                                         _%target143082143283%_
                                         _%tl143084143285%_)
                                  (letrec ((_%loop143085143288%_
                                            (lambda (_%hd143083143291%_
                                                     _%arg143089143293%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143083143291%_))
                                                  (let ((_%e143086143296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143083143291%_))))
                                                    (let ((_%lp-tl143088143301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143086143296%_)))
                                                          (_%lp-hd143087143299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143086143296%_))))
                                                      (_%loop143085143288%_
                                                       _%lp-tl143088143301%_
                                                       (cons _%lp-hd143087143299%_
                                                             _%arg143089143293%_))))
                                                  (let ((_%arg143090143304%_
                                                         (reverse _%arg143089143293%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143081143280%_))
                                                        (let ((_%e143091143307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143081143280%_))))
                  (let ((_%tl143093143312%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143091143307%_)))
                        (_%hd143092143310%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143091143307%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143092143310%_))
                        (let ((_%e143094143315%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143092143310%_))))
                          (let ((_%tl143096143320%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143094143315%_)))
                                (_%hd143095143318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143094143315%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143095143318%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143095143318%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143096143320%_))
                                        (let ((_%e143097143323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143096143320%_))))
                                          (let ((_%tl143099143328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143097143323%_)))
                                                (_%hd143098143326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143097143323%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143098143326%_))
                                                (let ((_%e143100143331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143098143326%_))))
                                                  (let ((_%tl143102143336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143100143331%_)))
                                                        (_%hd143101143334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143100143331%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143101143334%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143101143334%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143102143336%_))
                        (let ((_%e143103143339%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143102143336%_))))
                          (let ((_%tl143105143344%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143103143339%_)))
                                (_%hd143104143342%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143103143339%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143105143344%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143099143328%_))
                                    (let ((_%e143106143347%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143099143328%_))))
                                      (let ((_%tl143108143352%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143106143347%_)))
                                            (_%hd143107143350%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143106143347%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143107143350%_))
                                            (let ((_%e143109143355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143107143350%_))))
                                              (let ((_%tl143111143360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143109143355%_)))
                                                    (_%hd143110143358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143109143355%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143110143358%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143110143358%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143111143360%_))
                                                            (let ((_%e143112143363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143111143360%_))))
                      (let ((_%tl143114143368%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143112143363%_)))
                            (_%hd143113143366%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143112143363%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143114143368%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143093143312%_))
                                (_%__kont146034146035%_
                                 _%hd143113143366%_
                                 _%hd143104143342%_
                                 _%tl143084143285%_
                                 _%arg143090143304%_)
                                (_%__match146135146136%_
                                 _%e143079143275%_
                                 _%hd143080143278%_
                                 _%tl143081143280%_
                                 _%e143091143307%_
                                 _%hd143092143310%_
                                 _%tl143093143312%_
                                 _%e143094143315%_
                                 _%hd143095143318%_
                                 _%tl143096143320%_
                                 _%e143097143323%_
                                 _%hd143098143326%_
                                 _%tl143099143328%_
                                 _%e143100143331%_
                                 _%hd143101143334%_
                                 _%tl143102143336%_
                                 _%e143103143339%_
                                 _%hd143104143342%_
                                 _%tl143105143344%_
                                 _%e143106143347%_
                                 _%hd143107143350%_
                                 _%tl143108143352%_
                                 _%e143109143355%_
                                 _%hd143110143358%_
                                 _%tl143111143360%_
                                 _%e143112143363%_
                                 _%hd143113143366%_
                                 _%tl143114143368%_))
                            (let ()
                              (declare (not safe))
                              (_%g143028143152%_)))))
                    (let () (declare (not safe)) (_%g143028143152%_)))
                (let () (declare (not safe)) (_%g143028143152%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143028143152%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143028143152%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143028143152%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143028143152%_)))))
                        (let () (declare (not safe)) (_%g143028143152%_)))
                    (let () (declare (not safe)) (_%g143028143152%_)))
                (let () (declare (not safe)) (_%g143028143152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g143028143152%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143028143152%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143028143152%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143028143152%_)))))
                        (let () (declare (not safe)) (_%g143028143152%_)))))
                (let () (declare (not safe)) (_%g143028143152%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143085143288%_
                                     _%target143082143283%_
                                     '()))))
                               (_%__match146053146054%_
                                (lambda (_%e143033143411%_
                                         _%hd143034143414%_
                                         _%tl143035143416%_
                                         _%__splice146030146031%_
                                         _%target143036143419%_
                                         _%tl143038143421%_)
                                  (letrec ((_%loop143039143424%_
                                            (lambda (_%hd143037143427%_
                                                     _%arg143043143429%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143037143427%_))
                                                  (let ((_%e143040143432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143037143427%_))))
                                                    (let ((_%lp-tl143042143437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143040143432%_)))
                                                          (_%lp-hd143041143435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143040143432%_))))
                                                      (_%loop143039143424%_
                                                       _%lp-tl143042143437%_
                                                       (cons _%lp-hd143041143435%_
                                                             _%arg143043143429%_))))
                                                  (let ((_%arg143044143440%_
                                                         (reverse _%arg143043143429%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143035143416%_))
                                                        (let ((_%e143045143443%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143035143416%_))))
                  (let ((_%tl143047143448%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143045143443%_)))
                        (_%hd143046143446%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143045143443%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143046143446%_))
                        (let ((_%e143048143451%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143046143446%_))))
                          (let ((_%tl143050143456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143048143451%_)))
                                (_%hd143049143454%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143048143451%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143049143454%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143049143454%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143050143456%_))
                                        (let ((_%e143051143459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143050143456%_))))
                                          (let ((_%tl143053143464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143051143459%_)))
                                                (_%hd143052143462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143051143459%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143052143462%_))
                                                (let ((_%e143054143467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143052143462%_))))
                                                  (let ((_%tl143056143472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143054143467%_)))
                                                        (_%hd143055143470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143054143467%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143055143470%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143055143470%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143056143472%_))
                        (let ((_%e143057143475%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143056143472%_))))
                          (let ((_%tl143059143480%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143057143475%_)))
                                (_%hd143058143478%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143057143475%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143059143480%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143053143464%_))
                                    (let ((_%__splice146032146033%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143053143464%_
                                              '0))))
                                      (let ((_%tl143062143485%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146032146033%_
                                                '1)))
                                            (_%target143060143483%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146032146033%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143062143485%_))
                                            (letrec ((_%loop143063143488%_
                                                      (lambda (_%hd143061143491%_
                                                               _%xarg143067143493%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143061143491%_))
                                                            (let ((_%e143064143496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143061143491%_))))
                      (let ((_%lp-tl143066143501%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143064143496%_)))
                            (_%lp-hd143065143499%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143064143496%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143065143499%_))
                            (let ((_%e143069143504%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143065143499%_))))
                              (let ((_%tl143071143509%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143069143504%_)))
                                    (_%hd143070143507%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143069143504%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143070143507%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143070143507%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143071143509%_))
                                            (let ((_%e143072143512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143071143509%_))))
                                              (let ((_%tl143074143517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143072143512%_)))
                                                    (_%hd143073143515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143072143512%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143074143517%_))
                                                    (_%loop143063143488%_
                                                     _%lp-tl143066143501%_
                                                     (cons _%hd143073143515%_
                                                           _%xarg143067143493%_))
                                                    (_%__match146065146066%_
                                                     _%e143033143411%_
                                                     _%hd143034143414%_
                                                     _%tl143035143416%_
                                                     _%__splice146030146031%_
                                                     _%target143036143419%_
                                                     _%tl143038143421%_))))
                                            (_%__match146065146066%_
                                             _%e143033143411%_
                                             _%hd143034143414%_
                                             _%tl143035143416%_
                                             _%__splice146030146031%_
                                             _%target143036143419%_
                                             _%tl143038143421%_))
                                        (_%__match146065146066%_
                                         _%e143033143411%_
                                         _%hd143034143414%_
                                         _%tl143035143416%_
                                         _%__splice146030146031%_
                                         _%target143036143419%_
                                         _%tl143038143421%_))
                                    (_%__match146065146066%_
                                     _%e143033143411%_
                                     _%hd143034143414%_
                                     _%tl143035143416%_
                                     _%__splice146030146031%_
                                     _%target143036143419%_
                                     _%tl143038143421%_))))
                            (_%__match146065146066%_
                             _%e143033143411%_
                             _%hd143034143414%_
                             _%tl143035143416%_
                             _%__splice146030146031%_
                             _%target143036143419%_
                             _%tl143038143421%_))))
                    (let ((_%xarg143068143520%_
                           (reverse _%xarg143067143493%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143047143448%_))
                          (_%__kont146028146029%_
                           _%xarg143068143520%_
                           _%hd143058143478%_
                           _%arg143044143440%_)
                          (_%__match146065146066%_
                           _%e143033143411%_
                           _%hd143034143414%_
                           _%tl143035143416%_
                           _%__splice146030146031%_
                           _%target143036143419%_
                           _%tl143038143421%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143063143488%_
                                               _%target143060143483%_
                                               '()))
                                            (_%__match146065146066%_
                                             _%e143033143411%_
                                             _%hd143034143414%_
                                             _%tl143035143416%_
                                             _%__splice146030146031%_
                                             _%target143036143419%_
                                             _%tl143038143421%_))))
                                    (_%__match146065146066%_
                                     _%e143033143411%_
                                     _%hd143034143414%_
                                     _%tl143035143416%_
                                     _%__splice146030146031%_
                                     _%target143036143419%_
                                     _%tl143038143421%_))
                                (_%__match146065146066%_
                                 _%e143033143411%_
                                 _%hd143034143414%_
                                 _%tl143035143416%_
                                 _%__splice146030146031%_
                                 _%target143036143419%_
                                 _%tl143038143421%_))))
                        (_%__match146065146066%_
                         _%e143033143411%_
                         _%hd143034143414%_
                         _%tl143035143416%_
                         _%__splice146030146031%_
                         _%target143036143419%_
                         _%tl143038143421%_))
                    (_%__match146065146066%_
                     _%e143033143411%_
                     _%hd143034143414%_
                     _%tl143035143416%_
                     _%__splice146030146031%_
                     _%target143036143419%_
                     _%tl143038143421%_))
                (_%__match146065146066%_
                 _%e143033143411%_
                 _%hd143034143414%_
                 _%tl143035143416%_
                 _%__splice146030146031%_
                 _%target143036143419%_
                 _%tl143038143421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146065146066%_
                                                 _%e143033143411%_
                                                 _%hd143034143414%_
                                                 _%tl143035143416%_
                                                 _%__splice146030146031%_
                                                 _%target143036143419%_
                                                 _%tl143038143421%_))))
                                        (_%__match146065146066%_
                                         _%e143033143411%_
                                         _%hd143034143414%_
                                         _%tl143035143416%_
                                         _%__splice146030146031%_
                                         _%target143036143419%_
                                         _%tl143038143421%_))
                                    (_%__match146065146066%_
                                     _%e143033143411%_
                                     _%hd143034143414%_
                                     _%tl143035143416%_
                                     _%__splice146030146031%_
                                     _%target143036143419%_
                                     _%tl143038143421%_))
                                (_%__match146065146066%_
                                 _%e143033143411%_
                                 _%hd143034143414%_
                                 _%tl143035143416%_
                                 _%__splice146030146031%_
                                 _%target143036143419%_
                                 _%tl143038143421%_))))
                        (_%__match146065146066%_
                         _%e143033143411%_
                         _%hd143034143414%_
                         _%tl143035143416%_
                         _%__splice146030146031%_
                         _%target143036143419%_
                         _%tl143038143421%_))))
                (_%__match146065146066%_
                 _%e143033143411%_
                 _%hd143034143414%_
                 _%tl143035143416%_
                 _%__splice146030146031%_
                 _%target143036143419%_
                 _%tl143038143421%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143039143424%_
                                     _%target143036143419%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146026146027%_))
                              (let ((_%e143033143411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146026146027%_))))
                                (let ((_%tl143035143416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143033143411%_)))
                                      (_%hd143034143414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143033143411%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143034143414%_))
                                      (let ((_%__splice146030146031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143034143414%_
                                                '0))))
                                        (let ((_%tl143038143421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146030146031%_
                                                  '1)))
                                              (_%target143036143419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146030146031%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143038143421%_))
                                              (_%__match146053146054%_
                                               _%e143033143411%_
                                               _%hd143034143414%_
                                               _%tl143035143416%_
                                               _%__splice146030146031%_
                                               _%target143036143419%_
                                               _%tl143038143421%_)
                                              (_%__match146065146066%_
                                               _%e143033143411%_
                                               _%hd143034143414%_
                                               _%tl143035143416%_
                                               _%__splice146030146031%_
                                               _%target143036143419%_
                                               _%tl143038143421%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143035143416%_))
                                          (let ((_%e143121143165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143035143416%_))))
                                            (let ((_%tl143123143170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143121143165%_)))
                                                  (_%hd143122143168%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143121143165%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143122143168%_))
                                                  (let ((_%e143124143173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143122143168%_))))
                                                    (let ((_%tl143126143178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143124143173%_)))
                                                          (_%hd143125143176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143124143173%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143125143176%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143125143176%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143126143178%_))
                          (let ((_%e143127143181%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143126143178%_))))
                            (let ((_%tl143129143186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143127143181%_)))
                                  (_%hd143128143184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143127143181%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143128143184%_))
                                  (let ((_%e143130143189%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143128143184%_))))
                                    (let ((_%tl143132143194%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143130143189%_)))
                                          (_%hd143131143192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143130143189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143131143192%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143131143192%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143132143194%_))
                                                  (let ((_%e143133143197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143132143194%_))))
                                                    (let ((_%tl143135143202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143133143197%_)))
                                                          (_%hd143134143200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143133143197%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143135143202%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143129143186%_))
                      (let ((_%e143136143205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143129143186%_))))
                        (let ((_%tl143138143210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143136143205%_)))
                              (_%hd143137143208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143136143205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143137143208%_))
                              (let ((_%e143139143213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143137143208%_))))
                                (let ((_%tl143141143218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143139143213%_)))
                                      (_%hd143140143216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143139143213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143140143216%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143140143216%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143141143218%_))
                                              (let ((_%e143142143221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143141143218%_))))
                                                (let ((_%tl143144143226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143142143221%_)))
                                                      (_%hd143143143224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143142143221%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143144143226%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143138143210%_))
                                                          (let ((_%e143145143229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143138143210%_))))
                    (let ((_%tl143147143234%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143145143229%_)))
                          (_%hd143146143232%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143145143229%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143147143234%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143123143170%_))
                              (_%__kont146038146039%_
                               _%hd143143143224%_
                               _%hd143134143200%_
                               _%hd143034143414%_)
                              (let ()
                                (declare (not safe))
                                (_%g143028143152%_)))
                          (let () (declare (not safe)) (_%g143028143152%_)))))
                  (let () (declare (not safe)) (_%g143028143152%_)))
              (let () (declare (not safe)) (_%g143028143152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143028143152%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143028143152%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143028143152%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143028143152%_)))))
                      (let () (declare (not safe)) (_%g143028143152%_)))
                  (let () (declare (not safe)) (_%g143028143152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143028143152%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143028143152%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143028143152%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g143028143152%_)))))
                          (let () (declare (not safe)) (_%g143028143152%_)))
                      (let () (declare (not safe)) (_%g143028143152%_)))
                  (let () (declare (not safe)) (_%g143028143152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143028143152%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143028143152%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g143028143152%_))))))))
                 (_%generate1142871%_
                  (lambda (_%args143006%_
                           _%arglen143007%_
                           _%hd143008%_
                           _%body143009%_)
                    (let* ((_%len143011%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd143008%_)))
                           (_%condition143016%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd143008%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen143007%_
                                                (cons _%len143011%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen143007%_ (cons _%len143011%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len143011%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen143007%_
                                                    (cons _%len143011%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen143007%_ (cons _%len143011%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch143018%_
                            (if (_%dispatch-case?142869%_
                                 _%hd143008%_
                                 _%body143009%_)
                                (_%dispatch-case-e142870%_
                                 _%hd143008%_
                                 _%body143009%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self142866%_
                                 _%hd143008%_
                                 _%body143009%_))))
                      (cons _%condition143016%_
                            (cons (cons 'apply
                                        (cons _%dispatch143018%_
                                              (cons _%args143006%_ '())))
                                  '()))))))
          (let* ((_%g142873142901%_
                  (lambda (_%g142874142898%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142874142898%_))))
                 (_%g142872143003%_
                  (lambda (_%g142874142904%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142874142904%_))
                        (let ((_%e142877142906%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142874142904%_))))
                          (let ((_%hd142878142909%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142877142906%_)))
                                (_%tl142879142911%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142877142906%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142879142911%_))
                                (let ((_g147195_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl142879142911%_
                                          '0))))
                                  (begin
                                    (let ((_g147196_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147195_)
                                                 (##vector-length _g147195_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147196_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147196_)))
                                    (let ((_%target142880142914%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147195_ 0)))
                                          (_%tl142882142916%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147195_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142882142916%_))
                                          (letrec ((_%loop142883142919%_
                                                    (lambda (_%hd142881142922%_
                                                             _%body142887142924%_
                                                             _%hd142888142926%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd142881142922%_))
                                                          (let ((_%e142884142929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd142881142922%_))))
                    (let ((_%lp-hd142885142932%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142884142929%_)))
                          (_%lp-tl142886142934%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142884142929%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd142885142932%_))
                          (let ((_%e142891142937%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd142885142932%_))))
                            (let ((_%hd142892142940%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142891142937%_)))
                                  (_%tl142893142942%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142891142937%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142893142942%_))
                                  (let ((_%e142894142945%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142893142942%_))))
                                    (let ((_%hd142895142948%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142894142945%_)))
                                          (_%tl142896142950%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142894142945%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142896142950%_))
                                          (_%loop142883142919%_
                                           _%lp-tl142886142934%_
                                           (cons _%hd142895142948%_
                                                 _%body142887142924%_)
                                           (cons _%hd142892142940%_
                                                 _%hd142888142926%_))
                                          (_%g142873142901%_
                                           _%g142874142904%_))))
                                  (_%g142873142901%_ _%g142874142904%_))))
                          (_%g142873142901%_ _%g142874142904%_))))
                  (let ((_%body142889142953%_ (reverse _%body142887142924%_))
                        (_%hd142890142955%_ (reverse _%hd142888142926%_)))
                    ((lambda (_%L142958%_ _%L142959%_)
                       (let ((_%args142978%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen142979%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name142980%_
                              (let ((_%$e142975%_
                                     (let ((__tmp147197
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147197 _%stx142867%_))))
                                (if _%$e142975%_
                                    _%$e142975%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args142978%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen142979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args142978%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args142978%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147201
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name142980%_
                                                                (cons _%args142978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147198
                                  (map (lambda (_%g142981142984%_
                                                _%g142982142986%_)
                                         (_%generate1142871%_
                                          _%args142978%_
                                          _%arglen142979%_
                                          _%g142981142984%_
                                          _%g142982142986%_))
                                       (let ((__tmp147199
                                              (lambda (_%g142988142991%_
                                                       _%g142989142993%_)
                                                (cons _%g142988142991%_
                                                      _%g142989142993%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147199
                                          '()
                                          _%L142959%_))
                                       (let ((__tmp147200
                                              (lambda (_%g142995142998%_
                                                       _%g142996143000%_)
                                                (cons _%g142995142998%_
                                                      _%g142996143000%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147200
                                          '()
                                          _%L142958%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147201 __tmp147198)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body142889142953%_
                     _%hd142890142955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop142883142919%_
                                             _%target142880142914%_
                                             '()
                                             '()))
                                          (_%g142873142901%_
                                           _%g142874142904%_)))))
                                (_%g142873142901%_ _%g142874142904%_))))
                        (_%g142873142901%_ _%g142874142904%_)))))
            (_%g142872143003%_ _%stx142867%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142103%_ _%stx142104%_ _%compiled-body?142105%_)
        (letrec ((_%generate-simple142107%_
                  (lambda (_%hd142851%_ _%body142852%_)
                    (_%coalesce-boolean142108%_
                     (_%simplify-let142109%_
                      (gxc#generate-runtime-simple-let
                       _%self142103%_
                       'let
                       _%hd142851%_
                       _%body142852%_
                       _%compiled-body?142105%_)))))
                 (_%coalesce-boolean142108%_
                  (lambda (_%code142712%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code142713142739%_ _%code142712%_)
                               (_%else142715142747%_
                                (lambda () _%code142712%_))
                               (_%K142717142784%_
                                (lambda (_%expr2142750%_
                                         _%expr1142751%_
                                         _%id142752%_)
                                  (let* ((_%expr2142753142761%_
                                          _%expr2142750%_)
                                         (_%else142755142769%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1142751%_
                                                        (cons _%expr2142750%_
                                                              '())))))
                                         (_%K142757142774%_
                                          (lambda (_%exprs142772%_)
                                            (cons 'or
                                                  (cons _%expr1142751%_
                                                        _%exprs142772%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2142753142761%_))
                                        (let ((_%hd142758142777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2142753142761%_)))
                                              (_%tl142759142779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2142753142761%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142758142777%_ 'or))
                                              (let ((_%exprs142782%_
                                                     _%tl142759142779%_))
                                                (_%K142757142774%_
                                                 _%exprs142782%_))
                                              (_%else142755142769%_)))
                                        (_%else142755142769%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code142713142739%_))
                              (let ((_%hd142718142787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code142713142739%_)))
                                    (_%tl142719142789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code142713142739%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd142718142787%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl142719142789%_))
                                        (let ((_%hd142720142792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl142719142789%_)))
                                              (_%tl142721142794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl142719142789%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd142720142792%_))
                                              (let ((_%hd142732142797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd142720142792%_)))
                                                    (_%tl142733142799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd142720142792%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd142732142797%_))
                                                    (let ((_%hd142734142802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd142732142797%_)))
                                                          (_%tl142735142804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd142732142797%_))))
                                                      (let ((_%id142807%_
                                                             _%hd142734142802%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl142735142804%_))
                                                            (let ((_%hd142736142809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl142735142804%_)))
                          (_%tl142737142811%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142735142804%_))))
                      (let ((_%expr1142814%_ _%hd142736142809%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl142737142811%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl142733142799%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl142721142794%_))
                                    (let ((_%hd142722142816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142721142794%_)))
                                          (_%tl142723142818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142721142794%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142722142816%_))
                                          (let ((_%hd142724142821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142722142816%_)))
                                                (_%tl142725142823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142722142816%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142724142821%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl142725142823%_))
                                                    (let ((_%hd142726142826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142725142823%_)))
                                                          (_%tl142727142828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142725142823%_))))
                                                      (if ((lambda (_%g142830142832%_)
                                                             (eq? _%g142830142832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id142807%_))
                   _%hd142726142826%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl142727142828%_))
                      (let ((_%hd142728142835%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl142727142828%_)))
                            (_%tl142729142837%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl142727142828%_))))
                        (if ((lambda (_%g142839142841%_)
                               (eq? _%g142839142841%_ _%id142807%_))
                             _%hd142728142835%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142729142837%_))
                                (let ((_%hd142730142844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142729142837%_)))
                                      (_%tl142731142846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142729142837%_))))
                                  (let ((_%expr2142849%_ _%hd142730142844%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl142731142846%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl142723142818%_))
                                            (_%K142717142784%_
                                             _%expr2142849%_
                                             _%expr1142814%_
                                             _%id142807%_)
                                            (_%else142715142747%_))
                                        (_%else142715142747%_))))
                                (_%else142715142747%_))
                            (_%else142715142747%_)))
                      (_%else142715142747%_))
                  (_%else142715142747%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142715142747%_))
                                                (_%else142715142747%_)))
                                          (_%else142715142747%_)))
                                    (_%else142715142747%_))
                                (_%else142715142747%_))
                            (_%else142715142747%_))))
                    (_%else142715142747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142715142747%_)))
                                              (_%else142715142747%_)))
                                        (_%else142715142747%_))
                                    (_%else142715142747%_)))
                              (_%else142715142747%_)))
                        _%code142712%_)))
                 (_%simplify-let142109%_
                  (lambda (_%code142411%_)
                    (let* ((_%code142412142484%_ _%code142411%_)
                           (_%else142417142492%_ (lambda () _%code142411%_)))
                      (let ((_%K142476142692%_
                             (lambda (_%expr142690%_) _%expr142690%_))
                            (_%K142459142638%_
                             (lambda (_%body142634%_
                                      _%expr142635%_
                                      _%id142636%_)
                               (cons 'let
                                     (cons (cons (cons _%id142636%_
                                                       (cons _%expr142635%_
                                                             '()))
                                                 '())
                                           _%body142634%_))))
                            (_%K142436142562%_
                             (lambda (_%body142556%_
                                      _%expr2142557%_
                                      _%id2142558%_
                                      _%expr1142559%_
                                      _%id1142560%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142560%_
                                                       (cons _%expr1142559%_
                                                             '()))
                                                 (cons (cons _%id2142558%_
                                                             (cons _%expr2142557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body142556%_))))
                            (_%K142419142501%_
                             (lambda (_%body142496%_
                                      _%bind142497%_
                                      _%expr1142498%_
                                      _%id1142499%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142499%_
                                                       (cons _%expr1142498%_
                                                             '()))
                                                 _%bind142497%_)
                                           _%body142496%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code142412142484%_))
                            (let ((_%tl142478142697%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code142412142484%_)))
                                  (_%hd142477142695%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code142412142484%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142477142695%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl142478142697%_))
                                      (let ((_%tl142480142702%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl142478142697%_)))
                                            (_%hd142479142700%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl142478142697%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd142479142700%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl142480142702%_))
                                                (let ((_%tl142482142707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl142480142702%_)))
                                                      (_%hd142481142705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl142480142702%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl142482142707%_))
                                                      (let ((_%expr142710%_
                                                             _%hd142481142705%_))
                                                        (_%K142476142692%_
                                                         _%expr142710%_))
                                                      (_%else142417142492%_)))
                                                (_%else142417142492%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd142479142700%_))
                                                (let ((_%tl142471142653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd142479142700%_)))
                                                      (_%hd142470142651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd142479142700%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd142470142651%_))
                                                      (let ((_%tl142473142658%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd142470142651%_)))
                    (_%hd142472142656%_
                     (let () (declare (not safe)) (##car _%hd142470142651%_))))
                (if (let () (declare (not safe)) (##pair? _%tl142473142658%_))
                    (let ((_%tl142475142665%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142473142658%_)))
                          (_%hd142474142663%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl142473142658%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl142475142665%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl142471142653%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl142480142702%_))
                                  (let ((_%tl142465142672%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl142480142702%_)))
                                        (_%hd142464142670%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl142480142702%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd142464142670%_))
                                        (let ((_%tl142467142677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd142464142670%_)))
                                              (_%hd142466142675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd142464142670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142466142675%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl142467142677%_))
                                                  (let ((_%tl142469142682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl142467142677%_)))
                                                        (_%hd142468142680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl142467142677%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd142468142680%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl142465142672%_))
                                                            (let ((_%id142661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd142472142656%_)
                          (_%expr142668%_ _%hd142474142663%_)
                          (_%body142685%_ _%tl142469142682%_))
                      (_%K142459142638%_
                       _%body142685%_
                       _%expr142668%_
                       _%id142661%_))
                    (_%else142417142492%_))
                (if (let () (declare (not safe)) (##pair? _%hd142468142680%_))
                    (let ((_%tl142448142611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd142468142680%_)))
                          (_%hd142447142609%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd142468142680%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142447142609%_))
                          (let ((_%tl142450142616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142447142609%_)))
                                (_%hd142449142614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142447142609%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142450142616%_))
                                (let ((_%tl142452142623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142450142616%_)))
                                      (_%hd142451142621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142450142616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142452142623%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl142448142611%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl142465142672%_))
                                              (let ((_%id1142585%_
                                                     _%hd142472142656%_)
                                                    (_%expr1142592%_
                                                     _%hd142474142663%_)
                                                    (_%id2142619%_
                                                     _%hd142449142614%_)
                                                    (_%expr2142626%_
                                                     _%hd142451142621%_)
                                                    (_%body142628%_
                                                     _%tl142469142682%_))
                                                (_%K142436142562%_
                                                 _%body142628%_
                                                 _%expr2142626%_
                                                 _%id2142619%_
                                                 _%expr1142592%_
                                                 _%id1142585%_))
                                              (_%else142417142492%_))
                                          (_%else142417142492%_))
                                      (_%else142417142492%_)))
                                (_%else142417142492%_)))
                          (_%else142417142492%_)))
                    (_%else142417142492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142417142492%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd142466142675%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl142467142677%_))
                                                      (let ((_%tl142429142545%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl142467142677%_)))
                    (_%hd142428142543%_
                     (let () (declare (not safe)) (##car _%tl142467142677%_))))
                (if (let () (declare (not safe)) (##null? _%tl142465142672%_))
                    (let ((_%id1142524%_ _%hd142472142656%_)
                          (_%expr1142531%_ _%hd142474142663%_)
                          (_%bind142548%_ _%hd142428142543%_)
                          (_%body142550%_ _%tl142429142545%_))
                      (_%K142419142501%_
                       _%body142550%_
                       _%bind142548%_
                       _%expr1142531%_
                       _%id1142524%_))
                    (_%else142417142492%_)))
              (_%else142417142492%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142417142492%_))))
                                        (_%else142417142492%_)))
                                  (_%else142417142492%_))
                              (_%else142417142492%_))
                          (_%else142417142492%_)))
                    (_%else142417142492%_)))
              (_%else142417142492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else142417142492%_))))
                                      (_%else142417142492%_))
                                  (_%else142417142492%_)))
                            (_%else142417142492%_))))))
                 (_%generate-values142110%_
                  (lambda (_%hd142224%_ _%body142225%_)
                    (let _%lp142227%_ ((_%rest142229%_ _%hd142224%_)
                                       (_%bind142230%_ '())
                                       (_%check142231%_ '())
                                       (_%post142232%_ '()))
                      (let* ((_%__stx146355146356%_ _%rest142229%_)
                             (_%g142235142246%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146355146356%_)))))
                        (let ((_%__kont146357146358%_
                               (lambda (_%L142273%_ _%L142274%_)
                                 (let* ((_%__stx146311146312%_ _%L142274%_)
                                        (_%g142289142314%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146311146312%_)))))
                                   (let ((_%__kont146313146314%_
                                          (lambda (_%L142387%_ _%L142388%_)
                                            (let ((_%eid142402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142388%_)))
                                                  (_%expr142403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142103%_
                                                      _%L142387%_))))
                                              (_%lp142227%_
                                               _%L142273%_
                                               (cons (cons _%eid142402%_
                                                           (cons _%expr142403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142230%_)
                                               _%check142231%_
                                               _%post142232%_))))
                                         (_%__kont146315146316%_
                                          (lambda (_%L142335%_ _%L142336%_)
                                            (let* ((_%vals142349%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142351%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142349%_
                                                     _%L142336%_
                                                     _%L142335%_))
                                                   (_%refs142353%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142349%_
                                                     _%L142336%_))
                                                   (_%expr142355%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142103%_
                                                       _%L142335%_))))
                                              (_%lp142227%_
                                               _%L142273%_
                                               (cons (cons _%vals142349%_
                                                           (cons _%expr142355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142230%_)
                                               (cons _%check-values142351%_
                                                     _%check142231%_)
                                               (cons _%refs142353%_
                                                     _%post142232%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146311146312%_))
                                         (let ((_%e142293142363%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146311146312%_))))
                                           (let ((_%tl142295142368%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142293142363%_)))
                                                 (_%hd142294142366%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142293142363%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142294142366%_))
                                                 (let ((_%e142296142371%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142294142366%_))))
                                                   (let ((_%tl142298142376%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142296142371%_)))
                                                         (_%hd142297142374%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142296142371%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142298142376%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142295142368%_))
                     (let ((_%e142299142379%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142295142368%_))))
                       (let ((_%tl142301142384%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142299142379%_)))
                             (_%hd142300142382%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142299142379%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142301142384%_))
                             (_%__kont146313146314%_
                              _%hd142300142382%_
                              _%hd142297142374%_)
                             (let ()
                               (declare (not safe))
                               (_%g142289142314%_)))))
                     (let () (declare (not safe)) (_%g142289142314%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142295142368%_))
                     (let ((_%e142307142327%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142295142368%_))))
                       (let ((_%tl142309142332%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142307142327%_)))
                             (_%hd142308142330%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142307142327%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142309142332%_))
                             (_%__kont146315146316%_
                              _%hd142308142330%_
                              _%hd142294142366%_)
                             (let ()
                               (declare (not safe))
                               (_%g142289142314%_)))))
                     (let () (declare (not safe)) (_%g142289142314%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142295142368%_))
                                                     (let ((_%e142307142327%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142295142368%_))))
                                                       (let ((_%tl142309142332%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142307142327%_)))
                     (_%hd142308142330%_
                      (let () (declare (not safe)) (##car _%e142307142327%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142309142332%_))
                     (_%__kont146315146316%_
                      _%hd142308142330%_
                      _%hd142294142366%_)
                     (let () (declare (not safe)) (_%g142289142314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142289142314%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142289142314%_)))))))
                              (_%__kont146359146360%_
                               (lambda ()
                                 (let* ((_%body142253%_
                                         (if _%compiled-body?142105%_
                                             _%body142225%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142103%_
                                                _%body142225%_))))
                                        (_%body142255%_
                                         (_%generate-values-post142111%_
                                          _%post142232%_
                                          _%body142253%_))
                                        (_%body142257%_
                                         (_%generate-values-check142112%_
                                          _%check142231%_
                                          _%body142255%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142230%_)
                                               (cons _%body142257%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146355146356%_))
                              (let ((_%e142239142265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146355146356%_))))
                                (let ((_%tl142241142270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142239142265%_)))
                                      (_%hd142240142268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142239142265%_))))
                                  (_%__kont146357146358%_
                                   _%tl142241142270%_
                                   _%hd142240142268%_)))
                              (_%__kont146359146360%_)))))))
                 (_%generate-values-post142111%_
                  (lambda (_%post142183%_ _%body142184%_)
                    (let _%lp142186%_ ((_%rest142188%_ _%post142183%_)
                                       (_%body142189%_ _%body142184%_))
                      (let* ((_%rest142190142198%_ _%rest142188%_)
                             (_%else142192142206%_ (lambda () _%body142189%_))
                             (_%K142194142212%_
                              (lambda (_%rest142209%_ _%bind142210%_)
                                (_%lp142186%_
                                 _%rest142209%_
                                 (cons 'let
                                       (cons _%bind142210%_
                                             (cons _%body142189%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142190142198%_))
                            (let ((_%hd142195142215%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142190142198%_)))
                                  (_%tl142196142217%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142190142198%_))))
                              (let* ((_%bind142220%_ _%hd142195142215%_)
                                     (_%rest142222%_ _%tl142196142217%_))
                                (_%K142194142212%_
                                 _%rest142222%_
                                 _%bind142220%_)))
                            (_%else142192142206%_))))))
                 (_%generate-values-check142112%_
                  (lambda (_%check142180%_ _%body142181%_)
                    (cons 'begin
                          (let ((__tmp147203 (cons _%body142181%_ '()))
                                (__tmp147202 (reverse _%check142180%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147203 __tmp147202))))))
          (let* ((_%g142114142131%_
                  (lambda (_%g142115142128%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142115142128%_))))
                 (_%g142113142177%_
                  (lambda (_%g142115142134%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142115142134%_))
                        (let ((_%e142118142136%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142115142134%_))))
                          (let ((_%hd142119142139%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142118142136%_)))
                                (_%tl142120142141%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142118142136%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142120142141%_))
                                (let ((_%e142121142144%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142120142141%_))))
                                  (let ((_%hd142122142147%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142121142144%_)))
                                        (_%tl142123142149%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142121142144%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142123142149%_))
                                        (let ((_%e142124142152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142123142149%_))))
                                          (let ((_%hd142125142155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142124142152%_)))
                                                (_%tl142126142157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142124142152%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142126142157%_))
                                                ((lambda (_%L142160%_
                                                          _%L142161%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142161%_)
                                                       (_%generate-simple142107%_
                                                        _%L142161%_
                                                        _%L142160%_)
                                                       (_%generate-values142110%_
                                                        _%L142161%_
                                                        _%L142160%_)))
                                                 _%hd142125142155%_
                                                 _%hd142122142147%_)
                                                (_%g142114142131%_
                                                 _%g142115142134%_))))
                                        (_%g142114142131%_
                                         _%g142115142134%_))))
                                (_%g142114142131%_ _%g142115142134%_))))
                        (_%g142114142131%_ _%g142115142134%_)))))
            (_%g142113142177%_ _%stx142104%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self142857%_ _%stx142858%_)
        (let ((_%compiled-body?142860%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self142857%_
           _%stx142858%_
           _%compiled-body?142860%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147205_
        (let ((_g147204_ (let () (declare (not safe)) (##length _g147205_))))
          (cond ((let () (declare (not safe)) (##fx= _g147204_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147205_))
                ((let () (declare (not safe)) (##fx= _g147204_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147205_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals141997%_ _%hd141998%_)
        (let _%lp142000%_ ((_%rest142002%_ _%hd141998%_)
                           (_%k142003%_ '0)
                           (_%r142004%_ '()))
          (let* ((_%__stx146369146370%_ _%rest142002%_)
                 (_%g142009142026%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146369146370%_)))))
            (let ((_%__kont146371146372%_
                   (lambda (_%L142089%_)
                     (_%lp142000%_
                      _%L142089%_
                      (let () (declare (not safe)) (##fx+ _%k142003%_ '1))
                      _%r142004%_)))
                  (_%__kont146373146374%_
                   (lambda (_%L142062%_ _%L142063%_)
                     (_%lp142000%_
                      _%L142062%_
                      (let () (declare (not safe)) (##fx+ _%k142003%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142063%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals141997%_
                                         _%k142003%_
                                         _%L142062%_)
                                        '()))
                            _%r142004%_))))
                  (_%__kont146375146376%_
                   (lambda (_%L142038%_)
                     (let ((__tmp147206
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L142038%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals141997%_
                                               _%k142003%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147206 _%r142004%_))))
                  (_%__kont146377146378%_ (lambda () (reverse _%r142004%_))))
              (let ((_%g142007142049%_
                     (lambda ()
                       (let ((_%L142038%_ _%__stx146369146370%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L142038%_))
                             (_%__kont146375146376%_ _%L142038%_)
                             (_%__kont146377146378%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146369146370%_))
                    (let ((_%e142012142078%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146369146370%_))))
                      (let ((_%tl142014142083%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142012142078%_)))
                            (_%hd142013142081%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142012142078%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd142013142081%_))
                            (let ((_%e142015142086%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd142013142081%_))))
                              (if (equal? _%e142015142086%_ '#f)
                                  (_%__kont146371146372%_ _%tl142014142083%_)
                                  (_%__kont146373146374%_
                                   _%tl142014142083%_
                                   _%hd142013142081%_)))
                            (_%__kont146373146374%_
                             _%tl142014142083%_
                             _%hd142013142081%_))))
                    (let () (declare (not safe)) (_%g142007142049%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self141676%_ _%stx141677%_ _%compiled-body?141678%_)
        (letrec ((_%generate-simple141680%_
                  (lambda (_%hd141982%_ _%body141983%_)
                    (gxc#generate-runtime-simple-let
                     _%self141676%_
                     'letrec
                     _%hd141982%_
                     _%body141983%_
                     _%compiled-body?141678%_)))
                 (_%generate-values141681%_
                  (lambda (_%hd141761%_ _%body141762%_)
                    (let _%lp141764%_ ((_%rest141766%_ _%hd141761%_)
                                       (_%bind141767%_ '())
                                       (_%check141768%_ '())
                                       (_%post141769%_ '()))
                      (let* ((_%__stx146443146444%_ _%rest141766%_)
                             (_%g141772141783%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146443146444%_)))))
                        (let ((_%__kont146445146446%_
                               (lambda (_%L141810%_ _%L141811%_)
                                 (let* ((_%__stx146399146400%_ _%L141811%_)
                                        (_%g141826141851%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146399146400%_)))))
                                   (let ((_%__kont146401146402%_
                                          (lambda (_%L141958%_ _%L141959%_)
                                            (let ((_%eid141973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141959%_)))
                                                  (_%expr141974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141676%_
                                                      _%L141958%_))))
                                              (_%lp141764%_
                                               _%L141810%_
                                               (cons (cons _%eid141973%_
                                                           (cons _%expr141974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141767%_)
                                               _%check141768%_
                                               _%post141769%_))))
                                         (_%__kont146403146404%_
                                          (lambda (_%L141872%_ _%L141873%_)
                                            (let* ((_%vals141886%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141888%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals141886%_
                                                     _%L141873%_
                                                     _%L141872%_))
                                                   (_%refs141890%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals141886%_
                                                     _%L141873%_))
                                                   (_%expr141892%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self141676%_
                                                       _%L141872%_))))
                                              (_%lp141764%_
                                               _%L141810%_
                                               (let ((__tmp147208
                                                      (cons (cons _%vals141886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr141892%_ '()))
                    _%bind141767%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147207
                                                      (map (lambda (_%e141894141896%_)
                                                             (let* ((_%g141898141907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e141894141896%_)
                            (_%E141900141911%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g141898141907%_
                                        '([eid _])))
                               '#!void))
                            (_%K141901141916%_
                             (lambda (_%eid141914%_)
                               (cons _%eid141914%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g141898141907%_))
                           (let ((_%hd141902141919%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g141898141907%_)))
                                 (_%tl141903141921%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g141898141907%_))))
                             (let ((_%eid141924%_ _%hd141902141919%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl141903141921%_))
                                   (let ((_%tl141905141926%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl141903141921%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl141905141926%_))
                                         (_%K141901141916%_ _%eid141924%_)
                                         (_%E141900141911%_)))
                                   (_%E141900141911%_))))
                           (_%E141900141911%_))))
                   _%refs141890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147208
                                                  __tmp147207))
                                               (cons _%check-values141888%_
                                                     _%check141768%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs141890%_
                                                  _%post141769%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146399146400%_))
                                         (let ((_%e141830141934%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146399146400%_))))
                                           (let ((_%tl141832141939%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141830141934%_)))
                                                 (_%hd141831141937%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141830141934%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd141831141937%_))
                                                 (let ((_%e141833141942%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd141831141937%_))))
                                                   (let ((_%tl141835141947%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141833141942%_)))
                                                         (_%hd141834141945%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141833141942%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141835141947%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141832141939%_))
                     (let ((_%e141836141950%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141832141939%_))))
                       (let ((_%tl141838141955%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141836141950%_)))
                             (_%hd141837141953%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141836141950%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141838141955%_))
                             (_%__kont146401146402%_
                              _%hd141837141953%_
                              _%hd141834141945%_)
                             (let ()
                               (declare (not safe))
                               (_%g141826141851%_)))))
                     (let () (declare (not safe)) (_%g141826141851%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141832141939%_))
                     (let ((_%e141844141864%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141832141939%_))))
                       (let ((_%tl141846141869%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141844141864%_)))
                             (_%hd141845141867%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141844141864%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141846141869%_))
                             (_%__kont146403146404%_
                              _%hd141845141867%_
                              _%hd141831141937%_)
                             (let ()
                               (declare (not safe))
                               (_%g141826141851%_)))))
                     (let () (declare (not safe)) (_%g141826141851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141832141939%_))
                                                     (let ((_%e141844141864%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141832141939%_))))
                                                       (let ((_%tl141846141869%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141844141864%_)))
                     (_%hd141845141867%_
                      (let () (declare (not safe)) (##car _%e141844141864%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141846141869%_))
                     (_%__kont146403146404%_
                      _%hd141845141867%_
                      _%hd141831141937%_)
                     (let () (declare (not safe)) (_%g141826141851%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141826141851%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g141826141851%_)))))))
                              (_%__kont146447146448%_
                               (lambda ()
                                 (let* ((_%body141790%_
                                         (if _%compiled-body?141678%_
                                             _%body141762%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self141676%_
                                                _%body141762%_))))
                                        (_%body141792%_
                                         (_%generate-values-post141683%_
                                          _%post141769%_
                                          _%body141790%_))
                                        (_%body141794%_
                                         (_%generate-values-check141682%_
                                          _%check141768%_
                                          _%body141792%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind141767%_)
                                               (cons _%body141794%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146443146444%_))
                              (let ((_%e141776141802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146443146444%_))))
                                (let ((_%tl141778141807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141776141802%_)))
                                      (_%hd141777141805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141776141802%_))))
                                  (_%__kont146445146446%_
                                   _%tl141778141807%_
                                   _%hd141777141805%_)))
                              (_%__kont146447146448%_)))))))
                 (_%generate-values-check141682%_
                  (lambda (_%check141758%_ _%body141759%_)
                    (cons 'begin
                          (let ((__tmp147210 (cons _%body141759%_ '()))
                                (__tmp147209 (reverse _%check141758%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147210 __tmp147209)))))
                 (_%generate-values-post141683%_
                  (lambda (_%post141751%_ _%body141752%_)
                    (cons 'begin
                          (let ((__tmp147214 (cons _%body141752%_ '()))
                                (__tmp147211
                                 (let ((__tmp147213
                                        (lambda (_%g141753141755%_)
                                          (cons 'set! _%g141753141755%_)))
                                       (__tmp147212 (reverse _%post141751%_)))
                                   (declare (not safe))
                                   (##map __tmp147213 __tmp147212))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147214 __tmp147211))))))
          (let* ((_%g141685141702%_
                  (lambda (_%g141686141699%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141686141699%_))))
                 (_%g141684141748%_
                  (lambda (_%g141686141705%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141686141705%_))
                        (let ((_%e141689141707%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141686141705%_))))
                          (let ((_%hd141690141710%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141689141707%_)))
                                (_%tl141691141712%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141689141707%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141691141712%_))
                                (let ((_%e141692141715%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141691141712%_))))
                                  (let ((_%hd141693141718%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141692141715%_)))
                                        (_%tl141694141720%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141692141715%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141694141720%_))
                                        (let ((_%e141695141723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141694141720%_))))
                                          (let ((_%hd141696141726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141695141723%_)))
                                                (_%tl141697141728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141695141723%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141697141728%_))
                                                ((lambda (_%L141731%_
                                                          _%L141732%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141732%_)
                                                       (_%generate-simple141680%_
                                                        _%L141732%_
                                                        _%L141731%_)
                                                       (_%generate-values141681%_
                                                        _%L141732%_
                                                        _%L141731%_)))
                                                 _%hd141696141726%_
                                                 _%hd141693141718%_)
                                                (_%g141685141702%_
                                                 _%g141686141705%_))))
                                        (_%g141685141702%_
                                         _%g141686141705%_))))
                                (_%g141685141702%_ _%g141686141705%_))))
                        (_%g141685141702%_ _%g141686141705%_)))))
            (_%g141684141748%_ _%stx141677%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self141988%_ _%stx141989%_)
        (let ((_%compiled-body?141991%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self141988%_
           _%stx141989%_
           _%compiled-body?141991%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147216_
        (let ((_g147215_ (let () (declare (not safe)) (##length _g147216_))))
          (cond ((let () (declare (not safe)) (##fx= _g147215_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147216_))
                ((let () (declare (not safe)) (##fx= _g147215_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147216_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141257%_ _%stx141258%_)
        (letrec ((_%generate-values141260%_
                  (lambda (_%hd141503%_ _%body141504%_)
                    (let _%lp141506%_ ((_%rest141508%_ _%hd141503%_)
                                       (_%bind141509%_ '()))
                      (let* ((_%rest141510141518%_ _%rest141508%_)
                             (_%else141512141529%_
                              (lambda ()
                                (let ((_%bind141526%_ (reverse _%bind141509%_))
                                      (_%body141527%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141257%_
                                          _%body141504%_))))
                                  (cons 'letrec*
                                        (cons _%bind141526%_
                                              (cons _%body141527%_ '()))))))
                             (_%K141514141663%_
                              (lambda (_%rest141532%_ _%hd-bind141533%_)
                                (let* ((_%__stx146457146458%_
                                        _%hd-bind141533%_)
                                       (_%g141536141561%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx146457146458%_)))))
                                  (let ((_%__kont146459146460%_
                                         (lambda (_%L141642%_ _%L141643%_)
                                           (let ((_%eid141657%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L141643%_)))
                                                 (_%expr141658%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141257%_
                                                     _%L141642%_))))
                                             (_%lp141506%_
                                              _%rest141532%_
                                              (cons (cons _%eid141657%_
                                                          (cons _%expr141658%_
                                                                '()))
                                                    _%bind141509%_)))))
                                        (_%__kont146461146462%_
                                         (lambda (_%L141582%_ _%L141583%_)
                                           (let* ((_%vals141602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp141604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values141606%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp141604%_
                                                    _%L141583%_
                                                    _%L141582%_))
                                                  (_%refs141608%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals141602%_
                                                    _%L141583%_))
                                                  (_%expr141610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141257%_
                                                      _%L141582%_))))
                                             (_%lp141506%_
                                              _%rest141532%_
                                              (let ((__tmp147217
                                                     (cons (cons _%vals141602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp141604%_
                                                       (cons _%expr141610%_
                                                             '()))
                                                 '())
                                           (cons _%check-values141606%_
                                                 (cons _%tmp141604%_ '()))))
                               '()))
                   _%bind141509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147217
                                                 _%refs141608%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146457146458%_))
                                        (let ((_%e141540141618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146457146458%_))))
                                          (let ((_%tl141542141623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141540141618%_)))
                                                (_%hd141541141621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141540141618%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141541141621%_))
                                                (let ((_%e141543141626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141541141621%_))))
                                                  (let ((_%tl141545141631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141543141626%_)))
                                                        (_%hd141544141629%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141543141626%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141545141631%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141542141623%_))
                                                            (let ((_%e141546141634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141542141623%_))))
                      (let ((_%tl141548141639%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141546141634%_)))
                            (_%hd141547141637%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141546141634%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141548141639%_))
                            (_%__kont146459146460%_
                             _%hd141547141637%_
                             _%hd141544141629%_)
                            (let ()
                              (declare (not safe))
                              (_%g141536141561%_)))))
                    (let () (declare (not safe)) (_%g141536141561%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl141542141623%_))
                    (let ((_%e141554141574%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141542141623%_))))
                      (let ((_%tl141556141579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141554141574%_)))
                            (_%hd141555141577%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141554141574%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141556141579%_))
                            (_%__kont146461146462%_
                             _%hd141555141577%_
                             _%hd141541141621%_)
                            (let ()
                              (declare (not safe))
                              (_%g141536141561%_)))))
                    (let () (declare (not safe)) (_%g141536141561%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141542141623%_))
                                                    (let ((_%e141554141574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141542141623%_))))
                                                      (let ((_%tl141556141579%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141554141574%_)))
                    (_%hd141555141577%_
                     (let () (declare (not safe)) (##car _%e141554141574%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141556141579%_))
                    (_%__kont146461146462%_
                     _%hd141555141577%_
                     _%hd141541141621%_)
                    (let () (declare (not safe)) (_%g141536141561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141536141561%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141536141561%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141510141518%_))
                            (let ((_%hd141515141666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141510141518%_)))
                                  (_%tl141516141668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141510141518%_))))
                              (let* ((_%hd-bind141671%_ _%hd141515141666%_)
                                     (_%rest141673%_ _%tl141516141668%_))
                                (_%K141514141663%_
                                 _%rest141673%_
                                 _%hd-bind141671%_)))
                            (_%else141512141529%_))))))
                 (_%generate-letrec?141261%_
                  (lambda (_%hd141393%_)
                    (let _%lp141395%_ ((_%rest141397%_ _%hd141393%_))
                      (let* ((_%rest141398141406%_ _%rest141397%_)
                             (_%else141400141414%_ (lambda () '#t))
                             (_%K141402141491%_
                              (lambda (_%rest141417%_ _%hd-bind141418%_)
                                (let* ((_%g141420141437%_
                                        (lambda (_%g141421141434%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g141421141434%_))))
                                       (_%g141419141488%_
                                        (lambda (_%g141421141440%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g141421141440%_))
                                              (let ((_%e141424141442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g141421141440%_))))
                                                (let ((_%hd141425141445%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141424141442%_)))
                                                      (_%tl141426141447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141424141442%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd141425141445%_))
                                                      (let ((_%e141427141450%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd141425141445%_))))
                (let ((_%hd141428141453%_
                       (let () (declare (not safe)) (##car _%e141427141450%_)))
                      (_%tl141429141455%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141427141450%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141429141455%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141426141447%_))
                          (let ((_%e141430141458%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141426141447%_))))
                            (let ((_%hd141431141461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141430141458%_)))
                                  (_%tl141432141463%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141430141458%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141432141463%_))
                                  ((lambda (_%L141466%_ _%L141467%_)
                                     (if (_%is-lambda-expr?141262%_
                                          _%L141466%_)
                                         (_%lp141395%_ _%rest141417%_)
                                         '#f))
                                   _%hd141431141461%_
                                   _%hd141428141453%_)
                                  (_%g141420141437%_ _%g141421141440%_))))
                          (_%g141420141437%_ _%g141421141440%_))
                      (_%g141420141437%_ _%g141421141440%_))))
              (_%g141420141437%_ _%g141421141440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141420141437%_
                                               _%g141421141440%_)))))
                                  (_%g141419141488%_ _%hd-bind141418%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141398141406%_))
                            (let ((_%hd141403141494%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141398141406%_)))
                                  (_%tl141404141496%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141398141406%_))))
                              (let* ((_%hd-bind141499%_ _%hd141403141494%_)
                                     (_%rest141501%_ _%tl141404141496%_))
                                (_%K141402141491%_
                                 _%rest141501%_
                                 _%hd-bind141499%_)))
                            (_%else141400141414%_))))))
                 (_%is-lambda-expr?141262%_
                  (lambda (_%expr141330%_)
                    (let* ((_%__stx146501146502%_ _%expr141330%_)
                           (_%g141333141347%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146501146502%_)))))
                      (let ((_%__kont146503146504%_
                             (lambda (_%L141375%_ _%L141376%_) '#t))
                            (_%__kont146505146506%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx146501146502%_))
                            (let ((_%e141337141359%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx146501146502%_))))
                              (let ((_%tl141339141364%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141337141359%_)))
                                    (_%hd141338141362%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141337141359%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141338141362%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141338141362%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141339141364%_))
                                            (let ((_%e141340141367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141339141364%_))))
                                              (let ((_%tl141342141372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141340141367%_)))
                                                    (_%hd141341141370%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141340141367%_))))
                                                (_%__kont146503146504%_
                                                 _%tl141342141372%_
                                                 _%hd141341141370%_)))
                                            (_%__kont146505146506%_))
                                        (_%__kont146505146506%_))
                                    (_%__kont146505146506%_))))
                            (_%__kont146505146506%_)))))))
          (let* ((_%g141264141281%_
                  (lambda (_%g141265141278%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141265141278%_))))
                 (_%g141263141327%_
                  (lambda (_%g141265141284%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141265141284%_))
                        (let ((_%e141268141286%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141265141284%_))))
                          (let ((_%hd141269141289%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141268141286%_)))
                                (_%tl141270141291%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141268141286%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141270141291%_))
                                (let ((_%e141271141294%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141270141291%_))))
                                  (let ((_%hd141272141297%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141271141294%_)))
                                        (_%tl141273141299%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141271141294%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141273141299%_))
                                        (let ((_%e141274141302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141273141299%_))))
                                          (let ((_%hd141275141305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141274141302%_)))
                                                (_%tl141276141307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141274141302%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141276141307%_))
                                                ((lambda (_%L141310%_
                                                          _%L141311%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141311%_)
                                                       (if (_%generate-letrec?141261%_
                                                            _%L141311%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141257%_
                                                            'letrec
                                                            _%L141311%_
                                                            _%L141310%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141257%_
                                                            'letrec*
                                                            _%L141311%_
                                                            _%L141310%_
                                                            '#f))
                                                       (_%generate-values141260%_
                                                        _%L141311%_
                                                        _%L141310%_)))
                                                 _%hd141275141305%_
                                                 _%hd141272141297%_)
                                                (_%g141264141281%_
                                                 _%g141265141284%_))))
                                        (_%g141264141281%_
                                         _%g141265141284%_))))
                                (_%g141264141281%_ _%g141265141284%_))))
                        (_%g141264141281%_ _%g141265141284%_)))))
            (_%g141263141327%_ _%stx141258%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141194%_)
        (let _%lp141196%_ ((_%rest141198%_ _%hd141194%_))
          (let* ((_%rest141199141215%_ _%rest141198%_)
                 (_%else141202141223%_ (lambda () '#f)))
            (let ((_%K141205141236%_
                   (lambda (_%rest141234%_) (_%lp141196%_ _%rest141234%_)))
                  (_%K141204141228%_ (lambda () '#t)))
              (let ((_%try-match141201141231%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141199141215%_))
                           (_%K141204141228%_)
                           (_%else141202141223%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141199141215%_))
                    (let ((_%tl141207141241%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141199141215%_)))
                          (_%hd141206141239%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141199141215%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141206141239%_))
                          (let ((_%tl141209141246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141206141239%_)))
                                (_%hd141208141244%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141206141239%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141208141244%_))
                                (let ((_%tl141213141249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141208141244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141213141249%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141209141246%_))
                                          (let ((_%tl141211141252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141209141246%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141211141252%_))
                                                (let ((_%rest141255%_
                                                       _%tl141207141241%_))
                                                  (_%lp141196%_
                                                   _%rest141255%_))
                                                (_%else141202141223%_)))
                                          (_%else141202141223%_))
                                      (_%else141202141223%_)))
                                (_%else141202141223%_)))
                          (_%else141202141223%_)))
                    (_%try-match141201141231%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141105%_
               _%form141106%_
               _%hd141107%_
               _%body141108%_
               _%compiled-body?141109%_)
        (letrec ((_%generate1141111%_
                  (lambda (_%bind141150%_)
                    (let* ((_%bind141151141162%_ _%bind141150%_)
                           (_%E141153141166%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141151141162%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141154141172%_
                            (lambda (_%expr141169%_ _%id141170%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141170%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141105%_
                                             _%expr141169%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141151141162%_))
                          (let ((_%hd141155141175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141151141162%_)))
                                (_%tl141156141177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141151141162%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141155141175%_))
                                (let ((_%hd141159141180%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141155141175%_)))
                                      (_%tl141160141182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141155141175%_))))
                                  (let ((_%id141185%_ _%hd141159141180%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141160141182%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141156141177%_))
                                            (let ((_%hd141157141187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141156141177%_)))
                                                  (_%tl141158141189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141156141177%_))))
                                              (let ((_%expr141192%_
                                                     _%hd141157141187%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141158141189%_))
                                                    (_%K141154141172%_
                                                     _%expr141192%_
                                                     _%id141185%_)
                                                    (_%E141153141166%_))))
                                            (_%E141153141166%_))
                                        (_%E141153141166%_))))
                                (_%E141153141166%_)))
                          (_%E141153141166%_))))))
          (let* ((_%bind141113%_ (map _%generate1141111%_ _%hd141107%_))
                 (_%body141115%_
                  (if _%compiled-body?141109%_
                      _%body141108%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141105%_ _%body141108%_))))
                 (_%body141147%_
                  (let* ((_%body141116141124%_ _%body141115%_)
                         (_%else141118141132%_
                          (lambda () (cons _%body141115%_ '())))
                         (_%K141120141137%_
                          (lambda (_%exprs141135%_) _%exprs141135%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141116141124%_))
                        (let ((_%hd141121141140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141116141124%_)))
                              (_%tl141122141142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141116141124%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141121141140%_ 'begin))
                              (let ((_%exprs141145%_ _%tl141122141142%_))
                                (_%K141120141137%_ _%exprs141145%_))
                              (_%else141118141132%_)))
                        (_%else141118141132%_)))))
            (cons _%form141106%_ (cons _%bind141113%_ _%body141147%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self141005%_ _%stx141006%_)
        (letrec ((_%generate1141008%_
                  (lambda (_%datum141060%_)
                    (if (or (null? _%datum141060%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum141060%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum141060%_))
                            (eof-object? _%datum141060%_))
                        _%datum141060%_
                        (if (uninterned-symbol? _%datum141060%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum141060%_
                               '#t))
                            (if (pair? _%datum141060%_)
                                (cons (_%generate1141008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum141060%_)))
                                      (_%generate1141008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum141060%_))))
                                (if (box? _%datum141060%_)
                                    (box (_%generate1141008%_
                                          (unbox _%datum141060%_)))
                                    (if (vector? _%datum141060%_)
                                        (vector-map
                                         _%generate1141008%_
                                         _%datum141060%_)
                                        (if (or (s8vector? _%datum141060%_)
                                                (u8vector? _%datum141060%_)
                                                (s16vector? _%datum141060%_)
                                                (u16vector? _%datum141060%_)
                                                (s32vector? _%datum141060%_)
                                                (u32vector? _%datum141060%_)
                                                (s64vector? _%datum141060%_)
                                                (u64vector? _%datum141060%_)
                                                (f32vector? _%datum141060%_)
                                                (f64vector? _%datum141060%_))
                                            _%datum141060%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx141006%_)))))))))))
          (let* ((_%g141010141023%_
                  (lambda (_%g141011141020%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141011141020%_))))
                 (_%g141009141057%_
                  (lambda (_%g141011141026%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141011141026%_))
                        (let ((_%e141013141028%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141011141026%_))))
                          (let ((_%hd141014141031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141013141028%_)))
                                (_%tl141015141033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141013141028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141015141033%_))
                                (let ((_%e141016141036%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141015141033%_))))
                                  (let ((_%hd141017141039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141016141036%_)))
                                        (_%tl141018141041%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141016141036%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141018141041%_))
                                        ((lambda (_%L141044%_)
                                           (cons 'quote
                                                 (cons (_%generate1141008%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L141044%_)))
                                                       '())))
                                         _%hd141017141039%_)
                                        (_%g141010141023%_
                                         _%g141011141026%_))))
                                (_%g141010141023%_ _%g141011141026%_))))
                        (_%g141010141023%_ _%g141011141026%_)))))
            (_%g141009141057%_ _%stx141006%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self140446%_ _%stx140447%_)
        (letrec ((_%compile-call140449%_
                  (lambda (_%rator140738%_ _%rands140739%_)
                    (let ((_%rator140745%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self140446%_
                              _%rator140738%_)))
                          (_%rands140746%_
                           (map (lambda (_%g140740140742%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self140446%_
                                     _%g140740140742%_)))
                                _%rands140739%_)))
                      (let* ((_%__stx146548146549%_ _%rator140745%_)
                             (_%g140749140801%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146548146549%_)))))
                        (let ((_%__kont146550146551%_
                               (lambda (_%L140925%_
                                        _%L140926%_
                                        _%L140927%_
                                        _%L140928%_)
                                 (if (let ((__tmp147220
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands140746%_)))
                                           (__tmp147218
                                            (length (let ((__tmp147219
                                                           (lambda (_%g140964140967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140965140969%_)
                     (cons _%g140964140967%_ _%g140965140969%_))))
              (declare (not safe))
              (__foldr1 __tmp147219 '() _%L140927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147220 __tmp147218))
                                     (let* ((_%id140972%_ _%L140928%_)
                                            (_%args140981%_
                                             (let ((__tmp147221
                                                    (lambda (_%g140973140976%_
                                                             _%g140974140978%_)
                                                      (cons _%g140973140976%_
                                                            _%g140974140978%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147221
                                                '()
                                                _%L140927%_)))
                                            (_%body140990%_
                                             (let ((__tmp147222
                                                    (lambda (_%g140982140985%_
                                                             _%g140983140987%_)
                                                      (cons _%g140982140985%_
                                                            _%g140983140987%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147222
                                                '()
                                                _%L140926%_)))
                                            (_%init140992%_
                                             (map list
                                                  _%args140981%_
                                                  _%rands140746%_)))
                                       (cons 'let
                                             (cons _%id140972%_
                                                   (cons _%init140992%_
                                                         _%body140990%_))))
                                     (let ((__tmp147223
                                            (let ((__tmp147224
                                                   (lambda (_%g140994140997%_
                                                            _%g140995140999%_)
                                                     (cons _%g140994140997%_
                                                           _%g140995140999%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147224
                                               '()
                                               _%L140927%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx140447%_
                                        __tmp147223
                                        _%rands140746%_)))))
                              (_%__kont146556146557%_
                               (lambda ()
                                 (cons _%rator140745%_ _%rands140746%_))))
                          (let ((_%__match146615146616%_
                                 (lambda (_%e140755140813%_
                                          _%hd140756140816%_
                                          _%tl140757140818%_
                                          _%e140758140821%_
                                          _%hd140759140824%_
                                          _%tl140760140826%_
                                          _%e140761140829%_
                                          _%hd140762140832%_
                                          _%tl140763140834%_
                                          _%e140764140837%_
                                          _%hd140765140840%_
                                          _%tl140766140842%_
                                          _%e140767140845%_
                                          _%hd140768140848%_
                                          _%tl140769140850%_
                                          _%e140770140853%_
                                          _%hd140771140856%_
                                          _%tl140772140858%_
                                          _%e140773140861%_
                                          _%hd140774140864%_
                                          _%tl140775140866%_
                                          _%__splice146552146553%_
                                          _%target140776140869%_
                                          _%tl140778140871%_)
                                   (letrec ((_%loop140779140874%_
                                             (lambda (_%hd140777140877%_
                                                      _%arg140783140879%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd140777140877%_))
                                                   (let ((_%e140780140882%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd140777140877%_))))
                                                     (let ((_%lp-tl140782140887%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e140780140882%_)))
                                                           (_%lp-hd140781140885%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e140780140882%_))))
                                                       (_%loop140779140874%_
                                                        _%lp-tl140782140887%_
                                                        (cons _%lp-hd140781140885%_
                                                              _%arg140783140879%_))))
                                                   (let ((_%arg140784140890%_
                                                          (reverse _%arg140783140879%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl140775140866%_))
                                                         (let ((_%__splice146554146555%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl140775140866%_ '0))))
                   (let ((_%tl140787140895%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146554146555%_ '1)))
                         (_%target140785140893%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146554146555%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140787140895%_))
                         (letrec ((_%loop140788140898%_
                                   (lambda (_%hd140786140901%_
                                            _%body140792140903%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd140786140901%_))
                                         (let ((_%e140789140906%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd140786140901%_))))
                                           (let ((_%lp-tl140791140911%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140789140906%_)))
                                                 (_%lp-hd140790140909%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140789140906%_))))
                                             (_%loop140788140898%_
                                              _%lp-tl140791140911%_
                                              (cons _%lp-hd140790140909%_
                                                    _%body140792140903%_))))
                                         (let ((_%body140793140914%_
                                                (reverse _%body140792140903%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl140769140850%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl140763140834%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl140760140826%_))
                                                       (let ((_%e140794140917%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl140760140826%_))))
                 (let ((_%tl140796140922%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e140794140917%_)))
                       (_%hd140795140920%_
                        (let ()
                          (declare (not safe))
                          (##car _%e140794140917%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl140796140922%_))
                       (let ((_%L140925%_ _%hd140795140920%_)
                             (_%L140926%_ _%body140793140914%_)
                             (_%L140927%_ _%arg140784140890%_)
                             (_%L140928%_ _%hd140765140840%_))
                         (if (eq? _%L140928%_ _%L140925%_)
                             (_%__kont146550146551%_
                              _%L140925%_
                              _%L140926%_
                              _%L140927%_
                              _%L140928%_)
                             (_%__kont146556146557%_)))
                       (_%__kont146556146557%_))))
               (_%__kont146556146557%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146556146557%_))
                                               (_%__kont146556146557%_)))))))
                           (_%loop140788140898%_ _%target140785140893%_ '()))
                         (_%__kont146556146557%_))))
                 (_%__kont146556146557%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop140779140874%_
                                      _%target140776140869%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146548146549%_))
                                (let ((_%e140755140813%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146548146549%_))))
                                  (let ((_%tl140757140818%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140755140813%_)))
                                        (_%hd140756140816%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140755140813%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140756140816%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd140756140816%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140757140818%_))
                                                (let ((_%e140758140821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140757140818%_))))
                                                  (let ((_%tl140760140826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140758140821%_)))
                                                        (_%hd140759140824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140758140821%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd140759140824%_))
                                                        (let ((_%e140761140829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd140759140824%_))))
                  (let ((_%tl140763140834%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140761140829%_)))
                        (_%hd140762140832%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140761140829%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140762140832%_))
                        (let ((_%e140764140837%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140762140832%_))))
                          (let ((_%tl140766140842%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140764140837%_)))
                                (_%hd140765140840%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140764140837%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140766140842%_))
                                (let ((_%e140767140845%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140766140842%_))))
                                  (let ((_%tl140769140850%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140767140845%_)))
                                        (_%hd140768140848%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140767140845%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd140768140848%_))
                                        (let ((_%e140770140853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd140768140848%_))))
                                          (let ((_%tl140772140858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140770140853%_)))
                                                (_%hd140771140856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140770140853%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd140771140856%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd140771140856%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140772140858%_))
                                                        (let ((_%e140773140861%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140772140858%_))))
                  (let ((_%tl140775140866%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140773140861%_)))
                        (_%hd140774140864%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140773140861%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd140774140864%_))
                        (let ((_%__splice146552146553%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd140774140864%_
                                  '0))))
                          (let ((_%tl140778140871%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice146552146553%_ '1)))
                                (_%target140776140869%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice146552146553%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140778140871%_))
                                (_%__match146615146616%_
                                 _%e140755140813%_
                                 _%hd140756140816%_
                                 _%tl140757140818%_
                                 _%e140758140821%_
                                 _%hd140759140824%_
                                 _%tl140760140826%_
                                 _%e140761140829%_
                                 _%hd140762140832%_
                                 _%tl140763140834%_
                                 _%e140764140837%_
                                 _%hd140765140840%_
                                 _%tl140766140842%_
                                 _%e140767140845%_
                                 _%hd140768140848%_
                                 _%tl140769140850%_
                                 _%e140770140853%_
                                 _%hd140771140856%_
                                 _%tl140772140858%_
                                 _%e140773140861%_
                                 _%hd140774140864%_
                                 _%tl140775140866%_
                                 _%__splice146552146553%_
                                 _%target140776140869%_
                                 _%tl140778140871%_)
                                (_%__kont146556146557%_))))
                        (_%__kont146556146557%_))))
                (_%__kont146556146557%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146556146557%_))
                                                (_%__kont146556146557%_))))
                                        (_%__kont146556146557%_))))
                                (_%__kont146556146557%_))))
                        (_%__kont146556146557%_))))
                (_%__kont146556146557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146556146557%_))
                                            (_%__kont146556146557%_))
                                        (_%__kont146556146557%_))))
                                (_%__kont146556146557%_)))))))))
          (let* ((_%g140451140474%_
                  (lambda (_%g140452140471%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140452140471%_))))
                 (_%g140450140735%_
                  (lambda (_%g140452140477%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140452140477%_))
                        (let ((_%e140455140479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140452140477%_))))
                          (let ((_%hd140456140482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140455140479%_)))
                                (_%tl140457140484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140455140479%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140457140484%_))
                                (let ((_%e140458140487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140457140484%_))))
                                  (let ((_%hd140459140490%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140458140487%_)))
                                        (_%tl140460140492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140458140487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl140460140492%_))
                                        (let ((_g147225_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl140460140492%_
                                                  '0))))
                                          (begin
                                            (let ((_g147226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147225_)
                                                         (##vector-length
                                                          _g147225_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147226_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147226_)))
                                            (let ((_%target140461140495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147225_
                                                      0)))
                                                  (_%tl140463140497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147225_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140463140497%_))
                                                  (letrec ((_%loop140464140500%_
                                                            (lambda (_%hd140462140503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand140468140505%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd140462140503%_))
                          (let ((_%e140465140508%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd140462140503%_))))
                            (let ((_%lp-hd140466140511%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140465140508%_)))
                                  (_%lp-tl140467140513%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140465140508%_))))
                              (_%loop140464140500%_
                               _%lp-tl140467140513%_
                               (cons _%lp-hd140466140511%_
                                     _%rand140468140505%_))))
                          (let ((_%rand140469140516%_
                                 (reverse _%rand140468140505%_)))
                            ((lambda (_%L140519%_ _%L140520%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call140449%_
                                    _%L140520%_
                                    (let ((__tmp147227
                                           (lambda (_%g140537140540%_
                                                    _%g140538140542%_)
                                             (cons _%g140537140540%_
                                                   _%g140538140542%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147227 '() _%L140519%_)))
                                   (let* ((_%__stx146664146665%_ _%L140520%_)
                                          (_%g140546140558%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx146664146665%_)))))
                                     (let ((_%__kont146666146667%_
                                            (lambda ()
                                              (let ((_%f140595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140446%_
                                                        _%L140520%_))))
                                                (if (and (let ((__tmp147228
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f140595%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147228))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f140595%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp140597%_ ((_%rest140600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147230
                                                (lambda (_%g140717140720%_
                                                         _%g140718140722%_)
                                                  (cons _%g140717140720%_
                                                        _%g140718140722%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147230
                                            '()
                                            _%L140519%_))))
                               (_%bind140602%_ '())
                               (_%args140603%_ '()))
              (let* ((_%rest140604140612%_ _%rest140600%_)
                     (_%else140606140620%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind140602%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f140595%_
                                                      _%args140603%_)
                                                '()))))))
                     (_%K140608140706%_
                      (lambda (_%rest140623%_ _%e140624%_)
                        (let* ((_%__stx146618146619%_ _%e140624%_)
                               (_%g140629140647%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx146618146619%_)))))
                          (let ((_%__kont146620146621%_
                                 (lambda ()
                                   (_%lp140597%_
                                    _%rest140623%_
                                    _%bind140602%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140624%_))
                                          _%args140603%_))))
                                (_%__kont146622146623%_
                                 (lambda ()
                                   (_%lp140597%_
                                    _%rest140623%_
                                    _%bind140602%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140624%_))
                                          _%args140603%_))))
                                (_%__kont146624146625%_
                                 (lambda ()
                                   (let ((_%tmp140654%_
                                          (let ((__tmp147229
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147229))))
                                     (_%lp140597%_
                                      _%rest140623%_
                                      (cons (cons _%tmp140654%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e140624%_))
                                                        '()))
                                            _%bind140602%_)
                                      (cons _%tmp140654%_ _%args140603%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146618146619%_))
                                (let ((_%e140631140685%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146618146619%_))))
                                  (let ((_%tl140633140690%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140631140685%_)))
                                        (_%hd140632140688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140631140685%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140632140688%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd140632140688%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140633140690%_))
                                                (let ((_%e140634140693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140633140690%_))))
                                                  (let ((_%tl140636140698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140634140693%_)))
                                                        (_%hd140635140696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140634140693%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140636140698%_))
                                                        (_%__kont146620146621%_)
                                                        (_%__kont146624146625%_))))
                                                (_%__kont146624146625%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd140632140688%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140633140690%_))
                                                    (let ((_%e140640140670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140633140690%_))))
                                                      (let ((_%tl140642140675%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140640140670%_)))
                    (_%hd140641140673%_
                     (let () (declare (not safe)) (##car _%e140640140670%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140642140675%_))
                    (_%__kont146622146623%_)
                    (_%__kont146624146625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146624146625%_))
                                                (_%__kont146624146625%_)))
                                        (_%__kont146624146625%_))))
                                (_%__kont146624146625%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest140604140612%_))
                    (let ((_%hd140609140709%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140604140612%_)))
                          (_%tl140610140711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140604140612%_))))
                      (let* ((_%e140714%_ _%hd140609140709%_)
                             (_%rest140716%_ _%tl140610140711%_))
                        (_%K140608140706%_ _%rest140716%_ _%e140714%_)))
                    (_%else140606140620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call140449%_
                                                     _%L140520%_
                                                     (let ((__tmp147231
                                                            (lambda (_%g140724140727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g140725140729%_)
                      (cons _%g140724140727%_ _%g140725140729%_))))
               (declare (not safe))
               (__foldr1 __tmp147231 '() _%L140519%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont146668146669%_
                                            (lambda ()
                                              (_%compile-call140449%_
                                               _%L140520%_
                                               (let ((__tmp147232
                                                      (lambda (_%g140564140567%_
                                                               _%g140565140569%_)
                                                        (cons _%g140564140567%_
                                                              _%g140565140569%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147232
                                                  '()
                                                  _%L140519%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx146664146665%_))
                                           (let ((_%e140548140577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx146664146665%_))))
                                             (let ((_%tl140550140582%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140548140577%_)))
                                                   (_%hd140549140580%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140548140577%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140549140580%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd140549140580%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl140550140582%_))
                                                           (let ((_%e140551140585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl140550140582%_))))
                     (let ((_%tl140553140590%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e140551140585%_)))
                           (_%hd140552140588%_
                            (let ()
                              (declare (not safe))
                              (##car _%e140551140585%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl140553140590%_))
                           (_%__kont146666146667%_)
                           (_%__kont146668146669%_))))
                   (_%__kont146668146669%_))
               (_%__kont146668146669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146668146669%_))))
                                           (_%__kont146668146669%_))))))
                             _%rand140469140516%_
                             _%hd140459140490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop140464140500%_
                                                     _%target140461140495%_
                                                     '()))
                                                  (_%g140451140474%_
                                                   _%g140452140477%_)))))
                                        (_%g140451140474%_
                                         _%g140452140477%_))))
                                (_%g140451140474%_ _%g140452140477%_))))
                        (_%g140451140474%_ _%g140452140477%_)))))
            (_%g140450140735%_ _%stx140447%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140189%_ _%stx140190%_)
        (let* ((_%__stx146736146737%_ _%stx140190%_)
               (_%g140193140222%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146736146737%_)))))
          (let ((_%__kont146738146739%_
                 (lambda (_%L140290%_ _%L140291%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140189%_
                        _%stx140190%_)
                       (let ((_%f140313%_
                              (let ((__tmp147233
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140291%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140189%_
                                 __tmp147233))))
                         (let _%lp140315%_ ((_%rest140318%_
                                             (reverse (let ((__tmp147235
                                                             (lambda (_%g140435140438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140436140440%_)
                       (cons _%g140435140438%_ _%g140436140440%_))))
                (declare (not safe))
                (__foldr1 __tmp147235 '() _%L140290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140320%_ '())
                                            (_%args140321%_ '()))
                           (let* ((_%rest140322140330%_ _%rest140318%_)
                                  (_%else140324140338%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140320%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140321%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140326140424%_
                                   (lambda (_%rest140341%_ _%e140342%_)
                                     (let* ((_%__stx146690146691%_ _%e140342%_)
                                            (_%g140347140365%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx146690146691%_)))))
                                       (let ((_%__kont146692146693%_
                                              (lambda ()
                                                (_%lp140315%_
                                                 _%rest140341%_
                                                 _%bind140320%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140342%_))
                                                       _%args140321%_))))
                                             (_%__kont146694146695%_
                                              (lambda ()
                                                (_%lp140315%_
                                                 _%rest140341%_
                                                 _%bind140320%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140342%_))
                                                       _%args140321%_))))
                                             (_%__kont146696146697%_
                                              (lambda ()
                                                (let ((_%tmp140372%_
                                                       (let ((__tmp147234
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140315%_
                                                   _%rest140341%_
                                                   (cons (cons _%tmp140372%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140342%_))
                             '()))
                 _%bind140320%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140372%_
                                                         _%args140321%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx146690146691%_))
                                             (let ((_%e140349140403%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx146690146691%_))))
                                               (let ((_%tl140351140408%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140349140403%_)))
                                                     (_%hd140350140406%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140349140403%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140350140406%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140350140406%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140351140408%_))
                     (let ((_%e140352140411%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140351140408%_))))
                       (let ((_%tl140354140416%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140352140411%_)))
                             (_%hd140353140414%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140352140411%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140354140416%_))
                             (_%__kont146692146693%_)
                             (_%__kont146696146697%_))))
                     (_%__kont146696146697%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140350140406%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140351140408%_))
                         (let ((_%e140358140388%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140351140408%_))))
                           (let ((_%tl140360140393%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140358140388%_)))
                                 (_%hd140359140391%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140358140388%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140360140393%_))
                                 (_%__kont146694146695%_)
                                 (_%__kont146696146697%_))))
                         (_%__kont146696146697%_))
                     (_%__kont146696146697%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146696146697%_))))
                                             (_%__kont146696146697%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140322140330%_))
                                 (let ((_%hd140327140427%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140322140330%_)))
                                       (_%tl140328140429%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140322140330%_))))
                                   (let* ((_%e140432%_ _%hd140327140427%_)
                                          (_%rest140434%_ _%tl140328140429%_))
                                     (_%K140326140424%_
                                      _%rest140434%_
                                      _%e140432%_)))
                                 (_%else140324140338%_))))))))
                (_%__kont146742146743%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140189%_ _%stx140190%_))))
            (let ((_%__match146781146782%_
                   (lambda (_%e140197140234%_
                            _%hd140198140237%_
                            _%tl140199140239%_
                            _%e140200140242%_
                            _%hd140201140245%_
                            _%tl140202140247%_
                            _%e140203140250%_
                            _%hd140204140253%_
                            _%tl140205140255%_
                            _%e140206140258%_
                            _%hd140207140261%_
                            _%tl140208140263%_
                            _%__splice146740146741%_
                            _%target140209140266%_
                            _%tl140211140268%_)
                     (letrec ((_%loop140212140271%_
                               (lambda (_%hd140210140274%_
                                        _%rand140216140276%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140210140274%_))
                                     (let ((_%e140213140279%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140210140274%_))))
                                       (let ((_%lp-tl140215140284%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140213140279%_)))
                                             (_%lp-hd140214140282%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140213140279%_))))
                                         (_%loop140212140271%_
                                          _%lp-tl140215140284%_
                                          (cons _%lp-hd140214140282%_
                                                _%rand140216140276%_))))
                                     (let ((_%rand140217140287%_
                                            (reverse _%rand140216140276%_)))
                                       (_%__kont146738146739%_
                                        _%rand140217140287%_
                                        _%hd140207140261%_))))))
                       (_%loop140212140271%_ _%target140209140266%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146736146737%_))
                  (let ((_%e140197140234%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146736146737%_))))
                    (let ((_%tl140199140239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140197140234%_)))
                          (_%hd140198140237%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140197140234%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140199140239%_))
                          (let ((_%e140200140242%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140199140239%_))))
                            (let ((_%tl140202140247%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140200140242%_)))
                                  (_%hd140201140245%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140200140242%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140201140245%_))
                                  (let ((_%e140203140250%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140201140245%_))))
                                    (let ((_%tl140205140255%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140203140250%_)))
                                          (_%hd140204140253%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140203140250%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140204140253%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140204140253%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140205140255%_))
                                                  (let ((_%e140206140258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140205140255%_))))
                                                    (let ((_%tl140208140263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140206140258%_)))
                                                          (_%hd140207140261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140206140258%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140208140263%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140202140247%_))
                      (let ((_%__splice146740146741%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140202140247%_
                                '0))))
                        (let ((_%tl140211140268%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146740146741%_ '1)))
                              (_%target140209140266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146740146741%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140211140268%_))
                              (_%__match146781146782%_
                               _%e140197140234%_
                               _%hd140198140237%_
                               _%tl140199140239%_
                               _%e140200140242%_
                               _%hd140201140245%_
                               _%tl140202140247%_
                               _%e140203140250%_
                               _%hd140204140253%_
                               _%tl140205140255%_
                               _%e140206140258%_
                               _%hd140207140261%_
                               _%tl140208140263%_
                               _%__splice146740146741%_
                               _%target140209140266%_
                               _%tl140211140268%_)
                              (_%__kont146742146743%_))))
                      (_%__kont146742146743%_))
                  (_%__kont146742146743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146742146743%_))
                                              (_%__kont146742146743%_))
                                          (_%__kont146742146743%_))))
                                  (_%__kont146742146743%_))))
                          (_%__kont146742146743%_))))
                  (_%__kont146742146743%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self140001%_ _%stx140002%_)
        (letrec ((_%simplify140004%_
                  (lambda (_%code140089%_)
                    (let* ((_%code140090140108%_ _%code140089%_)
                           (_%else140092140116%_ (lambda () _%code140089%_))
                           (_%K140094140152%_
                            (lambda (_%expr140119%_ _%test140120%_)
                              (let* ((_%expr140121140129%_ _%expr140119%_)
                                     (_%else140123140137%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140120%_
                                                    (cons _%expr140119%_
                                                          '())))))
                                     (_%K140125140142%_
                                      (lambda (_%exprs140140%_)
                                        (cons 'and
                                              (cons _%test140120%_
                                                    _%exprs140140%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140121140129%_))
                                    (let ((_%hd140126140145%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140121140129%_)))
                                          (_%tl140127140147%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140121140129%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140126140145%_ 'and))
                                          (let ((_%exprs140150%_
                                                 _%tl140127140147%_))
                                            (_%K140125140142%_
                                             _%exprs140150%_))
                                          (_%else140123140137%_)))
                                    (_%else140123140137%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140090140108%_))
                          (let ((_%hd140095140155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140090140108%_)))
                                (_%tl140096140157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140090140108%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140095140155%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140096140157%_))
                                    (let ((_%hd140097140160%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140096140157%_)))
                                          (_%tl140098140162%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140096140157%_))))
                                      (let ((_%test140165%_
                                             _%hd140097140160%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140098140162%_))
                                            (let ((_%hd140099140167%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140098140162%_)))
                                                  (_%tl140100140169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140098140162%_))))
                                              (let ((_%expr140172%_
                                                     _%hd140099140167%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140100140169%_))
                                                    (let ((_%hd140101140174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140100140169%_)))
                                                          (_%tl140102140176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140100140169%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140101140174%_))
                                                          (let ((_%hd140103140179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140101140174%_)))
                        (_%tl140104140181%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140101140174%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140103140179%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140104140181%_))
                            (let ((_%hd140105140184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140104140181%_)))
                                  (_%tl140106140186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140104140181%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140105140184%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140106140186%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140102140176%_))
                                          (_%K140094140152%_
                                           _%expr140172%_
                                           _%test140165%_)
                                          (_%else140092140116%_))
                                      (_%else140092140116%_))
                                  (_%else140092140116%_)))
                            (_%else140092140116%_))
                        (_%else140092140116%_)))
                  (_%else140092140116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140092140116%_))))
                                            (_%else140092140116%_))))
                                    (_%else140092140116%_))
                                (_%else140092140116%_)))
                          (_%else140092140116%_))))))
          (let* ((_%g140006140027%_
                  (lambda (_%g140007140024%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140007140024%_))))
                 (_%g140005140086%_
                  (lambda (_%g140007140030%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140007140030%_))
                        (let ((_%e140011140032%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140007140030%_))))
                          (let ((_%hd140012140035%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140011140032%_)))
                                (_%tl140013140037%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140011140032%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140013140037%_))
                                (let ((_%e140014140040%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140013140037%_))))
                                  (let ((_%hd140015140043%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140014140040%_)))
                                        (_%tl140016140045%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140014140040%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140016140045%_))
                                        (let ((_%e140017140048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140016140045%_))))
                                          (let ((_%hd140018140051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140017140048%_)))
                                                (_%tl140019140053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140017140048%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140019140053%_))
                                                (let ((_%e140020140056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140019140053%_))))
                                                  (let ((_%hd140021140059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140020140056%_)))
                                                        (_%tl140022140061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140020140056%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140022140061%_))
                                                        ((lambda (_%L140064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140065%_
                          _%L140066%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify140004%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self140001%_
                                       _%L140066%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self140001%_
                                             _%L140065%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self140001%_
                                                   _%L140064%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147236
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140001%_
                                               _%L140066%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147236
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140001%_
                                            _%L140065%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140001%_
                                                  _%L140064%_))
                                               '()))))))
                 _%hd140021140059%_
                 _%hd140018140051%_
                 _%hd140015140043%_)
                (_%g140006140027%_ _%g140007140030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g140006140027%_
                                                 _%g140007140030%_))))
                                        (_%g140006140027%_
                                         _%g140007140030%_))))
                                (_%g140006140027%_ _%g140007140030%_))))
                        (_%g140006140027%_ _%g140007140030%_)))))
            (_%g140005140086%_ _%stx140002%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self139949%_ _%stx139950%_)
        (let* ((_%g139952139965%_
                (lambda (_%g139953139962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139953139962%_))))
               (_%g139951139998%_
                (lambda (_%g139953139968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139953139968%_))
                      (let ((_%e139955139970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139953139968%_))))
                        (let ((_%hd139956139973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139955139970%_)))
                              (_%tl139957139975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139955139970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139957139975%_))
                              (let ((_%e139958139978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139957139975%_))))
                                (let ((_%hd139959139981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139958139978%_)))
                                      (_%tl139960139983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139958139978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139960139983%_))
                                      ((lambda (_%L139986%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L139986%_)))
                                       _%hd139959139981%_)
                                      (_%g139952139965%_ _%g139953139968%_))))
                              (_%g139952139965%_ _%g139953139968%_))))
                      (_%g139952139965%_ _%g139953139968%_)))))
          (_%g139951139998%_ _%stx139950%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self139881%_ _%stx139882%_)
        (let* ((_%g139884139901%_
                (lambda (_%g139885139898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139885139898%_))))
               (_%g139883139946%_
                (lambda (_%g139885139904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139885139904%_))
                      (let ((_%e139888139906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139885139904%_))))
                        (let ((_%hd139889139909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139888139906%_)))
                              (_%tl139890139911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139888139906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139890139911%_))
                              (let ((_%e139891139914%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139890139911%_))))
                                (let ((_%hd139892139917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139891139914%_)))
                                      (_%tl139893139919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139891139914%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139893139919%_))
                                      (let ((_%e139894139922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139893139919%_))))
                                        (let ((_%hd139895139925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139894139922%_)))
                                              (_%tl139896139927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139894139922%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139896139927%_))
                                              ((lambda (_%L139930%_
                                                        _%L139931%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L139931%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self139881%_ _%L139930%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139895139925%_
                                               _%hd139892139917%_)
                                              (_%g139884139901%_
                                               _%g139885139904%_))))
                                      (_%g139884139901%_ _%g139885139904%_))))
                              (_%g139884139901%_ _%g139885139904%_))))
                      (_%g139884139901%_ _%g139885139904%_)))))
          (_%g139883139946%_ _%stx139882%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self139692%_ _%stx139693%_)
        (let* ((_%g139695139712%_
                (lambda (_%g139696139709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139696139709%_))))
               (_%g139694139878%_
                (lambda (_%g139696139715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139696139715%_))
                      (let ((_%e139699139717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139696139715%_))))
                        (let ((_%hd139700139720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139699139717%_)))
                              (_%tl139701139722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139699139717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139701139722%_))
                              (let ((_%e139702139725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139701139722%_))))
                                (let ((_%hd139703139728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139702139725%_)))
                                      (_%tl139704139730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139702139725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139704139730%_))
                                      (let ((_%e139705139733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139704139730%_))))
                                        (let ((_%hd139706139736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139705139733%_)))
                                              (_%tl139707139738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139705139733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139707139738%_))
                                              ((lambda (_%L139741%_
                                                        _%L139742%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139692%_ _%L139741%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139692%_ _%L139742%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139757%_ ((_%rest139760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139742%_ (cons _%L139741%_ '())))
                                (_%bind139762%_ '())
                                (_%args139763%_ '()))
               (let* ((_%rest139764139772%_ _%rest139760%_)
                      (_%else139766139780%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139762%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args139763%_)
                                                 '()))))))
                      (_%K139768139866%_
                       (lambda (_%rest139783%_ _%e139784%_)
                         (let* ((_%__stx146784146785%_ _%e139784%_)
                                (_%g139789139807%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146784146785%_)))))
                           (let ((_%__kont146786146787%_
                                  (lambda ()
                                    (_%lp139757%_
                                     _%rest139783%_
                                     _%bind139762%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139784%_))
                                           _%args139763%_))))
                                 (_%__kont146788146789%_
                                  (lambda ()
                                    (_%lp139757%_
                                     _%rest139783%_
                                     _%bind139762%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139784%_))
                                           _%args139763%_))))
                                 (_%__kont146790146791%_
                                  (lambda ()
                                    (let ((_%tmp139814%_
                                           (let ((__tmp147237
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147237))))
                                      (_%lp139757%_
                                       _%rest139783%_
                                       (cons (cons _%tmp139814%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139784%_))
                                                         '()))
                                             _%bind139762%_)
                                       (cons _%tmp139814%_ _%args139763%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146784146785%_))
                                 (let ((_%e139791139845%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146784146785%_))))
                                   (let ((_%tl139793139850%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139791139845%_)))
                                         (_%hd139792139848%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139791139845%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139792139848%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139792139848%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139793139850%_))
                                                 (let ((_%e139794139853%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139793139850%_))))
                                                   (let ((_%tl139796139858%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139794139853%_)))
                                                         (_%hd139795139856%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139794139853%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139796139858%_))
                                                         (_%__kont146786146787%_)
                                                         (_%__kont146790146791%_))))
                                                 (_%__kont146790146791%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139792139848%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139793139850%_))
                                                     (let ((_%e139800139830%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139793139850%_))))
                                                       (let ((_%tl139802139835%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139800139830%_)))
                     (_%hd139801139833%_
                      (let () (declare (not safe)) (##car _%e139800139830%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139802139835%_))
                     (_%__kont146788146789%_)
                     (_%__kont146790146791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146790146791%_))
                                                 (_%__kont146790146791%_)))
                                         (_%__kont146790146791%_))))
                                 (_%__kont146790146791%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139764139772%_))
                     (let ((_%hd139769139869%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139764139772%_)))
                           (_%tl139770139871%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139764139772%_))))
                       (let* ((_%e139874%_ _%hd139769139869%_)
                              (_%rest139876%_ _%tl139770139871%_))
                         (_%K139768139866%_ _%rest139876%_ _%e139874%_)))
                     (_%else139766139780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139706139736%_
                                               _%hd139703139728%_)
                                              (_%g139695139712%_
                                               _%g139696139715%_))))
                                      (_%g139695139712%_ _%g139696139715%_))))
                              (_%g139695139712%_ _%g139696139715%_))))
                      (_%g139695139712%_ _%g139696139715%_)))))
          (_%g139694139878%_ _%stx139693%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self139503%_ _%stx139504%_)
        (let* ((_%g139506139523%_
                (lambda (_%g139507139520%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139507139520%_))))
               (_%g139505139689%_
                (lambda (_%g139507139526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139507139526%_))
                      (let ((_%e139510139528%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139507139526%_))))
                        (let ((_%hd139511139531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139510139528%_)))
                              (_%tl139512139533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139510139528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139512139533%_))
                              (let ((_%e139513139536%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139512139533%_))))
                                (let ((_%hd139514139539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139513139536%_)))
                                      (_%tl139515139541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139513139536%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139515139541%_))
                                      (let ((_%e139516139544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139515139541%_))))
                                        (let ((_%hd139517139547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139516139544%_)))
                                              (_%tl139518139549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139516139544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139518139549%_))
                                              ((lambda (_%L139552%_
                                                        _%L139553%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139503%_ _%L139552%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139503%_ _%L139553%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139568%_ ((_%rest139571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139553%_ (cons _%L139552%_ '())))
                                (_%bind139573%_ '())
                                (_%args139574%_ '()))
               (let* ((_%rest139575139583%_ _%rest139571%_)
                      (_%else139577139591%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139573%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args139574%_)
                                                 '()))))))
                      (_%K139579139677%_
                       (lambda (_%rest139594%_ _%e139595%_)
                         (let* ((_%__stx146830146831%_ _%e139595%_)
                                (_%g139600139618%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146830146831%_)))))
                           (let ((_%__kont146832146833%_
                                  (lambda ()
                                    (_%lp139568%_
                                     _%rest139594%_
                                     _%bind139573%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139595%_))
                                           _%args139574%_))))
                                 (_%__kont146834146835%_
                                  (lambda ()
                                    (_%lp139568%_
                                     _%rest139594%_
                                     _%bind139573%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139595%_))
                                           _%args139574%_))))
                                 (_%__kont146836146837%_
                                  (lambda ()
                                    (let ((_%tmp139625%_
                                           (let ((__tmp147238
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147238))))
                                      (_%lp139568%_
                                       _%rest139594%_
                                       (cons (cons _%tmp139625%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139595%_))
                                                         '()))
                                             _%bind139573%_)
                                       (cons _%tmp139625%_ _%args139574%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146830146831%_))
                                 (let ((_%e139602139656%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146830146831%_))))
                                   (let ((_%tl139604139661%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139602139656%_)))
                                         (_%hd139603139659%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139602139656%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139603139659%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139603139659%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139604139661%_))
                                                 (let ((_%e139605139664%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139604139661%_))))
                                                   (let ((_%tl139607139669%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139605139664%_)))
                                                         (_%hd139606139667%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139605139664%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139607139669%_))
                                                         (_%__kont146832146833%_)
                                                         (_%__kont146836146837%_))))
                                                 (_%__kont146836146837%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139603139659%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139604139661%_))
                                                     (let ((_%e139611139641%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139604139661%_))))
                                                       (let ((_%tl139613139646%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139611139641%_)))
                     (_%hd139612139644%_
                      (let () (declare (not safe)) (##car _%e139611139641%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139613139646%_))
                     (_%__kont146834146835%_)
                     (_%__kont146836146837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146836146837%_))
                                                 (_%__kont146836146837%_)))
                                         (_%__kont146836146837%_))))
                                 (_%__kont146836146837%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139575139583%_))
                     (let ((_%hd139580139680%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139575139583%_)))
                           (_%tl139581139682%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139575139583%_))))
                       (let* ((_%e139685%_ _%hd139580139680%_)
                              (_%rest139687%_ _%tl139581139682%_))
                         (_%K139579139677%_ _%rest139687%_ _%e139685%_)))
                     (_%else139577139591%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139517139547%_
                                               _%hd139514139539%_)
                                              (_%g139506139523%_
                                               _%g139507139526%_))))
                                      (_%g139506139523%_ _%g139507139526%_))))
                              (_%g139506139523%_ _%g139507139526%_))))
                      (_%g139506139523%_ _%g139507139526%_)))))
          (_%g139505139689%_ _%stx139504%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self139419%_ _%stx139420%_)
        (let* ((_%g139422139443%_
                (lambda (_%g139423139440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139423139440%_))))
               (_%g139421139500%_
                (lambda (_%g139423139446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139423139446%_))
                      (let ((_%e139427139448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139423139446%_))))
                        (let ((_%hd139428139451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139427139448%_)))
                              (_%tl139429139453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139427139448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139429139453%_))
                              (let ((_%e139430139456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139429139453%_))))
                                (let ((_%hd139431139459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139430139456%_)))
                                      (_%tl139432139461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139430139456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139432139461%_))
                                      (let ((_%e139433139464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139432139461%_))))
                                        (let ((_%hd139434139467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139433139464%_)))
                                              (_%tl139435139469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139433139464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139435139469%_))
                                              (let ((_%e139436139472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139435139469%_))))
                                                (let ((_%hd139437139475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139436139472%_)))
                                                      (_%tl139438139477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139436139472%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139438139477%_))
                                                      ((lambda (_%L139480%_
                                                                _%L139481%_
                                                                _%L139482%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139419%_ _%L139480%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139419%_
                                      _%L139481%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139419%_
                                            _%L139482%_))
                                         (cons ''#f '()))))))
               _%hd139437139475%_
               _%hd139434139467%_
               _%hd139431139459%_)
              (_%g139422139443%_ _%g139423139446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139422139443%_
                                               _%g139423139446%_))))
                                      (_%g139422139443%_ _%g139423139446%_))))
                              (_%g139422139443%_ _%g139423139446%_))))
                      (_%g139422139443%_ _%g139423139446%_)))))
          (_%g139421139500%_ _%stx139420%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139319%_ _%stx139320%_)
        (let* ((_%g139322139347%_
                (lambda (_%g139323139344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139323139344%_))))
               (_%g139321139416%_
                (lambda (_%g139323139350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139323139350%_))
                      (let ((_%e139328139352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139323139350%_))))
                        (let ((_%hd139329139355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139328139352%_)))
                              (_%tl139330139357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139328139352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139330139357%_))
                              (let ((_%e139331139360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139330139357%_))))
                                (let ((_%hd139332139363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139331139360%_)))
                                      (_%tl139333139365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139331139360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139333139365%_))
                                      (let ((_%e139334139368%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139333139365%_))))
                                        (let ((_%hd139335139371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139334139368%_)))
                                              (_%tl139336139373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139334139368%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139336139373%_))
                                              (let ((_%e139337139376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139336139373%_))))
                                                (let ((_%hd139338139379%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139337139376%_)))
                                                      (_%tl139339139381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139337139376%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139339139381%_))
                                                      (let ((_%e139340139384%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139339139381%_))))
                (let ((_%hd139341139387%_
                       (let () (declare (not safe)) (##car _%e139340139384%_)))
                      (_%tl139342139389%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139340139384%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139342139389%_))
                      ((lambda (_%L139392%_
                                _%L139393%_
                                _%L139394%_
                                _%L139395%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139319%_
                                        _%L139393%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139319%_
                                              _%L139392%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139319%_
                                                    _%L139394%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139319%_
                                                          _%L139395%_))
                                                       (cons ''#f '())))))))
                       _%hd139341139387%_
                       _%hd139338139379%_
                       _%hd139335139371%_
                       _%hd139332139363%_)
                      (_%g139322139347%_ _%g139323139350%_))))
              (_%g139322139347%_ _%g139323139350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139322139347%_
                                               _%g139323139350%_))))
                                      (_%g139322139347%_ _%g139323139350%_))))
                              (_%g139322139347%_ _%g139323139350%_))))
                      (_%g139322139347%_ _%g139323139350%_)))))
          (_%g139321139416%_ _%stx139320%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139235%_ _%stx139236%_)
        (let* ((_%g139238139259%_
                (lambda (_%g139239139256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139239139256%_))))
               (_%g139237139316%_
                (lambda (_%g139239139262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139239139262%_))
                      (let ((_%e139243139264%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139239139262%_))))
                        (let ((_%hd139244139267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139243139264%_)))
                              (_%tl139245139269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139243139264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139245139269%_))
                              (let ((_%e139246139272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139245139269%_))))
                                (let ((_%hd139247139275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139246139272%_)))
                                      (_%tl139248139277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139246139272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139248139277%_))
                                      (let ((_%e139249139280%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139248139277%_))))
                                        (let ((_%hd139250139283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139249139280%_)))
                                              (_%tl139251139285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139249139280%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139251139285%_))
                                              (let ((_%e139252139288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139251139285%_))))
                                                (let ((_%hd139253139291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139252139288%_)))
                                                      (_%tl139254139293%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139252139288%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139254139293%_))
                                                      ((lambda (_%L139296%_
                                                                _%L139297%_
                                                                _%L139298%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139235%_ _%L139296%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139235%_
                                      _%L139297%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139235%_
                                            _%L139298%_))
                                         (cons ''#f '()))))))
               _%hd139253139291%_
               _%hd139250139283%_
               _%hd139247139275%_)
              (_%g139238139259%_ _%g139239139262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139238139259%_
                                               _%g139239139262%_))))
                                      (_%g139238139259%_ _%g139239139262%_))))
                              (_%g139238139259%_ _%g139239139262%_))))
                      (_%g139238139259%_ _%g139239139262%_)))))
          (_%g139237139316%_ _%stx139236%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139135%_ _%stx139136%_)
        (let* ((_%g139138139163%_
                (lambda (_%g139139139160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139139139160%_))))
               (_%g139137139232%_
                (lambda (_%g139139139166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139139139166%_))
                      (let ((_%e139144139168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139139139166%_))))
                        (let ((_%hd139145139171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139144139168%_)))
                              (_%tl139146139173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139144139168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139146139173%_))
                              (let ((_%e139147139176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139146139173%_))))
                                (let ((_%hd139148139179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139147139176%_)))
                                      (_%tl139149139181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139147139176%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139149139181%_))
                                      (let ((_%e139150139184%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139149139181%_))))
                                        (let ((_%hd139151139187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139150139184%_)))
                                              (_%tl139152139189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139150139184%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139152139189%_))
                                              (let ((_%e139153139192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139152139189%_))))
                                                (let ((_%hd139154139195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139153139192%_)))
                                                      (_%tl139155139197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139153139192%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139155139197%_))
                                                      (let ((_%e139156139200%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139155139197%_))))
                (let ((_%hd139157139203%_
                       (let () (declare (not safe)) (##car _%e139156139200%_)))
                      (_%tl139158139205%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139156139200%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139158139205%_))
                      ((lambda (_%L139208%_
                                _%L139209%_
                                _%L139210%_
                                _%L139211%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139135%_
                                        _%L139209%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139135%_
                                              _%L139208%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139135%_
                                                    _%L139210%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139135%_
                                                          _%L139211%_))
                                                       (cons ''#f '())))))))
                       _%hd139157139203%_
                       _%hd139154139195%_
                       _%hd139151139187%_
                       _%hd139148139179%_)
                      (_%g139138139163%_ _%g139139139166%_))))
              (_%g139138139163%_ _%g139139139166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139138139163%_
                                               _%g139139139166%_))))
                                      (_%g139138139163%_ _%g139139139166%_))))
                              (_%g139138139163%_ _%g139139139166%_))))
                      (_%g139138139163%_ _%g139139139166%_)))))
          (_%g139137139232%_ _%stx139136%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self138930%_ _%stx138931%_)
        (let* ((_%g138933138954%_
                (lambda (_%g138934138951%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138934138951%_))))
               (_%g138932139132%_
                (lambda (_%g138934138957%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138934138957%_))
                      (let ((_%e138938138959%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138934138957%_))))
                        (let ((_%hd138939138962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138938138959%_)))
                              (_%tl138940138964%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138938138959%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138940138964%_))
                              (let ((_%e138941138967%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138940138964%_))))
                                (let ((_%hd138942138970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138941138967%_)))
                                      (_%tl138943138972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138941138967%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138943138972%_))
                                      (let ((_%e138944138975%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138943138972%_))))
                                        (let ((_%hd138945138978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138944138975%_)))
                                              (_%tl138946138980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138944138975%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138946138980%_))
                                              (let ((_%e138947138983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138946138980%_))))
                                                (let ((_%hd138948138986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138947138983%_)))
                                                      (_%tl138949138988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138947138983%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138949138988%_))
                                                      ((lambda (_%L138991%_
                                                                _%L138992%_
                                                                _%L138993%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self138930%_
                                    _%L138991%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self138930%_
                                          _%L138992%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp139011%_ ((_%rest139014%_
                                         (cons _%L138992%_
                                               (cons _%L138991%_ '())))
                                        (_%bind139016%_ '())
                                        (_%args139017%_ '()))
                       (let* ((_%rest139018139026%_ _%rest139014%_)
                              (_%else139020139034%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind139016%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147239 _%args139017%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K139022139120%_
                               (lambda (_%rest139037%_ _%e139038%_)
                                 (let* ((_%__stx146876146877%_ _%e139038%_)
                                        (_%g139043139061%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146876146877%_)))))
                                   (let ((_%__kont146878146879%_
                                          (lambda ()
                                            (_%lp139011%_
                                             _%rest139037%_
                                             _%bind139016%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139038%_))
                                                   _%args139017%_))))
                                         (_%__kont146880146881%_
                                          (lambda ()
                                            (_%lp139011%_
                                             _%rest139037%_
                                             _%bind139016%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139038%_))
                                                   _%args139017%_))))
                                         (_%__kont146882146883%_
                                          (lambda ()
                                            (let ((_%tmp139068%_
                                                   (let ((__tmp147240
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147240))))
                                              (_%lp139011%_
                                               _%rest139037%_
                                               (cons (cons _%tmp139068%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e139038%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139016%_)
                                               (cons _%tmp139068%_
                                                     _%args139017%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146876146877%_))
                                         (let ((_%e139045139099%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146876146877%_))))
                                           (let ((_%tl139047139104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139045139099%_)))
                                                 (_%hd139046139102%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139045139099%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd139046139102%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd139046139102%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl139047139104%_))
                                                         (let ((_%e139048139107%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl139047139104%_))))
                   (let ((_%tl139050139112%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e139048139107%_)))
                         (_%hd139049139110%_
                          (let ()
                            (declare (not safe))
                            (##car _%e139048139107%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139050139112%_))
                         (_%__kont146878146879%_)
                         (_%__kont146882146883%_))))
                 (_%__kont146882146883%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd139046139102%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139047139104%_))
                     (let ((_%e139054139084%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139047139104%_))))
                       (let ((_%tl139056139089%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139054139084%_)))
                             (_%hd139055139087%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139054139084%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139056139089%_))
                             (_%__kont146880146881%_)
                             (_%__kont146882146883%_))))
                     (_%__kont146882146883%_))
                 (_%__kont146882146883%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146882146883%_))))
                                         (_%__kont146882146883%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest139018139026%_))
                             (let ((_%hd139023139123%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest139018139026%_)))
                                   (_%tl139024139125%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest139018139026%_))))
                               (let* ((_%e139128%_ _%hd139023139123%_)
                                      (_%rest139130%_ _%tl139024139125%_))
                                 (_%K139022139120%_
                                  _%rest139130%_
                                  _%e139128%_)))
                             (_%else139020139034%_))))))
               _%hd138948138986%_
               _%hd138945138978%_
               _%hd138942138970%_)
              (_%g138933138954%_ _%g138934138957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138933138954%_
                                               _%g138934138957%_))))
                                      (_%g138933138954%_ _%g138934138957%_))))
                              (_%g138933138954%_ _%g138934138957%_))))
                      (_%g138933138954%_ _%g138934138957%_)))))
          (_%g138932139132%_ _%stx138931%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self138709%_ _%stx138710%_)
        (let* ((_%g138712138737%_
                (lambda (_%g138713138734%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138713138734%_))))
               (_%g138711138927%_
                (lambda (_%g138713138740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138713138740%_))
                      (let ((_%e138718138742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138713138740%_))))
                        (let ((_%hd138719138745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138718138742%_)))
                              (_%tl138720138747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138718138742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138720138747%_))
                              (let ((_%e138721138750%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138720138747%_))))
                                (let ((_%hd138722138753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138721138750%_)))
                                      (_%tl138723138755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138721138750%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138723138755%_))
                                      (let ((_%e138724138758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138723138755%_))))
                                        (let ((_%hd138725138761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138724138758%_)))
                                              (_%tl138726138763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138724138758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138726138763%_))
                                              (let ((_%e138727138766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138726138763%_))))
                                                (let ((_%hd138728138769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138727138766%_)))
                                                      (_%tl138729138771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138727138766%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl138729138771%_))
                                                      (let ((_%e138730138774%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl138729138771%_))))
                (let ((_%hd138731138777%_
                       (let () (declare (not safe)) (##car _%e138730138774%_)))
                      (_%tl138732138779%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e138730138774%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl138732138779%_))
                      ((lambda (_%L138782%_
                                _%L138783%_
                                _%L138784%_
                                _%L138785%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138709%_
                                            _%L138783%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138709%_
                                                  _%L138782%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138709%_
                                                        _%L138784%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp138806%_ ((_%rest138809%_
                                                 (cons _%L138784%_
                                                       (cons _%L138782%_
                                                             (cons _%L138783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind138811%_ '())
                                                (_%args138812%_ '()))
                               (let* ((_%rest138813138821%_ _%rest138809%_)
                                      (_%else138815138829%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind138811%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147241 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147241 _%args138812%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K138817138915%_
                                       (lambda (_%rest138832%_ _%e138833%_)
                                         (let* ((_%__stx146922146923%_
                                                 _%e138833%_)
                                                (_%g138838138856%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx146922146923%_)))))
                                           (let ((_%__kont146924146925%_
                                                  (lambda ()
                                                    (_%lp138806%_
                                                     _%rest138832%_
                                                     _%bind138811%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138833%_))
                                                           _%args138812%_))))
                                                 (_%__kont146926146927%_
                                                  (lambda ()
                                                    (_%lp138806%_
                                                     _%rest138832%_
                                                     _%bind138811%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138833%_))
                                                           _%args138812%_))))
                                                 (_%__kont146928146929%_
                                                  (lambda ()
                                                    (let ((_%tmp138863%_
                                                           (let ((__tmp147242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147242))))
              (_%lp138806%_
               _%rest138832%_
               (cons (cons _%tmp138863%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e138833%_))
                                 '()))
                     _%bind138811%_)
               (cons _%tmp138863%_ _%args138812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx146922146923%_))
                                                 (let ((_%e138840138894%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx146922146923%_))))
                                                   (let ((_%tl138842138899%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138840138894%_)))
                                                         (_%hd138841138897%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138840138894%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd138841138897%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd138841138897%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138842138899%_))
                         (let ((_%e138843138902%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138842138899%_))))
                           (let ((_%tl138845138907%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138843138902%_)))
                                 (_%hd138844138905%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138843138902%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138845138907%_))
                                 (_%__kont146924146925%_)
                                 (_%__kont146928146929%_))))
                         (_%__kont146928146929%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd138841138897%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl138842138899%_))
                             (let ((_%e138849138879%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl138842138899%_))))
                               (let ((_%tl138851138884%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e138849138879%_)))
                                     (_%hd138850138882%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e138849138879%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl138851138884%_))
                                     (_%__kont146926146927%_)
                                     (_%__kont146928146929%_))))
                             (_%__kont146928146929%_))
                         (_%__kont146928146929%_)))
                 (_%__kont146928146929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146928146929%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest138813138821%_))
                                     (let ((_%hd138818138918%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest138813138821%_)))
                                           (_%tl138819138920%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest138813138821%_))))
                                       (let* ((_%e138923%_ _%hd138818138918%_)
                                              (_%rest138925%_
                                               _%tl138819138920%_))
                                         (_%K138817138915%_
                                          _%rest138925%_
                                          _%e138923%_)))
                                     (_%else138815138829%_))))))
                       _%hd138731138777%_
                       _%hd138728138769%_
                       _%hd138725138761%_
                       _%hd138722138753%_)
                      (_%g138712138737%_ _%g138713138740%_))))
              (_%g138712138737%_ _%g138713138740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138712138737%_
                                               _%g138713138740%_))))
                                      (_%g138712138737%_ _%g138713138740%_))))
                              (_%g138712138737%_ _%g138713138740%_))))
                      (_%g138712138737%_ _%g138713138740%_)))))
          (_%g138711138927%_ _%stx138710%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self138548%_ _%stx138549%_)
        (letrec ((_%import-set-template138551%_
                  (lambda (_%in138654%_ _%phi138655%_)
                    (let ((_%iphi138657%_
                           (fx+ _%phi138655%_
                                (##direct-structure-ref
                                 _%in138654%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports138658%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in138654%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp138660%_ ((_%rest138662%_ _%imports138658%_)
                                         (_%r138663%_ '()))
                        (let* ((_%rest138664138672%_ _%rest138662%_)
                               (_%else138666138680%_ (lambda () _%r138663%_))
                               (_%K138668138697%_
                                (lambda (_%rest138683%_ _%in138684%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in138684%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi138657%_))
                                          (_%lp138660%_
                                           _%rest138683%_
                                           (cons _%in138684%_ _%r138663%_))
                                          (_%lp138660%_
                                           _%rest138683%_
                                           _%r138663%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in138684%_
                                             'gx#module-import::t))
                                          (let ((_%iphi138688%_
                                                 (fx+ _%phi138655%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in138684%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi138688%_))
                                                (_%lp138660%_
                                                 _%rest138683%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in138684%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r138663%_))
                                                (_%lp138660%_
                                                 _%rest138683%_
                                                 _%r138663%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in138684%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi138691%_
                                                     (fx+ _%iphi138657%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in138684%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi138691%_))
                                                    (_%lp138660%_
                                                     _%rest138683%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138684%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r138663%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi138691%_))
                                                        (_%lp138660%_
                                                         _%rest138683%_
                                                         (let ((__tmp147243
                                                                (_%import-set-template138551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in138684%_
                         _%iphi138657%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r138663%_ __tmp147243)))
                (_%lp138660%_ _%rest138683%_ _%r138663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp138660%_
                                               _%rest138683%_
                                               _%r138663%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest138664138672%_))
                              (let ((_%hd138669138700%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest138664138672%_)))
                                    (_%tl138670138702%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest138664138672%_))))
                                (let* ((_%in138705%_ _%hd138669138700%_)
                                       (_%rest138707%_ _%tl138670138702%_))
                                  (_%K138668138697%_
                                   _%rest138707%_
                                   _%in138705%_)))
                              (_%else138666138680%_))))))))
          (let* ((_%g138553138563%_
                  (lambda (_%g138554138560%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138554138560%_))))
                 (_%g138552138651%_
                  (lambda (_%g138554138566%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138554138566%_))
                        (let ((_%e138556138568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138554138566%_))))
                          (let ((_%hd138557138571%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138556138568%_)))
                                (_%tl138558138573%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138556138568%_))))
                            ((lambda (_%L138576%_)
                               (let ((_%ht138587%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp138589%_ ((_%rest138591%_
                                                     _%L138576%_)
                                                    (_%loads138592%_ '()))
                                   (letrec ((_%K138594%_
                                             (lambda (_%ctx138644%_
                                                      _%rest138645%_)
                                               (let ((_%id138647%_
                                                      (##structure-ref
                                                       _%ctx138644%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht138587%_
                                                        _%id138647%_))
                                                     (_%lp138589%_
                                                      _%rest138645%_
                                                      _%loads138592%_)
                                                     (let ((_%rt138649%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id138647%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht138587%_
                                                          _%id138647%_
                                                          _%rt138649%_))
                                                       (_%lp138589%_
                                                        _%rest138645%_
                                                        (cons _%rt138649%_
                                                              _%loads138592%_))))))))
                                     (let* ((_%rest138595138603%_
                                             _%rest138591%_)
                                            (_%else138597138615%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147245
                                                            (lambda (_%g138610138612%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138610138612%_)))
                   (__tmp147244 (reverse _%loads138592%_)))
               (declare (not safe))
               (##map __tmp147245 __tmp147244)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K138599138632%_
                                             (lambda (_%rest138618%_
                                                      _%in138619%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in138619%_
                                                      'gx#module-context::t))
                                                   (_%K138594%_
                                                    _%in138619%_
                                                    _%rest138618%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in138619%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in138619%_
                               '3
                               '#f
                               '#f)))
                   (_%K138594%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in138619%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest138618%_)
                   (_%lp138589%_ _%rest138618%_ _%loads138592%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in138619%_
                      'gx#import-set::t))
                   (let ((_%phi138624%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138619%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi138624%_)
                         (_%K138594%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138619%_
                             '1
                             '#f
                             '#f))
                          _%rest138618%_)
                         (if (fxpositive? _%phi138624%_)
                             (let ((_%deps138628%_
                                    (_%import-set-template138551%_
                                     _%in138619%_
                                     '0)))
                               (_%lp138589%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest138618%_
                                   _%deps138628%_))
                                _%loads138592%_))
                             (_%lp138589%_ _%rest138618%_ _%loads138592%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx138549%_
                      _%in138619%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest138595138603%_))
                                           (let ((_%hd138600138635%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest138595138603%_)))
                                                 (_%tl138601138637%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest138595138603%_))))
                                             (let* ((_%in138640%_
                                                     _%hd138600138635%_)
                                                    (_%rest138642%_
                                                     _%tl138601138637%_))
                                               (_%K138599138632%_
                                                _%rest138642%_
                                                _%in138640%_)))
                                           (_%else138597138615%_)))))))
                             _%tl138558138573%_)))
                        (_%g138553138563%_ _%g138554138566%_)))))
            (_%g138552138651%_ _%stx138549%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138361%_ _%stx138362%_)
        (letrec ((_%add-lift!138364%_
                  (lambda (_%expr138546%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr138546%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138365%_
                  (lambda (_%id138543%_ _%marks138544%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id138543%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks138544%_
                                                        '()))))))))
                 (_%generate-simple138366%_
                  (lambda (_%stxq138538%_)
                    (let ((_%gid138540%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid138541%_
                           (gxc#generate-runtime-identifier _%stxq138538%_)))
                      (_%add-lift!138364%_
                       (cons 'define
                             (cons _%gid138540%_
                                   (cons (_%generate-syntax-quote138365%_
                                          _%qid138541%_
                                          ''())
                                         '()))))
                      (let ((__tmp147246
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147246 _%stxq138538%_ _%gid138540%_))
                      _%gid138540%_)))
                 (_%generate-serialized138367%_
                  (lambda (_%stxq138528%_ _%marks138529%_)
                    (let* ((_%mark-refs138531%_
                            (map _%generate-mark138368%_ _%marks138529%_))
                           (_%gid138533%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid138535%_
                            (gxc#generate-runtime-identifier _%stxq138528%_)))
                      (_%add-lift!138364%_
                       (cons 'define
                             (cons _%gid138533%_
                                   (cons (_%generate-syntax-quote138365%_
                                          _%qid138535%_
                                          (cons 'list _%mark-refs138531%_))
                                         '()))))
                      (let ((__tmp147247
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147247 _%stxq138528%_ _%gid138533%_))
                      _%gid138533%_)))
                 (_%generate-mark138368%_
                  (lambda (_%mark138513%_)
                    (let ((_%$e138515%_
                           (let ((__tmp147248
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147248 _%mark138513%_))))
                      (if _%$e138515%_
                          _%$e138515%_
                          (let* ((_%gid138519%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr138521%_
                                  (_%serialize-mark138369%_ _%mark138513%_))
                                 (_%ctx138523%_
                                  (let ((__tmp147249
                                         (##structure-ref
                                          _%mark138513%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147249)))
                                 (_%ctx-ref138525%_
                                  (if (eq? _%ctx138523%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138370%_
                                                               _%ctx138523%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147250
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147250
                               _%mark138513%_
                               _%gid138519%_))
                            (_%add-lift!138364%_
                             (cons 'define
                                   (cons _%gid138519%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr138521%_ '()))
                   (cons _%ctx-ref138525%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid138519%_)))))
                 (_%serialize-mark138369%_
                  (lambda (_%mark138460%_)
                    (letrec ((_%quote-e138462%_
                              (lambda (_%sym138511%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym138511%_))
                                    _%sym138511%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym138511%_))))))
                      (let* ((_%mark138463138472%_ _%mark138460%_)
                             (_%E138465138476%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark138463138472%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K138466138488%_
                              (lambda (_%trace138479%_
                                       _%phi138480%_
                                       _%ctx138481%_
                                       _%subst138482%_)
                                (let ((_%subs138484%_
                                       (if _%subst138482%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst138482%_))
                                           '())))
                                  (cons _%phi138480%_
                                        (map (lambda (_%pair138486%_)
                                               (cons (_%quote-e138462%_
                                                      (car _%pair138486%_))
                                                     (_%quote-e138462%_
                                                      (cdr _%pair138486%_))))
                                             _%subs138484%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark138463138472%_
                               'gx#expander-mark::t))
                            (let* ((_%e138467138491%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138463138472%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst138494%_ _%e138467138491%_)
                                   (_%e138468138496%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138463138472%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx138499%_ _%e138468138496%_)
                                   (_%e138469138501%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138463138472%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi138504%_ _%e138469138501%_)
                                   (_%e138470138506%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138463138472%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace138509%_ _%e138470138506%_))
                              (_%K138466138488%_
                               _%trace138509%_
                               _%phi138504%_
                               _%ctx138499%_
                               _%subst138494%_))
                            (_%E138465138476%_))))))
                 (_%context-ref138370%_
                  (lambda (_%ctx138447%_)
                    (if (let ((__tmp147251
                               (##structure-ref
                                _%ctx138447%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147251
                           'gx#module-context::t))
                        (let ((_%ctx-ref138449%_
                               (_%context-ref-nested138372%_ _%ctx138447%_))
                              (_%ctx-origin138450%_
                               (_%context-ref-origin138371%_ _%ctx138447%_))
                              (_%origin138451%_
                               (_%context-ref-origin138371%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin138451%_ _%ctx-origin138450%_)
                              (let ((_%ref138453%_
                                     (_%context-ref-nested138372%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp138455%_ ((_%ref138457%_
                                                    (cdr _%ref138453%_))
                                                   (_%ctx-ref138458%_
                                                    (cdr _%ctx-ref138449%_)))
                                  (if (and (pair? _%ref138457%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref138457%_))
                                                (car _%ctx-ref138458%_)))
                                      (_%lp138455%_
                                       (cdr _%ref138457%_)
                                       (cdr _%ctx-ref138458%_))
                                      (cons '#f _%ctx-ref138458%_))))
                              _%ctx-ref138449%_))
                        (let ((__tmp147252
                               (##structure-ref
                                _%ctx138447%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147252)))))
                 (_%context-ref-origin138371%_
                  (lambda (_%ctx138439%_)
                    (let _%lp138441%_ ((_%ctx138443%_ _%ctx138439%_))
                      (let ((_%super138445%_
                             (##structure-ref
                              _%ctx138443%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138445%_
                               'gx#module-context::t))
                            (_%lp138441%_ _%super138445%_)
                            _%ctx138443%_)))))
                 (_%context-ref-nested138372%_
                  (lambda (_%ctx138430%_)
                    (let _%lp138432%_ ((_%ctx138434%_ _%ctx138430%_)
                                       (_%r138435%_ '()))
                      (let ((_%super138437%_
                             (##structure-ref
                              _%ctx138434%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138437%_
                               'gx#module-context::t))
                            (_%lp138432%_
                             _%super138437%_
                             (cons (car (##structure-ref
                                         _%ctx138434%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r138435%_))
                            (cons (let ((__tmp147253
                                         (##structure-ref
                                          _%ctx138434%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147253))
                                  _%r138435%_)))))))
          (let* ((_%g138374138387%_
                  (lambda (_%g138375138384%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138375138384%_))))
                 (_%g138373138427%_
                  (lambda (_%g138375138390%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138375138390%_))
                        (let ((_%e138377138392%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138375138390%_))))
                          (let ((_%hd138378138395%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138377138392%_)))
                                (_%tl138379138397%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138377138392%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138379138397%_))
                                (let ((_%e138380138400%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138379138397%_))))
                                  (let ((_%hd138381138403%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138380138400%_)))
                                        (_%tl138382138405%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138380138400%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138382138405%_))
                                        ((lambda (_%L138408%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L138408%_))
                                               (let ((_%$e138421%_
                                                      (let ((__tmp147254
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147254 _%L138408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e138421%_
                                                     _%$e138421%_
                                                     (let ((_%marks138425%_
                                                            (##direct-structure-ref
                                                             _%L138408%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks138425%_)
                                                           (_%generate-simple138366%_
                                                            _%L138408%_)
                                                           (_%generate-serialized138367%_
                                                            _%L138408%_
                                                            _%marks138425%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L138408%_))))
                                         _%hd138381138403%_)
                                        (_%g138374138387%_
                                         _%g138375138390%_))))
                                (_%g138374138387%_ _%g138375138390%_))))
                        (_%g138374138387%_ _%g138375138390%_)))))
            (_%g138373138427%_ _%stx138362%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138293%_ _%stx138294%_)
        (let* ((_%g138296138313%_
                (lambda (_%g138297138310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138297138310%_))))
               (_%g138295138358%_
                (lambda (_%g138297138316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138297138316%_))
                      (let ((_%e138300138318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138297138316%_))))
                        (let ((_%hd138301138321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138300138318%_)))
                              (_%tl138302138323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138300138318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138302138323%_))
                              (let ((_%e138303138326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138302138323%_))))
                                (let ((_%hd138304138329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138303138326%_)))
                                      (_%tl138305138331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138303138326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138305138331%_))
                                      (let ((_%e138306138334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138305138331%_))))
                                        (let ((_%hd138307138337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138306138334%_)))
                                              (_%tl138308138339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138306138334%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138308138339%_))
                                              ((lambda (_%L138342%_
                                                        _%L138343%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138343%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138293%_ _%L138342%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138307138337%_
                                               _%hd138304138329%_)
                                              (_%g138296138313%_
                                               _%g138297138316%_))))
                                      (_%g138296138313%_ _%g138297138316%_))))
                              (_%g138296138313%_ _%g138297138316%_))))
                      (_%g138296138313%_ _%g138297138316%_)))))
          (_%g138295138358%_ _%stx138294%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138242%_ _%stx138243%_)
        (let* ((_%g138245138255%_
                (lambda (_%g138246138252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138246138252%_))))
               (_%g138244138290%_
                (lambda (_%g138246138258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138246138258%_))
                      (let ((_%e138248138260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138246138258%_))))
                        (let ((_%hd138249138263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138248138260%_)))
                              (_%tl138250138265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138248138260%_))))
                          ((lambda (_%L138268%_)
                             (let* ((_%c-body138282%_
                                     (map (lambda (_%g138277138279%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138242%_
                                               _%g138277138279%_)))
                                          _%L138268%_))
                                    (_%c-body138287%_
                                     (let ((__tmp147255
                                            (lambda (_%$obj138284%_)
                                              (not (eq? _%$obj138284%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147255
                                        _%c-body138282%_))))
                               (cons '%#begin _%c-body138287%_)))
                           _%tl138250138265%_)))
                      (_%g138245138255%_ _%g138246138258%_)))))
          (_%g138244138290%_ _%stx138243%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138147%_ _%stx138148%_)
        (let* ((_%g138150138160%_
                (lambda (_%g138151138157%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138151138157%_))))
               (_%g138149138239%_
                (lambda (_%g138151138163%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138151138163%_))
                      (let ((_%e138153138165%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138151138163%_))))
                        (let ((_%hd138154138168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138153138165%_)))
                              (_%tl138155138170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138153138165%_))))
                          ((lambda (_%L138173%_)
                             (let* ((_%phi138183%_
                                     (let ((__tmp147256
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147256 '1)))
                                    (_%block138185%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138147%_ 'state))
                                      _%phi138183%_))
                                    (_%compiled138188%_
                                     (let ((__tmp147257
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138147%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138173%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147257
                                        gx#current-expander-phi
                                        _%phi138183%_)))
                                    (_%g138191138201%_
                                     (lambda (_%g138192138198%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138192138198%_))))
                                    (_%g138190138236%_
                                     (lambda (_%g138192138204%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138192138204%_))
                                           (let ((_%e138194138206%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138192138204%_))))
                                             (let ((_%hd138195138209%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138194138206%_)))
                                                   (_%tl138196138211%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138194138206%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138195138209%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138195138209%_))
                                                       ((lambda (_%L138214%_)
                                                          (let ((_%c-body138231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138228%_)
                                   (not (eq? _%$obj138228%_ '#!void)))
                                 _%L138214%_)))
                    (if _%block138185%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138231%_))
                        (if (null? _%c-body138231%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138231%_)))))
                _%tl138196138211%_)
               (_%g138191138201%_ _%g138192138204%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138191138201%_
                                                    _%g138192138204%_))))
                                           (_%g138191138201%_
                                            _%g138192138204%_)))))
                               (_%g138190138236%_ _%compiled138188%_)))
                           _%tl138155138170%_)))
                      (_%g138150138160%_ _%g138151138163%_)))))
          (_%g138149138239%_ _%stx138148%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138078%_ _%stx138079%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138078%_ 'state)))
        (let* ((_%g138081138095%_
                (lambda (_%g138082138092%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138082138092%_))))
               (_%g138080138144%_
                (lambda (_%g138082138098%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138082138098%_))
                      (let ((_%e138085138100%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138082138098%_))))
                        (let ((_%hd138086138103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138085138100%_)))
                              (_%tl138087138105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138085138100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138087138105%_))
                              (let ((_%e138088138108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138087138105%_))))
                                (let ((_%hd138089138111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138088138108%_)))
                                      (_%tl138090138113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138088138108%_))))
                                  ((lambda (_%L138116%_ _%L138117%_)
                                     (let ((_%key138130%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138117%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138130%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138079%_
                                              _%L138117%_
                                              _%key138130%_)))
                                       (let* ((_%ctx138132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138117%_)))
                                              (_%code138135%_
                                               (let ((__tmp147258
                                                      (lambda ()
                                                        (let ((__tmp147259
                                                               (##structure-ref
                                                                _%ctx138132%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138078%_
                                                           __tmp147259)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147258
                                                  gx#current-expander-context
                                                  _%ctx138132%_)))
                                              (_%rt138137%_
                                               (let ((__tmp147260
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147260
                                                  _%ctx138132%_)))
                                              (_%loader138139%_
                                               (if _%rt138137%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138137%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138117%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138078%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138141%_
                                                     (cons _%code138135%_
                                                           _%loader138139%_))))))
                                   _%tl138090138113%_
                                   _%hd138089138111%_)))
                              (_%g138081138095%_ _%g138082138098%_))))
                      (_%g138081138095%_ _%g138082138098%_)))))
          (_%g138080138144%_ _%stx138079%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138065%_ _%context-chain138066%_)
        (let _%lp138068%_ ((_%ctx138070%_ _%ctx138065%_) (_%path138071%_ '()))
          (let ((_%super138073%_
                 (##structure-ref _%ctx138070%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138073%_ _%context-chain138066%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138070%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138071%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138073%_
                       'gx#module-context::t))
                    (_%lp138068%_
                     _%super138073%_
                     (cons (car (##structure-ref
                                 _%ctx138070%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138071%_))
                    (cons (let ((__tmp147261
                                 (##structure-ref
                                  _%ctx138070%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147261))
                          _%path138071%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp138058%_ ((_%ctx138060%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r138061%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx138060%_ 'gx#module-context::t))
              (_%lp138058%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx138060%_ '3 '#f '#f))
               (cons _%ctx138060%_ _%r138061%_))
              _%r138061%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self137821%_ _%stx137822%_)
        (letrec* ((_%context-chain137824%_ (gxc#current-context-chain))
                  (_%make-import-spec137825%_
                   (lambda (_%in137994%_)
                     (let* ((_%in137995138007%_ _%in137994%_)
                            (_%E137997138011%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in137995138007%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K137998138021%_
                             (lambda (_%phi138014%_
                                      _%name138015%_
                                      _%src-name138016%_
                                      _%src-phi138017%_
                                      _%src-key138018%_
                                      _%src-ctx138019%_)
                               (cons _%phi138014%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name138015%_)
                                           (cons _%src-phi138017%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name138016%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in137995138007%_
                              'gx#module-import::t))
                           (let ((_%e137999138024%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in137995138007%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e137999138024%_
                                    'gx#module-export::t))
                                 (let* ((_%e138002138027%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137999138024%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx138030%_ _%e138002138027%_)
                                        (_%e138003138032%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137999138024%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key138035%_ _%e138003138032%_)
                                        (_%e138004138037%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137999138024%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi138040%_ _%e138004138037%_)
                                        (_%e138005138042%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137999138024%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name138045%_ _%e138005138042%_)
                                        (_%e138000138047%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137995138007%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name138050%_ _%e138000138047%_)
                                        (_%e138001138052%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137995138007%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi138055%_ _%e138001138052%_))
                                   (_%K137998138021%_
                                    _%phi138055%_
                                    _%name138050%_
                                    _%src-name138045%_
                                    _%src-phi138040%_
                                    _%src-key138035%_
                                    _%src-ctx138030%_))
                                 (_%E137997138011%_)))
                           (_%E137997138011%_)))))
                  (_%make-import-path137826%_
                   (lambda (_%ctx137992%_)
                     (gxc#generate-meta-import-path
                      _%ctx137992%_
                      _%context-chain137824%_)))
                  (_%make-import-spec-in137827%_
                   (lambda (_%ctx137989%_ _%in137990%_)
                     (cons 'spec:
                           (cons (_%make-import-path137826%_ _%ctx137989%_)
                                 (reverse _%in137990%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self137821%_ 'state)))
          (let* ((_%g137829137839%_
                  (lambda (_%g137830137836%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137830137836%_))))
                 (_%g137828137986%_
                  (lambda (_%g137830137842%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137830137842%_))
                        (let ((_%e137832137844%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137830137842%_))))
                          (let ((_%hd137833137847%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137832137844%_)))
                                (_%tl137834137849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137832137844%_))))
                            ((lambda (_%L137852%_)
                               (let _%lp137863%_ ((_%rest137865%_ _%L137852%_)
                                                  (_%current-src137866%_ '#f)
                                                  (_%current-in137867%_ '())
                                                  (_%r137868%_ '()))
                                 (let* ((_%rest137869137877%_ _%rest137865%_)
                                        (_%else137871137887%_
                                         (lambda ()
                                           (let ((_%r137885%_
                                                  (if _%current-src137866%_
                                                      (cons (_%make-import-spec-in137827%_
                                                             _%current-src137866%_
                                                             _%current-in137867%_)
                                                            _%r137868%_)
                                                      _%r137868%_)))
                                             (cons '%#import
                                                   (reverse _%r137885%_)))))
                                        (_%K137873137974%_
                                         (lambda (_%rest137890%_ _%in137891%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in137891%_
                                                  'gx#module-import::t))
                                               (let* ((_%in137893137900%_
                                                       _%in137891%_)
                                                      (_%E137895137904%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137893137900%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K137896137912%_
               (lambda (_%src-ctx137907%_)
                 (if (eq? _%current-src137866%_ _%src-ctx137907%_)
                     (_%lp137863%_
                      _%rest137890%_
                      _%current-src137866%_
                      (cons (_%make-import-spec137825%_ _%in137891%_)
                            _%current-in137867%_)
                      _%r137868%_)
                     (if _%current-src137866%_
                         (_%lp137863%_
                          _%rest137890%_
                          _%src-ctx137907%_
                          (cons (_%make-import-spec137825%_ _%in137891%_) '())
                          (cons (_%make-import-spec-in137827%_
                                 _%current-src137866%_
                                 _%current-in137867%_)
                                _%r137868%_))
                         (_%lp137863%_
                          _%rest137890%_
                          _%src-ctx137907%_
                          (cons (_%make-import-spec137825%_ _%in137891%_) '())
                          _%r137868%_)))))
              (_%e137897137915%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in137893137900%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e137897137915%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e137898137918%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e137897137915%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx137921%_ _%e137898137918%_))
               (_%K137896137912%_ _%src-ctx137921%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137895137904%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in137891%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi137924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in137891%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src137926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in137891%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in137966%_
                                                           (let* ((_%g137927137936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path137826%_ _%src137926%_))
                          (_%E137930137940%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g137927137936%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K137932137956%_
                            (lambda (_%path137954%_) _%path137954%_))
                           (_%K137931137946%_
                            (lambda (_%path137944%_)
                              (cons 'in: _%path137944%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g137927137936%_))
                           (let ((_%tl137934137961%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g137927137936%_)))
                                 (_%hd137933137959%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g137927137936%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl137934137961%_))
                                 (let ((_%path137964%_ _%hd137933137959%_))
                                   (_%K137932137956%_ _%path137964%_))
                                 (let ((_%path137949%_ _%g137927137936%_))
                                   (_%K137931137946%_ _%path137949%_))))
                           (let ((_%path137949%_ _%g137927137936%_))
                             (_%K137931137946%_ _%path137949%_))))))
                  (_%r137968%_
                   (if _%current-src137866%_
                       (cons (_%make-import-spec-in137827%_
                              _%current-src137866%_
                              _%current-in137867%_)
                             _%r137868%_)
                       _%r137868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp137863%_
                                                      _%rest137890%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi137924%_)
                                                                _%src-in137966%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi137924%_
                                    (cons _%src-in137966%_ '()))))
                    _%r137968%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in137891%_
                                                          'gx#module-context::t))
                                                       (let ((_%r137972%_
                                                              (if _%current-src137866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in137827%_
                                 _%current-src137866%_
                                 _%current-in137867%_)
                                _%r137868%_)
                          _%r137868%_)))
                 (_%lp137863%_
                  _%rest137890%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path137826%_ _%in137891%_))
                        _%r137972%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137869137877%_))
                                       (let ((_%hd137874137977%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137869137877%_)))
                                             (_%tl137875137979%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137869137877%_))))
                                         (let* ((_%in137982%_
                                                 _%hd137874137977%_)
                                                (_%rest137984%_
                                                 _%tl137875137979%_))
                                           (_%K137873137974%_
                                            _%rest137984%_
                                            _%in137982%_)))
                                       (_%else137871137887%_)))))
                             _%tl137834137849%_)))
                        (_%g137829137839%_ _%g137830137842%_)))))
            (_%g137828137986%_ _%stx137822%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self137631%_ _%stx137632%_)
        (letrec* ((_%context-chain137634%_ (gxc#current-context-chain))
                  (_%make-import-path137635%_
                   (lambda (_%ctx137819%_)
                     (gxc#generate-meta-import-path
                      _%ctx137819%_
                      _%context-chain137634%_))))
          (let* ((_%g137637137647%_
                  (lambda (_%g137638137644%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137638137644%_))))
                 (_%g137636137816%_
                  (lambda (_%g137638137650%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137638137650%_))
                        (let ((_%e137640137652%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137638137650%_))))
                          (let ((_%hd137641137655%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137640137652%_)))
                                (_%tl137642137657%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137640137652%_))))
                            ((lambda (_%L137660%_)
                               (let _%lp137671%_ ((_%rest137673%_ _%L137660%_)
                                                  (_%r137674%_ '()))
                                 (let* ((_%rest137675137683%_ _%rest137673%_)
                                        (_%else137677137691%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r137674%_))))
                                        (_%K137679137804%_
                                         (lambda (_%rest137694%_ _%out137695%_)
                                           (let* ((_%out137696137709%_
                                                   _%out137695%_)
                                                  (_%E137699137713%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out137696137709%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K137703137783%_
                                                    (lambda (_%name137779%_
                                                             _%phi137780%_
                                                             _%key137781%_)
                                                      (_%lp137671%_
                                                       _%rest137694%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi137780%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key137781%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name137779%_)
                                             '()))))
                     _%r137674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K137700137763%_
                                                    (lambda (_%phi137717%_
                                                             _%src137718%_)
                                                      (let* ((_%out137758%_
                                                              (if _%src137718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g137719137728%_
                                              (_%make-import-path137635%_
                                               _%src137718%_))
                                             (_%E137722137732%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g137719137728%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K137724137748%_
                                               (lambda (_%path137746%_)
                                                 _%path137746%_))
                                              (_%K137723137738%_
                                               (lambda (_%path137736%_)
                                                 (cons 'in: _%path137736%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g137719137728%_))
                                              (let ((_%tl137726137753%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g137719137728%_)))
                                                    (_%hd137725137751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g137719137728%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl137726137753%_))
                                                    (let ((_%path137756%_
                                                           _%hd137725137751%_))
                                                      (_%K137724137748%_
                                                       _%path137756%_))
                                                    (let ((_%path137741%_
                                                           _%g137719137728%_))
                                                      (_%K137723137738%_
                                                       _%path137741%_))))
                                              (let ((_%path137741%_
                                                     _%g137719137728%_))
                                                (_%K137723137738%_
                                                 _%path137741%_)))))
                                      '()))
                          '#t))
                     (_%out137760%_
                      (if (fxzero? _%phi137717%_)
                          _%out137758%_
                          (cons 'phi:
                                (cons _%phi137717%_
                                      (cons _%out137758%_ '()))))))
                (_%lp137671%_
                 _%rest137694%_
                 (cons _%out137760%_ _%r137674%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match137698137776%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out137696137709%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e137701137766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137696137709%_
                               '1
                               '#f
                               '#f)))
                           (_%e137702137771%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137696137709%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src137769%_ _%e137701137766%_)
                            (_%phi137774%_ _%e137702137771%_))
                        (_%K137700137763%_ _%phi137774%_ _%src137769%_)))
                    (_%E137699137713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out137696137709%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e137704137786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out137696137709%_
                        '1
                        '#f
                        '#f)))
                    (_%e137705137789%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137696137709%_
                        '2
                        '#f
                        '#f)))
                    (_%e137706137794%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137696137709%_
                        '3
                        '#f
                        '#f)))
                    (_%e137707137799%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137696137709%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key137792%_ _%e137705137789%_)
                     (_%phi137797%_ _%e137706137794%_)
                     (_%name137802%_ _%e137707137799%_))
                 (_%K137703137783%_
                  _%name137802%_
                  _%phi137797%_
                  _%key137792%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match137698137776%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137675137683%_))
                                       (let ((_%hd137680137807%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137675137683%_)))
                                             (_%tl137681137809%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137675137683%_))))
                                         (let* ((_%out137812%_
                                                 _%hd137680137807%_)
                                                (_%rest137814%_
                                                 _%tl137681137809%_))
                                           (_%K137679137804%_
                                            _%rest137814%_
                                            _%out137812%_)))
                                       (_%else137677137691%_)))))
                             _%tl137642137657%_)))
                        (_%g137637137647%_ _%g137638137650%_)))))
            (_%g137636137816%_ _%stx137632%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self137592%_ _%stx137593%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137592%_ 'state)))
        (let* ((_%g137595137605%_
                (lambda (_%g137596137602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137596137602%_))))
               (_%g137594137628%_
                (lambda (_%g137596137608%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137596137608%_))
                      (let ((_%e137598137610%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137596137608%_))))
                        (let ((_%hd137599137613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137598137610%_)))
                              (_%tl137600137615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137598137610%_))))
                          ((lambda (_%L137618%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L137618%_)))
                           _%tl137600137615%_)))
                      (_%g137595137605%_ _%g137596137608%_)))))
          (_%g137594137628%_ _%stx137593%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self137463%_ _%stx137464%_)
        (letrec ((_%generate1137466%_
                  (lambda (_%id137587%_ _%eid137588%_)
                    (let ((_%eid137590%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid137588%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid137590%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx137464%_
                             _%eid137590%_)))
                      (cons (gxc#generate-runtime-identifier _%id137587%_)
                            (cons _%eid137590%_ '()))))))
          (let* ((_%g137468137496%_
                  (lambda (_%g137469137493%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137469137493%_))))
                 (_%g137467137584%_
                  (lambda (_%g137469137499%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137469137499%_))
                        (let ((_%e137472137501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137469137499%_))))
                          (let ((_%hd137473137504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137472137501%_)))
                                (_%tl137474137506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137472137501%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl137474137506%_))
                                (let ((_g147262_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl137474137506%_
                                          '0))))
                                  (begin
                                    (let ((_g147263_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147262_)
                                                 (##vector-length _g147262_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147263_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147263_)))
                                    (let ((_%target137475137509%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147262_ 0)))
                                          (_%tl137477137511%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147262_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137477137511%_))
                                          (letrec ((_%loop137478137514%_
                                                    (lambda (_%hd137476137517%_
                                                             _%eid137482137519%_
                                                             _%id137483137521%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd137476137517%_))
                                                          (let ((_%e137479137524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd137476137517%_))))
                    (let ((_%lp-hd137480137527%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137479137524%_)))
                          (_%lp-tl137481137529%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137479137524%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd137480137527%_))
                          (let ((_%e137486137532%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd137480137527%_))))
                            (let ((_%hd137487137535%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137486137532%_)))
                                  (_%tl137488137537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137486137532%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl137488137537%_))
                                  (let ((_%e137489137540%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl137488137537%_))))
                                    (let ((_%hd137490137543%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137489137540%_)))
                                          (_%tl137491137545%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137489137540%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137491137545%_))
                                          (_%loop137478137514%_
                                           _%lp-tl137481137529%_
                                           (cons _%hd137490137543%_
                                                 _%eid137482137519%_)
                                           (cons _%hd137487137535%_
                                                 _%id137483137521%_))
                                          (_%g137468137496%_
                                           _%g137469137499%_))))
                                  (_%g137468137496%_ _%g137469137499%_))))
                          (_%g137468137496%_ _%g137469137499%_))))
                  (let ((_%eid137484137548%_ (reverse _%eid137482137519%_))
                        (_%id137485137550%_ (reverse _%id137483137521%_)))
                    ((lambda (_%L137553%_ _%L137554%_)
                       (cons '%#extern
                             (map _%generate1137466%_
                                  (let ((__tmp147264
                                         (lambda (_%g137569137572%_
                                                  _%g137570137574%_)
                                           (cons _%g137569137572%_
                                                 _%g137570137574%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147264 '() _%L137554%_))
                                  (let ((__tmp147265
                                         (lambda (_%g137576137579%_
                                                  _%g137577137581%_)
                                           (cons _%g137576137579%_
                                                 _%g137577137581%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147265 '() _%L137553%_)))))
                     _%eid137484137548%_
                     _%id137485137550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop137478137514%_
                                             _%target137475137509%_
                                             '()
                                             '()))
                                          (_%g137468137496%_
                                           _%g137469137499%_)))))
                                (_%g137468137496%_ _%g137469137499%_))))
                        (_%g137468137496%_ _%g137469137499%_)))))
            (_%g137467137584%_ _%stx137464%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137253%_ _%stx137254%_)
        (letrec ((_%generate1137256%_
                  (lambda (_%id137458%_)
                    (let ((_%eid137460%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id137458%_)))
                          (_%ident137461%_
                           (gxc#generate-runtime-identifier _%id137458%_)))
                      (cons '%#define-runtime
                            (cons _%ident137461%_ (cons _%eid137460%_ '()))))))
                 (_%generate*137257%_
                  (lambda (_%all137426%_)
                    (let* ((_%all137427137435%_ _%all137426%_)
                           (_%else137429137443%_
                            (lambda () (cons '%#begin _%all137426%_)))
                           (_%K137431137448%_
                            (lambda (_%one137446%_) _%one137446%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all137427137435%_))
                          (let ((_%hd137432137451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all137427137435%_)))
                                (_%tl137433137453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all137427137435%_))))
                            (let ((_%one137456%_ _%hd137432137451%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl137433137453%_))
                                  (_%K137431137448%_ _%one137456%_)
                                  (_%else137429137443%_))))
                          (_%else137429137443%_))))))
          (let* ((_%g137259137276%_
                  (lambda (_%g137260137273%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137260137273%_))))
                 (_%g137258137423%_
                  (lambda (_%g137260137279%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137260137279%_))
                        (let ((_%e137263137281%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137260137279%_))))
                          (let ((_%hd137264137284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137263137281%_)))
                                (_%tl137265137286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137263137281%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137265137286%_))
                                (let ((_%e137266137289%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137265137286%_))))
                                  (let ((_%hd137267137292%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137266137289%_)))
                                        (_%tl137268137294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137266137289%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137268137294%_))
                                        (let ((_%e137269137297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137268137294%_))))
                                          (let ((_%hd137270137300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137269137297%_)))
                                                (_%tl137271137302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137269137297%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137271137302%_))
                                                ((lambda (_%L137305%_
                                                          _%L137306%_)
                                                   (let _%lp137322%_ ((_%rest137324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137306%_)
                              (_%r137325%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx147001147002%_
                                                             _%rest137324%_)
                                                            (_%g137330137347%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx147001147002%_)))))
               (let ((_%__kont147003147004%_
                      (lambda (_%L137410%_)
                        (_%lp137322%_ _%L137410%_ _%r137325%_)))
                     (_%__kont147005147006%_
                      (lambda (_%L137383%_ _%L137384%_)
                        (_%lp137322%_
                         _%L137383%_
                         (cons (_%generate1137256%_ _%L137384%_)
                               _%r137325%_))))
                     (_%__kont147007147008%_
                      (lambda (_%L137359%_)
                        (_%generate*137257%_
                         (let ((__tmp147266
                                (cons (_%generate1137256%_ _%L137359%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147266 _%r137325%_)))))
                     (_%__kont147009147010%_
                      (lambda () (_%generate*137257%_ (reverse _%r137325%_)))))
                 (let ((_%g137328137370%_
                        (lambda ()
                          (let ((_%L137359%_ _%__stx147001147002%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137359%_))
                                (_%__kont147007147008%_ _%L137359%_)
                                (_%__kont147009147010%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx147001147002%_))
                       (let ((_%e137333137399%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx147001147002%_))))
                         (let ((_%tl137335137404%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137333137399%_)))
                               (_%hd137334137402%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137333137399%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137334137402%_))
                               (let ((_%e137336137407%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137334137402%_))))
                                 (if (equal? _%e137336137407%_ '#f)
                                     (_%__kont147003147004%_
                                      _%tl137335137404%_)
                                     (_%__kont147005147006%_
                                      _%tl137335137404%_
                                      _%hd137334137402%_)))
                               (_%__kont147005147006%_
                                _%tl137335137404%_
                                _%hd137334137402%_))))
                       (let () (declare (not safe)) (_%g137328137370%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137270137300%_
                                                 _%hd137267137292%_)
                                                (_%g137259137276%_
                                                 _%g137260137279%_))))
                                        (_%g137259137276%_
                                         _%g137260137279%_))))
                                (_%g137259137276%_ _%g137260137279%_))))
                        (_%g137259137276%_ _%g137260137279%_)))))
            (_%g137258137423%_ _%stx137254%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137150%_ _%stx137151%_)
        (let* ((_%g137153137170%_
                (lambda (_%g137154137167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137154137167%_))))
               (_%g137152137250%_
                (lambda (_%g137154137173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137154137173%_))
                      (let ((_%e137157137175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137154137173%_))))
                        (let ((_%hd137158137178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137157137175%_)))
                              (_%tl137159137180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137157137175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137159137180%_))
                              (let ((_%e137160137183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137159137180%_))))
                                (let ((_%hd137161137186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137160137183%_)))
                                      (_%tl137162137188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137160137183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137162137188%_))
                                      (let ((_%e137163137191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137162137188%_))))
                                        (let ((_%hd137164137194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137163137191%_)))
                                              (_%tl137165137196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137163137191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137165137196%_))
                                              ((lambda (_%L137199%_
                                                        _%L137200%_)
                                                 (let* ((_%eid137215%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137200%_)))
                                                        (_%phi137217%_
                                                         (let ((__tmp147267
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147267 '1)))
                (_%block137219%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137150%_ 'state))
                  _%phi137217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137222137229%_
                                                           (lambda (_%g137223137226%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137223137226%_))))
                  (_%g137221137247%_
                   (lambda (_%g137223137232%_)
                     ((lambda (_%L137234%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137150%_ 'state))
                         _%phi137217%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137234%_ (cons _%L137199%_ '())))))
                      _%g137223137232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137221137247%_
                                                      _%eid137215%_))
                                                   (if _%block137219%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137200%_)
                                             (cons _%eid137215%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137200%_)
                           (cons _%eid137215%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137164137194%_
                                               _%hd137161137186%_)
                                              (_%g137153137170%_
                                               _%g137154137173%_))))
                                      (_%g137153137170%_ _%g137154137173%_))))
                              (_%g137153137170%_ _%g137154137173%_))))
                      (_%g137153137170%_ _%g137154137173%_)))))
          (_%g137152137250%_ _%stx137151%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137082%_ _%stx137083%_)
        (let* ((_%g137085137102%_
                (lambda (_%g137086137099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137086137099%_))))
               (_%g137084137147%_
                (lambda (_%g137086137105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137086137105%_))
                      (let ((_%e137089137107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137086137105%_))))
                        (let ((_%hd137090137110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137089137107%_)))
                              (_%tl137091137112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137089137107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137091137112%_))
                              (let ((_%e137092137115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137091137112%_))))
                                (let ((_%hd137093137118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137092137115%_)))
                                      (_%tl137094137120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137092137115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137094137120%_))
                                      (let ((_%e137095137123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137094137120%_))))
                                        (let ((_%hd137096137126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137095137123%_)))
                                              (_%tl137097137128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137095137123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137097137128%_))
                                              ((lambda (_%L137131%_
                                                        _%L137132%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137132%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137131%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137096137126%_
                                               _%hd137093137118%_)
                                              (_%g137085137102%_
                                               _%g137086137105%_))))
                                      (_%g137085137102%_ _%g137086137105%_))))
                              (_%g137085137102%_ _%g137086137105%_))))
                      (_%g137085137102%_ _%g137086137105%_)))))
          (_%g137084137147%_ _%stx137083%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137079%_ _%stx137080%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137079%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137080%_)
        (gxc#generate-meta-define-values% _%self137079%_ _%stx137080%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137076%_ _%stx137077%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137076%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137077%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147269 (list)) (__tmp147268 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147269
         '(src n open blocks)
         __tmp147268
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137073%_
        (apply make-instance gxc#meta-state::t _%$args137073%_)))
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
      (lambda (_%self136418137057%_ _%ctx137059%_)
        (let* ((_%self137061%_ _%self136418137057%_)
               (_%self137063%_ _%self137061%_))
          (if (let ((__tmp147270
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137063%_))))
                (declare (not safe))
                (##fx< '4 __tmp147270))
              (begin
                (let ((__tmp147271
                       (let ((__tmp147272
                              (##structure-ref
                               _%ctx137059%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147272))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137063%_
                   __tmp147271
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137063%_ '1 '2 '#f '#f))
                (let ((__tmp147273
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137063%_
                   __tmp147273
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137063%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147274
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137063%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137063%_
                       '4
                       __tmp147274))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147276 (list)) (__tmp147275 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147276
         '(ctx phi n code)
         __tmp147275
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args136932%_
        (apply make-instance gxc#meta-state-block::t _%$args136932%_)))
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
      (lambda (_%state136891%_ _%phi136892%_)
        (let* ((_%state136893136901%_ _%state136891%_)
               (_%E136895136905%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state136893136901%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K136896136914%_
                (lambda (_%open136908%_ _%n136909%_ _%src136910%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open136908%_ _%phi136892%_))
                      '#f
                      (let ((_%block-ref136912%_
                             (let ((__tmp147277 (number->string _%n136909%_)))
                               (declare (not safe))
                               (##string-append
                                _%src136910%_
                                '"~"
                                __tmp147277))))
                        (##structure-set!
                         _%state136891%_
                         (let () (declare (not safe)) (##fx+ _%n136909%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147278
                               (let ((__tmp147279
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147279
                                  _%phi136892%_
                                  _%n136909%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open136908%_ _%phi136892%_ __tmp147278))
                        _%block-ref136912%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state136893136901%_
                 'gxc#meta-state::t))
              (let* ((_%e136897136917%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136893136901%_
                         '1
                         '#f
                         '#f)))
                     (_%src136920%_ _%e136897136917%_)
                     (_%e136898136922%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136893136901%_
                         '2
                         '#f
                         '#f)))
                     (_%n136925%_ _%e136898136922%_)
                     (_%e136899136927%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136893136901%_
                         '3
                         '#f
                         '#f)))
                     (_%open136930%_ _%e136899136927%_))
                (_%K136896136914%_ _%open136930%_ _%n136925%_ _%src136920%_))
              (_%E136895136905%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state136885%_ _%phi136886%_ _%stx136887%_)
        (let ((_%block136889%_
               (let ((__tmp147280
                      (##structure-ref
                       _%state136885%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147280 _%phi136886%_))))
          (##structure-set!
           _%block136889%_
           (cons _%stx136887%_
                 (##structure-ref
                  _%block136889%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state136879%_)
        (##structure-set!
         _%state136879%_
         (let ((__tmp147283
                (lambda (_%_136881%_ _%block136882%_ _%r136883%_)
                  (cons _%block136882%_ _%r136883%_)))
               (__tmp147282
                (##structure-ref _%state136879%_ '4 gxc#meta-state::t '#f))
               (__tmp147281
                (##structure-ref _%state136879%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147283 __tmp147282 __tmp147281))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state136879%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state136831%_)
        (gxc#meta-state-end-phi! _%state136831%_)
        (let ((__tmp147285
               (lambda (_%block136833%_ _%r136834%_)
                 (let* ((_%block136835136844%_ _%block136833%_)
                        (_%E136837136848%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block136835136844%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K136838136856%_
                         (lambda (_%code136851%_
                                  _%n136852%_
                                  _%phi136853%_
                                  _%ctx136854%_)
                           (if (null? _%code136851%_)
                               _%r136834%_
                               (cons (cons _%ctx136854%_
                                           (cons _%phi136853%_
                                                 (cons _%n136852%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code136851%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r136834%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block136835136844%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e136839136859%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136835136844%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx136862%_ _%e136839136859%_)
                              (_%e136840136864%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136835136844%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi136867%_ _%e136840136864%_)
                              (_%e136841136869%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136835136844%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n136872%_ _%e136841136869%_)
                              (_%e136842136874%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136835136844%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code136877%_ _%e136842136874%_))
                         (_%K136838136856%_
                          _%code136877%_
                          _%n136872%_
                          _%phi136867%_
                          _%ctx136862%_))
                       (_%E136837136848%_)))))
              (__tmp147284
               (##structure-ref _%state136831%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147285 '() __tmp147284))))
    (define gxc#collect-expression-refs
      (lambda (_%stx136827%_)
        (let ((_%ht136829%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht136829%_ _%stx136827%_)
          _%ht136829%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self136770%_ _%stx136771%_)
        (let* ((_%g136773136786%_
                (lambda (_%g136774136783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136774136783%_))))
               (_%g136772136824%_
                (lambda (_%g136774136789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136774136789%_))
                      (let ((_%e136776136791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136774136789%_))))
                        (let ((_%hd136777136794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136776136791%_)))
                              (_%tl136778136796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136776136791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136778136796%_))
                              (let ((_%e136779136799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136778136796%_))))
                                (let ((_%hd136780136802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136779136799%_)))
                                      (_%tl136781136804%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136779136799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136781136804%_))
                                      ((lambda (_%L136807%_)
                                         (let* ((_%bind136819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L136807%_)))
                                                (_%eid136821%_
                                                 (if _%bind136819%_
                                                     (##structure-ref
                                                      _%bind136819%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L136807%_))))
                                                (__tmp147286
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self136770%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147286
                                            _%eid136821%_
                                            _%eid136821%_)))
                                       _%hd136780136802%_)
                                      (_%g136773136786%_ _%g136774136789%_))))
                              (_%g136773136786%_ _%g136774136789%_))))
                      (_%g136773136786%_ _%g136774136789%_)))))
          (_%g136772136824%_ _%stx136771%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self136697%_ _%stx136698%_)
        (let* ((_%g136700136717%_
                (lambda (_%g136701136714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136701136714%_))))
               (_%g136699136767%_
                (lambda (_%g136701136720%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136701136720%_))
                      (let ((_%e136704136722%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136701136720%_))))
                        (let ((_%hd136705136725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136704136722%_)))
                              (_%tl136706136727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136704136722%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136706136727%_))
                              (let ((_%e136707136730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136706136727%_))))
                                (let ((_%hd136708136733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136707136730%_)))
                                      (_%tl136709136735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136707136730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136709136735%_))
                                      (let ((_%e136710136738%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136709136735%_))))
                                        (let ((_%hd136711136741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136710136738%_)))
                                              (_%tl136712136743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136710136738%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136712136743%_))
                                              ((lambda (_%L136746%_
                                                        _%L136747%_)
                                                 (let* ((_%bind136762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L136747%_)))
                                                        (_%eid136764%_
                                                         (if _%bind136762%_
                                                             (##structure-ref
                                                              _%bind136762%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147287
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self136697%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147287
                                                      _%eid136764%_
                                                      _%eid136764%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self136697%_
                                                      _%L136746%_))))
                                               _%hd136711136741%_
                                               _%hd136708136733%_)
                                              (_%g136700136717%_
                                               _%g136701136720%_))))
                                      (_%g136700136717%_ _%g136701136720%_))))
                              (_%g136700136717%_ _%g136701136720%_))))
                      (_%g136700136717%_ _%g136701136720%_)))))
          (_%g136699136767%_ _%stx136698%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self136654%_ _%stx136655%_)
        (let* ((_%g136657136667%_
                (lambda (_%g136658136664%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136658136664%_))))
               (_%g136656136694%_
                (lambda (_%g136658136670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136658136670%_))
                      (let ((_%e136660136672%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136658136670%_))))
                        (let ((_%hd136661136675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136660136672%_)))
                              (_%tl136662136677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136660136672%_))))
                          ((lambda (_%L136680%_)
                             (let ((__tmp147288
                                    (lambda (_%g136689136691%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self136654%_
                                         _%g136689136691%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147288 _%L136680%_)))
                           _%tl136662136677%_)))
                      (_%g136657136667%_ _%g136658136670%_)))))
          (_%g136656136694%_ _%stx136655%_))))
    (define gxc#count-values-single%
      (lambda (_%self136651%_ _%stx136652%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self136517%_ _%stx136518%_)
        (let* ((_%__stx147031147032%_ _%stx136518%_)
               (_%g136521136550%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147031147032%_)))))
          (let ((_%__kont147033147034%_
                 (lambda (_%L136618%_ _%L136619%_)
                   (length (let ((__tmp147289
                                  (lambda (_%g136640136643%_ _%g136641136645%_)
                                    (cons _%g136640136643%_
                                          _%g136641136645%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147289 '() _%L136618%_)))))
                (_%__kont147037147038%_ (lambda () '#f)))
            (let ((_%__match147076147077%_
                   (lambda (_%e136525136562%_
                            _%hd136526136565%_
                            _%tl136527136567%_
                            _%e136528136570%_
                            _%hd136529136573%_
                            _%tl136530136575%_
                            _%e136531136578%_
                            _%hd136532136581%_
                            _%tl136533136583%_
                            _%e136534136586%_
                            _%hd136535136589%_
                            _%tl136536136591%_
                            _%__splice147035147036%_
                            _%target136537136594%_
                            _%tl136539136596%_)
                     (letrec ((_%loop136540136599%_
                               (lambda (_%hd136538136602%_
                                        _%rand136544136604%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd136538136602%_))
                                     (let ((_%e136541136607%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd136538136602%_))))
                                       (let ((_%lp-tl136543136612%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e136541136607%_)))
                                             (_%lp-hd136542136610%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e136541136607%_))))
                                         (_%loop136540136599%_
                                          _%lp-tl136543136612%_
                                          (cons _%lp-hd136542136610%_
                                                _%rand136544136604%_))))
                                     (let ((_%rand136545136615%_
                                            (reverse _%rand136544136604%_)))
                                       (let ((_%L136618%_ _%rand136545136615%_)
                                             (_%L136619%_ _%hd136535136589%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L136619%_
                                                'values))
                                             (_%__kont147033147034%_
                                              _%L136618%_
                                              _%L136619%_)
                                             (_%__kont147037147038%_))))))))
                       (_%loop136540136599%_ _%target136537136594%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147031147032%_))
                  (let ((_%e136525136562%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147031147032%_))))
                    (let ((_%tl136527136567%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136525136562%_)))
                          (_%hd136526136565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136525136562%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl136527136567%_))
                          (let ((_%e136528136570%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl136527136567%_))))
                            (let ((_%tl136530136575%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136528136570%_)))
                                  (_%hd136529136573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136528136570%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd136529136573%_))
                                  (let ((_%e136531136578%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd136529136573%_))))
                                    (let ((_%tl136533136583%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136531136578%_)))
                                          (_%hd136532136581%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136531136578%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd136532136581%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd136532136581%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl136533136583%_))
                                                  (let ((_%e136534136586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl136533136583%_))))
                                                    (let ((_%tl136536136591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e136534136586%_)))
                                                          (_%hd136535136589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e136534136586%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl136536136591%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl136530136575%_))
                      (let ((_%__splice147035147036%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl136530136575%_
                                '0))))
                        (let ((_%tl136539136596%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147035147036%_ '1)))
                              (_%target136537136594%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147035147036%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl136539136596%_))
                              (_%__match147076147077%_
                               _%e136525136562%_
                               _%hd136526136565%_
                               _%tl136527136567%_
                               _%e136528136570%_
                               _%hd136529136573%_
                               _%tl136530136575%_
                               _%e136531136578%_
                               _%hd136532136581%_
                               _%tl136533136583%_
                               _%e136534136586%_
                               _%hd136535136589%_
                               _%tl136536136591%_
                               _%__splice147035147036%_
                               _%target136537136594%_
                               _%tl136539136596%_)
                              (_%__kont147037147038%_))))
                      (_%__kont147037147038%_))
                  (_%__kont147037147038%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147037147038%_))
                                              (_%__kont147037147038%_))
                                          (_%__kont147037147038%_))))
                                  (_%__kont147037147038%_))))
                          (_%__kont147037147038%_))))
                  (_%__kont147037147038%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self136420%_ _%stx136421%_)
        (let* ((_%g136423136444%_
                (lambda (_%g136424136441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136424136441%_))))
               (_%g136422136514%_
                (lambda (_%g136424136447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136424136447%_))
                      (let ((_%e136428136449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136424136447%_))))
                        (let ((_%hd136429136452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136428136449%_)))
                              (_%tl136430136454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136428136449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136430136454%_))
                              (let ((_%e136431136457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136430136454%_))))
                                (let ((_%hd136432136460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136431136457%_)))
                                      (_%tl136433136462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136431136457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136433136462%_))
                                      (let ((_%e136434136465%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136433136462%_))))
                                        (let ((_%hd136435136468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136434136465%_)))
                                              (_%tl136436136470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136434136465%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136436136470%_))
                                              (let ((_%e136437136473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136436136470%_))))
                                                (let ((_%hd136438136476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136437136473%_)))
                                                      (_%tl136439136478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136437136473%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136439136478%_))
                                                      ((lambda (_%L136481%_
                                                                _%L136482%_
                                                                _%L136483%_)
                                                         (let ((_%c1136500136502%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self136420%_ _%L136482%_))))
                   (if _%c1136500136502%_
                       (let* ((_%c1136505%_ _%c1136500136502%_)
                              (_%c2136506136508%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self136420%_
                                  _%L136481%_))))
                         (if _%c2136506136508%_
                             (let ((_%c2136511%_ _%c2136506136508%_))
                               (if (fx= _%c1136505%_ _%c2136511%_)
                                   _%c1136505%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd136438136476%_
               _%hd136435136468%_
               _%hd136432136460%_)
              (_%g136423136444%_ _%g136424136447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136423136444%_
                                               _%g136424136447%_))))
                                      (_%g136423136444%_ _%g136424136447%_))))
                              (_%g136423136444%_ _%g136424136447%_))))
                      (_%g136423136444%_ _%g136424136447%_)))))
          (_%g136422136514%_ _%stx136421%_))))))
