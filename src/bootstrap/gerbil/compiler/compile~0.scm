(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1734131748)
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
        (letrec ((_%hash-e147771%_
                  (lambda (_%id147773%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id147773%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e147771%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp149158 (list gxc#::void::t))
            (__tmp149157 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp149158
         '()
         __tmp149157
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args147767%_
        (apply make-instance gxc#::collect-bindings::t _%$args147767%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp149159
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
        (__make-promise __tmp149159)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx147759%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self147762%_
                (let ((__obj149133
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj149133))
               (__tmp149160
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147762%_ _%stx147759%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149160
           gxc#current-compile-method
           _%self147762%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp149162 (list gxc#::void::t))
            (__tmp149161 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp149162
         '(modules)
         __tmp149161
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args147756%_
        (apply make-instance gxc#::lift-modules::t _%$args147756%_)))
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
      (let ((__tmp149163
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
        (__make-promise __tmp149163)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords147730%_ _%modules147727147731%_ _%stx147733%_)
        (let ((_%modules147736%_
               (if (eq? _%modules147727147731%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules147727147731%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self147738%_
                  (let ((__obj149135
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149135
                       _%modules147736%_
                       '1
                       '#f
                       '#f))
                    __obj149135))
                 (__tmp149164
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147738%_ _%stx147733%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149164
             gxc#current-compile-method
             _%self147738%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords147745%_ . _%args147746%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords147745%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147745%_
                  'modules:
                  absent-value))
               _%args147746%_)))
    (define gxc#apply-lift-modules
      (lambda _%args147728147752%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args147728147752%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp149166 (list)) (__tmp149165 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp149166
         '()
         __tmp149165
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args147723%_
        (apply make-instance gxc#::find-runtime-code::t _%$args147723%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp149167
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
        (__make-promise __tmp149167)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx147715%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self147718%_
                (let ((__obj149137
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj149137))
               (__tmp149168
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147718%_ _%stx147715%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149168
           gxc#current-compile-method
           _%self147718%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp149170 (list gxc#::false::t))
            (__tmp149169 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp149170
         '()
         __tmp149169
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args147712%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args147712%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp149171
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
        (__make-promise __tmp149171)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx147704%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self147707%_
                (let ((__obj149139
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj149139))
               (__tmp149172
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147707%_ _%stx147704%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149172
           gxc#current-compile-method
           _%self147707%_))))
    (define gxc#::count-values::t
      (let ((__tmp149174 (list gxc#::false-expression::t))
            (__tmp149173 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp149174
         '()
         __tmp149173
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args147701%_
        (apply make-instance gxc#::count-values::t _%$args147701%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp149175
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
        (__make-promise __tmp149175)))
    (define gxc#apply-count-values
      (lambda (_%stx147693%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self147696%_
                (let ((__obj149141
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj149141))
               (__tmp149176
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147696%_ _%stx147693%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149176
           gxc#current-compile-method
           _%self147696%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp149177 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp149177
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args147690%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args147690%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp149178
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
        (__make-promise __tmp149178)))
    (define gxc#::generate-loader::t
      (let ((__tmp149180 (list gxc#::generate-runtime-empty::t))
            (__tmp149179 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp149180
         '()
         __tmp149179
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args147686%_
        (apply make-instance gxc#::generate-loader::t _%$args147686%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp149181
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
        (__make-promise __tmp149181)))
    (define gxc#apply-generate-loader
      (lambda (_%stx147678%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self147681%_
                (let ((__obj149144
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj149144))
               (__tmp149182
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147681%_ _%stx147678%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149182
           gxc#current-compile-method
           _%self147681%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp149183 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp149183
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args147675%_
        (apply make-instance gxc#::generate-runtime::t _%$args147675%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp149184
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
        (__make-promise __tmp149184)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx147667%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self147670%_
                (let ((__obj149146
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj149146))
               (__tmp149185
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147670%_ _%stx147667%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149185
           gxc#current-compile-method
           _%self147670%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp149187 (list gxc#::generate-runtime::t))
            (__tmp149186 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp149187
         '()
         __tmp149186
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args147664%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args147664%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp149188
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
        (__make-promise __tmp149188)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx147656%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self147659%_
                (let ((__obj149148
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj149148))
               (__tmp149189
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147659%_ _%stx147656%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149189
           gxc#current-compile-method
           _%self147659%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp149190 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp149190
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args147653%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args147653%_)))
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
      (let ((__tmp149191
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
        (__make-promise __tmp149191)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords147627%_ _%table147624147628%_ _%stx147630%_)
        (let ((_%table147633%_
               (if (eq? _%table147624147628%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table147624147628%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self147635%_
                  (let ((__obj149150
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149150
                       _%table147633%_
                       '1
                       '#f
                       '#f))
                    __obj149150))
                 (__tmp149192
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147635%_ _%stx147630%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149192
             gxc#current-compile-method
             _%self147635%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords147642%_ . _%args147643%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords147642%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147642%_
                  'table:
                  absent-value))
               _%args147643%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args147625147649%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args147625147649%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp149194 (list gxc#::void-expression::t))
            (__tmp149193 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp149194
         '(state)
         __tmp149193
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args147620%_
        (apply make-instance gxc#::generate-meta::t _%$args147620%_)))
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
      (let ((__tmp149195
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
        (__make-promise __tmp149195)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords147594%_ _%state147591147595%_ _%stx147597%_)
        (let ((_%state147600%_
               (if (eq? _%state147591147595%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147591147595%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self147602%_
                  (let ((__obj149152
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149152
                       _%state147600%_
                       '1
                       '#f
                       '#f))
                    __obj149152))
                 (__tmp149196
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147602%_ _%stx147597%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149196
             gxc#current-compile-method
             _%self147602%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords147609%_ . _%args147610%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords147609%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147609%_
                  'state:
                  absent-value))
               _%args147610%_)))
    (define gxc#apply-generate-meta
      (lambda _%args147592147616%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args147592147616%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp149198 (list)) (__tmp149197 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp149198
         '(state)
         __tmp149197
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args147587%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args147587%_)))
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
      (let ((__tmp149199
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
        (__make-promise __tmp149199)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords147561%_ _%state147558147562%_ _%stx147564%_)
        (let ((_%state147567%_
               (if (eq? _%state147558147562%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147558147562%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self147569%_
                  (let ((__obj149154
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149154
                       _%state147567%_
                       '1
                       '#f
                       '#f))
                    __obj149154))
                 (__tmp149200
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147569%_ _%stx147564%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149200
             gxc#current-compile-method
             _%self147569%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords147576%_ . _%args147577%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords147576%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147576%_
                  'state:
                  absent-value))
               _%args147577%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args147559147583%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args147559147583%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self147487%_ _%stx147488%_)
        (let* ((_%g147490147507%_
                (lambda (_%g147491147504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147491147504%_))))
               (_%g147489147554%_
                (lambda (_%g147491147510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147491147510%_))
                      (let ((_%e147494147512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147491147510%_))))
                        (let ((_%hd147495147515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147494147512%_)))
                              (_%tl147496147517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147494147512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147496147517%_))
                              (let ((_%e147497147520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147496147517%_))))
                                (let ((_%hd147498147523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147497147520%_)))
                                      (_%tl147499147525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147497147520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147499147525%_))
                                      (let ((_%e147500147528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147499147525%_))))
                                        (let ((_%hd147501147531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147500147528%_)))
                                              (_%tl147502147533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147500147528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147502147533%_))
                                              ((lambda (_%L147536%_
                                                        _%L147537%_)
                                                 (let ((__tmp149201
                                                        (lambda (_%bind147552%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind147552%_))
                      (gxc#add-module-binding! _%bind147552%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp149201
                                                    _%L147537%_)))
                                               _%hd147501147531%_
                                               _%hd147498147523%_)
                                              (_%g147490147507%_
                                               _%g147491147510%_))))
                                      (_%g147490147507%_ _%g147491147510%_))))
                              (_%g147490147507%_ _%g147491147510%_))))
                      (_%g147490147507%_ _%g147491147510%_)))))
          (_%g147489147554%_ _%stx147488%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self147419%_ _%stx147420%_)
        (let* ((_%g147422147439%_
                (lambda (_%g147423147436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147423147436%_))))
               (_%g147421147484%_
                (lambda (_%g147423147442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147423147442%_))
                      (let ((_%e147426147444%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147423147442%_))))
                        (let ((_%hd147427147447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147426147444%_)))
                              (_%tl147428147449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147426147444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147428147449%_))
                              (let ((_%e147429147452%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147428147449%_))))
                                (let ((_%hd147430147455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147429147452%_)))
                                      (_%tl147431147457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147429147452%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147431147457%_))
                                      (let ((_%e147432147460%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147431147457%_))))
                                        (let ((_%hd147433147463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147432147460%_)))
                                              (_%tl147434147465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147432147460%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147434147465%_))
                                              ((lambda (_%L147468%_
                                                        _%L147469%_)
                                                 (gxc#add-module-binding!
                                                  _%L147469%_
                                                  '#t))
                                               _%hd147433147463%_
                                               _%hd147430147455%_)
                                              (_%g147422147439%_
                                               _%g147423147442%_))))
                                      (_%g147422147439%_ _%g147423147442%_))))
                              (_%g147422147439%_ _%g147423147442%_))))
                      (_%g147422147439%_ _%g147423147442%_)))))
          (_%g147421147484%_ _%stx147420%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self147361%_ _%stx147362%_)
        (let* ((_%g147364147378%_
                (lambda (_%g147365147375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147365147375%_))))
               (_%g147363147416%_
                (lambda (_%g147365147381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147365147381%_))
                      (let ((_%e147368147383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147365147381%_))))
                        (let ((_%hd147369147386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147368147383%_)))
                              (_%tl147370147388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147368147383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147370147388%_))
                              (let ((_%e147371147391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147370147388%_))))
                                (let ((_%hd147372147394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147371147391%_)))
                                      (_%tl147373147396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147371147391%_))))
                                  ((lambda (_%L147399%_ _%L147400%_)
                                     (let ((_%ctx147413%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L147400%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self147361%_
                                           'modules))
                                        (cons _%ctx147413%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self147361%_
                                                        'modules)))))
                                       (let ((__tmp149202
                                              (lambda ()
                                                (let ((__tmp149203
                                                       (##structure-ref
                                                        _%ctx147413%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147361%_
                                                   __tmp149203)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp149202
                                          gx#current-expander-context
                                          _%ctx147413%_))))
                                   _%tl147373147396%_
                                   _%hd147372147394%_)))
                              (_%g147364147378%_ _%g147365147381%_))))
                      (_%g147364147378%_ _%g147365147381%_)))))
          (_%g147363147416%_ _%stx147362%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls147314147316%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls147314147316%_
              (let ((_%decls147319%_ _%decls147314147316%_))
                (let _%lp147321%_ ((_%rest147323%_ _%decls147319%_))
                  (let* ((_%rest147324147332%_ _%rest147323%_)
                         (_%else147326147340%_ (lambda () '#f))
                         (_%K147328147349%_
                          (lambda (_%decls147343%_ _%decl147344%_)
                            (if (equal? _%decl147344%_ '(not safe))
                                '#t
                                (if (equal? _%decl147344%_ '(safe))
                                    '#f
                                    (_%lp147321%_ _%decls147343%_))))))
                    (if (pair? _%rest147324147332%_)
                        (let ((_%hd147329147352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147324147332%_)))
                              (_%tl147330147354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147324147332%_))))
                          (let* ((_%decl147357%_ _%hd147329147352%_)
                                 (_%decls147359%_ _%tl147330147354%_))
                            (_%K147328147349%_
                             _%decls147359%_
                             _%decl147357%_)))
                        (_%else147326147340%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id147308%_ _%syntax?147309%_)
        (let ((_%eid147311%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id147308%_))
                '1
                gx#binding::t
                '#f))
              (_%ht147312%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid147311%_))
              '#!void
              (let ((__tmp149204
                     (let ((__tmp149205
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid147311%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp149205 _%syntax?147309%_))))
                (declare (not safe))
                (hash-put! _%ht147312%_ _%eid147311%_ __tmp149204))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id147306%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id147306%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key147261%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key147261%_))
            _%key147261%_
            (if (uninterned-symbol? _%key147261%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key147261%_))
                (let* ((_%key147265147272%_ _%key147261%_)
                       (_%E147267147276%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key147265147272%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K147268147294%_
                        (lambda (_%mark147279%_ _%eid147280%_)
                          (let ((_%$e147282%_
                                 (##structure-ref
                                  _%mark147279%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e147282%_
                                ((lambda (_%ht147285%_)
                                   (let ((_%$e147287%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht147285%_
                                             _%eid147280%_))))
                                     (if _%$e147287%_
                                         ((lambda (_%id147290%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id147290%_))
                                                _%id147290%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id147290%_))))
                                          _%$e147287%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid147280%_))))
                                 _%$e147282%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid147280%_))))))
                  (if (pair? _%key147265147272%_)
                      (let ((_%hd147269147297%_
                             (let ()
                               (declare (not safe))
                               (##car _%key147265147272%_)))
                            (_%tl147270147299%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key147265147272%_))))
                        (let* ((_%eid147302%_ _%hd147269147297%_)
                               (_%mark147304%_ _%tl147270147299%_))
                          (_%K147268147294%_ _%mark147304%_ _%eid147302%_)))
                      (_%E147267147276%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self147258%_ _%stx147259%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self147105%_ _%stx147106%_)
        (letrec ((_%simplify147108%_
                  (lambda (_%body147156%_)
                    (let _%lp147158%_ ((_%rest147160%_ _%body147156%_)
                                       (_%r147161%_ '()))
                      (let* ((_%rest147162147170%_ _%rest147160%_)
                             (_%else147164147178%_
                              (lambda () (reverse _%r147161%_)))
                             (_%K147166147246%_
                              (lambda (_%rest147181%_ _%hd147182%_)
                                (let* ((_%hd147183147199%_ _%hd147182%_)
                                       (_%else147187147207%_
                                        (lambda ()
                                          (_%lp147158%_
                                           _%rest147181%_
                                           (cons _%hd147182%_ _%r147161%_)))))
                                  (let ((_%K147195147236%_
                                         (lambda (_%exprs147234%_)
                                           (_%lp147158%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest147181%_
                                               _%exprs147234%_))
                                            _%r147161%_)))
                                        (_%K147190147220%_
                                         (lambda ()
                                           (if (null? _%rest147181%_)
                                               (_%lp147158%_
                                                _%rest147181%_
                                                (cons _%hd147182%_
                                                      _%r147161%_))
                                               (_%lp147158%_
                                                _%rest147181%_
                                                _%r147161%_))))
                                        (_%K147189147212%_
                                         (lambda ()
                                           (if (null? _%rest147181%_)
                                               (_%lp147158%_
                                                _%rest147181%_
                                                (cons _%hd147182%_
                                                      _%r147161%_))
                                               (_%lp147158%_
                                                _%rest147181%_
                                                _%r147161%_)))))
                                    (let ((_%try-match147186147215%_
                                           (lambda ()
                                             (if (symbol? _%hd147183147199%_)
                                                 (_%K147189147212%_)
                                                 (_%else147187147207%_)))))
                                      (if (pair? _%hd147183147199%_)
                                          (let ((_%tl147197147241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd147183147199%_)))
                                                (_%hd147196147239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd147183147199%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd147196147239%_
                                                         'begin))
                                                (let ((_%exprs147244%_
                                                       _%tl147197147241%_))
                                                  (_%K147195147236%_
                                                   _%exprs147244%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd147196147239%_
                                                             'quote))
                                                    (if (pair? _%tl147197147241%_)
                                                        (let ((_%tl147194147228%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl147197147241%_))))
                  (if (null? _%tl147194147228%_)
                      (_%K147190147220%_)
                      (_%try-match147186147215%_)))
                (_%try-match147186147215%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match147186147215%_))))
                                          (_%try-match147186147215%_))))))))
                        (if (pair? _%rest147162147170%_)
                            (let ((_%hd147167147249%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest147162147170%_)))
                                  (_%tl147168147251%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest147162147170%_))))
                              (let* ((_%hd147254%_ _%hd147167147249%_)
                                     (_%rest147256%_ _%tl147168147251%_))
                                (_%K147166147246%_
                                 _%rest147256%_
                                 _%hd147254%_)))
                            (_%else147164147178%_)))))))
          (let* ((_%g147110147120%_
                  (lambda (_%g147111147117%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147111147117%_))))
                 (_%g147109147153%_
                  (lambda (_%g147111147123%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147111147123%_))
                        (let ((_%e147113147125%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147111147123%_))))
                          (let ((_%hd147114147128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147113147125%_)))
                                (_%tl147115147130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147113147125%_))))
                            ((lambda (_%L147133%_)
                               (let* ((_%body147148%_
                                       (map (lambda (_%g147143147145%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self147105%_
                                                 _%g147143147145%_)))
                                            _%L147133%_))
                                      (_%body147150%_
                                       (_%simplify147108%_ _%body147148%_)))
                                 (if (let ((__tmp149206
                                            (length _%body147150%_)))
                                       (declare (not safe))
                                       (##fx= __tmp149206 '1))
                                     (car _%body147150%_)
                                     (cons 'begin _%body147150%_))))
                             _%tl147115147130%_)))
                        (_%g147110147120%_ _%g147111147123%_)))))
            (_%g147109147153%_ _%stx147106%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self147066%_ _%stx147067%_)
        (let* ((_%g147069147079%_
                (lambda (_%g147070147076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147070147076%_))))
               (_%g147068147102%_
                (lambda (_%g147070147082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147070147082%_))
                      (let ((_%e147072147084%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147070147082%_))))
                        (let ((_%hd147073147087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147072147084%_)))
                              (_%tl147074147089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147072147084%_))))
                          ((lambda (_%L147092%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L147092%_))))
                           _%tl147074147089%_)))
                      (_%g147069147079%_ _%g147070147082%_)))))
          (_%g147068147102%_ _%stx147067%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self146830%_ _%stx146831%_)
        (let* ((_%__stx147796147797%_ _%stx146831%_)
               (_%g146835146887%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147796147797%_)))))
          (let ((_%__kont147798147799%_
                 (lambda (_%L147048%_ _%L147049%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self146830%_ _%L147048%_))))
                (_%__kont147800147801%_
                 (lambda (_%L146996%_ _%L146997%_ _%L146998%_)
                   (if (let ((__tmp149207
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L146998%_))))
                         (declare (not safe))
                         (##memq __tmp149207 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self146830%_ _%L146996%_)))))
                (_%__kont147804147805%_
                 (lambda (_%L146916%_ _%L146917%_)
                   (let ((_%decls146932%_ (map gx#syntax->datum _%L146917%_)))
                     (let ((__tmp149210
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls146932%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146830%_
                                                   _%L146916%_))
                                                '())))))
                           (__tmp149208
                            (let ((__tmp149209
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp149209 _%decls146932%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp149210
                        gxc#current-compile-decls
                        __tmp149208))))))
            (let* ((_%__match147851147852%_
                    (lambda (_%e146851146940%_
                             _%hd146852146943%_
                             _%tl146853146945%_
                             _%e146854146948%_
                             _%hd146855146951%_
                             _%tl146856146953%_
                             _%e146857146956%_
                             _%hd146858146959%_
                             _%tl146859146961%_
                             _%__splice147802147803%_
                             _%target146860146964%_
                             _%tl146862146966%_)
                      (letrec ((_%loop146863146969%_
                                (lambda (_%hd146861146972%_
                                         _%param146867146974%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146861146972%_))
                                      (let ((_%e146864146977%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146861146972%_))))
                                        (let ((_%lp-tl146866146982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146864146977%_)))
                                              (_%lp-hd146865146980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146864146977%_))))
                                          (_%loop146863146969%_
                                           _%lp-tl146866146982%_
                                           (cons _%lp-hd146865146980%_
                                                 _%param146867146974%_))))
                                      (let ((_%param146868146985%_
                                             (reverse _%param146867146974%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146856146953%_))
                                            (let ((_%e146869146988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146856146953%_))))
                                              (let ((_%tl146871146993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146869146988%_)))
                                                    (_%hd146870146991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146869146988%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146871146993%_))
                                                    (let ((_%L146996%_
                                                           _%hd146870146991%_)
                                                          (_%L146997%_
                                                           _%param146868146985%_)
                                                          (_%L146998%_
                                                           _%hd146858146959%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L146998%_))
                       (not (let ((__tmp149211
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L146998%_))))
                              (declare (not safe))
                              (##memq __tmp149211 gxc#gambit-annotations))))
                  (_%__kont147800147801%_ _%L146996%_ _%L146997%_ _%L146998%_)
                  (_%__kont147804147805%_
                   _%hd146870146991%_
                   _%hd146855146951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146835146887%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146835146887%_))))))))
                        (_%loop146863146969%_ _%target146860146964%_ '()))))
                   (_%__match147825147826%_
                    (lambda (_%e146839147024%_
                             _%hd146840147027%_
                             _%tl146841147029%_
                             _%e146842147032%_
                             _%hd146843147035%_
                             _%tl146844147037%_
                             _%e146845147040%_
                             _%hd146846147043%_
                             _%tl146847147045%_)
                      (let ((_%L147048%_ _%hd146846147043%_)
                            (_%L147049%_ _%hd146843147035%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L147049%_))
                            (_%__kont147798147799%_ _%L147048%_ _%L147049%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd146843147035%_))
                                (let ((_%e146857146956%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd146843147035%_))))
                                  (let ((_%tl146859146961%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146857146956%_)))
                                        (_%hd146858146959%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146857146956%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl146859146961%_))
                                        (let ((_%__splice147802147803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl146859146961%_
                                                  '0))))
                                          (let ((_%tl146862146966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147802147803%_
                                                    '1)))
                                                (_%target146860146964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147802147803%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146862146966%_))
                                                (_%__match147851147852%_
                                                 _%e146839147024%_
                                                 _%hd146840147027%_
                                                 _%tl146841147029%_
                                                 _%e146842147032%_
                                                 _%hd146843147035%_
                                                 _%tl146844147037%_
                                                 _%e146857146956%_
                                                 _%hd146858146959%_
                                                 _%tl146859146961%_
                                                 _%__splice147802147803%_
                                                 _%target146860146964%_
                                                 _%tl146862146966%_)
                                                (_%__kont147804147805%_
                                                 _%hd146846147043%_
                                                 _%hd146843147035%_))))
                                        (_%__kont147804147805%_
                                         _%hd146846147043%_
                                         _%hd146843147035%_))))
                                (_%__kont147804147805%_
                                 _%hd146846147043%_
                                 _%hd146843147035%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147796147797%_))
                  (let ((_%e146839147024%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147796147797%_))))
                    (let ((_%tl146841147029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146839147024%_)))
                          (_%hd146840147027%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146839147024%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146841147029%_))
                          (let ((_%e146842147032%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146841147029%_))))
                            (let ((_%tl146844147037%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146842147032%_)))
                                  (_%hd146843147035%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146842147032%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146844147037%_))
                                  (let ((_%e146845147040%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146844147037%_))))
                                    (let ((_%tl146847147045%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146845147040%_)))
                                          (_%hd146846147043%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146845147040%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146847147045%_))
                                          (_%__match147825147826%_
                                           _%e146839147024%_
                                           _%hd146840147027%_
                                           _%tl146841147029%_
                                           _%e146842147032%_
                                           _%hd146843147035%_
                                           _%tl146844147037%_
                                           _%e146845147040%_
                                           _%hd146846147043%_
                                           _%tl146847147045%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146843147035%_))
                                              (let ((_%e146857146956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146843147035%_))))
                                                (let ((_%tl146859146961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146857146956%_)))
                                                      (_%hd146858146959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146857146956%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl146859146961%_))
                                                      (let ((_%__splice147802147803%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl146859146961%_ '0))))
                (let ((_%tl146862146966%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147802147803%_ '1)))
                      (_%target146860146964%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147802147803%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146862146966%_))
                      (_%__match147851147852%_
                       _%e146839147024%_
                       _%hd146840147027%_
                       _%tl146841147029%_
                       _%e146842147032%_
                       _%hd146843147035%_
                       _%tl146844147037%_
                       _%e146857146956%_
                       _%hd146858146959%_
                       _%tl146859146961%_
                       _%__splice147802147803%_
                       _%target146860146964%_
                       _%tl146862146966%_)
                      (let () (declare (not safe)) (_%g146835146887%_)))))
              (let () (declare (not safe)) (_%g146835146887%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146835146887%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146843147035%_))
                                      (let ((_%e146857146956%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146843147035%_))))
                                        (let ((_%tl146859146961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146857146956%_)))
                                              (_%hd146858146959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146857146956%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl146859146961%_))
                                              (let ((_%__splice147802147803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl146859146961%_
                                                        '0))))
                                                (let ((_%tl146862146966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147802147803%_
                                                          '1)))
                                                      (_%target146860146964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147802147803%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146862146966%_))
                                                      (_%__match147851147852%_
                                                       _%e146839147024%_
                                                       _%hd146840147027%_
                                                       _%tl146841147029%_
                                                       _%e146842147032%_
                                                       _%hd146843147035%_
                                                       _%tl146844147037%_
                                                       _%e146857146956%_
                                                       _%hd146858146959%_
                                                       _%tl146859146961%_
                                                       _%__splice147802147803%_
                                                       _%target146860146964%_
                                                       _%tl146862146966%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g146835146887%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146835146887%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146835146887%_))))))
                          (let () (declare (not safe)) (_%g146835146887%_)))))
                  (let () (declare (not safe)) (_%g146835146887%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self146789%_ _%stx146790%_)
        (let* ((_%g146792146802%_
                (lambda (_%g146793146799%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146793146799%_))))
               (_%g146791146827%_
                (lambda (_%g146793146805%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146793146805%_))
                      (let ((_%e146795146807%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146793146805%_))))
                        (let ((_%hd146796146810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146795146807%_)))
                              (_%tl146797146812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146795146807%_))))
                          ((lambda (_%L146815%_)
                             (let ((_%decls146825%_
                                    (map gx#syntax->datum _%L146815%_)))
                               (let ((__tmp149212
                                      (let ((__tmp149213
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp149213
                                         _%decls146825%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp149212))
                               (cons 'declare _%decls146825%_)))
                           _%tl146797146812%_)))
                      (_%g146792146802%_ _%g146793146805%_)))))
          (_%g146791146827%_ _%stx146790%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self146535%_ _%stx146536%_)
        (let* ((_%g146538146555%_
                (lambda (_%g146539146552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146539146552%_))))
               (_%g146537146786%_
                (lambda (_%g146539146558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146539146558%_))
                      (let ((_%e146542146560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146539146558%_))))
                        (let ((_%hd146543146563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146542146560%_)))
                              (_%tl146544146565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146542146560%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146544146565%_))
                              (let ((_%e146545146568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146544146565%_))))
                                (let ((_%hd146546146571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146545146568%_)))
                                      (_%tl146547146573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146545146568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146547146573%_))
                                      (let ((_%e146548146576%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146547146573%_))))
                                        (let ((_%hd146549146579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146548146576%_)))
                                              (_%tl146550146581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146548146576%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146550146581%_))
                                              ((lambda (_%L146584%_
                                                        _%L146585%_)
                                                 (let* ((_%__stx147904147905%_
                                                         _%L146585%_)
                                                        (_%g146602146616%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx147904147905%_)))))
                                                   (let ((_%__kont147906147907%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self146535%_
                                                               _%L146584%_))))
                                                         (_%__kont147908147909%_
                                                          (lambda (_%L146748%_)
                                                            (let ((_%eid146757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L146748%_))))
                      (let ((_%lambda-expr146758146760%_
                             (gxc#apply-find-lambda-expression _%L146584%_)))
                        (if _%lambda-expr146758146760%_
                            (let* ((_%lambda-expr146763%_
                                    _%lambda-expr146758146760%_)
                                   (__tmp149214
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149214
                               _%lambda-expr146763%_
                               _%eid146757%_))
                            '#f))
                      (cons 'define
                            (cons _%eid146757%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self146535%_
                                           _%L146584%_))
                                        '()))))))
                 (_%__kont147910147911%_
                  (lambda ()
                    (let* ((_%tmp146623%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body146732%_
                            (let _%lp146625%_ ((_%rest146627%_ _%L146585%_)
                                               (_%k146628%_ '0)
                                               (_%r146629%_ '()))
                              (let* ((_%__stx147874147875%_ _%rest146627%_)
                                     (_%g146634146651%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx147874147875%_)))))
                                (let ((_%__kont147876147877%_
                                       (lambda (_%L146719%_)
                                         (_%lp146625%_
                                          _%L146719%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146628%_ '1))
                                          _%r146629%_)))
                                      (_%__kont147878147879%_
                                       (lambda (_%L146692%_ _%L146693%_)
                                         (_%lp146625%_
                                          _%L146692%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146628%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L146693%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp146623%_
                           _%k146628%_
                           _%L146692%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r146629%_))))
                                      (_%__kont147880147881%_
                                       (lambda (_%L146663%_)
                                         (let ((__tmp149215
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L146663%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp146623%_
                                 _%k146628%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp149215
                                            _%r146629%_))))
                                      (_%__kont147882147883%_
                                       (lambda () (reverse _%r146629%_))))
                                  (let ((_%g146632146679%_
                                         (lambda ()
                                           (let ((_%L146663%_
                                                  _%__stx147874147875%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L146663%_))
                                                 (_%__kont147880147881%_
                                                  _%L146663%_)
                                                 (_%__kont147882147883%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147874147875%_))
                                        (let ((_%e146637146708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147874147875%_))))
                                          (let ((_%tl146639146713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146637146708%_)))
                                                (_%hd146638146711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146637146708%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd146638146711%_))
                                                (let ((_%e146640146716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146638146711%_))))
                                                  (if (equal? _%e146640146716%_
                                                              '#f)
                                                      (_%__kont147876147877%_
                                                       _%tl146639146713%_)
                                                      (_%__kont147878147879%_
                                                       _%tl146639146713%_
                                                       _%hd146638146711%_)))
                                                (_%__kont147878147879%_
                                                 _%tl146639146713%_
                                                 _%hd146638146711%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146632146679%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp146623%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self146535%_
                                                       _%L146584%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp146623%_
                                         _%L146585%_
                                         _%L146584%_)
                                        _%body146732%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx147904147905%_))
                                                         (let ((_%e146604146770%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx147904147905%_))))
                   (let ((_%tl146606146775%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e146604146770%_)))
                         (_%hd146605146773%_
                          (let ()
                            (declare (not safe))
                            (##car _%e146604146770%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd146605146773%_))
                         (let ((_%e146607146778%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd146605146773%_))))
                           (if (equal? _%e146607146778%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146606146775%_))
                                   (_%__kont147906147907%_)
                                   (_%__kont147910147911%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146606146775%_))
                                   (_%__kont147908147909%_ _%hd146605146773%_)
                                   (_%__kont147910147911%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl146606146775%_))
                             (_%__kont147908147909%_ _%hd146605146773%_)
                             (_%__kont147910147911%_)))))
                 (_%__kont147910147911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146549146579%_
                                               _%hd146546146571%_)
                                              (_%g146538146555%_
                                               _%g146539146558%_))))
                                      (_%g146538146555%_ _%g146539146558%_))))
                              (_%g146538146555%_ _%g146539146558%_))))
                      (_%g146538146555%_ _%g146539146558%_)))))
          (_%g146537146786%_ _%stx146536%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals146510%_ _%hd146511%_ _%expr146512%_)
        (let ((_%$e146514%_ (gxc#apply-count-values _%expr146512%_)))
          (if _%$e146514%_
              ((lambda (_%count146517%_)
                 (let ((_%len146519%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd146511%_)))
                       (_%cmp146520%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd146511%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len146519%_ '0))
                           (_%cmp146520%_ _%count146517%_ _%len146519%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr146512%_
                          _%hd146511%_)))))
               _%$e146514%_)
              (let* ((_%len146526%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd146511%_)))
                     (_%cmp146528%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd146511%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg146530%_
                      (let ((__tmp149217
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd146511%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp149216 (number->string _%len146526%_)))
                        (declare (not safe))
                        (##string-append __tmp149217 __tmp149216 '" values")))
                     (_%count146532%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd146511%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len146526%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count146532%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals146510%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp146528%_
                                (cons _%count146532%_
                                      (cons _%len146526%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp146528%_
                                                        (cons _%count146532%_
                                                              (cons _%len146526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg146530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count146532%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var146505%_)
        (letrec ((_%generate-inline146507%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var146505%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var146505%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146507%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146507%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var146498%_ _%i146499%_ _%rest146500%_)
        (letrec ((_%generate-inline146502%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i146499%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest146500%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var146498%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var146498%_
                                                      (cons '0 '())))
                                          (cons _%var146498%_ '()))))
                        (cons '##values-ref
                              (cons _%var146498%_ (cons _%i146499%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146502%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146502%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var146492%_ _%i146493%_)
        (if (let () (declare (not safe)) (##fx= _%i146493%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var146492%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var146492%_ '()))
                                  (cons (cons 'list (cons _%var146492%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var146492%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var146492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var146492%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i146493%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var146492%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var146492%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var146492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var146492%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var146492%_ '()))
                                (cons _%i146493%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var146492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i146493%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self146424%_ _%stx146425%_)
        (let* ((_%g146427146444%_
                (lambda (_%g146428146441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146428146441%_))))
               (_%g146426146489%_
                (lambda (_%g146428146447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146428146447%_))
                      (let ((_%e146431146449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146428146447%_))))
                        (let ((_%hd146432146452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146431146449%_)))
                              (_%tl146433146454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146431146449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146433146454%_))
                              (let ((_%e146434146457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146433146454%_))))
                                (let ((_%hd146435146460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146434146457%_)))
                                      (_%tl146436146462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146434146457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146436146462%_))
                                      (let ((_%e146437146465%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146436146462%_))))
                                        (let ((_%hd146438146468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146437146465%_)))
                                              (_%tl146439146470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146437146465%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146439146470%_))
                                              ((lambda (_%L146473%_
                                                        _%L146474%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self146424%_
                                                  _%L146474%_
                                                  _%L146473%_))
                                               _%hd146438146468%_
                                               _%hd146435146460%_)
                                              (_%g146427146444%_
                                               _%g146428146447%_))))
                                      (_%g146427146444%_ _%g146428146447%_))))
                              (_%g146427146444%_ _%g146428146447%_))))
                      (_%g146427146444%_ _%g146428146447%_)))))
          (_%g146426146489%_ _%stx146425%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self146383%_ _%hd146384%_ _%body146385%_)
        (let* ((_%hd146387%_ (gxc#generate-runtime-lambda-head _%hd146384%_))
               (_%body146389%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self146383%_ _%body146385%_)))
               (_%body146421%_
                (let* ((_%body146390146398%_ _%body146389%_)
                       (_%else146392146406%_
                        (lambda () (cons _%body146389%_ '())))
                       (_%K146394146411%_
                        (lambda (_%exprs146409%_) _%exprs146409%_)))
                  (if (pair? _%body146390146398%_)
                      (let ((_%hd146395146414%_
                             (let ()
                               (declare (not safe))
                               (##car _%body146390146398%_)))
                            (_%tl146396146416%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body146390146398%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd146395146414%_ 'begin))
                            (let ((_%exprs146419%_ _%tl146396146416%_))
                              (_%K146394146411%_ _%exprs146419%_))
                            (_%else146392146406%_)))
                      (_%else146392146406%_)))))
          (cons 'lambda (cons _%hd146387%_ _%body146421%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd146381%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd146381%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self144920%_ _%stx144921%_)
        (letrec ((_%dispatch-case?144923%_
                  (lambda (_%hd145611%_ _%body145612%_)
                    (let* ((_%form145614%_
                            (cons _%hd145611%_ (cons _%body145612%_ '())))
                           (_%__stx147936147937%_ _%form145614%_)
                           (_%g145619145776%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147936147937%_)))))
                      (let ((_%__kont147938147939%_
                             (lambda (_%L146301%_ _%L146302%_ _%L146303%_)
                               '#t))
                            (_%__kont147944147945%_
                             (lambda (_%L146089%_
                                      _%L146090%_
                                      _%L146091%_
                                      _%L146092%_
                                      _%L146093%_
                                      _%L146094%_)
                               '#t))
                            (_%__kont147950147951%_
                             (lambda (_%L145884%_
                                      _%L145885%_
                                      _%L145886%_
                                      _%L145887%_)
                               '#t))
                            (_%__kont147952147953%_ (lambda () '#f)))
                        (let* ((_%__match148077148078%_
                                (lambda (_%e145736145788%_
                                         _%hd145737145791%_
                                         _%tl145738145793%_
                                         _%e145739145796%_
                                         _%hd145740145799%_
                                         _%tl145741145801%_
                                         _%e145742145804%_
                                         _%hd145743145807%_
                                         _%tl145744145809%_
                                         _%e145745145812%_
                                         _%hd145746145815%_
                                         _%tl145747145817%_
                                         _%e145748145820%_
                                         _%hd145749145823%_
                                         _%tl145750145825%_
                                         _%e145751145828%_
                                         _%hd145752145831%_
                                         _%tl145753145833%_
                                         _%e145754145836%_
                                         _%hd145755145839%_
                                         _%tl145756145841%_
                                         _%e145757145844%_
                                         _%hd145758145847%_
                                         _%tl145759145849%_
                                         _%e145760145852%_
                                         _%hd145761145855%_
                                         _%tl145762145857%_
                                         _%e145763145860%_
                                         _%hd145764145863%_
                                         _%tl145765145865%_
                                         _%e145766145868%_
                                         _%hd145767145871%_
                                         _%tl145768145873%_
                                         _%e145769145876%_
                                         _%hd145770145879%_
                                         _%tl145771145881%_)
                                  (let ((_%L145884%_ _%hd145770145879%_)
                                        (_%L145885%_ _%hd145761145855%_)
                                        (_%L145886%_ _%hd145752145831%_)
                                        (_%L145887%_ _%hd145737145791%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L145887%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L145886%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L145887%_
                                                _%L145884%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L145885%_
                                                     _%L145887%_))))
                                        (_%__kont147950147951%_
                                         _%L145884%_
                                         _%L145885%_
                                         _%L145886%_
                                         _%L145887%_)
                                        (_%__kont147952147953%_)))))
                               (_%__match148049148050%_
                                (lambda (_%e145736145788%_
                                         _%hd145737145791%_
                                         _%tl145738145793%_
                                         _%e145739145796%_
                                         _%hd145740145799%_
                                         _%tl145741145801%_
                                         _%e145742145804%_
                                         _%hd145743145807%_
                                         _%tl145744145809%_
                                         _%e145745145812%_
                                         _%hd145746145815%_
                                         _%tl145747145817%_
                                         _%e145748145820%_
                                         _%hd145749145823%_
                                         _%tl145750145825%_
                                         _%e145751145828%_
                                         _%hd145752145831%_
                                         _%tl145753145833%_
                                         _%e145754145836%_
                                         _%hd145755145839%_
                                         _%tl145756145841%_
                                         _%e145757145844%_
                                         _%hd145758145847%_
                                         _%tl145759145849%_
                                         _%e145760145852%_
                                         _%hd145761145855%_
                                         _%tl145762145857%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145756145841%_))
                                      (let ((_%e145763145860%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145756145841%_))))
                                        (let ((_%tl145765145865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145763145860%_)))
                                              (_%hd145764145863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145763145860%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145764145863%_))
                                              (let ((_%e145766145868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145764145863%_))))
                                                (let ((_%tl145768145873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145766145868%_)))
                                                      (_%hd145767145871%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145766145868%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd145767145871%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd145767145871%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145768145873%_))
                      (let ((_%e145769145876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145768145873%_))))
                        (let ((_%tl145771145881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145769145876%_)))
                              (_%hd145770145879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145769145876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145771145881%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl145765145865%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145741145801%_))
                                      (_%__match148077148078%_
                                       _%e145736145788%_
                                       _%hd145737145791%_
                                       _%tl145738145793%_
                                       _%e145739145796%_
                                       _%hd145740145799%_
                                       _%tl145741145801%_
                                       _%e145742145804%_
                                       _%hd145743145807%_
                                       _%tl145744145809%_
                                       _%e145745145812%_
                                       _%hd145746145815%_
                                       _%tl145747145817%_
                                       _%e145748145820%_
                                       _%hd145749145823%_
                                       _%tl145750145825%_
                                       _%e145751145828%_
                                       _%hd145752145831%_
                                       _%tl145753145833%_
                                       _%e145754145836%_
                                       _%hd145755145839%_
                                       _%tl145756145841%_
                                       _%e145757145844%_
                                       _%hd145758145847%_
                                       _%tl145759145849%_
                                       _%e145760145852%_
                                       _%hd145761145855%_
                                       _%tl145762145857%_
                                       _%e145763145860%_
                                       _%hd145764145863%_
                                       _%tl145765145865%_
                                       _%e145766145868%_
                                       _%hd145767145871%_
                                       _%tl145768145873%_
                                       _%e145769145876%_
                                       _%hd145770145879%_
                                       _%tl145771145881%_)
                                      (_%__kont147952147953%_))
                                  (_%__kont147952147953%_))
                              (_%__kont147952147953%_))))
                      (_%__kont147952147953%_))
                  (_%__kont147952147953%_))
              (_%__kont147952147953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147952147953%_))))
                                      (_%__kont147952147953%_))))
                               (_%__match147979147980%_
                                (lambda (_%e145672145929%_
                                         _%hd145673145932%_
                                         _%tl145674145934%_
                                         _%__splice147946147947%_
                                         _%target145675145937%_
                                         _%tl145677145939%_)
                                  (letrec ((_%loop145678145942%_
                                            (lambda (_%hd145676145945%_
                                                     _%arg145682145947%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145676145945%_))
                                                  (let ((_%e145679145950%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145676145945%_))))
                                                    (let ((_%lp-tl145681145955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145679145950%_)))
                                                          (_%lp-hd145680145953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145679145950%_))))
                                                      (_%loop145678145942%_
                                                       _%lp-tl145681145955%_
                                                       (cons _%lp-hd145680145953%_
                                                             _%arg145682145947%_))))
                                                  (let ((_%arg145683145958%_
                                                         (reverse _%arg145682145947%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145674145934%_))
                                                        (let ((_%e145684145961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145674145934%_))))
                  (let ((_%tl145686145966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145684145961%_)))
                        (_%hd145685145964%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145684145961%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145685145964%_))
                        (let ((_%e145687145969%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145685145964%_))))
                          (let ((_%tl145689145974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145687145969%_)))
                                (_%hd145688145972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145687145969%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145688145972%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145688145972%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145689145974%_))
                                        (let ((_%e145690145977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145689145974%_))))
                                          (let ((_%tl145692145982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145690145977%_)))
                                                (_%hd145691145980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145690145977%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145691145980%_))
                                                (let ((_%e145693145985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145691145980%_))))
                                                  (let ((_%tl145695145990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145693145985%_)))
                                                        (_%hd145694145988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145693145985%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145694145988%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145694145988%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145695145990%_))
                        (let ((_%e145696145993%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145695145990%_))))
                          (let ((_%tl145698145998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145696145993%_)))
                                (_%hd145697145996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145696145993%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145698145998%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145692145982%_))
                                    (let ((_%e145699146001%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145692145982%_))))
                                      (let ((_%tl145701146006%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145699146001%_)))
                                            (_%hd145700146004%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145699146001%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145700146004%_))
                                            (let ((_%e145702146009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145700146004%_))))
                                              (let ((_%tl145704146014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145702146009%_)))
                                                    (_%hd145703146012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145702146009%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145703146012%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145703146012%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145704146014%_))
                                                            (let ((_%e145705146017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145704146014%_))))
                      (let ((_%tl145707146022%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145705146017%_)))
                            (_%hd145706146020%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145705146017%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145707146022%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145701146006%_))
                                (if (let ((__tmp149218
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl145701146006%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp149218 '1))
                                    (let ((_%__splice147948147949%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145701146006%_
                                              '1))))
                                      (let ((_%tl145710146027%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147948147949%_
                                                '1)))
                                            (_%target145708146025%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147948147949%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145710146027%_))
                                            (let ((_%e145717146030%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145710146027%_))))
                                              (let ((_%tl145719146035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145717146030%_)))
                                                    (_%hd145718146033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145717146030%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd145718146033%_))
                                                    (let ((_%e145720146038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd145718146033%_))))
                                                      (let ((_%tl145722146043%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e145720146038%_)))
                    (_%hd145721146041%_
                     (let () (declare (not safe)) (##car _%e145720146038%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd145721146041%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd145721146041%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl145722146043%_))
                            (let ((_%e145723146046%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl145722146043%_))))
                              (let ((_%tl145725146051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145723146046%_)))
                                    (_%hd145724146049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145723146046%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl145725146051%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145719146035%_))
                                        (letrec ((_%loop145711146054%_
                                                  (lambda (_%hd145709146057%_
                                                           _%xarg145715146059%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145709146057%_))
                                                        (let ((_%e145712146062%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145709146057%_))))
                  (let ((_%lp-tl145714146067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145712146062%_)))
                        (_%lp-hd145713146065%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145712146062%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145713146065%_))
                        (let ((_%e145726146070%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145713146065%_))))
                          (let ((_%tl145728146075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145726146070%_)))
                                (_%hd145727146073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145726146070%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145727146073%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd145727146073%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145728146075%_))
                                        (let ((_%e145729146078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145728146075%_))))
                                          (let ((_%tl145731146083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145729146078%_)))
                                                (_%hd145730146081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145729146078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145731146083%_))
                                                (_%loop145711146054%_
                                                 _%lp-tl145714146067%_
                                                 (cons _%hd145730146081%_
                                                       _%xarg145715146059%_))
                                                (_%__match148049148050%_
                                                 _%e145672145929%_
                                                 _%hd145673145932%_
                                                 _%tl145674145934%_
                                                 _%e145684145961%_
                                                 _%hd145685145964%_
                                                 _%tl145686145966%_
                                                 _%e145687145969%_
                                                 _%hd145688145972%_
                                                 _%tl145689145974%_
                                                 _%e145690145977%_
                                                 _%hd145691145980%_
                                                 _%tl145692145982%_
                                                 _%e145693145985%_
                                                 _%hd145694145988%_
                                                 _%tl145695145990%_
                                                 _%e145696145993%_
                                                 _%hd145697145996%_
                                                 _%tl145698145998%_
                                                 _%e145699146001%_
                                                 _%hd145700146004%_
                                                 _%tl145701146006%_
                                                 _%e145702146009%_
                                                 _%hd145703146012%_
                                                 _%tl145704146014%_
                                                 _%e145705146017%_
                                                 _%hd145706146020%_
                                                 _%tl145707146022%_))))
                                        (_%__match148049148050%_
                                         _%e145672145929%_
                                         _%hd145673145932%_
                                         _%tl145674145934%_
                                         _%e145684145961%_
                                         _%hd145685145964%_
                                         _%tl145686145966%_
                                         _%e145687145969%_
                                         _%hd145688145972%_
                                         _%tl145689145974%_
                                         _%e145690145977%_
                                         _%hd145691145980%_
                                         _%tl145692145982%_
                                         _%e145693145985%_
                                         _%hd145694145988%_
                                         _%tl145695145990%_
                                         _%e145696145993%_
                                         _%hd145697145996%_
                                         _%tl145698145998%_
                                         _%e145699146001%_
                                         _%hd145700146004%_
                                         _%tl145701146006%_
                                         _%e145702146009%_
                                         _%hd145703146012%_
                                         _%tl145704146014%_
                                         _%e145705146017%_
                                         _%hd145706146020%_
                                         _%tl145707146022%_))
                                    (_%__match148049148050%_
                                     _%e145672145929%_
                                     _%hd145673145932%_
                                     _%tl145674145934%_
                                     _%e145684145961%_
                                     _%hd145685145964%_
                                     _%tl145686145966%_
                                     _%e145687145969%_
                                     _%hd145688145972%_
                                     _%tl145689145974%_
                                     _%e145690145977%_
                                     _%hd145691145980%_
                                     _%tl145692145982%_
                                     _%e145693145985%_
                                     _%hd145694145988%_
                                     _%tl145695145990%_
                                     _%e145696145993%_
                                     _%hd145697145996%_
                                     _%tl145698145998%_
                                     _%e145699146001%_
                                     _%hd145700146004%_
                                     _%tl145701146006%_
                                     _%e145702146009%_
                                     _%hd145703146012%_
                                     _%tl145704146014%_
                                     _%e145705146017%_
                                     _%hd145706146020%_
                                     _%tl145707146022%_))
                                (_%__match148049148050%_
                                 _%e145672145929%_
                                 _%hd145673145932%_
                                 _%tl145674145934%_
                                 _%e145684145961%_
                                 _%hd145685145964%_
                                 _%tl145686145966%_
                                 _%e145687145969%_
                                 _%hd145688145972%_
                                 _%tl145689145974%_
                                 _%e145690145977%_
                                 _%hd145691145980%_
                                 _%tl145692145982%_
                                 _%e145693145985%_
                                 _%hd145694145988%_
                                 _%tl145695145990%_
                                 _%e145696145993%_
                                 _%hd145697145996%_
                                 _%tl145698145998%_
                                 _%e145699146001%_
                                 _%hd145700146004%_
                                 _%tl145701146006%_
                                 _%e145702146009%_
                                 _%hd145703146012%_
                                 _%tl145704146014%_
                                 _%e145705146017%_
                                 _%hd145706146020%_
                                 _%tl145707146022%_))))
                        (_%__match148049148050%_
                         _%e145672145929%_
                         _%hd145673145932%_
                         _%tl145674145934%_
                         _%e145684145961%_
                         _%hd145685145964%_
                         _%tl145686145966%_
                         _%e145687145969%_
                         _%hd145688145972%_
                         _%tl145689145974%_
                         _%e145690145977%_
                         _%hd145691145980%_
                         _%tl145692145982%_
                         _%e145693145985%_
                         _%hd145694145988%_
                         _%tl145695145990%_
                         _%e145696145993%_
                         _%hd145697145996%_
                         _%tl145698145998%_
                         _%e145699146001%_
                         _%hd145700146004%_
                         _%tl145701146006%_
                         _%e145702146009%_
                         _%hd145703146012%_
                         _%tl145704146014%_
                         _%e145705146017%_
                         _%hd145706146020%_
                         _%tl145707146022%_))))
                (let ((_%xarg145716146086%_ (reverse _%xarg145715146059%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145686145966%_))
                      (let ((_%L146089%_ _%hd145724146049%_)
                            (_%L146090%_ _%xarg145716146086%_)
                            (_%L146091%_ _%hd145706146020%_)
                            (_%L146092%_ _%hd145697145996%_)
                            (_%L146093%_ _%tl145677145939%_)
                            (_%L146094%_ _%arg145683145958%_))
                        (if (and (let ((__tmp149219
                                        (let ((__tmp149220
                                               (lambda (_%g146137146140%_
                                                        _%g146138146142%_)
                                                 (cons _%g146137146140%_
                                                       _%g146138146142%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149220
                                           '()
                                           _%L146094%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp149219))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L146093%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L146092%_
                                    'apply))
                                 (let ((__tmp149223
                                        (length (let ((__tmp149224
                                                       (lambda (_%g146144146147%_
                                                                _%g146145146149%_)
                                                         (cons _%g146144146147%_
                                                               _%g146145146149%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149224
                                                   '()
                                                   _%L146094%_))))
                                       (__tmp149221
                                        (length (let ((__tmp149222
                                                       (lambda (_%g146151146154%_
                                                                _%g146152146156%_)
                                                         (cons _%g146151146154%_
                                                               _%g146152146156%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149222
                                                   '()
                                                   _%L146090%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp149223 __tmp149221))
                                 (let ((__tmp149227
                                        (let ((__tmp149228
                                               (lambda (_%g146158146161%_
                                                        _%g146159146163%_)
                                                 (cons _%g146158146161%_
                                                       _%g146159146163%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149228
                                           '()
                                           _%L146094%_)))
                                       (__tmp149225
                                        (let ((__tmp149226
                                               (lambda (_%g146165146168%_
                                                        _%g146166146170%_)
                                                 (cons _%g146165146168%_
                                                       _%g146166146170%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149226
                                           '()
                                           _%L146090%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp149227
                                    __tmp149225))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L146093%_
                                    _%L146089%_))
                                 (not (let ((__tmp149232
                                             (lambda (_%g146172146174%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g146172146174%_
                                                  _%L146091%_))))
                                            (__tmp149229
                                             (let ((__tmp149231
                                                    (lambda (_%g146176146179%_
                                                             _%g146177146181%_)
                                                      (cons _%g146176146179%_
                                                            _%g146177146181%_)))
                                                   (__tmp149230
                                                    (cons _%L146093%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149231
                                                __tmp149230
                                                _%L146094%_))))
                                        (declare (not safe))
                                        (__find __tmp149232 __tmp149229))))
                            (_%__kont147944147945%_
                             _%L146089%_
                             _%L146090%_
                             _%L146091%_
                             _%L146092%_
                             _%L146093%_
                             _%L146094%_)
                            (_%__match148049148050%_
                             _%e145672145929%_
                             _%hd145673145932%_
                             _%tl145674145934%_
                             _%e145684145961%_
                             _%hd145685145964%_
                             _%tl145686145966%_
                             _%e145687145969%_
                             _%hd145688145972%_
                             _%tl145689145974%_
                             _%e145690145977%_
                             _%hd145691145980%_
                             _%tl145692145982%_
                             _%e145693145985%_
                             _%hd145694145988%_
                             _%tl145695145990%_
                             _%e145696145993%_
                             _%hd145697145996%_
                             _%tl145698145998%_
                             _%e145699146001%_
                             _%hd145700146004%_
                             _%tl145701146006%_
                             _%e145702146009%_
                             _%hd145703146012%_
                             _%tl145704146014%_
                             _%e145705146017%_
                             _%hd145706146020%_
                             _%tl145707146022%_)))
                      (_%__match148049148050%_
                       _%e145672145929%_
                       _%hd145673145932%_
                       _%tl145674145934%_
                       _%e145684145961%_
                       _%hd145685145964%_
                       _%tl145686145966%_
                       _%e145687145969%_
                       _%hd145688145972%_
                       _%tl145689145974%_
                       _%e145690145977%_
                       _%hd145691145980%_
                       _%tl145692145982%_
                       _%e145693145985%_
                       _%hd145694145988%_
                       _%tl145695145990%_
                       _%e145696145993%_
                       _%hd145697145996%_
                       _%tl145698145998%_
                       _%e145699146001%_
                       _%hd145700146004%_
                       _%tl145701146006%_
                       _%e145702146009%_
                       _%hd145703146012%_
                       _%tl145704146014%_
                       _%e145705146017%_
                       _%hd145706146020%_
                       _%tl145707146022%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145711146054%_
                                           _%target145708146025%_
                                           '()))
                                        (_%__match148049148050%_
                                         _%e145672145929%_
                                         _%hd145673145932%_
                                         _%tl145674145934%_
                                         _%e145684145961%_
                                         _%hd145685145964%_
                                         _%tl145686145966%_
                                         _%e145687145969%_
                                         _%hd145688145972%_
                                         _%tl145689145974%_
                                         _%e145690145977%_
                                         _%hd145691145980%_
                                         _%tl145692145982%_
                                         _%e145693145985%_
                                         _%hd145694145988%_
                                         _%tl145695145990%_
                                         _%e145696145993%_
                                         _%hd145697145996%_
                                         _%tl145698145998%_
                                         _%e145699146001%_
                                         _%hd145700146004%_
                                         _%tl145701146006%_
                                         _%e145702146009%_
                                         _%hd145703146012%_
                                         _%tl145704146014%_
                                         _%e145705146017%_
                                         _%hd145706146020%_
                                         _%tl145707146022%_))
                                    (_%__match148049148050%_
                                     _%e145672145929%_
                                     _%hd145673145932%_
                                     _%tl145674145934%_
                                     _%e145684145961%_
                                     _%hd145685145964%_
                                     _%tl145686145966%_
                                     _%e145687145969%_
                                     _%hd145688145972%_
                                     _%tl145689145974%_
                                     _%e145690145977%_
                                     _%hd145691145980%_
                                     _%tl145692145982%_
                                     _%e145693145985%_
                                     _%hd145694145988%_
                                     _%tl145695145990%_
                                     _%e145696145993%_
                                     _%hd145697145996%_
                                     _%tl145698145998%_
                                     _%e145699146001%_
                                     _%hd145700146004%_
                                     _%tl145701146006%_
                                     _%e145702146009%_
                                     _%hd145703146012%_
                                     _%tl145704146014%_
                                     _%e145705146017%_
                                     _%hd145706146020%_
                                     _%tl145707146022%_))))
                            (_%__match148049148050%_
                             _%e145672145929%_
                             _%hd145673145932%_
                             _%tl145674145934%_
                             _%e145684145961%_
                             _%hd145685145964%_
                             _%tl145686145966%_
                             _%e145687145969%_
                             _%hd145688145972%_
                             _%tl145689145974%_
                             _%e145690145977%_
                             _%hd145691145980%_
                             _%tl145692145982%_
                             _%e145693145985%_
                             _%hd145694145988%_
                             _%tl145695145990%_
                             _%e145696145993%_
                             _%hd145697145996%_
                             _%tl145698145998%_
                             _%e145699146001%_
                             _%hd145700146004%_
                             _%tl145701146006%_
                             _%e145702146009%_
                             _%hd145703146012%_
                             _%tl145704146014%_
                             _%e145705146017%_
                             _%hd145706146020%_
                             _%tl145707146022%_))
                        (_%__match148049148050%_
                         _%e145672145929%_
                         _%hd145673145932%_
                         _%tl145674145934%_
                         _%e145684145961%_
                         _%hd145685145964%_
                         _%tl145686145966%_
                         _%e145687145969%_
                         _%hd145688145972%_
                         _%tl145689145974%_
                         _%e145690145977%_
                         _%hd145691145980%_
                         _%tl145692145982%_
                         _%e145693145985%_
                         _%hd145694145988%_
                         _%tl145695145990%_
                         _%e145696145993%_
                         _%hd145697145996%_
                         _%tl145698145998%_
                         _%e145699146001%_
                         _%hd145700146004%_
                         _%tl145701146006%_
                         _%e145702146009%_
                         _%hd145703146012%_
                         _%tl145704146014%_
                         _%e145705146017%_
                         _%hd145706146020%_
                         _%tl145707146022%_))
                    (_%__match148049148050%_
                     _%e145672145929%_
                     _%hd145673145932%_
                     _%tl145674145934%_
                     _%e145684145961%_
                     _%hd145685145964%_
                     _%tl145686145966%_
                     _%e145687145969%_
                     _%hd145688145972%_
                     _%tl145689145974%_
                     _%e145690145977%_
                     _%hd145691145980%_
                     _%tl145692145982%_
                     _%e145693145985%_
                     _%hd145694145988%_
                     _%tl145695145990%_
                     _%e145696145993%_
                     _%hd145697145996%_
                     _%tl145698145998%_
                     _%e145699146001%_
                     _%hd145700146004%_
                     _%tl145701146006%_
                     _%e145702146009%_
                     _%hd145703146012%_
                     _%tl145704146014%_
                     _%e145705146017%_
                     _%hd145706146020%_
                     _%tl145707146022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match148049148050%_
                                                     _%e145672145929%_
                                                     _%hd145673145932%_
                                                     _%tl145674145934%_
                                                     _%e145684145961%_
                                                     _%hd145685145964%_
                                                     _%tl145686145966%_
                                                     _%e145687145969%_
                                                     _%hd145688145972%_
                                                     _%tl145689145974%_
                                                     _%e145690145977%_
                                                     _%hd145691145980%_
                                                     _%tl145692145982%_
                                                     _%e145693145985%_
                                                     _%hd145694145988%_
                                                     _%tl145695145990%_
                                                     _%e145696145993%_
                                                     _%hd145697145996%_
                                                     _%tl145698145998%_
                                                     _%e145699146001%_
                                                     _%hd145700146004%_
                                                     _%tl145701146006%_
                                                     _%e145702146009%_
                                                     _%hd145703146012%_
                                                     _%tl145704146014%_
                                                     _%e145705146017%_
                                                     _%hd145706146020%_
                                                     _%tl145707146022%_))))
                                            (_%__match148049148050%_
                                             _%e145672145929%_
                                             _%hd145673145932%_
                                             _%tl145674145934%_
                                             _%e145684145961%_
                                             _%hd145685145964%_
                                             _%tl145686145966%_
                                             _%e145687145969%_
                                             _%hd145688145972%_
                                             _%tl145689145974%_
                                             _%e145690145977%_
                                             _%hd145691145980%_
                                             _%tl145692145982%_
                                             _%e145693145985%_
                                             _%hd145694145988%_
                                             _%tl145695145990%_
                                             _%e145696145993%_
                                             _%hd145697145996%_
                                             _%tl145698145998%_
                                             _%e145699146001%_
                                             _%hd145700146004%_
                                             _%tl145701146006%_
                                             _%e145702146009%_
                                             _%hd145703146012%_
                                             _%tl145704146014%_
                                             _%e145705146017%_
                                             _%hd145706146020%_
                                             _%tl145707146022%_))))
                                    (_%__match148049148050%_
                                     _%e145672145929%_
                                     _%hd145673145932%_
                                     _%tl145674145934%_
                                     _%e145684145961%_
                                     _%hd145685145964%_
                                     _%tl145686145966%_
                                     _%e145687145969%_
                                     _%hd145688145972%_
                                     _%tl145689145974%_
                                     _%e145690145977%_
                                     _%hd145691145980%_
                                     _%tl145692145982%_
                                     _%e145693145985%_
                                     _%hd145694145988%_
                                     _%tl145695145990%_
                                     _%e145696145993%_
                                     _%hd145697145996%_
                                     _%tl145698145998%_
                                     _%e145699146001%_
                                     _%hd145700146004%_
                                     _%tl145701146006%_
                                     _%e145702146009%_
                                     _%hd145703146012%_
                                     _%tl145704146014%_
                                     _%e145705146017%_
                                     _%hd145706146020%_
                                     _%tl145707146022%_))
                                (_%__match148049148050%_
                                 _%e145672145929%_
                                 _%hd145673145932%_
                                 _%tl145674145934%_
                                 _%e145684145961%_
                                 _%hd145685145964%_
                                 _%tl145686145966%_
                                 _%e145687145969%_
                                 _%hd145688145972%_
                                 _%tl145689145974%_
                                 _%e145690145977%_
                                 _%hd145691145980%_
                                 _%tl145692145982%_
                                 _%e145693145985%_
                                 _%hd145694145988%_
                                 _%tl145695145990%_
                                 _%e145696145993%_
                                 _%hd145697145996%_
                                 _%tl145698145998%_
                                 _%e145699146001%_
                                 _%hd145700146004%_
                                 _%tl145701146006%_
                                 _%e145702146009%_
                                 _%hd145703146012%_
                                 _%tl145704146014%_
                                 _%e145705146017%_
                                 _%hd145706146020%_
                                 _%tl145707146022%_))
                            (_%__kont147952147953%_))))
                    (_%__kont147952147953%_))
                (_%__kont147952147953%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147952147953%_))))
                                            (_%__kont147952147953%_))))
                                    (_%__kont147952147953%_))
                                (_%__kont147952147953%_))))
                        (_%__kont147952147953%_))
                    (_%__kont147952147953%_))
                (_%__kont147952147953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont147952147953%_))))
                                        (_%__kont147952147953%_))
                                    (_%__kont147952147953%_))
                                (_%__kont147952147953%_))))
                        (_%__kont147952147953%_))))
                (_%__kont147952147953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145678145942%_
                                     _%target145675145937%_
                                     '()))))
                               (_%__match147967147968%_
                                (lambda (_%e145624146189%_
                                         _%hd145625146192%_
                                         _%tl145626146194%_
                                         _%__splice147940147941%_
                                         _%target145627146197%_
                                         _%tl145629146199%_)
                                  (letrec ((_%loop145630146202%_
                                            (lambda (_%hd145628146205%_
                                                     _%arg145634146207%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145628146205%_))
                                                  (let ((_%e145631146210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145628146205%_))))
                                                    (let ((_%lp-tl145633146215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145631146210%_)))
                                                          (_%lp-hd145632146213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145631146210%_))))
                                                      (_%loop145630146202%_
                                                       _%lp-tl145633146215%_
                                                       (cons _%lp-hd145632146213%_
                                                             _%arg145634146207%_))))
                                                  (let ((_%arg145635146218%_
                                                         (reverse _%arg145634146207%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145626146194%_))
                                                        (let ((_%e145636146221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145626146194%_))))
                  (let ((_%tl145638146226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145636146221%_)))
                        (_%hd145637146224%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145636146221%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145637146224%_))
                        (let ((_%e145639146229%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145637146224%_))))
                          (let ((_%tl145641146234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145639146229%_)))
                                (_%hd145640146232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145639146229%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145640146232%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145640146232%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145641146234%_))
                                        (let ((_%e145642146237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145641146234%_))))
                                          (let ((_%tl145644146242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145642146237%_)))
                                                (_%hd145643146240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145642146237%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145643146240%_))
                                                (let ((_%e145645146245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145643146240%_))))
                                                  (let ((_%tl145647146250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145645146245%_)))
                                                        (_%hd145646146248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145645146245%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145646146248%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145646146248%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145647146250%_))
                        (let ((_%e145648146253%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145647146250%_))))
                          (let ((_%tl145650146258%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145648146253%_)))
                                (_%hd145649146256%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145648146253%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145650146258%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145644146242%_))
                                    (let ((_%__splice147942147943%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145644146242%_
                                              '0))))
                                      (let ((_%tl145653146263%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147942147943%_
                                                '1)))
                                            (_%target145651146261%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147942147943%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145653146263%_))
                                            (letrec ((_%loop145654146266%_
                                                      (lambda (_%hd145652146269%_
                                                               _%xarg145658146271%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145652146269%_))
                                                            (let ((_%e145655146274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145652146269%_))))
                      (let ((_%lp-tl145657146279%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145655146274%_)))
                            (_%lp-hd145656146277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145655146274%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145656146277%_))
                            (let ((_%e145660146282%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145656146277%_))))
                              (let ((_%tl145662146287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145660146282%_)))
                                    (_%hd145661146285%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145660146282%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145661146285%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145661146285%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145662146287%_))
                                            (let ((_%e145663146290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145662146287%_))))
                                              (let ((_%tl145665146295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145663146290%_)))
                                                    (_%hd145664146293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145663146290%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145665146295%_))
                                                    (_%loop145654146266%_
                                                     _%lp-tl145657146279%_
                                                     (cons _%hd145664146293%_
                                                           _%xarg145658146271%_))
                                                    (_%__match147979147980%_
                                                     _%e145624146189%_
                                                     _%hd145625146192%_
                                                     _%tl145626146194%_
                                                     _%__splice147940147941%_
                                                     _%target145627146197%_
                                                     _%tl145629146199%_))))
                                            (_%__match147979147980%_
                                             _%e145624146189%_
                                             _%hd145625146192%_
                                             _%tl145626146194%_
                                             _%__splice147940147941%_
                                             _%target145627146197%_
                                             _%tl145629146199%_))
                                        (_%__match147979147980%_
                                         _%e145624146189%_
                                         _%hd145625146192%_
                                         _%tl145626146194%_
                                         _%__splice147940147941%_
                                         _%target145627146197%_
                                         _%tl145629146199%_))
                                    (_%__match147979147980%_
                                     _%e145624146189%_
                                     _%hd145625146192%_
                                     _%tl145626146194%_
                                     _%__splice147940147941%_
                                     _%target145627146197%_
                                     _%tl145629146199%_))))
                            (_%__match147979147980%_
                             _%e145624146189%_
                             _%hd145625146192%_
                             _%tl145626146194%_
                             _%__splice147940147941%_
                             _%target145627146197%_
                             _%tl145629146199%_))))
                    (let ((_%xarg145659146298%_
                           (reverse _%xarg145658146271%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145638146226%_))
                          (let ((_%L146301%_ _%xarg145659146298%_)
                                (_%L146302%_ _%hd145649146256%_)
                                (_%L146303%_ _%arg145635146218%_))
                            (if (and (let ((__tmp149233
                                            (let ((__tmp149234
                                                   (lambda (_%g146331146334%_
                                                            _%g146332146336%_)
                                                     (cons _%g146331146334%_
                                                           _%g146332146336%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149234
                                               '()
                                               _%L146303%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp149233))
                                     (let ((__tmp149237
                                            (length (let ((__tmp149238
                                                           (lambda (_%g146338146341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146339146343%_)
                     (cons _%g146338146341%_ _%g146339146343%_))))
              (declare (not safe))
              (__foldr1 __tmp149238 '() _%L146303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp149235
                                            (length (let ((__tmp149236
                                                           (lambda (_%g146345146348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146346146350%_)
                     (cons _%g146345146348%_ _%g146346146350%_))))
              (declare (not safe))
              (__foldr1 __tmp149236 '() _%L146301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149237 __tmp149235))
                                     (let ((__tmp149241
                                            (let ((__tmp149242
                                                   (lambda (_%g146352146355%_
                                                            _%g146353146357%_)
                                                     (cons _%g146352146355%_
                                                           _%g146353146357%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149242
                                               '()
                                               _%L146303%_)))
                                           (__tmp149239
                                            (let ((__tmp149240
                                                   (lambda (_%g146359146362%_
                                                            _%g146360146364%_)
                                                     (cons _%g146359146362%_
                                                           _%g146360146364%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149240
                                               '()
                                               _%L146301%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp149241
                                        __tmp149239))
                                     (not (let ((__tmp149245
                                                 (lambda (_%g146366146368%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g146366146368%_
                                                      _%L146302%_))))
                                                (__tmp149243
                                                 (let ((__tmp149244
                                                        (lambda (_%g146370146373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g146371146375%_)
                  (cons _%g146370146373%_ _%g146371146375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp149244
                                                    '()
                                                    _%L146303%_))))
                                            (declare (not safe))
                                            (__find __tmp149245 __tmp149243))))
                                (_%__kont147938147939%_
                                 _%L146301%_
                                 _%L146302%_
                                 _%L146303%_)
                                (_%__match147979147980%_
                                 _%e145624146189%_
                                 _%hd145625146192%_
                                 _%tl145626146194%_
                                 _%__splice147940147941%_
                                 _%target145627146197%_
                                 _%tl145629146199%_)))
                          (_%__match147979147980%_
                           _%e145624146189%_
                           _%hd145625146192%_
                           _%tl145626146194%_
                           _%__splice147940147941%_
                           _%target145627146197%_
                           _%tl145629146199%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145654146266%_
                                               _%target145651146261%_
                                               '()))
                                            (_%__match147979147980%_
                                             _%e145624146189%_
                                             _%hd145625146192%_
                                             _%tl145626146194%_
                                             _%__splice147940147941%_
                                             _%target145627146197%_
                                             _%tl145629146199%_))))
                                    (_%__match147979147980%_
                                     _%e145624146189%_
                                     _%hd145625146192%_
                                     _%tl145626146194%_
                                     _%__splice147940147941%_
                                     _%target145627146197%_
                                     _%tl145629146199%_))
                                (_%__match147979147980%_
                                 _%e145624146189%_
                                 _%hd145625146192%_
                                 _%tl145626146194%_
                                 _%__splice147940147941%_
                                 _%target145627146197%_
                                 _%tl145629146199%_))))
                        (_%__match147979147980%_
                         _%e145624146189%_
                         _%hd145625146192%_
                         _%tl145626146194%_
                         _%__splice147940147941%_
                         _%target145627146197%_
                         _%tl145629146199%_))
                    (_%__match147979147980%_
                     _%e145624146189%_
                     _%hd145625146192%_
                     _%tl145626146194%_
                     _%__splice147940147941%_
                     _%target145627146197%_
                     _%tl145629146199%_))
                (_%__match147979147980%_
                 _%e145624146189%_
                 _%hd145625146192%_
                 _%tl145626146194%_
                 _%__splice147940147941%_
                 _%target145627146197%_
                 _%tl145629146199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147979147980%_
                                                 _%e145624146189%_
                                                 _%hd145625146192%_
                                                 _%tl145626146194%_
                                                 _%__splice147940147941%_
                                                 _%target145627146197%_
                                                 _%tl145629146199%_))))
                                        (_%__match147979147980%_
                                         _%e145624146189%_
                                         _%hd145625146192%_
                                         _%tl145626146194%_
                                         _%__splice147940147941%_
                                         _%target145627146197%_
                                         _%tl145629146199%_))
                                    (_%__match147979147980%_
                                     _%e145624146189%_
                                     _%hd145625146192%_
                                     _%tl145626146194%_
                                     _%__splice147940147941%_
                                     _%target145627146197%_
                                     _%tl145629146199%_))
                                (_%__match147979147980%_
                                 _%e145624146189%_
                                 _%hd145625146192%_
                                 _%tl145626146194%_
                                 _%__splice147940147941%_
                                 _%target145627146197%_
                                 _%tl145629146199%_))))
                        (_%__match147979147980%_
                         _%e145624146189%_
                         _%hd145625146192%_
                         _%tl145626146194%_
                         _%__splice147940147941%_
                         _%target145627146197%_
                         _%tl145629146199%_))))
                (_%__match147979147980%_
                 _%e145624146189%_
                 _%hd145625146192%_
                 _%tl145626146194%_
                 _%__splice147940147941%_
                 _%target145627146197%_
                 _%tl145629146199%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145630146202%_
                                     _%target145627146197%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147936147937%_))
                              (let ((_%e145624146189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147936147937%_))))
                                (let ((_%tl145626146194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145624146189%_)))
                                      (_%hd145625146192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145624146189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145625146192%_))
                                      (let ((_%__splice147940147941%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145625146192%_
                                                '0))))
                                        (let ((_%tl145629146199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147940147941%_
                                                  '1)))
                                              (_%target145627146197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147940147941%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145629146199%_))
                                              (_%__match147967147968%_
                                               _%e145624146189%_
                                               _%hd145625146192%_
                                               _%tl145626146194%_
                                               _%__splice147940147941%_
                                               _%target145627146197%_
                                               _%tl145629146199%_)
                                              (_%__match147979147980%_
                                               _%e145624146189%_
                                               _%hd145625146192%_
                                               _%tl145626146194%_
                                               _%__splice147940147941%_
                                               _%target145627146197%_
                                               _%tl145629146199%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145626146194%_))
                                          (let ((_%e145739145796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145626146194%_))))
                                            (let ((_%tl145741145801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145739145796%_)))
                                                  (_%hd145740145799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145739145796%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145740145799%_))
                                                  (let ((_%e145742145804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145740145799%_))))
                                                    (let ((_%tl145744145809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145742145804%_)))
                                                          (_%hd145743145807%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145742145804%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145743145807%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145743145807%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145744145809%_))
                          (let ((_%e145745145812%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145744145809%_))))
                            (let ((_%tl145747145817%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145745145812%_)))
                                  (_%hd145746145815%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145745145812%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145746145815%_))
                                  (let ((_%e145748145820%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145746145815%_))))
                                    (let ((_%tl145750145825%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145748145820%_)))
                                          (_%hd145749145823%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145748145820%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145749145823%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145749145823%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145750145825%_))
                                                  (let ((_%e145751145828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145750145825%_))))
                                                    (let ((_%tl145753145833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145751145828%_)))
                                                          (_%hd145752145831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145751145828%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145753145833%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145747145817%_))
                      (let ((_%e145754145836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145747145817%_))))
                        (let ((_%tl145756145841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145754145836%_)))
                              (_%hd145755145839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145754145836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145755145839%_))
                              (let ((_%e145757145844%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145755145839%_))))
                                (let ((_%tl145759145849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145757145844%_)))
                                      (_%hd145758145847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145757145844%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145758145847%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145758145847%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145759145849%_))
                                              (let ((_%e145760145852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145759145849%_))))
                                                (let ((_%tl145762145857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145760145852%_)))
                                                      (_%hd145761145855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145760145852%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145762145857%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145756145841%_))
                                                          (let ((_%e145763145860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145756145841%_))))
                    (let ((_%tl145765145865%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145763145860%_)))
                          (_%hd145764145863%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145763145860%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd145764145863%_))
                          (let ((_%e145766145868%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd145764145863%_))))
                            (let ((_%tl145768145873%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145766145868%_)))
                                  (_%hd145767145871%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145766145868%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd145767145871%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd145767145871%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145768145873%_))
                                          (let ((_%e145769145876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145768145873%_))))
                                            (let ((_%tl145771145881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145769145876%_)))
                                                  (_%hd145770145879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145769145876%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145771145881%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145765145865%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145741145801%_))
                                                          (_%__match148077148078%_
                                                           _%e145624146189%_
                                                           _%hd145625146192%_
                                                           _%tl145626146194%_
                                                           _%e145739145796%_
                                                           _%hd145740145799%_
                                                           _%tl145741145801%_
                                                           _%e145742145804%_
                                                           _%hd145743145807%_
                                                           _%tl145744145809%_
                                                           _%e145745145812%_
                                                           _%hd145746145815%_
                                                           _%tl145747145817%_
                                                           _%e145748145820%_
                                                           _%hd145749145823%_
                                                           _%tl145750145825%_
                                                           _%e145751145828%_
                                                           _%hd145752145831%_
                                                           _%tl145753145833%_
                                                           _%e145754145836%_
                                                           _%hd145755145839%_
                                                           _%tl145756145841%_
                                                           _%e145757145844%_
                                                           _%hd145758145847%_
                                                           _%tl145759145849%_
                                                           _%e145760145852%_
                                                           _%hd145761145855%_
                                                           _%tl145762145857%_
                                                           _%e145763145860%_
                                                           _%hd145764145863%_
                                                           _%tl145765145865%_
                                                           _%e145766145868%_
                                                           _%hd145767145871%_
                                                           _%tl145768145873%_
                                                           _%e145769145876%_
                                                           _%hd145770145879%_
                                                           _%tl145771145881%_)
                                                          (_%__kont147952147953%_))
                                                      (_%__kont147952147953%_))
                                                  (_%__kont147952147953%_))))
                                          (_%__kont147952147953%_))
                                      (_%__kont147952147953%_))
                                  (_%__kont147952147953%_))))
                          (_%__kont147952147953%_))))
                  (_%__kont147952147953%_))
              (_%__kont147952147953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147952147953%_))
                                          (_%__kont147952147953%_))
                                      (_%__kont147952147953%_))))
                              (_%__kont147952147953%_))))
                      (_%__kont147952147953%_))
                  (_%__kont147952147953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147952147953%_))
                                              (_%__kont147952147953%_))
                                          (_%__kont147952147953%_))))
                                  (_%__kont147952147953%_))))
                          (_%__kont147952147953%_))
                      (_%__kont147952147953%_))
                  (_%__kont147952147953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147952147953%_))))
                                          (_%__kont147952147953%_)))))
                              (_%__kont147952147953%_)))))))
                 (_%dispatch-case-e144924%_
                  (lambda (_%hd145075%_ _%body145076%_)
                    (let* ((_%form145078%_
                            (cons _%hd145075%_ (cons _%body145076%_ '())))
                           (_%__stx148080148081%_ _%form145078%_)
                           (_%g145082145206%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148080148081%_)))))
                      (let ((_%__kont148082148083%_
                             (lambda (_%L145577%_ _%L145578%_ _%L145579%_)
                               (let ((__tmp149246
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145578%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144920%_
                                  __tmp149246))))
                            (_%__kont148088148089%_
                             (lambda (_%L145425%_
                                      _%L145426%_
                                      _%L145427%_
                                      _%L145428%_)
                               (let ((__tmp149247
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145425%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144920%_
                                  __tmp149247))))
                            (_%__kont148092148093%_
                             (lambda (_%L145291%_ _%L145292%_ _%L145293%_)
                               (let ((__tmp149248
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145291%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144920%_
                                  __tmp149248)))))
                        (let* ((_%__match148189148190%_
                                (lambda (_%e145172145211%_
                                         _%hd145173145214%_
                                         _%tl145174145216%_
                                         _%e145175145219%_
                                         _%hd145176145222%_
                                         _%tl145177145224%_
                                         _%e145178145227%_
                                         _%hd145179145230%_
                                         _%tl145180145232%_
                                         _%e145181145235%_
                                         _%hd145182145238%_
                                         _%tl145183145240%_
                                         _%e145184145243%_
                                         _%hd145185145246%_
                                         _%tl145186145248%_
                                         _%e145187145251%_
                                         _%hd145188145254%_
                                         _%tl145189145256%_
                                         _%e145190145259%_
                                         _%hd145191145262%_
                                         _%tl145192145264%_
                                         _%e145193145267%_
                                         _%hd145194145270%_
                                         _%tl145195145272%_
                                         _%e145196145275%_
                                         _%hd145197145278%_
                                         _%tl145198145280%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145192145264%_))
                                      (let ((_%e145199145283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145192145264%_))))
                                        (let ((_%tl145201145288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145199145283%_)))
                                              (_%hd145200145286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145199145283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145201145288%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145177145224%_))
                                                  (_%__kont148092148093%_
                                                   _%hd145197145278%_
                                                   _%hd145188145254%_
                                                   _%hd145173145214%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145082145206%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145082145206%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145082145206%_)))))
                               (_%__match148119148120%_
                                (lambda (_%e145133145329%_
                                         _%hd145134145332%_
                                         _%tl145135145334%_
                                         _%__splice148090148091%_
                                         _%target145136145337%_
                                         _%tl145138145339%_)
                                  (letrec ((_%loop145139145342%_
                                            (lambda (_%hd145137145345%_
                                                     _%arg145143145347%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145137145345%_))
                                                  (let ((_%e145140145350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145137145345%_))))
                                                    (let ((_%lp-tl145142145355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145140145350%_)))
                                                          (_%lp-hd145141145353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145140145350%_))))
                                                      (_%loop145139145342%_
                                                       _%lp-tl145142145355%_
                                                       (cons _%lp-hd145141145353%_
                                                             _%arg145143145347%_))))
                                                  (let ((_%arg145144145358%_
                                                         (reverse _%arg145143145347%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145135145334%_))
                                                        (let ((_%e145145145361%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145135145334%_))))
                  (let ((_%tl145147145366%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145145145361%_)))
                        (_%hd145146145364%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145145145361%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145146145364%_))
                        (let ((_%e145148145369%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145146145364%_))))
                          (let ((_%tl145150145374%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145148145369%_)))
                                (_%hd145149145372%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145148145369%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145149145372%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145149145372%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145150145374%_))
                                        (let ((_%e145151145377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145150145374%_))))
                                          (let ((_%tl145153145382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145151145377%_)))
                                                (_%hd145152145380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145151145377%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145152145380%_))
                                                (let ((_%e145154145385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145152145380%_))))
                                                  (let ((_%tl145156145390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145154145385%_)))
                                                        (_%hd145155145388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145154145385%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145155145388%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145155145388%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145156145390%_))
                        (let ((_%e145157145393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145156145390%_))))
                          (let ((_%tl145159145398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145157145393%_)))
                                (_%hd145158145396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145157145393%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145159145398%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145153145382%_))
                                    (let ((_%e145160145401%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145153145382%_))))
                                      (let ((_%tl145162145406%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145160145401%_)))
                                            (_%hd145161145404%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145160145401%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145161145404%_))
                                            (let ((_%e145163145409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145161145404%_))))
                                              (let ((_%tl145165145414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145163145409%_)))
                                                    (_%hd145164145412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145163145409%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145164145412%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145164145412%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145165145414%_))
                                                            (let ((_%e145166145417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145165145414%_))))
                      (let ((_%tl145168145422%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145166145417%_)))
                            (_%hd145167145420%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145166145417%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145168145422%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145147145366%_))
                                (_%__kont148088148089%_
                                 _%hd145167145420%_
                                 _%hd145158145396%_
                                 _%tl145138145339%_
                                 _%arg145144145358%_)
                                (_%__match148189148190%_
                                 _%e145133145329%_
                                 _%hd145134145332%_
                                 _%tl145135145334%_
                                 _%e145145145361%_
                                 _%hd145146145364%_
                                 _%tl145147145366%_
                                 _%e145148145369%_
                                 _%hd145149145372%_
                                 _%tl145150145374%_
                                 _%e145151145377%_
                                 _%hd145152145380%_
                                 _%tl145153145382%_
                                 _%e145154145385%_
                                 _%hd145155145388%_
                                 _%tl145156145390%_
                                 _%e145157145393%_
                                 _%hd145158145396%_
                                 _%tl145159145398%_
                                 _%e145160145401%_
                                 _%hd145161145404%_
                                 _%tl145162145406%_
                                 _%e145163145409%_
                                 _%hd145164145412%_
                                 _%tl145165145414%_
                                 _%e145166145417%_
                                 _%hd145167145420%_
                                 _%tl145168145422%_))
                            (let ()
                              (declare (not safe))
                              (_%g145082145206%_)))))
                    (let () (declare (not safe)) (_%g145082145206%_)))
                (let () (declare (not safe)) (_%g145082145206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145082145206%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145082145206%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145082145206%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145082145206%_)))))
                        (let () (declare (not safe)) (_%g145082145206%_)))
                    (let () (declare (not safe)) (_%g145082145206%_)))
                (let () (declare (not safe)) (_%g145082145206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g145082145206%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g145082145206%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145082145206%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145082145206%_)))))
                        (let () (declare (not safe)) (_%g145082145206%_)))))
                (let () (declare (not safe)) (_%g145082145206%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145139145342%_
                                     _%target145136145337%_
                                     '()))))
                               (_%__match148107148108%_
                                (lambda (_%e145087145465%_
                                         _%hd145088145468%_
                                         _%tl145089145470%_
                                         _%__splice148084148085%_
                                         _%target145090145473%_
                                         _%tl145092145475%_)
                                  (letrec ((_%loop145093145478%_
                                            (lambda (_%hd145091145481%_
                                                     _%arg145097145483%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145091145481%_))
                                                  (let ((_%e145094145486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145091145481%_))))
                                                    (let ((_%lp-tl145096145491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145094145486%_)))
                                                          (_%lp-hd145095145489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145094145486%_))))
                                                      (_%loop145093145478%_
                                                       _%lp-tl145096145491%_
                                                       (cons _%lp-hd145095145489%_
                                                             _%arg145097145483%_))))
                                                  (let ((_%arg145098145494%_
                                                         (reverse _%arg145097145483%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145089145470%_))
                                                        (let ((_%e145099145497%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145089145470%_))))
                  (let ((_%tl145101145502%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145099145497%_)))
                        (_%hd145100145500%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145099145497%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145100145500%_))
                        (let ((_%e145102145505%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145100145500%_))))
                          (let ((_%tl145104145510%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145102145505%_)))
                                (_%hd145103145508%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145102145505%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145103145508%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145103145508%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145104145510%_))
                                        (let ((_%e145105145513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145104145510%_))))
                                          (let ((_%tl145107145518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145105145513%_)))
                                                (_%hd145106145516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145105145513%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145106145516%_))
                                                (let ((_%e145108145521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145106145516%_))))
                                                  (let ((_%tl145110145526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145108145521%_)))
                                                        (_%hd145109145524%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145108145521%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145109145524%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145109145524%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145110145526%_))
                        (let ((_%e145111145529%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145110145526%_))))
                          (let ((_%tl145113145534%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145111145529%_)))
                                (_%hd145112145532%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145111145529%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145113145534%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145107145518%_))
                                    (let ((_%__splice148086148087%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145107145518%_
                                              '0))))
                                      (let ((_%tl145116145539%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148086148087%_
                                                '1)))
                                            (_%target145114145537%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148086148087%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145116145539%_))
                                            (letrec ((_%loop145117145542%_
                                                      (lambda (_%hd145115145545%_
                                                               _%xarg145121145547%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145115145545%_))
                                                            (let ((_%e145118145550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145115145545%_))))
                      (let ((_%lp-tl145120145555%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145118145550%_)))
                            (_%lp-hd145119145553%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145118145550%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145119145553%_))
                            (let ((_%e145123145558%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145119145553%_))))
                              (let ((_%tl145125145563%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145123145558%_)))
                                    (_%hd145124145561%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145123145558%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145124145561%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145124145561%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145125145563%_))
                                            (let ((_%e145126145566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145125145563%_))))
                                              (let ((_%tl145128145571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145126145566%_)))
                                                    (_%hd145127145569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145126145566%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145128145571%_))
                                                    (_%loop145117145542%_
                                                     _%lp-tl145120145555%_
                                                     (cons _%hd145127145569%_
                                                           _%xarg145121145547%_))
                                                    (_%__match148119148120%_
                                                     _%e145087145465%_
                                                     _%hd145088145468%_
                                                     _%tl145089145470%_
                                                     _%__splice148084148085%_
                                                     _%target145090145473%_
                                                     _%tl145092145475%_))))
                                            (_%__match148119148120%_
                                             _%e145087145465%_
                                             _%hd145088145468%_
                                             _%tl145089145470%_
                                             _%__splice148084148085%_
                                             _%target145090145473%_
                                             _%tl145092145475%_))
                                        (_%__match148119148120%_
                                         _%e145087145465%_
                                         _%hd145088145468%_
                                         _%tl145089145470%_
                                         _%__splice148084148085%_
                                         _%target145090145473%_
                                         _%tl145092145475%_))
                                    (_%__match148119148120%_
                                     _%e145087145465%_
                                     _%hd145088145468%_
                                     _%tl145089145470%_
                                     _%__splice148084148085%_
                                     _%target145090145473%_
                                     _%tl145092145475%_))))
                            (_%__match148119148120%_
                             _%e145087145465%_
                             _%hd145088145468%_
                             _%tl145089145470%_
                             _%__splice148084148085%_
                             _%target145090145473%_
                             _%tl145092145475%_))))
                    (let ((_%xarg145122145574%_
                           (reverse _%xarg145121145547%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145101145502%_))
                          (_%__kont148082148083%_
                           _%xarg145122145574%_
                           _%hd145112145532%_
                           _%arg145098145494%_)
                          (_%__match148119148120%_
                           _%e145087145465%_
                           _%hd145088145468%_
                           _%tl145089145470%_
                           _%__splice148084148085%_
                           _%target145090145473%_
                           _%tl145092145475%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145117145542%_
                                               _%target145114145537%_
                                               '()))
                                            (_%__match148119148120%_
                                             _%e145087145465%_
                                             _%hd145088145468%_
                                             _%tl145089145470%_
                                             _%__splice148084148085%_
                                             _%target145090145473%_
                                             _%tl145092145475%_))))
                                    (_%__match148119148120%_
                                     _%e145087145465%_
                                     _%hd145088145468%_
                                     _%tl145089145470%_
                                     _%__splice148084148085%_
                                     _%target145090145473%_
                                     _%tl145092145475%_))
                                (_%__match148119148120%_
                                 _%e145087145465%_
                                 _%hd145088145468%_
                                 _%tl145089145470%_
                                 _%__splice148084148085%_
                                 _%target145090145473%_
                                 _%tl145092145475%_))))
                        (_%__match148119148120%_
                         _%e145087145465%_
                         _%hd145088145468%_
                         _%tl145089145470%_
                         _%__splice148084148085%_
                         _%target145090145473%_
                         _%tl145092145475%_))
                    (_%__match148119148120%_
                     _%e145087145465%_
                     _%hd145088145468%_
                     _%tl145089145470%_
                     _%__splice148084148085%_
                     _%target145090145473%_
                     _%tl145092145475%_))
                (_%__match148119148120%_
                 _%e145087145465%_
                 _%hd145088145468%_
                 _%tl145089145470%_
                 _%__splice148084148085%_
                 _%target145090145473%_
                 _%tl145092145475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148119148120%_
                                                 _%e145087145465%_
                                                 _%hd145088145468%_
                                                 _%tl145089145470%_
                                                 _%__splice148084148085%_
                                                 _%target145090145473%_
                                                 _%tl145092145475%_))))
                                        (_%__match148119148120%_
                                         _%e145087145465%_
                                         _%hd145088145468%_
                                         _%tl145089145470%_
                                         _%__splice148084148085%_
                                         _%target145090145473%_
                                         _%tl145092145475%_))
                                    (_%__match148119148120%_
                                     _%e145087145465%_
                                     _%hd145088145468%_
                                     _%tl145089145470%_
                                     _%__splice148084148085%_
                                     _%target145090145473%_
                                     _%tl145092145475%_))
                                (_%__match148119148120%_
                                 _%e145087145465%_
                                 _%hd145088145468%_
                                 _%tl145089145470%_
                                 _%__splice148084148085%_
                                 _%target145090145473%_
                                 _%tl145092145475%_))))
                        (_%__match148119148120%_
                         _%e145087145465%_
                         _%hd145088145468%_
                         _%tl145089145470%_
                         _%__splice148084148085%_
                         _%target145090145473%_
                         _%tl145092145475%_))))
                (_%__match148119148120%_
                 _%e145087145465%_
                 _%hd145088145468%_
                 _%tl145089145470%_
                 _%__splice148084148085%_
                 _%target145090145473%_
                 _%tl145092145475%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145093145478%_
                                     _%target145090145473%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148080148081%_))
                              (let ((_%e145087145465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148080148081%_))))
                                (let ((_%tl145089145470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145087145465%_)))
                                      (_%hd145088145468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145087145465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145088145468%_))
                                      (let ((_%__splice148084148085%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145088145468%_
                                                '0))))
                                        (let ((_%tl145092145475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148084148085%_
                                                  '1)))
                                              (_%target145090145473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148084148085%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145092145475%_))
                                              (_%__match148107148108%_
                                               _%e145087145465%_
                                               _%hd145088145468%_
                                               _%tl145089145470%_
                                               _%__splice148084148085%_
                                               _%target145090145473%_
                                               _%tl145092145475%_)
                                              (_%__match148119148120%_
                                               _%e145087145465%_
                                               _%hd145088145468%_
                                               _%tl145089145470%_
                                               _%__splice148084148085%_
                                               _%target145090145473%_
                                               _%tl145092145475%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145089145470%_))
                                          (let ((_%e145175145219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145089145470%_))))
                                            (let ((_%tl145177145224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145175145219%_)))
                                                  (_%hd145176145222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145175145219%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145176145222%_))
                                                  (let ((_%e145178145227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145176145222%_))))
                                                    (let ((_%tl145180145232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145178145227%_)))
                                                          (_%hd145179145230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145178145227%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145179145230%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145179145230%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145180145232%_))
                          (let ((_%e145181145235%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145180145232%_))))
                            (let ((_%tl145183145240%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145181145235%_)))
                                  (_%hd145182145238%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145181145235%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145182145238%_))
                                  (let ((_%e145184145243%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145182145238%_))))
                                    (let ((_%tl145186145248%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145184145243%_)))
                                          (_%hd145185145246%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145184145243%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145185145246%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145185145246%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145186145248%_))
                                                  (let ((_%e145187145251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145186145248%_))))
                                                    (let ((_%tl145189145256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145187145251%_)))
                                                          (_%hd145188145254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145187145251%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145189145256%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145183145240%_))
                      (let ((_%e145190145259%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145183145240%_))))
                        (let ((_%tl145192145264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145190145259%_)))
                              (_%hd145191145262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145190145259%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145191145262%_))
                              (let ((_%e145193145267%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145191145262%_))))
                                (let ((_%tl145195145272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145193145267%_)))
                                      (_%hd145194145270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145193145267%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145194145270%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145194145270%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145195145272%_))
                                              (let ((_%e145196145275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145195145272%_))))
                                                (let ((_%tl145198145280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145196145275%_)))
                                                      (_%hd145197145278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145196145275%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145198145280%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145192145264%_))
                                                          (let ((_%e145199145283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145192145264%_))))
                    (let ((_%tl145201145288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145199145283%_)))
                          (_%hd145200145286%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145199145283%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145201145288%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145177145224%_))
                              (_%__kont148092148093%_
                               _%hd145197145278%_
                               _%hd145188145254%_
                               _%hd145088145468%_)
                              (let ()
                                (declare (not safe))
                                (_%g145082145206%_)))
                          (let () (declare (not safe)) (_%g145082145206%_)))))
                  (let () (declare (not safe)) (_%g145082145206%_)))
              (let () (declare (not safe)) (_%g145082145206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145082145206%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145082145206%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145082145206%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g145082145206%_)))))
                      (let () (declare (not safe)) (_%g145082145206%_)))
                  (let () (declare (not safe)) (_%g145082145206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145082145206%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145082145206%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145082145206%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g145082145206%_)))))
                          (let () (declare (not safe)) (_%g145082145206%_)))
                      (let () (declare (not safe)) (_%g145082145206%_)))
                  (let () (declare (not safe)) (_%g145082145206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145082145206%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145082145206%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g145082145206%_))))))))
                 (_%generate1144925%_
                  (lambda (_%args145060%_
                           _%arglen145061%_
                           _%hd145062%_
                           _%body145063%_)
                    (let* ((_%len145065%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd145062%_)))
                           (_%condition145070%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd145062%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen145061%_
                                                (cons _%len145065%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen145061%_ (cons _%len145065%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len145065%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen145061%_
                                                    (cons _%len145065%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen145061%_ (cons _%len145065%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch145072%_
                            (if (_%dispatch-case?144923%_
                                 _%hd145062%_
                                 _%body145063%_)
                                (_%dispatch-case-e144924%_
                                 _%hd145062%_
                                 _%body145063%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self144920%_
                                 _%hd145062%_
                                 _%body145063%_))))
                      (cons _%condition145070%_
                            (cons (cons 'apply
                                        (cons _%dispatch145072%_
                                              (cons _%args145060%_ '())))
                                  '()))))))
          (let* ((_%g144927144955%_
                  (lambda (_%g144928144952%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144928144952%_))))
                 (_%g144926145057%_
                  (lambda (_%g144928144958%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144928144958%_))
                        (let ((_%e144931144960%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144928144958%_))))
                          (let ((_%hd144932144963%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144931144960%_)))
                                (_%tl144933144965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144931144960%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144933144965%_))
                                (let ((_g149249_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl144933144965%_
                                          '0))))
                                  (begin
                                    (let ((_g149250_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149249_)
                                                 (##values-length _g149249_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149250_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149250_)))
                                    (let ((_%target144934144968%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149249_ 0)))
                                          (_%tl144936144970%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149249_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144936144970%_))
                                          (letrec ((_%loop144937144973%_
                                                    (lambda (_%hd144935144976%_
                                                             _%body144941144978%_
                                                             _%hd144942144980%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd144935144976%_))
                                                          (let ((_%e144938144983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd144935144976%_))))
                    (let ((_%lp-hd144939144986%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144938144983%_)))
                          (_%lp-tl144940144988%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144938144983%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd144939144986%_))
                          (let ((_%e144945144991%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd144939144986%_))))
                            (let ((_%hd144946144994%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144945144991%_)))
                                  (_%tl144947144996%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144945144991%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144947144996%_))
                                  (let ((_%e144948144999%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144947144996%_))))
                                    (let ((_%hd144949145002%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144948144999%_)))
                                          (_%tl144950145004%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144948144999%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144950145004%_))
                                          (_%loop144937144973%_
                                           _%lp-tl144940144988%_
                                           (cons _%hd144949145002%_
                                                 _%body144941144978%_)
                                           (cons _%hd144946144994%_
                                                 _%hd144942144980%_))
                                          (_%g144927144955%_
                                           _%g144928144958%_))))
                                  (_%g144927144955%_ _%g144928144958%_))))
                          (_%g144927144955%_ _%g144928144958%_))))
                  (let ((_%body144943145007%_ (reverse _%body144941144978%_))
                        (_%hd144944145009%_ (reverse _%hd144942144980%_)))
                    ((lambda (_%L145012%_ _%L145013%_)
                       (let ((_%args145032%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen145033%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name145034%_
                              (let ((_%$e145029%_
                                     (let ((__tmp149251
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp149251 _%stx144921%_))))
                                (if _%$e145029%_
                                    _%$e145029%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args145032%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen145033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args145032%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args145032%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp149255
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name145034%_
                                                                (cons _%args145032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp149252
                                  (map (lambda (_%g145035145038%_
                                                _%g145036145040%_)
                                         (_%generate1144925%_
                                          _%args145032%_
                                          _%arglen145033%_
                                          _%g145035145038%_
                                          _%g145036145040%_))
                                       (let ((__tmp149253
                                              (lambda (_%g145042145045%_
                                                       _%g145043145047%_)
                                                (cons _%g145042145045%_
                                                      _%g145043145047%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149253
                                          '()
                                          _%L145013%_))
                                       (let ((__tmp149254
                                              (lambda (_%g145049145052%_
                                                       _%g145050145054%_)
                                                (cons _%g145049145052%_
                                                      _%g145050145054%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149254
                                          '()
                                          _%L145012%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp149255 __tmp149252)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body144943145007%_
                     _%hd144944145009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop144937144973%_
                                             _%target144934144968%_
                                             '()
                                             '()))
                                          (_%g144927144955%_
                                           _%g144928144958%_)))))
                                (_%g144927144955%_ _%g144928144958%_))))
                        (_%g144927144955%_ _%g144928144958%_)))))
            (_%g144926145057%_ _%stx144921%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self144157%_ _%stx144158%_ _%compiled-body?144159%_)
        (letrec ((_%generate-simple144161%_
                  (lambda (_%hd144905%_ _%body144906%_)
                    (_%coalesce-boolean144162%_
                     (_%simplify-let144163%_
                      (gxc#generate-runtime-simple-let
                       _%self144157%_
                       'let
                       _%hd144905%_
                       _%body144906%_
                       _%compiled-body?144159%_)))))
                 (_%coalesce-boolean144162%_
                  (lambda (_%code144766%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code144767144793%_ _%code144766%_)
                               (_%else144769144801%_
                                (lambda () _%code144766%_))
                               (_%K144771144838%_
                                (lambda (_%expr2144804%_
                                         _%expr1144805%_
                                         _%id144806%_)
                                  (let* ((_%expr2144807144815%_
                                          _%expr2144804%_)
                                         (_%else144809144823%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1144805%_
                                                        (cons _%expr2144804%_
                                                              '())))))
                                         (_%K144811144828%_
                                          (lambda (_%exprs144826%_)
                                            (cons 'or
                                                  (cons _%expr1144805%_
                                                        _%exprs144826%_)))))
                                    (if (pair? _%expr2144807144815%_)
                                        (let ((_%hd144812144831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2144807144815%_)))
                                              (_%tl144813144833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2144807144815%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144812144831%_ 'or))
                                              (let ((_%exprs144836%_
                                                     _%tl144813144833%_))
                                                (_%K144811144828%_
                                                 _%exprs144836%_))
                                              (_%else144809144823%_)))
                                        (_%else144809144823%_))))))
                          (if (pair? _%code144767144793%_)
                              (let ((_%hd144772144841%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code144767144793%_)))
                                    (_%tl144773144843%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code144767144793%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd144772144841%_ 'let))
                                    (if (pair? _%tl144773144843%_)
                                        (let ((_%hd144774144846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl144773144843%_)))
                                              (_%tl144775144848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl144773144843%_))))
                                          (if (pair? _%hd144774144846%_)
                                              (let ((_%hd144786144851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd144774144846%_)))
                                                    (_%tl144787144853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd144774144846%_))))
                                                (if (pair? _%hd144786144851%_)
                                                    (let ((_%hd144788144856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd144786144851%_)))
                                                          (_%tl144789144858%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd144786144851%_))))
                                                      (let ((_%id144861%_
                                                             _%hd144788144856%_))
                                                        (if (pair? _%tl144789144858%_)
                                                            (let ((_%hd144790144863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl144789144858%_)))
                          (_%tl144791144865%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144789144858%_))))
                      (let ((_%expr1144868%_ _%hd144790144863%_))
                        (if (null? _%tl144791144865%_)
                            (if (null? _%tl144787144853%_)
                                (if (pair? _%tl144775144848%_)
                                    (let ((_%hd144776144870%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl144775144848%_)))
                                          (_%tl144777144872%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl144775144848%_))))
                                      (if (pair? _%hd144776144870%_)
                                          (let ((_%hd144778144875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd144776144870%_)))
                                                (_%tl144779144877%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd144776144870%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd144778144875%_
                                                         'if))
                                                (if (pair? _%tl144779144877%_)
                                                    (let ((_%hd144780144880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl144779144877%_)))
                                                          (_%tl144781144882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl144779144877%_))))
                                                      (if ((lambda (_%g144884144886%_)
                                                             (eq? _%g144884144886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id144861%_))
                   _%hd144780144880%_)
                  (if (pair? _%tl144781144882%_)
                      (let ((_%hd144782144889%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl144781144882%_)))
                            (_%tl144783144891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl144781144882%_))))
                        (if ((lambda (_%g144893144895%_)
                               (eq? _%g144893144895%_ _%id144861%_))
                             _%hd144782144889%_)
                            (if (pair? _%tl144783144891%_)
                                (let ((_%hd144784144898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144783144891%_)))
                                      (_%tl144785144900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144783144891%_))))
                                  (let ((_%expr2144903%_ _%hd144784144898%_))
                                    (if (null? _%tl144785144900%_)
                                        (if (null? _%tl144777144872%_)
                                            (_%K144771144838%_
                                             _%expr2144903%_
                                             _%expr1144868%_
                                             _%id144861%_)
                                            (_%else144769144801%_))
                                        (_%else144769144801%_))))
                                (_%else144769144801%_))
                            (_%else144769144801%_)))
                      (_%else144769144801%_))
                  (_%else144769144801%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144769144801%_))
                                                (_%else144769144801%_)))
                                          (_%else144769144801%_)))
                                    (_%else144769144801%_))
                                (_%else144769144801%_))
                            (_%else144769144801%_))))
                    (_%else144769144801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144769144801%_)))
                                              (_%else144769144801%_)))
                                        (_%else144769144801%_))
                                    (_%else144769144801%_)))
                              (_%else144769144801%_)))
                        _%code144766%_)))
                 (_%simplify-let144163%_
                  (lambda (_%code144465%_)
                    (let* ((_%code144466144538%_ _%code144465%_)
                           (_%else144471144546%_ (lambda () _%code144465%_)))
                      (let ((_%K144530144746%_
                             (lambda (_%expr144744%_) _%expr144744%_))
                            (_%K144513144692%_
                             (lambda (_%body144688%_
                                      _%expr144689%_
                                      _%id144690%_)
                               (cons 'let
                                     (cons (cons (cons _%id144690%_
                                                       (cons _%expr144689%_
                                                             '()))
                                                 '())
                                           _%body144688%_))))
                            (_%K144490144616%_
                             (lambda (_%body144610%_
                                      _%expr2144611%_
                                      _%id2144612%_
                                      _%expr1144613%_
                                      _%id1144614%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144614%_
                                                       (cons _%expr1144613%_
                                                             '()))
                                                 (cons (cons _%id2144612%_
                                                             (cons _%expr2144611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body144610%_))))
                            (_%K144473144555%_
                             (lambda (_%body144550%_
                                      _%bind144551%_
                                      _%expr1144552%_
                                      _%id1144553%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144553%_
                                                       (cons _%expr1144552%_
                                                             '()))
                                                 _%bind144551%_)
                                           _%body144550%_)))))
                        (if (pair? _%code144466144538%_)
                            (let ((_%tl144532144751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code144466144538%_)))
                                  (_%hd144531144749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code144466144538%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd144531144749%_ 'let))
                                  (if (pair? _%tl144532144751%_)
                                      (let ((_%tl144534144756%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl144532144751%_)))
                                            (_%hd144533144754%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl144532144751%_))))
                                        (if (null? _%hd144533144754%_)
                                            (if (pair? _%tl144534144756%_)
                                                (let ((_%tl144536144761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl144534144756%_)))
                                                      (_%hd144535144759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl144534144756%_))))
                                                  (if (null? _%tl144536144761%_)
                                                      (let ((_%expr144764%_
                                                             _%hd144535144759%_))
                                                        (_%K144530144746%_
                                                         _%expr144764%_))
                                                      (_%else144471144546%_)))
                                                (_%else144471144546%_))
                                            (if (pair? _%hd144533144754%_)
                                                (let ((_%tl144525144707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd144533144754%_)))
                                                      (_%hd144524144705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd144533144754%_))))
                                                  (if (pair? _%hd144524144705%_)
                                                      (let ((_%tl144527144712%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd144524144705%_)))
                    (_%hd144526144710%_
                     (let () (declare (not safe)) (##car _%hd144524144705%_))))
                (if (pair? _%tl144527144712%_)
                    (let ((_%tl144529144719%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144527144712%_)))
                          (_%hd144528144717%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl144527144712%_))))
                      (if (null? _%tl144529144719%_)
                          (if (null? _%tl144525144707%_)
                              (if (pair? _%tl144534144756%_)
                                  (let ((_%tl144519144726%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl144534144756%_)))
                                        (_%hd144518144724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl144534144756%_))))
                                    (if (pair? _%hd144518144724%_)
                                        (let ((_%tl144521144731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd144518144724%_)))
                                              (_%hd144520144729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd144518144724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144520144729%_
                                                       'let))
                                              (if (pair? _%tl144521144731%_)
                                                  (let ((_%tl144523144736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144521144731%_)))
                                                        (_%hd144522144734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144521144731%_))))
                                                    (if (null? _%hd144522144734%_)
                                                        (if (null? _%tl144519144726%_)
                                                            (let ((_%id144715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd144526144710%_)
                          (_%expr144722%_ _%hd144528144717%_)
                          (_%body144739%_ _%tl144523144736%_))
                      (_%K144513144692%_
                       _%body144739%_
                       _%expr144722%_
                       _%id144715%_))
                    (_%else144471144546%_))
                (if (pair? _%hd144522144734%_)
                    (let ((_%tl144502144665%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd144522144734%_)))
                          (_%hd144501144663%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd144522144734%_))))
                      (if (pair? _%hd144501144663%_)
                          (let ((_%tl144504144670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144501144663%_)))
                                (_%hd144503144668%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144501144663%_))))
                            (if (pair? _%tl144504144670%_)
                                (let ((_%tl144506144677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144504144670%_)))
                                      (_%hd144505144675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144504144670%_))))
                                  (if (null? _%tl144506144677%_)
                                      (if (null? _%tl144502144665%_)
                                          (if (null? _%tl144519144726%_)
                                              (let ((_%id1144639%_
                                                     _%hd144526144710%_)
                                                    (_%expr1144646%_
                                                     _%hd144528144717%_)
                                                    (_%id2144673%_
                                                     _%hd144503144668%_)
                                                    (_%expr2144680%_
                                                     _%hd144505144675%_)
                                                    (_%body144682%_
                                                     _%tl144523144736%_))
                                                (_%K144490144616%_
                                                 _%body144682%_
                                                 _%expr2144680%_
                                                 _%id2144673%_
                                                 _%expr1144646%_
                                                 _%id1144639%_))
                                              (_%else144471144546%_))
                                          (_%else144471144546%_))
                                      (_%else144471144546%_)))
                                (_%else144471144546%_)))
                          (_%else144471144546%_)))
                    (_%else144471144546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144471144546%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd144520144729%_
                                                           'let*))
                                                  (if (pair? _%tl144521144731%_)
                                                      (let ((_%tl144483144599%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl144521144731%_)))
                    (_%hd144482144597%_
                     (let () (declare (not safe)) (##car _%tl144521144731%_))))
                (if (null? _%tl144519144726%_)
                    (let ((_%id1144578%_ _%hd144526144710%_)
                          (_%expr1144585%_ _%hd144528144717%_)
                          (_%bind144602%_ _%hd144482144597%_)
                          (_%body144604%_ _%tl144483144599%_))
                      (_%K144473144555%_
                       _%body144604%_
                       _%bind144602%_
                       _%expr1144585%_
                       _%id1144578%_))
                    (_%else144471144546%_)))
              (_%else144471144546%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144471144546%_))))
                                        (_%else144471144546%_)))
                                  (_%else144471144546%_))
                              (_%else144471144546%_))
                          (_%else144471144546%_)))
                    (_%else144471144546%_)))
              (_%else144471144546%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144471144546%_))))
                                      (_%else144471144546%_))
                                  (_%else144471144546%_)))
                            (_%else144471144546%_))))))
                 (_%generate-values144164%_
                  (lambda (_%hd144278%_ _%body144279%_)
                    (let _%lp144281%_ ((_%rest144283%_ _%hd144278%_)
                                       (_%bind144284%_ '())
                                       (_%check144285%_ '())
                                       (_%post144286%_ '()))
                      (let* ((_%__stx148409148410%_ _%rest144283%_)
                             (_%g144289144300%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148409148410%_)))))
                        (let ((_%__kont148411148412%_
                               (lambda (_%L144327%_ _%L144328%_)
                                 (let* ((_%__stx148365148366%_ _%L144328%_)
                                        (_%g144343144368%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148365148366%_)))))
                                   (let ((_%__kont148367148368%_
                                          (lambda (_%L144441%_ _%L144442%_)
                                            (let ((_%eid144456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144442%_)))
                                                  (_%expr144457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144157%_
                                                      _%L144441%_))))
                                              (_%lp144281%_
                                               _%L144327%_
                                               (cons (cons _%eid144456%_
                                                           (cons _%expr144457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144284%_)
                                               _%check144285%_
                                               _%post144286%_))))
                                         (_%__kont148369148370%_
                                          (lambda (_%L144389%_ _%L144390%_)
                                            (let* ((_%vals144403%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144405%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144403%_
                                                     _%L144390%_
                                                     _%L144389%_))
                                                   (_%refs144407%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144403%_
                                                     _%L144390%_))
                                                   (_%expr144409%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144157%_
                                                       _%L144389%_))))
                                              (_%lp144281%_
                                               _%L144327%_
                                               (cons (cons _%vals144403%_
                                                           (cons _%expr144409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144284%_)
                                               (cons _%check-values144405%_
                                                     _%check144285%_)
                                               (cons _%refs144407%_
                                                     _%post144286%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148365148366%_))
                                         (let ((_%e144347144417%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148365148366%_))))
                                           (let ((_%tl144349144422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144347144417%_)))
                                                 (_%hd144348144420%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144347144417%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144348144420%_))
                                                 (let ((_%e144350144425%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144348144420%_))))
                                                   (let ((_%tl144352144430%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144350144425%_)))
                                                         (_%hd144351144428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144350144425%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144352144430%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144349144422%_))
                     (let ((_%e144353144433%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144349144422%_))))
                       (let ((_%tl144355144438%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144353144433%_)))
                             (_%hd144354144436%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144353144433%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144355144438%_))
                             (_%__kont148367148368%_
                              _%hd144354144436%_
                              _%hd144351144428%_)
                             (let ()
                               (declare (not safe))
                               (_%g144343144368%_)))))
                     (let () (declare (not safe)) (_%g144343144368%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144349144422%_))
                     (let ((_%e144361144381%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144349144422%_))))
                       (let ((_%tl144363144386%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144361144381%_)))
                             (_%hd144362144384%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144361144381%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144363144386%_))
                             (_%__kont148369148370%_
                              _%hd144362144384%_
                              _%hd144348144420%_)
                             (let ()
                               (declare (not safe))
                               (_%g144343144368%_)))))
                     (let () (declare (not safe)) (_%g144343144368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144349144422%_))
                                                     (let ((_%e144361144381%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144349144422%_))))
                                                       (let ((_%tl144363144386%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144361144381%_)))
                     (_%hd144362144384%_
                      (let () (declare (not safe)) (##car _%e144361144381%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144363144386%_))
                     (_%__kont148369148370%_
                      _%hd144362144384%_
                      _%hd144348144420%_)
                     (let () (declare (not safe)) (_%g144343144368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144343144368%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144343144368%_)))))))
                              (_%__kont148413148414%_
                               (lambda ()
                                 (let* ((_%body144307%_
                                         (if _%compiled-body?144159%_
                                             _%body144279%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144157%_
                                                _%body144279%_))))
                                        (_%body144309%_
                                         (_%generate-values-post144165%_
                                          _%post144286%_
                                          _%body144307%_))
                                        (_%body144311%_
                                         (_%generate-values-check144166%_
                                          _%check144285%_
                                          _%body144309%_)))
                                   (cons 'let
                                         (cons (reverse _%bind144284%_)
                                               (cons _%body144311%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148409148410%_))
                              (let ((_%e144293144319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148409148410%_))))
                                (let ((_%tl144295144324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144293144319%_)))
                                      (_%hd144294144322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144293144319%_))))
                                  (_%__kont148411148412%_
                                   _%tl144295144324%_
                                   _%hd144294144322%_)))
                              (_%__kont148413148414%_)))))))
                 (_%generate-values-post144165%_
                  (lambda (_%post144237%_ _%body144238%_)
                    (let _%lp144240%_ ((_%rest144242%_ _%post144237%_)
                                       (_%body144243%_ _%body144238%_))
                      (let* ((_%rest144244144252%_ _%rest144242%_)
                             (_%else144246144260%_ (lambda () _%body144243%_))
                             (_%K144248144266%_
                              (lambda (_%rest144263%_ _%bind144264%_)
                                (_%lp144240%_
                                 _%rest144263%_
                                 (cons 'let
                                       (cons _%bind144264%_
                                             (cons _%body144243%_ '())))))))
                        (if (pair? _%rest144244144252%_)
                            (let ((_%hd144249144269%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144244144252%_)))
                                  (_%tl144250144271%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144244144252%_))))
                              (let* ((_%bind144274%_ _%hd144249144269%_)
                                     (_%rest144276%_ _%tl144250144271%_))
                                (_%K144248144266%_
                                 _%rest144276%_
                                 _%bind144274%_)))
                            (_%else144246144260%_))))))
                 (_%generate-values-check144166%_
                  (lambda (_%check144234%_ _%body144235%_)
                    (cons 'begin
                          (let ((__tmp149257 (cons _%body144235%_ '()))
                                (__tmp149256 (reverse _%check144234%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149257 __tmp149256))))))
          (let* ((_%g144168144185%_
                  (lambda (_%g144169144182%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144169144182%_))))
                 (_%g144167144231%_
                  (lambda (_%g144169144188%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144169144188%_))
                        (let ((_%e144172144190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144169144188%_))))
                          (let ((_%hd144173144193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144172144190%_)))
                                (_%tl144174144195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144172144190%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144174144195%_))
                                (let ((_%e144175144198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144174144195%_))))
                                  (let ((_%hd144176144201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144175144198%_)))
                                        (_%tl144177144203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144175144198%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144177144203%_))
                                        (let ((_%e144178144206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144177144203%_))))
                                          (let ((_%hd144179144209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144178144206%_)))
                                                (_%tl144180144211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144178144206%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144180144211%_))
                                                ((lambda (_%L144214%_
                                                          _%L144215%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144215%_)
                                                       (_%generate-simple144161%_
                                                        _%L144215%_
                                                        _%L144214%_)
                                                       (_%generate-values144164%_
                                                        _%L144215%_
                                                        _%L144214%_)))
                                                 _%hd144179144209%_
                                                 _%hd144176144201%_)
                                                (_%g144168144185%_
                                                 _%g144169144188%_))))
                                        (_%g144168144185%_
                                         _%g144169144188%_))))
                                (_%g144168144185%_ _%g144169144188%_))))
                        (_%g144168144185%_ _%g144169144188%_)))))
            (_%g144167144231%_ _%stx144158%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self144911%_ _%stx144912%_)
        (let ((_%compiled-body?144914%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self144911%_
           _%stx144912%_
           _%compiled-body?144914%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g149259_
        (let ((_g149258_ (let () (declare (not safe)) (##length _g149259_))))
          (cond ((let () (declare (not safe)) (##fx= _g149258_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g149259_))
                ((let () (declare (not safe)) (##fx= _g149258_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g149259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g149259_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals144051%_ _%hd144052%_)
        (let _%lp144054%_ ((_%rest144056%_ _%hd144052%_)
                           (_%k144057%_ '0)
                           (_%r144058%_ '()))
          (let* ((_%__stx148423148424%_ _%rest144056%_)
                 (_%g144063144080%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx148423148424%_)))))
            (let ((_%__kont148425148426%_
                   (lambda (_%L144143%_)
                     (_%lp144054%_
                      _%L144143%_
                      (let () (declare (not safe)) (##fx+ _%k144057%_ '1))
                      _%r144058%_)))
                  (_%__kont148427148428%_
                   (lambda (_%L144116%_ _%L144117%_)
                     (_%lp144054%_
                      _%L144116%_
                      (let () (declare (not safe)) (##fx+ _%k144057%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L144117%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals144051%_
                                         _%k144057%_
                                         _%L144116%_)
                                        '()))
                            _%r144058%_))))
                  (_%__kont148429148430%_
                   (lambda (_%L144092%_)
                     (let ((__tmp149260
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L144092%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals144051%_
                                               _%k144057%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp149260 _%r144058%_))))
                  (_%__kont148431148432%_ (lambda () (reverse _%r144058%_))))
              (let ((_%g144061144103%_
                     (lambda ()
                       (let ((_%L144092%_ _%__stx148423148424%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L144092%_))
                             (_%__kont148429148430%_ _%L144092%_)
                             (_%__kont148431148432%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx148423148424%_))
                    (let ((_%e144066144132%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx148423148424%_))))
                      (let ((_%tl144068144137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144066144132%_)))
                            (_%hd144067144135%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144066144132%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd144067144135%_))
                            (let ((_%e144069144140%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd144067144135%_))))
                              (if (equal? _%e144069144140%_ '#f)
                                  (_%__kont148425148426%_ _%tl144068144137%_)
                                  (_%__kont148427148428%_
                                   _%tl144068144137%_
                                   _%hd144067144135%_)))
                            (_%__kont148427148428%_
                             _%tl144068144137%_
                             _%hd144067144135%_))))
                    (let () (declare (not safe)) (_%g144061144103%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self143730%_ _%stx143731%_ _%compiled-body?143732%_)
        (letrec ((_%generate-simple143734%_
                  (lambda (_%hd144036%_ _%body144037%_)
                    (gxc#generate-runtime-simple-let
                     _%self143730%_
                     'letrec
                     _%hd144036%_
                     _%body144037%_
                     _%compiled-body?143732%_)))
                 (_%generate-values143735%_
                  (lambda (_%hd143815%_ _%body143816%_)
                    (let _%lp143818%_ ((_%rest143820%_ _%hd143815%_)
                                       (_%bind143821%_ '())
                                       (_%check143822%_ '())
                                       (_%post143823%_ '()))
                      (let* ((_%__stx148497148498%_ _%rest143820%_)
                             (_%g143826143837%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148497148498%_)))))
                        (let ((_%__kont148499148500%_
                               (lambda (_%L143864%_ _%L143865%_)
                                 (let* ((_%__stx148453148454%_ _%L143865%_)
                                        (_%g143880143905%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148453148454%_)))))
                                   (let ((_%__kont148455148456%_
                                          (lambda (_%L144012%_ _%L144013%_)
                                            (let ((_%eid144027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144013%_)))
                                                  (_%expr144028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143730%_
                                                      _%L144012%_))))
                                              (_%lp143818%_
                                               _%L143864%_
                                               (cons (cons _%eid144027%_
                                                           (cons _%expr144028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143821%_)
                                               _%check143822%_
                                               _%post143823%_))))
                                         (_%__kont148457148458%_
                                          (lambda (_%L143926%_ _%L143927%_)
                                            (let* ((_%vals143940%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values143942%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals143940%_
                                                     _%L143927%_
                                                     _%L143926%_))
                                                   (_%refs143944%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals143940%_
                                                     _%L143927%_))
                                                   (_%expr143946%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143730%_
                                                       _%L143926%_))))
                                              (_%lp143818%_
                                               _%L143864%_
                                               (let ((__tmp149262
                                                      (cons (cons _%vals143940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr143946%_ '()))
                    _%bind143821%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149261
                                                      (map (lambda (_%e143948143950%_)
                                                             (let* ((_%g143952143961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e143948143950%_)
                            (_%E143954143965%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g143952143961%_
                                        '([eid _])))
                               '#!void))
                            (_%K143955143970%_
                             (lambda (_%eid143968%_)
                               (cons _%eid143968%_ (cons '#!void '())))))
                       (if (pair? _%g143952143961%_)
                           (let ((_%hd143956143973%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g143952143961%_)))
                                 (_%tl143957143975%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g143952143961%_))))
                             (let ((_%eid143978%_ _%hd143956143973%_))
                               (if (pair? _%tl143957143975%_)
                                   (let ((_%tl143959143980%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl143957143975%_))))
                                     (if (null? _%tl143959143980%_)
                                         (_%K143955143970%_ _%eid143978%_)
                                         (_%E143954143965%_)))
                                   (_%E143954143965%_))))
                           (_%E143954143965%_))))
                   _%refs143944%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp149262
                                                  __tmp149261))
                                               (cons _%check-values143942%_
                                                     _%check143822%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs143944%_
                                                  _%post143823%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148453148454%_))
                                         (let ((_%e143884143988%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148453148454%_))))
                                           (let ((_%tl143886143993%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143884143988%_)))
                                                 (_%hd143885143991%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143884143988%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd143885143991%_))
                                                 (let ((_%e143887143996%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd143885143991%_))))
                                                   (let ((_%tl143889144001%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e143887143996%_)))
                                                         (_%hd143888143999%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e143887143996%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl143889144001%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143886143993%_))
                     (let ((_%e143890144004%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143886143993%_))))
                       (let ((_%tl143892144009%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143890144004%_)))
                             (_%hd143891144007%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143890144004%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143892144009%_))
                             (_%__kont148455148456%_
                              _%hd143891144007%_
                              _%hd143888143999%_)
                             (let ()
                               (declare (not safe))
                               (_%g143880143905%_)))))
                     (let () (declare (not safe)) (_%g143880143905%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl143886143993%_))
                     (let ((_%e143898143918%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143886143993%_))))
                       (let ((_%tl143900143923%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143898143918%_)))
                             (_%hd143899143921%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143898143918%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143900143923%_))
                             (_%__kont148457148458%_
                              _%hd143899143921%_
                              _%hd143885143991%_)
                             (let ()
                               (declare (not safe))
                               (_%g143880143905%_)))))
                     (let () (declare (not safe)) (_%g143880143905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl143886143993%_))
                                                     (let ((_%e143898143918%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl143886143993%_))))
                                                       (let ((_%tl143900143923%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e143898143918%_)))
                     (_%hd143899143921%_
                      (let () (declare (not safe)) (##car _%e143898143918%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl143900143923%_))
                     (_%__kont148457148458%_
                      _%hd143899143921%_
                      _%hd143885143991%_)
                     (let () (declare (not safe)) (_%g143880143905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g143880143905%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g143880143905%_)))))))
                              (_%__kont148501148502%_
                               (lambda ()
                                 (let* ((_%body143844%_
                                         (if _%compiled-body?143732%_
                                             _%body143816%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self143730%_
                                                _%body143816%_))))
                                        (_%body143846%_
                                         (_%generate-values-post143737%_
                                          _%post143823%_
                                          _%body143844%_))
                                        (_%body143848%_
                                         (_%generate-values-check143736%_
                                          _%check143822%_
                                          _%body143846%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind143821%_)
                                               (cons _%body143848%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148497148498%_))
                              (let ((_%e143830143856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148497148498%_))))
                                (let ((_%tl143832143861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143830143856%_)))
                                      (_%hd143831143859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143830143856%_))))
                                  (_%__kont148499148500%_
                                   _%tl143832143861%_
                                   _%hd143831143859%_)))
                              (_%__kont148501148502%_)))))))
                 (_%generate-values-check143736%_
                  (lambda (_%check143812%_ _%body143813%_)
                    (cons 'begin
                          (let ((__tmp149264 (cons _%body143813%_ '()))
                                (__tmp149263 (reverse _%check143812%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149264 __tmp149263)))))
                 (_%generate-values-post143737%_
                  (lambda (_%post143805%_ _%body143806%_)
                    (cons 'begin
                          (let ((__tmp149268 (cons _%body143806%_ '()))
                                (__tmp149265
                                 (let ((__tmp149267
                                        (lambda (_%g143807143809%_)
                                          (cons 'set! _%g143807143809%_)))
                                       (__tmp149266 (reverse _%post143805%_)))
                                   (declare (not safe))
                                   (##map __tmp149267 __tmp149266))))
                            (declare (not safe))
                            (__foldr1 cons __tmp149268 __tmp149265))))))
          (let* ((_%g143739143756%_
                  (lambda (_%g143740143753%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143740143753%_))))
                 (_%g143738143802%_
                  (lambda (_%g143740143759%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143740143759%_))
                        (let ((_%e143743143761%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143740143759%_))))
                          (let ((_%hd143744143764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143743143761%_)))
                                (_%tl143745143766%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143743143761%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143745143766%_))
                                (let ((_%e143746143769%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143745143766%_))))
                                  (let ((_%hd143747143772%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143746143769%_)))
                                        (_%tl143748143774%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143746143769%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143748143774%_))
                                        (let ((_%e143749143777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143748143774%_))))
                                          (let ((_%hd143750143780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143749143777%_)))
                                                (_%tl143751143782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143749143777%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143751143782%_))
                                                ((lambda (_%L143785%_
                                                          _%L143786%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143786%_)
                                                       (_%generate-simple143734%_
                                                        _%L143786%_
                                                        _%L143785%_)
                                                       (_%generate-values143735%_
                                                        _%L143786%_
                                                        _%L143785%_)))
                                                 _%hd143750143780%_
                                                 _%hd143747143772%_)
                                                (_%g143739143756%_
                                                 _%g143740143759%_))))
                                        (_%g143739143756%_
                                         _%g143740143759%_))))
                                (_%g143739143756%_ _%g143740143759%_))))
                        (_%g143739143756%_ _%g143740143759%_)))))
            (_%g143738143802%_ _%stx143731%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self144042%_ _%stx144043%_)
        (let ((_%compiled-body?144045%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self144042%_
           _%stx144043%_
           _%compiled-body?144045%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g149270_
        (let ((_g149269_ (let () (declare (not safe)) (##length _g149270_))))
          (cond ((let () (declare (not safe)) (##fx= _g149269_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g149270_))
                ((let () (declare (not safe)) (##fx= _g149269_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g149270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g149270_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self143311%_ _%stx143312%_)
        (letrec ((_%generate-values143314%_
                  (lambda (_%hd143557%_ _%body143558%_)
                    (let _%lp143560%_ ((_%rest143562%_ _%hd143557%_)
                                       (_%bind143563%_ '()))
                      (let* ((_%rest143564143572%_ _%rest143562%_)
                             (_%else143566143583%_
                              (lambda ()
                                (let ((_%bind143580%_ (reverse _%bind143563%_))
                                      (_%body143581%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self143311%_
                                          _%body143558%_))))
                                  (cons 'letrec*
                                        (cons _%bind143580%_
                                              (cons _%body143581%_ '()))))))
                             (_%K143568143717%_
                              (lambda (_%rest143586%_ _%hd-bind143587%_)
                                (let* ((_%__stx148511148512%_
                                        _%hd-bind143587%_)
                                       (_%g143590143615%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx148511148512%_)))))
                                  (let ((_%__kont148513148514%_
                                         (lambda (_%L143696%_ _%L143697%_)
                                           (let ((_%eid143711%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L143697%_)))
                                                 (_%expr143712%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self143311%_
                                                     _%L143696%_))))
                                             (_%lp143560%_
                                              _%rest143586%_
                                              (cons (cons _%eid143711%_
                                                          (cons _%expr143712%_
                                                                '()))
                                                    _%bind143563%_)))))
                                        (_%__kont148515148516%_
                                         (lambda (_%L143636%_ _%L143637%_)
                                           (let* ((_%vals143656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp143658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values143660%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp143658%_
                                                    _%L143637%_
                                                    _%L143636%_))
                                                  (_%refs143662%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals143656%_
                                                    _%L143637%_))
                                                  (_%expr143664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143311%_
                                                      _%L143636%_))))
                                             (_%lp143560%_
                                              _%rest143586%_
                                              (let ((__tmp149271
                                                     (cons (cons _%vals143656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp143658%_
                                                       (cons _%expr143664%_
                                                             '()))
                                                 '())
                                           (cons _%check-values143660%_
                                                 (cons _%tmp143658%_ '()))))
                               '()))
                   _%bind143563%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp149271
                                                 _%refs143662%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148511148512%_))
                                        (let ((_%e143594143672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148511148512%_))))
                                          (let ((_%tl143596143677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143594143672%_)))
                                                (_%hd143595143675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143594143672%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143595143675%_))
                                                (let ((_%e143597143680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143595143675%_))))
                                                  (let ((_%tl143599143685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143597143680%_)))
                                                        (_%hd143598143683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143597143680%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143599143685%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143596143677%_))
                                                            (let ((_%e143600143688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143596143677%_))))
                      (let ((_%tl143602143693%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143600143688%_)))
                            (_%hd143601143691%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143600143688%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143602143693%_))
                            (_%__kont148513148514%_
                             _%hd143601143691%_
                             _%hd143598143683%_)
                            (let ()
                              (declare (not safe))
                              (_%g143590143615%_)))))
                    (let () (declare (not safe)) (_%g143590143615%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl143596143677%_))
                    (let ((_%e143608143628%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143596143677%_))))
                      (let ((_%tl143610143633%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143608143628%_)))
                            (_%hd143609143631%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143608143628%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143610143633%_))
                            (_%__kont148515148516%_
                             _%hd143609143631%_
                             _%hd143595143675%_)
                            (let ()
                              (declare (not safe))
                              (_%g143590143615%_)))))
                    (let () (declare (not safe)) (_%g143590143615%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143596143677%_))
                                                    (let ((_%e143608143628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143596143677%_))))
                                                      (let ((_%tl143610143633%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143608143628%_)))
                    (_%hd143609143631%_
                     (let () (declare (not safe)) (##car _%e143608143628%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143610143633%_))
                    (_%__kont148515148516%_
                     _%hd143609143631%_
                     _%hd143595143675%_)
                    (let () (declare (not safe)) (_%g143590143615%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143590143615%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143590143615%_))))))))
                        (if (pair? _%rest143564143572%_)
                            (let ((_%hd143569143720%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143564143572%_)))
                                  (_%tl143570143722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143564143572%_))))
                              (let* ((_%hd-bind143725%_ _%hd143569143720%_)
                                     (_%rest143727%_ _%tl143570143722%_))
                                (_%K143568143717%_
                                 _%rest143727%_
                                 _%hd-bind143725%_)))
                            (_%else143566143583%_))))))
                 (_%generate-letrec?143315%_
                  (lambda (_%hd143447%_)
                    (let _%lp143449%_ ((_%rest143451%_ _%hd143447%_))
                      (let* ((_%rest143452143460%_ _%rest143451%_)
                             (_%else143454143468%_ (lambda () '#t))
                             (_%K143456143545%_
                              (lambda (_%rest143471%_ _%hd-bind143472%_)
                                (let* ((_%g143474143491%_
                                        (lambda (_%g143475143488%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g143475143488%_))))
                                       (_%g143473143542%_
                                        (lambda (_%g143475143494%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g143475143494%_))
                                              (let ((_%e143478143496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g143475143494%_))))
                                                (let ((_%hd143479143499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143478143496%_)))
                                                      (_%tl143480143501%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143478143496%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd143479143499%_))
                                                      (let ((_%e143481143504%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd143479143499%_))))
                (let ((_%hd143482143507%_
                       (let () (declare (not safe)) (##car _%e143481143504%_)))
                      (_%tl143483143509%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e143481143504%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143483143509%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143480143501%_))
                          (let ((_%e143484143512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143480143501%_))))
                            (let ((_%hd143485143515%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143484143512%_)))
                                  (_%tl143486143517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143484143512%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143486143517%_))
                                  ((lambda (_%L143520%_ _%L143521%_)
                                     (if (_%is-lambda-expr?143316%_
                                          _%L143520%_)
                                         (_%lp143449%_ _%rest143471%_)
                                         '#f))
                                   _%hd143485143515%_
                                   _%hd143482143507%_)
                                  (_%g143474143491%_ _%g143475143494%_))))
                          (_%g143474143491%_ _%g143475143494%_))
                      (_%g143474143491%_ _%g143475143494%_))))
              (_%g143474143491%_ _%g143475143494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g143474143491%_
                                               _%g143475143494%_)))))
                                  (_%g143473143542%_ _%hd-bind143472%_)))))
                        (if (pair? _%rest143452143460%_)
                            (let ((_%hd143457143548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143452143460%_)))
                                  (_%tl143458143550%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143452143460%_))))
                              (let* ((_%hd-bind143553%_ _%hd143457143548%_)
                                     (_%rest143555%_ _%tl143458143550%_))
                                (_%K143456143545%_
                                 _%rest143555%_
                                 _%hd-bind143553%_)))
                            (_%else143454143468%_))))))
                 (_%is-lambda-expr?143316%_
                  (lambda (_%expr143384%_)
                    (let* ((_%__stx148555148556%_ _%expr143384%_)
                           (_%g143387143401%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148555148556%_)))))
                      (let ((_%__kont148557148558%_
                             (lambda (_%L143429%_ _%L143430%_) '#t))
                            (_%__kont148559148560%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx148555148556%_))
                            (let ((_%e143391143413%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx148555148556%_))))
                              (let ((_%tl143393143418%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143391143413%_)))
                                    (_%hd143392143416%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143391143413%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143392143416%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd143392143416%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143393143418%_))
                                            (let ((_%e143394143421%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143393143418%_))))
                                              (let ((_%tl143396143426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143394143421%_)))
                                                    (_%hd143395143424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143394143421%_))))
                                                (_%__kont148557148558%_
                                                 _%tl143396143426%_
                                                 _%hd143395143424%_)))
                                            (_%__kont148559148560%_))
                                        (_%__kont148559148560%_))
                                    (_%__kont148559148560%_))))
                            (_%__kont148559148560%_)))))))
          (let* ((_%g143318143335%_
                  (lambda (_%g143319143332%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143319143332%_))))
                 (_%g143317143381%_
                  (lambda (_%g143319143338%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143319143338%_))
                        (let ((_%e143322143340%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143319143338%_))))
                          (let ((_%hd143323143343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143322143340%_)))
                                (_%tl143324143345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143322143340%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143324143345%_))
                                (let ((_%e143325143348%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143324143345%_))))
                                  (let ((_%hd143326143351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143325143348%_)))
                                        (_%tl143327143353%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143325143348%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143327143353%_))
                                        (let ((_%e143328143356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143327143353%_))))
                                          (let ((_%hd143329143359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143328143356%_)))
                                                (_%tl143330143361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143328143356%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143330143361%_))
                                                ((lambda (_%L143364%_
                                                          _%L143365%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143365%_)
                                                       (if (_%generate-letrec?143315%_
                                                            _%L143365%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143311%_
                                                            'letrec
                                                            _%L143365%_
                                                            _%L143364%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143311%_
                                                            'letrec*
                                                            _%L143365%_
                                                            _%L143364%_
                                                            '#f))
                                                       (_%generate-values143314%_
                                                        _%L143365%_
                                                        _%L143364%_)))
                                                 _%hd143329143359%_
                                                 _%hd143326143351%_)
                                                (_%g143318143335%_
                                                 _%g143319143338%_))))
                                        (_%g143318143335%_
                                         _%g143319143338%_))))
                                (_%g143318143335%_ _%g143319143338%_))))
                        (_%g143318143335%_ _%g143319143338%_)))))
            (_%g143317143381%_ _%stx143312%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd143248%_)
        (let _%lp143250%_ ((_%rest143252%_ _%hd143248%_))
          (let* ((_%rest143253143269%_ _%rest143252%_)
                 (_%else143256143277%_ (lambda () '#f)))
            (let ((_%K143259143290%_
                   (lambda (_%rest143288%_) (_%lp143250%_ _%rest143288%_)))
                  (_%K143258143282%_ (lambda () '#t)))
              (let ((_%try-match143255143285%_
                     (lambda ()
                       (if (null? _%rest143253143269%_)
                           (_%K143258143282%_)
                           (_%else143256143277%_)))))
                (if (pair? _%rest143253143269%_)
                    (let ((_%tl143261143295%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143253143269%_)))
                          (_%hd143260143293%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143253143269%_))))
                      (if (pair? _%hd143260143293%_)
                          (let ((_%tl143263143300%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd143260143293%_)))
                                (_%hd143262143298%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd143260143293%_))))
                            (if (pair? _%hd143262143298%_)
                                (let ((_%tl143267143303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143262143298%_))))
                                  (if (null? _%tl143267143303%_)
                                      (if (pair? _%tl143263143300%_)
                                          (let ((_%tl143265143306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl143263143300%_))))
                                            (if (null? _%tl143265143306%_)
                                                (let ((_%rest143309%_
                                                       _%tl143261143295%_))
                                                  (_%lp143250%_
                                                   _%rest143309%_))
                                                (_%else143256143277%_)))
                                          (_%else143256143277%_))
                                      (_%else143256143277%_)))
                                (_%else143256143277%_)))
                          (_%else143256143277%_)))
                    (_%try-match143255143285%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self143159%_
               _%form143160%_
               _%hd143161%_
               _%body143162%_
               _%compiled-body?143163%_)
        (letrec ((_%generate1143165%_
                  (lambda (_%bind143204%_)
                    (let* ((_%bind143205143216%_ _%bind143204%_)
                           (_%E143207143220%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind143205143216%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K143208143226%_
                            (lambda (_%expr143223%_ _%id143224%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id143224%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self143159%_
                                             _%expr143223%_))
                                          '())))))
                      (if (pair? _%bind143205143216%_)
                          (let ((_%hd143209143229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind143205143216%_)))
                                (_%tl143210143231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind143205143216%_))))
                            (if (pair? _%hd143209143229%_)
                                (let ((_%hd143213143234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd143209143229%_)))
                                      (_%tl143214143236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143209143229%_))))
                                  (let ((_%id143239%_ _%hd143213143234%_))
                                    (if (null? _%tl143214143236%_)
                                        (if (pair? _%tl143210143231%_)
                                            (let ((_%hd143211143241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143210143231%_)))
                                                  (_%tl143212143243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143210143231%_))))
                                              (let ((_%expr143246%_
                                                     _%hd143211143241%_))
                                                (if (null? _%tl143212143243%_)
                                                    (_%K143208143226%_
                                                     _%expr143246%_
                                                     _%id143239%_)
                                                    (_%E143207143220%_))))
                                            (_%E143207143220%_))
                                        (_%E143207143220%_))))
                                (_%E143207143220%_)))
                          (_%E143207143220%_))))))
          (let* ((_%bind143167%_ (map _%generate1143165%_ _%hd143161%_))
                 (_%body143169%_
                  (if _%compiled-body?143163%_
                      _%body143162%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self143159%_ _%body143162%_))))
                 (_%body143201%_
                  (let* ((_%body143170143178%_ _%body143169%_)
                         (_%else143172143186%_
                          (lambda () (cons _%body143169%_ '())))
                         (_%K143174143191%_
                          (lambda (_%exprs143189%_) _%exprs143189%_)))
                    (if (pair? _%body143170143178%_)
                        (let ((_%hd143175143194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body143170143178%_)))
                              (_%tl143176143196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body143170143178%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd143175143194%_ 'begin))
                              (let ((_%exprs143199%_ _%tl143176143196%_))
                                (_%K143174143191%_ _%exprs143199%_))
                              (_%else143172143186%_)))
                        (_%else143172143186%_)))))
            (cons _%form143160%_ (cons _%bind143167%_ _%body143201%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self143059%_ _%stx143060%_)
        (letrec ((_%generate1143062%_
                  (lambda (_%datum143114%_)
                    (if (or (null? _%datum143114%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum143114%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum143114%_))
                            (eof-object? _%datum143114%_))
                        _%datum143114%_
                        (if (uninterned-symbol? _%datum143114%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum143114%_
                               '#t))
                            (if (pair? _%datum143114%_)
                                (cons (_%generate1143062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum143114%_)))
                                      (_%generate1143062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum143114%_))))
                                (if (box? _%datum143114%_)
                                    (box (_%generate1143062%_
                                          (unbox _%datum143114%_)))
                                    (if (vector? _%datum143114%_)
                                        (vector-map
                                         _%generate1143062%_
                                         _%datum143114%_)
                                        (if (or (s8vector? _%datum143114%_)
                                                (u8vector? _%datum143114%_)
                                                (s16vector? _%datum143114%_)
                                                (u16vector? _%datum143114%_)
                                                (s32vector? _%datum143114%_)
                                                (u32vector? _%datum143114%_)
                                                (s64vector? _%datum143114%_)
                                                (u64vector? _%datum143114%_)
                                                (f32vector? _%datum143114%_)
                                                (f64vector? _%datum143114%_))
                                            _%datum143114%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx143060%_)))))))))))
          (let* ((_%g143064143077%_
                  (lambda (_%g143065143074%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143065143074%_))))
                 (_%g143063143111%_
                  (lambda (_%g143065143080%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143065143080%_))
                        (let ((_%e143067143082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143065143080%_))))
                          (let ((_%hd143068143085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143067143082%_)))
                                (_%tl143069143087%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143067143082%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143069143087%_))
                                (let ((_%e143070143090%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143069143087%_))))
                                  (let ((_%hd143071143093%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143070143090%_)))
                                        (_%tl143072143095%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143070143090%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143072143095%_))
                                        ((lambda (_%L143098%_)
                                           (cons 'quote
                                                 (cons (_%generate1143062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L143098%_)))
                                                       '())))
                                         _%hd143071143093%_)
                                        (_%g143064143077%_
                                         _%g143065143080%_))))
                                (_%g143064143077%_ _%g143065143080%_))))
                        (_%g143064143077%_ _%g143065143080%_)))))
            (_%g143063143111%_ _%stx143060%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self142500%_ _%stx142501%_)
        (letrec ((_%compile-call142503%_
                  (lambda (_%rator142792%_ _%rands142793%_)
                    (let ((_%rator142799%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self142500%_
                              _%rator142792%_)))
                          (_%rands142800%_
                           (map (lambda (_%g142794142796%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self142500%_
                                     _%g142794142796%_)))
                                _%rands142793%_)))
                      (let* ((_%__stx148602148603%_ _%rator142799%_)
                             (_%g142803142855%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148602148603%_)))))
                        (let ((_%__kont148604148605%_
                               (lambda (_%L142979%_
                                        _%L142980%_
                                        _%L142981%_
                                        _%L142982%_)
                                 (if (let ((__tmp149274
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands142800%_)))
                                           (__tmp149272
                                            (length (let ((__tmp149273
                                                           (lambda (_%g143018143021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143019143023%_)
                     (cons _%g143018143021%_ _%g143019143023%_))))
              (declare (not safe))
              (__foldr1 __tmp149273 '() _%L142981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149274 __tmp149272))
                                     (let* ((_%id143026%_ _%L142982%_)
                                            (_%args143035%_
                                             (let ((__tmp149275
                                                    (lambda (_%g143027143030%_
                                                             _%g143028143032%_)
                                                      (cons _%g143027143030%_
                                                            _%g143028143032%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149275
                                                '()
                                                _%L142981%_)))
                                            (_%body143044%_
                                             (let ((__tmp149276
                                                    (lambda (_%g143036143039%_
                                                             _%g143037143041%_)
                                                      (cons _%g143036143039%_
                                                            _%g143037143041%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149276
                                                '()
                                                _%L142980%_)))
                                            (_%init143046%_
                                             (map list
                                                  _%args143035%_
                                                  _%rands142800%_)))
                                       (cons 'let
                                             (cons _%id143026%_
                                                   (cons _%init143046%_
                                                         _%body143044%_))))
                                     (let ((__tmp149277
                                            (let ((__tmp149278
                                                   (lambda (_%g143048143051%_
                                                            _%g143049143053%_)
                                                     (cons _%g143048143051%_
                                                           _%g143049143053%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149278
                                               '()
                                               _%L142981%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx142501%_
                                        __tmp149277
                                        _%rands142800%_)))))
                              (_%__kont148610148611%_
                               (lambda ()
                                 (cons _%rator142799%_ _%rands142800%_))))
                          (let ((_%__match148669148670%_
                                 (lambda (_%e142809142867%_
                                          _%hd142810142870%_
                                          _%tl142811142872%_
                                          _%e142812142875%_
                                          _%hd142813142878%_
                                          _%tl142814142880%_
                                          _%e142815142883%_
                                          _%hd142816142886%_
                                          _%tl142817142888%_
                                          _%e142818142891%_
                                          _%hd142819142894%_
                                          _%tl142820142896%_
                                          _%e142821142899%_
                                          _%hd142822142902%_
                                          _%tl142823142904%_
                                          _%e142824142907%_
                                          _%hd142825142910%_
                                          _%tl142826142912%_
                                          _%e142827142915%_
                                          _%hd142828142918%_
                                          _%tl142829142920%_
                                          _%__splice148606148607%_
                                          _%target142830142923%_
                                          _%tl142832142925%_)
                                   (letrec ((_%loop142833142928%_
                                             (lambda (_%hd142831142931%_
                                                      _%arg142837142933%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd142831142931%_))
                                                   (let ((_%e142834142936%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd142831142931%_))))
                                                     (let ((_%lp-tl142836142941%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e142834142936%_)))
                                                           (_%lp-hd142835142939%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e142834142936%_))))
                                                       (_%loop142833142928%_
                                                        _%lp-tl142836142941%_
                                                        (cons _%lp-hd142835142939%_
                                                              _%arg142837142933%_))))
                                                   (let ((_%arg142838142944%_
                                                          (reverse _%arg142837142933%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl142829142920%_))
                                                         (let ((_%__splice148608148609%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl142829142920%_ '0))))
                   (let ((_%tl142841142949%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148608148609%_ '1)))
                         (_%target142839142947%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148608148609%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142841142949%_))
                         (letrec ((_%loop142842142952%_
                                   (lambda (_%hd142840142955%_
                                            _%body142846142957%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd142840142955%_))
                                         (let ((_%e142843142960%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd142840142955%_))))
                                           (let ((_%lp-tl142845142965%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142843142960%_)))
                                                 (_%lp-hd142844142963%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142843142960%_))))
                                             (_%loop142842142952%_
                                              _%lp-tl142845142965%_
                                              (cons _%lp-hd142844142963%_
                                                    _%body142846142957%_))))
                                         (let ((_%body142847142968%_
                                                (reverse _%body142846142957%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl142823142904%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl142817142888%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl142814142880%_))
                                                       (let ((_%e142848142971%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl142814142880%_))))
                 (let ((_%tl142850142976%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e142848142971%_)))
                       (_%hd142849142974%_
                        (let ()
                          (declare (not safe))
                          (##car _%e142848142971%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl142850142976%_))
                       (let ((_%L142979%_ _%hd142849142974%_)
                             (_%L142980%_ _%body142847142968%_)
                             (_%L142981%_ _%arg142838142944%_)
                             (_%L142982%_ _%hd142819142894%_))
                         (if (eq? _%L142982%_ _%L142979%_)
                             (_%__kont148604148605%_
                              _%L142979%_
                              _%L142980%_
                              _%L142981%_
                              _%L142982%_)
                             (_%__kont148610148611%_)))
                       (_%__kont148610148611%_))))
               (_%__kont148610148611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148610148611%_))
                                               (_%__kont148610148611%_)))))))
                           (_%loop142842142952%_ _%target142839142947%_ '()))
                         (_%__kont148610148611%_))))
                 (_%__kont148610148611%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop142833142928%_
                                      _%target142830142923%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148602148603%_))
                                (let ((_%e142809142867%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148602148603%_))))
                                  (let ((_%tl142811142872%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142809142867%_)))
                                        (_%hd142810142870%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142809142867%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142810142870%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd142810142870%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142811142872%_))
                                                (let ((_%e142812142875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142811142872%_))))
                                                  (let ((_%tl142814142880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142812142875%_)))
                                                        (_%hd142813142878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142812142875%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142813142878%_))
                                                        (let ((_%e142815142883%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142813142878%_))))
                  (let ((_%tl142817142888%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142815142883%_)))
                        (_%hd142816142886%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142815142883%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142816142886%_))
                        (let ((_%e142818142891%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142816142886%_))))
                          (let ((_%tl142820142896%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142818142891%_)))
                                (_%hd142819142894%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142818142891%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142820142896%_))
                                (let ((_%e142821142899%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142820142896%_))))
                                  (let ((_%tl142823142904%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142821142899%_)))
                                        (_%hd142822142902%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142821142899%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd142822142902%_))
                                        (let ((_%e142824142907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd142822142902%_))))
                                          (let ((_%tl142826142912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142824142907%_)))
                                                (_%hd142825142910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142824142907%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd142825142910%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd142825142910%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142826142912%_))
                                                        (let ((_%e142827142915%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142826142912%_))))
                  (let ((_%tl142829142920%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142827142915%_)))
                        (_%hd142828142918%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142827142915%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd142828142918%_))
                        (let ((_%__splice148606148607%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd142828142918%_
                                  '0))))
                          (let ((_%tl142832142925%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice148606148607%_ '1)))
                                (_%target142830142923%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice148606148607%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142832142925%_))
                                (_%__match148669148670%_
                                 _%e142809142867%_
                                 _%hd142810142870%_
                                 _%tl142811142872%_
                                 _%e142812142875%_
                                 _%hd142813142878%_
                                 _%tl142814142880%_
                                 _%e142815142883%_
                                 _%hd142816142886%_
                                 _%tl142817142888%_
                                 _%e142818142891%_
                                 _%hd142819142894%_
                                 _%tl142820142896%_
                                 _%e142821142899%_
                                 _%hd142822142902%_
                                 _%tl142823142904%_
                                 _%e142824142907%_
                                 _%hd142825142910%_
                                 _%tl142826142912%_
                                 _%e142827142915%_
                                 _%hd142828142918%_
                                 _%tl142829142920%_
                                 _%__splice148606148607%_
                                 _%target142830142923%_
                                 _%tl142832142925%_)
                                (_%__kont148610148611%_))))
                        (_%__kont148610148611%_))))
                (_%__kont148610148611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148610148611%_))
                                                (_%__kont148610148611%_))))
                                        (_%__kont148610148611%_))))
                                (_%__kont148610148611%_))))
                        (_%__kont148610148611%_))))
                (_%__kont148610148611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148610148611%_))
                                            (_%__kont148610148611%_))
                                        (_%__kont148610148611%_))))
                                (_%__kont148610148611%_)))))))))
          (let* ((_%g142505142528%_
                  (lambda (_%g142506142525%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142506142525%_))))
                 (_%g142504142789%_
                  (lambda (_%g142506142531%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142506142531%_))
                        (let ((_%e142509142533%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142506142531%_))))
                          (let ((_%hd142510142536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142509142533%_)))
                                (_%tl142511142538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142509142533%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142511142538%_))
                                (let ((_%e142512142541%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142511142538%_))))
                                  (let ((_%hd142513142544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142512142541%_)))
                                        (_%tl142514142546%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142512142541%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142514142546%_))
                                        (let ((_g149279_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142514142546%_
                                                  '0))))
                                          (begin
                                            (let ((_g149280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g149279_)
                                                         (##values-length
                                                          _g149279_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g149280_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g149280_)))
                                            (let ((_%target142515142549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g149279_
                                                      0)))
                                                  (_%tl142517142551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g149279_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142517142551%_))
                                                  (letrec ((_%loop142518142554%_
                                                            (lambda (_%hd142516142557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand142522142559%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142516142557%_))
                          (let ((_%e142519142562%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142516142557%_))))
                            (let ((_%lp-hd142520142565%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142519142562%_)))
                                  (_%lp-tl142521142567%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142519142562%_))))
                              (_%loop142518142554%_
                               _%lp-tl142521142567%_
                               (cons _%lp-hd142520142565%_
                                     _%rand142522142559%_))))
                          (let ((_%rand142523142570%_
                                 (reverse _%rand142522142559%_)))
                            ((lambda (_%L142573%_ _%L142574%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call142503%_
                                    _%L142574%_
                                    (let ((__tmp149281
                                           (lambda (_%g142591142594%_
                                                    _%g142592142596%_)
                                             (cons _%g142591142594%_
                                                   _%g142592142596%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp149281 '() _%L142573%_)))
                                   (let* ((_%__stx148718148719%_ _%L142574%_)
                                          (_%g142600142612%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx148718148719%_)))))
                                     (let ((_%__kont148720148721%_
                                            (lambda ()
                                              (let ((_%f142649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self142500%_
                                                        _%L142574%_))))
                                                (if (and (let ((__tmp149282
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f142649%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp149282))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f142649%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp142651%_ ((_%rest142654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp149284
                                                (lambda (_%g142771142774%_
                                                         _%g142772142776%_)
                                                  (cons _%g142771142774%_
                                                        _%g142772142776%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp149284
                                            '()
                                            _%L142573%_))))
                               (_%bind142656%_ '())
                               (_%args142657%_ '()))
              (let* ((_%rest142658142666%_ _%rest142654%_)
                     (_%else142660142674%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind142656%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f142649%_
                                                      _%args142657%_)
                                                '()))))))
                     (_%K142662142760%_
                      (lambda (_%rest142677%_ _%e142678%_)
                        (let* ((_%__stx148672148673%_ _%e142678%_)
                               (_%g142683142701%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx148672148673%_)))))
                          (let ((_%__kont148674148675%_
                                 (lambda ()
                                   (_%lp142651%_
                                    _%rest142677%_
                                    _%bind142656%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142678%_))
                                          _%args142657%_))))
                                (_%__kont148676148677%_
                                 (lambda ()
                                   (_%lp142651%_
                                    _%rest142677%_
                                    _%bind142656%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142678%_))
                                          _%args142657%_))))
                                (_%__kont148678148679%_
                                 (lambda ()
                                   (let ((_%tmp142708%_
                                          (let ((__tmp149283
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp149283))))
                                     (_%lp142651%_
                                      _%rest142677%_
                                      (cons (cons _%tmp142708%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e142678%_))
                                                        '()))
                                            _%bind142656%_)
                                      (cons _%tmp142708%_ _%args142657%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148672148673%_))
                                (let ((_%e142685142739%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148672148673%_))))
                                  (let ((_%tl142687142744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142685142739%_)))
                                        (_%hd142686142742%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142685142739%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142686142742%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd142686142742%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142687142744%_))
                                                (let ((_%e142688142747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142687142744%_))))
                                                  (let ((_%tl142690142752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142688142747%_)))
                                                        (_%hd142689142750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142688142747%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142690142752%_))
                                                        (_%__kont148674148675%_)
                                                        (_%__kont148678148679%_))))
                                                (_%__kont148678148679%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd142686142742%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl142687142744%_))
                                                    (let ((_%e142694142724%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl142687142744%_))))
                                                      (let ((_%tl142696142729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142694142724%_)))
                    (_%hd142695142727%_
                     (let () (declare (not safe)) (##car _%e142694142724%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl142696142729%_))
                    (_%__kont148676148677%_)
                    (_%__kont148678148679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148678148679%_))
                                                (_%__kont148678148679%_)))
                                        (_%__kont148678148679%_))))
                                (_%__kont148678148679%_)))))))
                (if (pair? _%rest142658142666%_)
                    (let ((_%hd142663142763%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142658142666%_)))
                          (_%tl142664142765%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142658142666%_))))
                      (let* ((_%e142768%_ _%hd142663142763%_)
                             (_%rest142770%_ _%tl142664142765%_))
                        (_%K142662142760%_ _%rest142770%_ _%e142768%_)))
                    (_%else142660142674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call142503%_
                                                     _%L142574%_
                                                     (let ((__tmp149285
                                                            (lambda (_%g142778142781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g142779142783%_)
                      (cons _%g142778142781%_ _%g142779142783%_))))
               (declare (not safe))
               (__foldr1 __tmp149285 '() _%L142573%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont148722148723%_
                                            (lambda ()
                                              (_%compile-call142503%_
                                               _%L142574%_
                                               (let ((__tmp149286
                                                      (lambda (_%g142618142621%_
                                                               _%g142619142623%_)
                                                        (cons _%g142618142621%_
                                                              _%g142619142623%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp149286
                                                  '()
                                                  _%L142573%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx148718148719%_))
                                           (let ((_%e142602142631%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx148718148719%_))))
                                             (let ((_%tl142604142636%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e142602142631%_)))
                                                   (_%hd142603142634%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e142602142631%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd142603142634%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd142603142634%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl142604142636%_))
                                                           (let ((_%e142605142639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl142604142636%_))))
                     (let ((_%tl142607142644%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e142605142639%_)))
                           (_%hd142606142642%_
                            (let ()
                              (declare (not safe))
                              (##car _%e142605142639%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl142607142644%_))
                           (_%__kont148720148721%_)
                           (_%__kont148722148723%_))))
                   (_%__kont148722148723%_))
               (_%__kont148722148723%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148722148723%_))))
                                           (_%__kont148722148723%_))))))
                             _%rand142523142570%_
                             _%hd142513142544%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop142518142554%_
                                                     _%target142515142549%_
                                                     '()))
                                                  (_%g142505142528%_
                                                   _%g142506142531%_)))))
                                        (_%g142505142528%_
                                         _%g142506142531%_))))
                                (_%g142505142528%_ _%g142506142531%_))))
                        (_%g142505142528%_ _%g142506142531%_)))))
            (_%g142504142789%_ _%stx142501%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self142243%_ _%stx142244%_)
        (let* ((_%__stx148790148791%_ _%stx142244%_)
               (_%g142247142276%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148790148791%_)))))
          (let ((_%__kont148792148793%_
                 (lambda (_%L142344%_ _%L142345%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self142243%_
                        _%stx142244%_)
                       (let ((_%f142367%_
                              (let ((__tmp149287
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L142345%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self142243%_
                                 __tmp149287))))
                         (let _%lp142369%_ ((_%rest142372%_
                                             (reverse (let ((__tmp149289
                                                             (lambda (_%g142489142492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g142490142494%_)
                       (cons _%g142489142492%_ _%g142490142494%_))))
                (declare (not safe))
                (__foldr1 __tmp149289 '() _%L142344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind142374%_ '())
                                            (_%args142375%_ '()))
                           (let* ((_%rest142376142384%_ _%rest142372%_)
                                  (_%else142378142392%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind142374%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f142367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args142375%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K142380142478%_
                                   (lambda (_%rest142395%_ _%e142396%_)
                                     (let* ((_%__stx148744148745%_ _%e142396%_)
                                            (_%g142401142419%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx148744148745%_)))))
                                       (let ((_%__kont148746148747%_
                                              (lambda ()
                                                (_%lp142369%_
                                                 _%rest142395%_
                                                 _%bind142374%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142396%_))
                                                       _%args142375%_))))
                                             (_%__kont148748148749%_
                                              (lambda ()
                                                (_%lp142369%_
                                                 _%rest142395%_
                                                 _%bind142374%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142396%_))
                                                       _%args142375%_))))
                                             (_%__kont148750148751%_
                                              (lambda ()
                                                (let ((_%tmp142426%_
                                                       (let ((__tmp149288
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp149288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp142369%_
                                                   _%rest142395%_
                                                   (cons (cons _%tmp142426%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e142396%_))
                             '()))
                 _%bind142374%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp142426%_
                                                         _%args142375%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx148744148745%_))
                                             (let ((_%e142403142457%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx148744148745%_))))
                                               (let ((_%tl142405142462%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e142403142457%_)))
                                                     (_%hd142404142460%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e142403142457%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd142404142460%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd142404142460%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142405142462%_))
                     (let ((_%e142406142465%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142405142462%_))))
                       (let ((_%tl142408142470%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142406142465%_)))
                             (_%hd142407142468%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142406142465%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142408142470%_))
                             (_%__kont148746148747%_)
                             (_%__kont148750148751%_))))
                     (_%__kont148750148751%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd142404142460%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl142405142462%_))
                         (let ((_%e142412142442%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl142405142462%_))))
                           (let ((_%tl142414142447%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e142412142442%_)))
                                 (_%hd142413142445%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e142412142442%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl142414142447%_))
                                 (_%__kont148748148749%_)
                                 (_%__kont148750148751%_))))
                         (_%__kont148750148751%_))
                     (_%__kont148750148751%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148750148751%_))))
                                             (_%__kont148750148751%_)))))))
                             (if (pair? _%rest142376142384%_)
                                 (let ((_%hd142381142481%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest142376142384%_)))
                                       (_%tl142382142483%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest142376142384%_))))
                                   (let* ((_%e142486%_ _%hd142381142481%_)
                                          (_%rest142488%_ _%tl142382142483%_))
                                     (_%K142380142478%_
                                      _%rest142488%_
                                      _%e142486%_)))
                                 (_%else142378142392%_))))))))
                (_%__kont148796148797%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self142243%_ _%stx142244%_))))
            (let ((_%__match148835148836%_
                   (lambda (_%e142251142288%_
                            _%hd142252142291%_
                            _%tl142253142293%_
                            _%e142254142296%_
                            _%hd142255142299%_
                            _%tl142256142301%_
                            _%e142257142304%_
                            _%hd142258142307%_
                            _%tl142259142309%_
                            _%e142260142312%_
                            _%hd142261142315%_
                            _%tl142262142317%_
                            _%__splice148794148795%_
                            _%target142263142320%_
                            _%tl142265142322%_)
                     (letrec ((_%loop142266142325%_
                               (lambda (_%hd142264142328%_
                                        _%rand142270142330%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd142264142328%_))
                                     (let ((_%e142267142333%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd142264142328%_))))
                                       (let ((_%lp-tl142269142338%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e142267142333%_)))
                                             (_%lp-hd142268142336%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e142267142333%_))))
                                         (_%loop142266142325%_
                                          _%lp-tl142269142338%_
                                          (cons _%lp-hd142268142336%_
                                                _%rand142270142330%_))))
                                     (let ((_%rand142271142341%_
                                            (reverse _%rand142270142330%_)))
                                       (_%__kont148792148793%_
                                        _%rand142271142341%_
                                        _%hd142261142315%_))))))
                       (_%loop142266142325%_ _%target142263142320%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148790148791%_))
                  (let ((_%e142251142288%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148790148791%_))))
                    (let ((_%tl142253142293%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142251142288%_)))
                          (_%hd142252142291%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142251142288%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142253142293%_))
                          (let ((_%e142254142296%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142253142293%_))))
                            (let ((_%tl142256142301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142254142296%_)))
                                  (_%hd142255142299%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142254142296%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142255142299%_))
                                  (let ((_%e142257142304%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142255142299%_))))
                                    (let ((_%tl142259142309%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142257142304%_)))
                                          (_%hd142258142307%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142257142304%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142258142307%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142258142307%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142259142309%_))
                                                  (let ((_%e142260142312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142259142309%_))))
                                                    (let ((_%tl142262142317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142260142312%_)))
                                                          (_%hd142261142315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142260142312%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142262142317%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl142256142301%_))
                      (let ((_%__splice148794148795%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl142256142301%_
                                '0))))
                        (let ((_%tl142265142322%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148794148795%_ '1)))
                              (_%target142263142320%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148794148795%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142265142322%_))
                              (_%__match148835148836%_
                               _%e142251142288%_
                               _%hd142252142291%_
                               _%tl142253142293%_
                               _%e142254142296%_
                               _%hd142255142299%_
                               _%tl142256142301%_
                               _%e142257142304%_
                               _%hd142258142307%_
                               _%tl142259142309%_
                               _%e142260142312%_
                               _%hd142261142315%_
                               _%tl142262142317%_
                               _%__splice148794148795%_
                               _%target142263142320%_
                               _%tl142265142322%_)
                              (_%__kont148796148797%_))))
                      (_%__kont148796148797%_))
                  (_%__kont148796148797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148796148797%_))
                                              (_%__kont148796148797%_))
                                          (_%__kont148796148797%_))))
                                  (_%__kont148796148797%_))))
                          (_%__kont148796148797%_))))
                  (_%__kont148796148797%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self142055%_ _%stx142056%_)
        (letrec ((_%simplify142058%_
                  (lambda (_%code142143%_)
                    (let* ((_%code142144142162%_ _%code142143%_)
                           (_%else142146142170%_ (lambda () _%code142143%_))
                           (_%K142148142206%_
                            (lambda (_%expr142173%_ _%test142174%_)
                              (let* ((_%expr142175142183%_ _%expr142173%_)
                                     (_%else142177142191%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test142174%_
                                                    (cons _%expr142173%_
                                                          '())))))
                                     (_%K142179142196%_
                                      (lambda (_%exprs142194%_)
                                        (cons 'and
                                              (cons _%test142174%_
                                                    _%exprs142194%_)))))
                                (if (pair? _%expr142175142183%_)
                                    (let ((_%hd142180142199%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr142175142183%_)))
                                          (_%tl142181142201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr142175142183%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd142180142199%_ 'and))
                                          (let ((_%exprs142204%_
                                                 _%tl142181142201%_))
                                            (_%K142179142196%_
                                             _%exprs142204%_))
                                          (_%else142177142191%_)))
                                    (_%else142177142191%_))))))
                      (if (pair? _%code142144142162%_)
                          (let ((_%hd142149142209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code142144142162%_)))
                                (_%tl142150142211%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code142144142162%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd142149142209%_ 'if))
                                (if (pair? _%tl142150142211%_)
                                    (let ((_%hd142151142214%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142150142211%_)))
                                          (_%tl142152142216%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142150142211%_))))
                                      (let ((_%test142219%_
                                             _%hd142151142214%_))
                                        (if (pair? _%tl142152142216%_)
                                            (let ((_%hd142153142221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl142152142216%_)))
                                                  (_%tl142154142223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl142152142216%_))))
                                              (let ((_%expr142226%_
                                                     _%hd142153142221%_))
                                                (if (pair? _%tl142154142223%_)
                                                    (let ((_%hd142155142228%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142154142223%_)))
                                                          (_%tl142156142230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142154142223%_))))
                                                      (if (pair? _%hd142155142228%_)
                                                          (let ((_%hd142157142233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd142155142228%_)))
                        (_%tl142158142235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd142155142228%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd142157142233%_ 'quote))
                        (if (pair? _%tl142158142235%_)
                            (let ((_%hd142159142238%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl142158142235%_)))
                                  (_%tl142160142240%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl142158142235%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142159142238%_ '#f))
                                  (if (null? _%tl142160142240%_)
                                      (if (null? _%tl142156142230%_)
                                          (_%K142148142206%_
                                           _%expr142226%_
                                           _%test142219%_)
                                          (_%else142146142170%_))
                                      (_%else142146142170%_))
                                  (_%else142146142170%_)))
                            (_%else142146142170%_))
                        (_%else142146142170%_)))
                  (_%else142146142170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142146142170%_))))
                                            (_%else142146142170%_))))
                                    (_%else142146142170%_))
                                (_%else142146142170%_)))
                          (_%else142146142170%_))))))
          (let* ((_%g142060142081%_
                  (lambda (_%g142061142078%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142061142078%_))))
                 (_%g142059142140%_
                  (lambda (_%g142061142084%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142061142084%_))
                        (let ((_%e142065142086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142061142084%_))))
                          (let ((_%hd142066142089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142065142086%_)))
                                (_%tl142067142091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142065142086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142067142091%_))
                                (let ((_%e142068142094%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142067142091%_))))
                                  (let ((_%hd142069142097%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142068142094%_)))
                                        (_%tl142070142099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142068142094%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142070142099%_))
                                        (let ((_%e142071142102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142070142099%_))))
                                          (let ((_%hd142072142105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142071142102%_)))
                                                (_%tl142073142107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142071142102%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142073142107%_))
                                                (let ((_%e142074142110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142073142107%_))))
                                                  (let ((_%hd142075142113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142074142110%_)))
                                                        (_%tl142076142115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142074142110%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142076142115%_))
                                                        ((lambda (_%L142118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L142119%_
                          _%L142120%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify142058%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self142055%_
                                       _%L142120%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self142055%_
                                             _%L142119%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142055%_
                                                   _%L142118%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp149290
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self142055%_
                                               _%L142120%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp149290
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142055%_
                                            _%L142119%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self142055%_
                                                  _%L142118%_))
                                               '()))))))
                 _%hd142075142113%_
                 _%hd142072142105%_
                 _%hd142069142097%_)
                (_%g142060142081%_ _%g142061142084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g142060142081%_
                                                 _%g142061142084%_))))
                                        (_%g142060142081%_
                                         _%g142061142084%_))))
                                (_%g142060142081%_ _%g142061142084%_))))
                        (_%g142060142081%_ _%g142061142084%_)))))
            (_%g142059142140%_ _%stx142056%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self142003%_ _%stx142004%_)
        (let* ((_%g142006142019%_
                (lambda (_%g142007142016%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142007142016%_))))
               (_%g142005142052%_
                (lambda (_%g142007142022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142007142022%_))
                      (let ((_%e142009142024%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142007142022%_))))
                        (let ((_%hd142010142027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142009142024%_)))
                              (_%tl142011142029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142009142024%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142011142029%_))
                              (let ((_%e142012142032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142011142029%_))))
                                (let ((_%hd142013142035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142012142032%_)))
                                      (_%tl142014142037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142012142032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142014142037%_))
                                      ((lambda (_%L142040%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L142040%_)))
                                       _%hd142013142035%_)
                                      (_%g142006142019%_ _%g142007142022%_))))
                              (_%g142006142019%_ _%g142007142022%_))))
                      (_%g142006142019%_ _%g142007142022%_)))))
          (_%g142005142052%_ _%stx142004%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self141935%_ _%stx141936%_)
        (let* ((_%g141938141955%_
                (lambda (_%g141939141952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141939141952%_))))
               (_%g141937142000%_
                (lambda (_%g141939141958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141939141958%_))
                      (let ((_%e141942141960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141939141958%_))))
                        (let ((_%hd141943141963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141942141960%_)))
                              (_%tl141944141965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141942141960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141944141965%_))
                              (let ((_%e141945141968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141944141965%_))))
                                (let ((_%hd141946141971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141945141968%_)))
                                      (_%tl141947141973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141945141968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141947141973%_))
                                      (let ((_%e141948141976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141947141973%_))))
                                        (let ((_%hd141949141979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141948141976%_)))
                                              (_%tl141950141981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141948141976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141950141981%_))
                                              ((lambda (_%L141984%_
                                                        _%L141985%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L141985%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141935%_ _%L141984%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141949141979%_
                                               _%hd141946141971%_)
                                              (_%g141938141955%_
                                               _%g141939141958%_))))
                                      (_%g141938141955%_ _%g141939141958%_))))
                              (_%g141938141955%_ _%g141939141958%_))))
                      (_%g141938141955%_ _%g141939141958%_)))))
          (_%g141937142000%_ _%stx141936%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self141746%_ _%stx141747%_)
        (let* ((_%g141749141766%_
                (lambda (_%g141750141763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141750141763%_))))
               (_%g141748141932%_
                (lambda (_%g141750141769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141750141769%_))
                      (let ((_%e141753141771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141750141769%_))))
                        (let ((_%hd141754141774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141753141771%_)))
                              (_%tl141755141776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141753141771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141755141776%_))
                              (let ((_%e141756141779%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141755141776%_))))
                                (let ((_%hd141757141782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141756141779%_)))
                                      (_%tl141758141784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141756141779%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141758141784%_))
                                      (let ((_%e141759141787%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141758141784%_))))
                                        (let ((_%hd141760141790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141759141787%_)))
                                              (_%tl141761141792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141759141787%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141761141792%_))
                                              ((lambda (_%L141795%_
                                                        _%L141796%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141746%_ _%L141795%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141746%_ _%L141796%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141811%_ ((_%rest141814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141796%_ (cons _%L141795%_ '())))
                                (_%bind141816%_ '())
                                (_%args141817%_ '()))
               (let* ((_%rest141818141826%_ _%rest141814%_)
                      (_%else141820141834%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141816%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args141817%_)
                                                 '()))))))
                      (_%K141822141920%_
                       (lambda (_%rest141837%_ _%e141838%_)
                         (let* ((_%__stx148838148839%_ _%e141838%_)
                                (_%g141843141861%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148838148839%_)))))
                           (let ((_%__kont148840148841%_
                                  (lambda ()
                                    (_%lp141811%_
                                     _%rest141837%_
                                     _%bind141816%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141838%_))
                                           _%args141817%_))))
                                 (_%__kont148842148843%_
                                  (lambda ()
                                    (_%lp141811%_
                                     _%rest141837%_
                                     _%bind141816%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141838%_))
                                           _%args141817%_))))
                                 (_%__kont148844148845%_
                                  (lambda ()
                                    (let ((_%tmp141868%_
                                           (let ((__tmp149291
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149291))))
                                      (_%lp141811%_
                                       _%rest141837%_
                                       (cons (cons _%tmp141868%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141838%_))
                                                         '()))
                                             _%bind141816%_)
                                       (cons _%tmp141868%_ _%args141817%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148838148839%_))
                                 (let ((_%e141845141899%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148838148839%_))))
                                   (let ((_%tl141847141904%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141845141899%_)))
                                         (_%hd141846141902%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141845141899%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141846141902%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141846141902%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141847141904%_))
                                                 (let ((_%e141848141907%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141847141904%_))))
                                                   (let ((_%tl141850141912%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141848141907%_)))
                                                         (_%hd141849141910%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141848141907%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141850141912%_))
                                                         (_%__kont148840148841%_)
                                                         (_%__kont148844148845%_))))
                                                 (_%__kont148844148845%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141846141902%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141847141904%_))
                                                     (let ((_%e141854141884%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141847141904%_))))
                                                       (let ((_%tl141856141889%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141854141884%_)))
                     (_%hd141855141887%_
                      (let () (declare (not safe)) (##car _%e141854141884%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141856141889%_))
                     (_%__kont148842148843%_)
                     (_%__kont148844148845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148844148845%_))
                                                 (_%__kont148844148845%_)))
                                         (_%__kont148844148845%_))))
                                 (_%__kont148844148845%_)))))))
                 (if (pair? _%rest141818141826%_)
                     (let ((_%hd141823141923%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141818141826%_)))
                           (_%tl141824141925%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141818141826%_))))
                       (let* ((_%e141928%_ _%hd141823141923%_)
                              (_%rest141930%_ _%tl141824141925%_))
                         (_%K141822141920%_ _%rest141930%_ _%e141928%_)))
                     (_%else141820141834%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141760141790%_
                                               _%hd141757141782%_)
                                              (_%g141749141766%_
                                               _%g141750141769%_))))
                                      (_%g141749141766%_ _%g141750141769%_))))
                              (_%g141749141766%_ _%g141750141769%_))))
                      (_%g141749141766%_ _%g141750141769%_)))))
          (_%g141748141932%_ _%stx141747%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self141557%_ _%stx141558%_)
        (let* ((_%g141560141577%_
                (lambda (_%g141561141574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141561141574%_))))
               (_%g141559141743%_
                (lambda (_%g141561141580%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141561141580%_))
                      (let ((_%e141564141582%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141561141580%_))))
                        (let ((_%hd141565141585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141564141582%_)))
                              (_%tl141566141587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141564141582%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141566141587%_))
                              (let ((_%e141567141590%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141566141587%_))))
                                (let ((_%hd141568141593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141567141590%_)))
                                      (_%tl141569141595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141567141590%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141569141595%_))
                                      (let ((_%e141570141598%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141569141595%_))))
                                        (let ((_%hd141571141601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141570141598%_)))
                                              (_%tl141572141603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141570141598%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141572141603%_))
                                              ((lambda (_%L141606%_
                                                        _%L141607%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141557%_ _%L141606%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141557%_ _%L141607%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141622%_ ((_%rest141625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141607%_ (cons _%L141606%_ '())))
                                (_%bind141627%_ '())
                                (_%args141628%_ '()))
               (let* ((_%rest141629141637%_ _%rest141625%_)
                      (_%else141631141645%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141627%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args141628%_)
                                                 '()))))))
                      (_%K141633141731%_
                       (lambda (_%rest141648%_ _%e141649%_)
                         (let* ((_%__stx148884148885%_ _%e141649%_)
                                (_%g141654141672%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148884148885%_)))))
                           (let ((_%__kont148886148887%_
                                  (lambda ()
                                    (_%lp141622%_
                                     _%rest141648%_
                                     _%bind141627%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141649%_))
                                           _%args141628%_))))
                                 (_%__kont148888148889%_
                                  (lambda ()
                                    (_%lp141622%_
                                     _%rest141648%_
                                     _%bind141627%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141649%_))
                                           _%args141628%_))))
                                 (_%__kont148890148891%_
                                  (lambda ()
                                    (let ((_%tmp141679%_
                                           (let ((__tmp149292
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149292))))
                                      (_%lp141622%_
                                       _%rest141648%_
                                       (cons (cons _%tmp141679%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141649%_))
                                                         '()))
                                             _%bind141627%_)
                                       (cons _%tmp141679%_ _%args141628%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148884148885%_))
                                 (let ((_%e141656141710%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148884148885%_))))
                                   (let ((_%tl141658141715%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141656141710%_)))
                                         (_%hd141657141713%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141656141710%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141657141713%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141657141713%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141658141715%_))
                                                 (let ((_%e141659141718%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141658141715%_))))
                                                   (let ((_%tl141661141723%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141659141718%_)))
                                                         (_%hd141660141721%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141659141718%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141661141723%_))
                                                         (_%__kont148886148887%_)
                                                         (_%__kont148890148891%_))))
                                                 (_%__kont148890148891%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141657141713%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141658141715%_))
                                                     (let ((_%e141665141695%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141658141715%_))))
                                                       (let ((_%tl141667141700%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141665141695%_)))
                     (_%hd141666141698%_
                      (let () (declare (not safe)) (##car _%e141665141695%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141667141700%_))
                     (_%__kont148888148889%_)
                     (_%__kont148890148891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148890148891%_))
                                                 (_%__kont148890148891%_)))
                                         (_%__kont148890148891%_))))
                                 (_%__kont148890148891%_)))))))
                 (if (pair? _%rest141629141637%_)
                     (let ((_%hd141634141734%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141629141637%_)))
                           (_%tl141635141736%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141629141637%_))))
                       (let* ((_%e141739%_ _%hd141634141734%_)
                              (_%rest141741%_ _%tl141635141736%_))
                         (_%K141633141731%_ _%rest141741%_ _%e141739%_)))
                     (_%else141631141645%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141571141601%_
                                               _%hd141568141593%_)
                                              (_%g141560141577%_
                                               _%g141561141580%_))))
                                      (_%g141560141577%_ _%g141561141580%_))))
                              (_%g141560141577%_ _%g141561141580%_))))
                      (_%g141560141577%_ _%g141561141580%_)))))
          (_%g141559141743%_ _%stx141558%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self141473%_ _%stx141474%_)
        (let* ((_%g141476141497%_
                (lambda (_%g141477141494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141477141494%_))))
               (_%g141475141554%_
                (lambda (_%g141477141500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141477141500%_))
                      (let ((_%e141481141502%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141477141500%_))))
                        (let ((_%hd141482141505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141481141502%_)))
                              (_%tl141483141507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141481141502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141483141507%_))
                              (let ((_%e141484141510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141483141507%_))))
                                (let ((_%hd141485141513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141484141510%_)))
                                      (_%tl141486141515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141484141510%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141486141515%_))
                                      (let ((_%e141487141518%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141486141515%_))))
                                        (let ((_%hd141488141521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141487141518%_)))
                                              (_%tl141489141523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141487141518%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141489141523%_))
                                              (let ((_%e141490141526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141489141523%_))))
                                                (let ((_%hd141491141529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141490141526%_)))
                                                      (_%tl141492141531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141490141526%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141492141531%_))
                                                      ((lambda (_%L141534%_
                                                                _%L141535%_
                                                                _%L141536%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141473%_ _%L141534%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141473%_
                                      _%L141535%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141473%_
                                            _%L141536%_))
                                         (cons ''#f '()))))))
               _%hd141491141529%_
               _%hd141488141521%_
               _%hd141485141513%_)
              (_%g141476141497%_ _%g141477141500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141476141497%_
                                               _%g141477141500%_))))
                                      (_%g141476141497%_ _%g141477141500%_))))
                              (_%g141476141497%_ _%g141477141500%_))))
                      (_%g141476141497%_ _%g141477141500%_)))))
          (_%g141475141554%_ _%stx141474%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self141373%_ _%stx141374%_)
        (let* ((_%g141376141401%_
                (lambda (_%g141377141398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141377141398%_))))
               (_%g141375141470%_
                (lambda (_%g141377141404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141377141404%_))
                      (let ((_%e141382141406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141377141404%_))))
                        (let ((_%hd141383141409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141382141406%_)))
                              (_%tl141384141411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141382141406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141384141411%_))
                              (let ((_%e141385141414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141384141411%_))))
                                (let ((_%hd141386141417%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141385141414%_)))
                                      (_%tl141387141419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141385141414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141387141419%_))
                                      (let ((_%e141388141422%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141387141419%_))))
                                        (let ((_%hd141389141425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141388141422%_)))
                                              (_%tl141390141427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141388141422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141390141427%_))
                                              (let ((_%e141391141430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141390141427%_))))
                                                (let ((_%hd141392141433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141391141430%_)))
                                                      (_%tl141393141435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141391141430%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141393141435%_))
                                                      (let ((_%e141394141438%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141393141435%_))))
                (let ((_%hd141395141441%_
                       (let () (declare (not safe)) (##car _%e141394141438%_)))
                      (_%tl141396141443%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141394141438%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141396141443%_))
                      ((lambda (_%L141446%_
                                _%L141447%_
                                _%L141448%_
                                _%L141449%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141373%_
                                        _%L141447%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141373%_
                                              _%L141446%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141373%_
                                                    _%L141448%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141373%_
                                                          _%L141449%_))
                                                       (cons ''#f '())))))))
                       _%hd141395141441%_
                       _%hd141392141433%_
                       _%hd141389141425%_
                       _%hd141386141417%_)
                      (_%g141376141401%_ _%g141377141404%_))))
              (_%g141376141401%_ _%g141377141404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141376141401%_
                                               _%g141377141404%_))))
                                      (_%g141376141401%_ _%g141377141404%_))))
                              (_%g141376141401%_ _%g141377141404%_))))
                      (_%g141376141401%_ _%g141377141404%_)))))
          (_%g141375141470%_ _%stx141374%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self141289%_ _%stx141290%_)
        (let* ((_%g141292141313%_
                (lambda (_%g141293141310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141293141310%_))))
               (_%g141291141370%_
                (lambda (_%g141293141316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141293141316%_))
                      (let ((_%e141297141318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141293141316%_))))
                        (let ((_%hd141298141321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141297141318%_)))
                              (_%tl141299141323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141297141318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141299141323%_))
                              (let ((_%e141300141326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141299141323%_))))
                                (let ((_%hd141301141329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141300141326%_)))
                                      (_%tl141302141331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141300141326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141302141331%_))
                                      (let ((_%e141303141334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141302141331%_))))
                                        (let ((_%hd141304141337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141303141334%_)))
                                              (_%tl141305141339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141303141334%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141305141339%_))
                                              (let ((_%e141306141342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141305141339%_))))
                                                (let ((_%hd141307141345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141306141342%_)))
                                                      (_%tl141308141347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141306141342%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141308141347%_))
                                                      ((lambda (_%L141350%_
                                                                _%L141351%_
                                                                _%L141352%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141289%_ _%L141350%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141289%_
                                      _%L141351%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141289%_
                                            _%L141352%_))
                                         (cons ''#f '()))))))
               _%hd141307141345%_
               _%hd141304141337%_
               _%hd141301141329%_)
              (_%g141292141313%_ _%g141293141316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141292141313%_
                                               _%g141293141316%_))))
                                      (_%g141292141313%_ _%g141293141316%_))))
                              (_%g141292141313%_ _%g141293141316%_))))
                      (_%g141292141313%_ _%g141293141316%_)))))
          (_%g141291141370%_ _%stx141290%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self141189%_ _%stx141190%_)
        (let* ((_%g141192141217%_
                (lambda (_%g141193141214%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141193141214%_))))
               (_%g141191141286%_
                (lambda (_%g141193141220%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141193141220%_))
                      (let ((_%e141198141222%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141193141220%_))))
                        (let ((_%hd141199141225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141198141222%_)))
                              (_%tl141200141227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141198141222%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141200141227%_))
                              (let ((_%e141201141230%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141200141227%_))))
                                (let ((_%hd141202141233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141201141230%_)))
                                      (_%tl141203141235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141201141230%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141203141235%_))
                                      (let ((_%e141204141238%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141203141235%_))))
                                        (let ((_%hd141205141241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141204141238%_)))
                                              (_%tl141206141243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141204141238%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141206141243%_))
                                              (let ((_%e141207141246%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141206141243%_))))
                                                (let ((_%hd141208141249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141207141246%_)))
                                                      (_%tl141209141251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141207141246%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141209141251%_))
                                                      (let ((_%e141210141254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141209141251%_))))
                (let ((_%hd141211141257%_
                       (let () (declare (not safe)) (##car _%e141210141254%_)))
                      (_%tl141212141259%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141210141254%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141212141259%_))
                      ((lambda (_%L141262%_
                                _%L141263%_
                                _%L141264%_
                                _%L141265%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141189%_
                                        _%L141263%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141189%_
                                              _%L141262%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141189%_
                                                    _%L141264%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141189%_
                                                          _%L141265%_))
                                                       (cons ''#f '())))))))
                       _%hd141211141257%_
                       _%hd141208141249%_
                       _%hd141205141241%_
                       _%hd141202141233%_)
                      (_%g141192141217%_ _%g141193141220%_))))
              (_%g141192141217%_ _%g141193141220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141192141217%_
                                               _%g141193141220%_))))
                                      (_%g141192141217%_ _%g141193141220%_))))
                              (_%g141192141217%_ _%g141193141220%_))))
                      (_%g141192141217%_ _%g141193141220%_)))))
          (_%g141191141286%_ _%stx141190%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self140984%_ _%stx140985%_)
        (let* ((_%g140987141008%_
                (lambda (_%g140988141005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140988141005%_))))
               (_%g140986141186%_
                (lambda (_%g140988141011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140988141011%_))
                      (let ((_%e140992141013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140988141011%_))))
                        (let ((_%hd140993141016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140992141013%_)))
                              (_%tl140994141018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140992141013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140994141018%_))
                              (let ((_%e140995141021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140994141018%_))))
                                (let ((_%hd140996141024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140995141021%_)))
                                      (_%tl140997141026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140995141021%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140997141026%_))
                                      (let ((_%e140998141029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140997141026%_))))
                                        (let ((_%hd140999141032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140998141029%_)))
                                              (_%tl141000141034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140998141029%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141000141034%_))
                                              (let ((_%e141001141037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141000141034%_))))
                                                (let ((_%hd141002141040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141001141037%_)))
                                                      (_%tl141003141042%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141001141037%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141003141042%_))
                                                      ((lambda (_%L141045%_
                                                                _%L141046%_
                                                                _%L141047%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self140984%_
                                    _%L141045%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self140984%_
                                          _%L141046%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp141065%_ ((_%rest141068%_
                                         (cons _%L141046%_
                                               (cons _%L141045%_ '())))
                                        (_%bind141070%_ '())
                                        (_%args141071%_ '()))
                       (let* ((_%rest141072141080%_ _%rest141068%_)
                              (_%else141074141088%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind141070%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp149293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp149293 _%args141071%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K141076141174%_
                               (lambda (_%rest141091%_ _%e141092%_)
                                 (let* ((_%__stx148930148931%_ _%e141092%_)
                                        (_%g141097141115%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148930148931%_)))))
                                   (let ((_%__kont148932148933%_
                                          (lambda ()
                                            (_%lp141065%_
                                             _%rest141091%_
                                             _%bind141070%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141092%_))
                                                   _%args141071%_))))
                                         (_%__kont148934148935%_
                                          (lambda ()
                                            (_%lp141065%_
                                             _%rest141091%_
                                             _%bind141070%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141092%_))
                                                   _%args141071%_))))
                                         (_%__kont148936148937%_
                                          (lambda ()
                                            (let ((_%tmp141122%_
                                                   (let ((__tmp149294
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp149294))))
                                              (_%lp141065%_
                                               _%rest141091%_
                                               (cons (cons _%tmp141122%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e141092%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141070%_)
                                               (cons _%tmp141122%_
                                                     _%args141071%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148930148931%_))
                                         (let ((_%e141099141153%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148930148931%_))))
                                           (let ((_%tl141101141158%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141099141153%_)))
                                                 (_%hd141100141156%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141099141153%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd141100141156%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd141100141156%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl141101141158%_))
                                                         (let ((_%e141102141161%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl141101141158%_))))
                   (let ((_%tl141104141166%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e141102141161%_)))
                         (_%hd141103141164%_
                          (let ()
                            (declare (not safe))
                            (##car _%e141102141161%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141104141166%_))
                         (_%__kont148932148933%_)
                         (_%__kont148936148937%_))))
                 (_%__kont148936148937%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd141100141156%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141101141158%_))
                     (let ((_%e141108141138%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141101141158%_))))
                       (let ((_%tl141110141143%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141108141138%_)))
                             (_%hd141109141141%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141108141138%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141110141143%_))
                             (_%__kont148934148935%_)
                             (_%__kont148936148937%_))))
                     (_%__kont148936148937%_))
                 (_%__kont148936148937%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148936148937%_))))
                                         (_%__kont148936148937%_)))))))
                         (if (pair? _%rest141072141080%_)
                             (let ((_%hd141077141177%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest141072141080%_)))
                                   (_%tl141078141179%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest141072141080%_))))
                               (let* ((_%e141182%_ _%hd141077141177%_)
                                      (_%rest141184%_ _%tl141078141179%_))
                                 (_%K141076141174%_
                                  _%rest141184%_
                                  _%e141182%_)))
                             (_%else141074141088%_))))))
               _%hd141002141040%_
               _%hd140999141032%_
               _%hd140996141024%_)
              (_%g140987141008%_ _%g140988141011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140987141008%_
                                               _%g140988141011%_))))
                                      (_%g140987141008%_ _%g140988141011%_))))
                              (_%g140987141008%_ _%g140988141011%_))))
                      (_%g140987141008%_ _%g140988141011%_)))))
          (_%g140986141186%_ _%stx140985%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self140763%_ _%stx140764%_)
        (let* ((_%g140766140791%_
                (lambda (_%g140767140788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140767140788%_))))
               (_%g140765140981%_
                (lambda (_%g140767140794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140767140794%_))
                      (let ((_%e140772140796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140767140794%_))))
                        (let ((_%hd140773140799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140772140796%_)))
                              (_%tl140774140801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140772140796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140774140801%_))
                              (let ((_%e140775140804%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140774140801%_))))
                                (let ((_%hd140776140807%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140775140804%_)))
                                      (_%tl140777140809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140775140804%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140777140809%_))
                                      (let ((_%e140778140812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140777140809%_))))
                                        (let ((_%hd140779140815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140778140812%_)))
                                              (_%tl140780140817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140778140812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140780140817%_))
                                              (let ((_%e140781140820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140780140817%_))))
                                                (let ((_%hd140782140823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140781140820%_)))
                                                      (_%tl140783140825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140781140820%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140783140825%_))
                                                      (let ((_%e140784140828%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140783140825%_))))
                (let ((_%hd140785140831%_
                       (let () (declare (not safe)) (##car _%e140784140828%_)))
                      (_%tl140786140833%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140784140828%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140786140833%_))
                      ((lambda (_%L140836%_
                                _%L140837%_
                                _%L140838%_
                                _%L140839%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140763%_
                                            _%L140837%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140763%_
                                                  _%L140836%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140763%_
                                                        _%L140838%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp140860%_ ((_%rest140863%_
                                                 (cons _%L140838%_
                                                       (cons _%L140836%_
                                                             (cons _%L140837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind140865%_ '())
                                                (_%args140866%_ '()))
                               (let* ((_%rest140867140875%_ _%rest140863%_)
                                      (_%else140869140883%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind140865%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149295 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp149295 _%args140866%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K140871140969%_
                                       (lambda (_%rest140886%_ _%e140887%_)
                                         (let* ((_%__stx148976148977%_
                                                 _%e140887%_)
                                                (_%g140892140910%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx148976148977%_)))))
                                           (let ((_%__kont148978148979%_
                                                  (lambda ()
                                                    (_%lp140860%_
                                                     _%rest140886%_
                                                     _%bind140865%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140887%_))
                                                           _%args140866%_))))
                                                 (_%__kont148980148981%_
                                                  (lambda ()
                                                    (_%lp140860%_
                                                     _%rest140886%_
                                                     _%bind140865%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140887%_))
                                                           _%args140866%_))))
                                                 (_%__kont148982148983%_
                                                  (lambda ()
                                                    (let ((_%tmp140917%_
                                                           (let ((__tmp149296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp149296))))
              (_%lp140860%_
               _%rest140886%_
               (cons (cons _%tmp140917%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e140887%_))
                                 '()))
                     _%bind140865%_)
               (cons _%tmp140917%_ _%args140866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx148976148977%_))
                                                 (let ((_%e140894140948%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx148976148977%_))))
                                                   (let ((_%tl140896140953%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140894140948%_)))
                                                         (_%hd140895140951%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140894140948%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd140895140951%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd140895140951%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140896140953%_))
                         (let ((_%e140897140956%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140896140953%_))))
                           (let ((_%tl140899140961%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140897140956%_)))
                                 (_%hd140898140959%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140897140956%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140899140961%_))
                                 (_%__kont148978148979%_)
                                 (_%__kont148982148983%_))))
                         (_%__kont148982148983%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd140895140951%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl140896140953%_))
                             (let ((_%e140903140933%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl140896140953%_))))
                               (let ((_%tl140905140938%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e140903140933%_)))
                                     (_%hd140904140936%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e140903140933%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl140905140938%_))
                                     (_%__kont148980148981%_)
                                     (_%__kont148982148983%_))))
                             (_%__kont148982148983%_))
                         (_%__kont148982148983%_)))
                 (_%__kont148982148983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148982148983%_)))))))
                                 (if (pair? _%rest140867140875%_)
                                     (let ((_%hd140872140972%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest140867140875%_)))
                                           (_%tl140873140974%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest140867140875%_))))
                                       (let* ((_%e140977%_ _%hd140872140972%_)
                                              (_%rest140979%_
                                               _%tl140873140974%_))
                                         (_%K140871140969%_
                                          _%rest140979%_
                                          _%e140977%_)))
                                     (_%else140869140883%_))))))
                       _%hd140785140831%_
                       _%hd140782140823%_
                       _%hd140779140815%_
                       _%hd140776140807%_)
                      (_%g140766140791%_ _%g140767140794%_))))
              (_%g140766140791%_ _%g140767140794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140766140791%_
                                               _%g140767140794%_))))
                                      (_%g140766140791%_ _%g140767140794%_))))
                              (_%g140766140791%_ _%g140767140794%_))))
                      (_%g140766140791%_ _%g140767140794%_)))))
          (_%g140765140981%_ _%stx140764%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self140602%_ _%stx140603%_)
        (letrec ((_%import-set-template140605%_
                  (lambda (_%in140708%_ _%phi140709%_)
                    (let ((_%iphi140711%_
                           (fx+ _%phi140709%_
                                (##direct-structure-ref
                                 _%in140708%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports140712%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in140708%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp140714%_ ((_%rest140716%_ _%imports140712%_)
                                         (_%r140717%_ '()))
                        (let* ((_%rest140718140726%_ _%rest140716%_)
                               (_%else140720140734%_ (lambda () _%r140717%_))
                               (_%K140722140751%_
                                (lambda (_%rest140737%_ _%in140738%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in140738%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi140711%_))
                                          (_%lp140714%_
                                           _%rest140737%_
                                           (cons _%in140738%_ _%r140717%_))
                                          (_%lp140714%_
                                           _%rest140737%_
                                           _%r140717%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in140738%_
                                             'gx#module-import::t))
                                          (let ((_%iphi140742%_
                                                 (fx+ _%phi140709%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in140738%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi140742%_))
                                                (_%lp140714%_
                                                 _%rest140737%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in140738%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r140717%_))
                                                (_%lp140714%_
                                                 _%rest140737%_
                                                 _%r140717%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in140738%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi140745%_
                                                     (fx+ _%iphi140711%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in140738%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi140745%_))
                                                    (_%lp140714%_
                                                     _%rest140737%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140738%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r140717%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi140745%_))
                                                        (_%lp140714%_
                                                         _%rest140737%_
                                                         (let ((__tmp149297
                                                                (_%import-set-template140605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in140738%_
                         _%iphi140711%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r140717%_ __tmp149297)))
                (_%lp140714%_ _%rest140737%_ _%r140717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp140714%_
                                               _%rest140737%_
                                               _%r140717%_)))))))
                          (if (pair? _%rest140718140726%_)
                              (let ((_%hd140723140754%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140718140726%_)))
                                    (_%tl140724140756%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140718140726%_))))
                                (let* ((_%in140759%_ _%hd140723140754%_)
                                       (_%rest140761%_ _%tl140724140756%_))
                                  (_%K140722140751%_
                                   _%rest140761%_
                                   _%in140759%_)))
                              (_%else140720140734%_))))))))
          (let* ((_%g140607140617%_
                  (lambda (_%g140608140614%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140608140614%_))))
                 (_%g140606140705%_
                  (lambda (_%g140608140620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140608140620%_))
                        (let ((_%e140610140622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140608140620%_))))
                          (let ((_%hd140611140625%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140610140622%_)))
                                (_%tl140612140627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140610140622%_))))
                            ((lambda (_%L140630%_)
                               (let ((_%ht140641%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp140643%_ ((_%rest140645%_
                                                     _%L140630%_)
                                                    (_%loads140646%_ '()))
                                   (letrec ((_%K140648%_
                                             (lambda (_%ctx140698%_
                                                      _%rest140699%_)
                                               (let ((_%id140701%_
                                                      (##structure-ref
                                                       _%ctx140698%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht140641%_
                                                        _%id140701%_))
                                                     (_%lp140643%_
                                                      _%rest140699%_
                                                      _%loads140646%_)
                                                     (let ((_%rt140703%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id140701%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht140641%_
                                                          _%id140701%_
                                                          _%rt140703%_))
                                                       (_%lp140643%_
                                                        _%rest140699%_
                                                        (cons _%rt140703%_
                                                              _%loads140646%_))))))))
                                     (let* ((_%rest140649140657%_
                                             _%rest140645%_)
                                            (_%else140651140669%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp149299
                                                            (lambda (_%g140664140666%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140664140666%_)))
                   (__tmp149298 (reverse _%loads140646%_)))
               (declare (not safe))
               (##map __tmp149299 __tmp149298)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K140653140686%_
                                             (lambda (_%rest140672%_
                                                      _%in140673%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in140673%_
                                                      'gx#module-context::t))
                                                   (_%K140648%_
                                                    _%in140673%_
                                                    _%rest140672%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in140673%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in140673%_
                               '3
                               '#f
                               '#f)))
                   (_%K140648%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in140673%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest140672%_)
                   (_%lp140643%_ _%rest140672%_ _%loads140646%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in140673%_
                      'gx#import-set::t))
                   (let ((_%phi140678%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140673%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi140678%_)
                         (_%K140648%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140673%_
                             '1
                             '#f
                             '#f))
                          _%rest140672%_)
                         (if (fxpositive? _%phi140678%_)
                             (let ((_%deps140682%_
                                    (_%import-set-template140605%_
                                     _%in140673%_
                                     '0)))
                               (_%lp140643%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest140672%_
                                   _%deps140682%_))
                                _%loads140646%_))
                             (_%lp140643%_ _%rest140672%_ _%loads140646%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx140603%_
                      _%in140673%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest140649140657%_)
                                           (let ((_%hd140654140689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest140649140657%_)))
                                                 (_%tl140655140691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest140649140657%_))))
                                             (let* ((_%in140694%_
                                                     _%hd140654140689%_)
                                                    (_%rest140696%_
                                                     _%tl140655140691%_))
                                               (_%K140653140686%_
                                                _%rest140696%_
                                                _%in140694%_)))
                                           (_%else140651140669%_)))))))
                             _%tl140612140627%_)))
                        (_%g140607140617%_ _%g140608140620%_)))))
            (_%g140606140705%_ _%stx140603%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self140415%_ _%stx140416%_)
        (letrec ((_%add-lift!140418%_
                  (lambda (_%expr140600%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr140600%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote140419%_
                  (lambda (_%id140597%_ _%marks140598%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id140597%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks140598%_
                                                        '()))))))))
                 (_%generate-simple140420%_
                  (lambda (_%stxq140592%_)
                    (let ((_%gid140594%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid140595%_
                           (gxc#generate-runtime-identifier _%stxq140592%_)))
                      (_%add-lift!140418%_
                       (cons 'define
                             (cons _%gid140594%_
                                   (cons (_%generate-syntax-quote140419%_
                                          _%qid140595%_
                                          ''())
                                         '()))))
                      (let ((__tmp149300
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149300 _%stxq140592%_ _%gid140594%_))
                      _%gid140594%_)))
                 (_%generate-serialized140421%_
                  (lambda (_%stxq140582%_ _%marks140583%_)
                    (let* ((_%mark-refs140585%_
                            (map _%generate-mark140422%_ _%marks140583%_))
                           (_%gid140587%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid140589%_
                            (gxc#generate-runtime-identifier _%stxq140582%_)))
                      (_%add-lift!140418%_
                       (cons 'define
                             (cons _%gid140587%_
                                   (cons (_%generate-syntax-quote140419%_
                                          _%qid140589%_
                                          (cons 'list _%mark-refs140585%_))
                                         '()))))
                      (let ((__tmp149301
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149301 _%stxq140582%_ _%gid140587%_))
                      _%gid140587%_)))
                 (_%generate-mark140422%_
                  (lambda (_%mark140567%_)
                    (let ((_%$e140569%_
                           (let ((__tmp149302
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp149302 _%mark140567%_))))
                      (if _%$e140569%_
                          _%$e140569%_
                          (let* ((_%gid140573%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr140575%_
                                  (_%serialize-mark140423%_ _%mark140567%_))
                                 (_%ctx140577%_
                                  (let ((__tmp149303
                                         (##structure-ref
                                          _%mark140567%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp149303)))
                                 (_%ctx-ref140579%_
                                  (if (eq? _%ctx140577%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref140424%_
                                                               _%ctx140577%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp149304
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149304
                               _%mark140567%_
                               _%gid140573%_))
                            (_%add-lift!140418%_
                             (cons 'define
                                   (cons _%gid140573%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr140575%_ '()))
                   (cons _%ctx-ref140579%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid140573%_)))))
                 (_%serialize-mark140423%_
                  (lambda (_%mark140514%_)
                    (letrec ((_%quote-e140516%_
                              (lambda (_%sym140565%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym140565%_))
                                    _%sym140565%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym140565%_))))))
                      (let* ((_%mark140517140526%_ _%mark140514%_)
                             (_%E140519140530%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark140517140526%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K140520140542%_
                              (lambda (_%trace140533%_
                                       _%phi140534%_
                                       _%ctx140535%_
                                       _%subst140536%_)
                                (let ((_%subs140538%_
                                       (if _%subst140536%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst140536%_))
                                           '())))
                                  (cons _%phi140534%_
                                        (map (lambda (_%pair140540%_)
                                               (cons (_%quote-e140516%_
                                                      (car _%pair140540%_))
                                                     (_%quote-e140516%_
                                                      (cdr _%pair140540%_))))
                                             _%subs140538%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark140517140526%_
                               'gx#expander-mark::t))
                            (let* ((_%e140521140545%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140517140526%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst140548%_ _%e140521140545%_)
                                   (_%e140522140550%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140517140526%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx140553%_ _%e140522140550%_)
                                   (_%e140523140555%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140517140526%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi140558%_ _%e140523140555%_)
                                   (_%e140524140560%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140517140526%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace140563%_ _%e140524140560%_))
                              (_%K140520140542%_
                               _%trace140563%_
                               _%phi140558%_
                               _%ctx140553%_
                               _%subst140548%_))
                            (_%E140519140530%_))))))
                 (_%context-ref140424%_
                  (lambda (_%ctx140501%_)
                    (if (let ((__tmp149305
                               (##structure-ref
                                _%ctx140501%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp149305
                           'gx#module-context::t))
                        (let ((_%ctx-ref140503%_
                               (_%context-ref-nested140426%_ _%ctx140501%_))
                              (_%ctx-origin140504%_
                               (_%context-ref-origin140425%_ _%ctx140501%_))
                              (_%origin140505%_
                               (_%context-ref-origin140425%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin140505%_ _%ctx-origin140504%_)
                              (let ((_%ref140507%_
                                     (_%context-ref-nested140426%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp140509%_ ((_%ref140511%_
                                                    (cdr _%ref140507%_))
                                                   (_%ctx-ref140512%_
                                                    (cdr _%ctx-ref140503%_)))
                                  (if (and (pair? _%ref140511%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref140511%_))
                                                (car _%ctx-ref140512%_)))
                                      (_%lp140509%_
                                       (cdr _%ref140511%_)
                                       (cdr _%ctx-ref140512%_))
                                      (cons '#f _%ctx-ref140512%_))))
                              _%ctx-ref140503%_))
                        (let ((__tmp149306
                               (##structure-ref
                                _%ctx140501%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp149306)))))
                 (_%context-ref-origin140425%_
                  (lambda (_%ctx140493%_)
                    (let _%lp140495%_ ((_%ctx140497%_ _%ctx140493%_))
                      (let ((_%super140499%_
                             (##structure-ref
                              _%ctx140497%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140499%_
                               'gx#module-context::t))
                            (_%lp140495%_ _%super140499%_)
                            _%ctx140497%_)))))
                 (_%context-ref-nested140426%_
                  (lambda (_%ctx140484%_)
                    (let _%lp140486%_ ((_%ctx140488%_ _%ctx140484%_)
                                       (_%r140489%_ '()))
                      (let ((_%super140491%_
                             (##structure-ref
                              _%ctx140488%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140491%_
                               'gx#module-context::t))
                            (_%lp140486%_
                             _%super140491%_
                             (cons (car (##structure-ref
                                         _%ctx140488%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r140489%_))
                            (cons (let ((__tmp149307
                                         (##structure-ref
                                          _%ctx140488%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp149307))
                                  _%r140489%_)))))))
          (let* ((_%g140428140441%_
                  (lambda (_%g140429140438%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140429140438%_))))
                 (_%g140427140481%_
                  (lambda (_%g140429140444%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140429140444%_))
                        (let ((_%e140431140446%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140429140444%_))))
                          (let ((_%hd140432140449%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140431140446%_)))
                                (_%tl140433140451%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140431140446%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140433140451%_))
                                (let ((_%e140434140454%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140433140451%_))))
                                  (let ((_%hd140435140457%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140434140454%_)))
                                        (_%tl140436140459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140434140454%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140436140459%_))
                                        ((lambda (_%L140462%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L140462%_))
                                               (let ((_%$e140475%_
                                                      (let ((__tmp149308
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp149308 _%L140462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e140475%_
                                                     _%$e140475%_
                                                     (let ((_%marks140479%_
                                                            (##direct-structure-ref
                                                             _%L140462%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks140479%_)
                                                           (_%generate-simple140420%_
                                                            _%L140462%_)
                                                           (_%generate-serialized140421%_
                                                            _%L140462%_
                                                            _%marks140479%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L140462%_))))
                                         _%hd140435140457%_)
                                        (_%g140428140441%_
                                         _%g140429140444%_))))
                                (_%g140428140441%_ _%g140429140444%_))))
                        (_%g140428140441%_ _%g140429140444%_)))))
            (_%g140427140481%_ _%stx140416%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self140347%_ _%stx140348%_)
        (let* ((_%g140350140367%_
                (lambda (_%g140351140364%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140351140364%_))))
               (_%g140349140412%_
                (lambda (_%g140351140370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140351140370%_))
                      (let ((_%e140354140372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140351140370%_))))
                        (let ((_%hd140355140375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140354140372%_)))
                              (_%tl140356140377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140354140372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140356140377%_))
                              (let ((_%e140357140380%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140356140377%_))))
                                (let ((_%hd140358140383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140357140380%_)))
                                      (_%tl140359140385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140357140380%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140359140385%_))
                                      (let ((_%e140360140388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140359140385%_))))
                                        (let ((_%hd140361140391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140360140388%_)))
                                              (_%tl140362140393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140360140388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140362140393%_))
                                              ((lambda (_%L140396%_
                                                        _%L140397%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L140397%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140347%_ _%L140396%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140361140391%_
                                               _%hd140358140383%_)
                                              (_%g140350140367%_
                                               _%g140351140370%_))))
                                      (_%g140350140367%_ _%g140351140370%_))))
                              (_%g140350140367%_ _%g140351140370%_))))
                      (_%g140350140367%_ _%g140351140370%_)))))
          (_%g140349140412%_ _%stx140348%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self140296%_ _%stx140297%_)
        (let* ((_%g140299140309%_
                (lambda (_%g140300140306%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140300140306%_))))
               (_%g140298140344%_
                (lambda (_%g140300140312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140300140312%_))
                      (let ((_%e140302140314%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140300140312%_))))
                        (let ((_%hd140303140317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140302140314%_)))
                              (_%tl140304140319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140302140314%_))))
                          ((lambda (_%L140322%_)
                             (let* ((_%c-body140336%_
                                     (map (lambda (_%g140331140333%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140296%_
                                               _%g140331140333%_)))
                                          _%L140322%_))
                                    (_%c-body140341%_
                                     (let ((__tmp149309
                                            (lambda (_%$obj140338%_)
                                              (not (eq? _%$obj140338%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp149309
                                        _%c-body140336%_))))
                               (cons '%#begin _%c-body140341%_)))
                           _%tl140304140319%_)))
                      (_%g140299140309%_ _%g140300140312%_)))))
          (_%g140298140344%_ _%stx140297%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self140201%_ _%stx140202%_)
        (let* ((_%g140204140214%_
                (lambda (_%g140205140211%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140205140211%_))))
               (_%g140203140293%_
                (lambda (_%g140205140217%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140205140217%_))
                      (let ((_%e140207140219%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140205140217%_))))
                        (let ((_%hd140208140222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140207140219%_)))
                              (_%tl140209140224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140207140219%_))))
                          ((lambda (_%L140227%_)
                             (let* ((_%phi140237%_
                                     (let ((__tmp149310
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp149310 '1)))
                                    (_%block140239%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self140201%_ 'state))
                                      _%phi140237%_))
                                    (_%compiled140242%_
                                     (let ((__tmp149311
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self140201%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L140227%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp149311
                                        gx#current-expander-phi
                                        _%phi140237%_)))
                                    (_%g140245140255%_
                                     (lambda (_%g140246140252%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g140246140252%_))))
                                    (_%g140244140290%_
                                     (lambda (_%g140246140258%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g140246140258%_))
                                           (let ((_%e140248140260%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g140246140258%_))))
                                             (let ((_%hd140249140263%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140248140260%_)))
                                                   (_%tl140250140265%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140248140260%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140249140263%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd140249140263%_))
                                                       ((lambda (_%L140268%_)
                                                          (let ((_%c-body140285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj140282%_)
                                   (not (eq? _%$obj140282%_ '#!void)))
                                 _%L140268%_)))
                    (if _%block140239%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block140239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body140285%_))
                        (if (null? _%c-body140285%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body140285%_)))))
                _%tl140250140265%_)
               (_%g140245140255%_ _%g140246140258%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g140245140255%_
                                                    _%g140246140258%_))))
                                           (_%g140245140255%_
                                            _%g140246140258%_)))))
                               (_%g140244140290%_ _%compiled140242%_)))
                           _%tl140209140224%_)))
                      (_%g140204140214%_ _%g140205140217%_)))))
          (_%g140203140293%_ _%stx140202%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self140132%_ _%stx140133%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140132%_ 'state)))
        (let* ((_%g140135140149%_
                (lambda (_%g140136140146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140136140146%_))))
               (_%g140134140198%_
                (lambda (_%g140136140152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140136140152%_))
                      (let ((_%e140139140154%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140136140152%_))))
                        (let ((_%hd140140140157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140139140154%_)))
                              (_%tl140141140159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140139140154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140141140159%_))
                              (let ((_%e140142140162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140141140159%_))))
                                (let ((_%hd140143140165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140142140162%_)))
                                      (_%tl140144140167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140142140162%_))))
                                  ((lambda (_%L140170%_ _%L140171%_)
                                     (let ((_%key140184%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L140171%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key140184%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx140133%_
                                              _%L140171%_
                                              _%key140184%_)))
                                       (let* ((_%ctx140186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L140171%_)))
                                              (_%code140189%_
                                               (let ((__tmp149312
                                                      (lambda ()
                                                        (let ((__tmp149313
                                                               (##structure-ref
                                                                _%ctx140186%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self140132%_
                                                           __tmp149313)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp149312
                                                  gx#current-expander-context
                                                  _%ctx140186%_)))
                                              (_%rt140191%_
                                               (let ((__tmp149314
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp149314
                                                  _%ctx140186%_)))
                                              (_%loader140193%_
                                               (if _%rt140191%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt140191%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid140195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L140171%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self140132%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid140195%_
                                                     (cons _%code140189%_
                                                           _%loader140193%_))))))
                                   _%tl140144140167%_
                                   _%hd140143140165%_)))
                              (_%g140135140149%_ _%g140136140152%_))))
                      (_%g140135140149%_ _%g140136140152%_)))))
          (_%g140134140198%_ _%stx140133%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx140119%_ _%context-chain140120%_)
        (let _%lp140122%_ ((_%ctx140124%_ _%ctx140119%_) (_%path140125%_ '()))
          (let ((_%super140127%_
                 (##structure-ref _%ctx140124%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super140127%_ _%context-chain140120%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx140124%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path140125%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super140127%_
                       'gx#module-context::t))
                    (_%lp140122%_
                     _%super140127%_
                     (cons (car (##structure-ref
                                 _%ctx140124%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path140125%_))
                    (cons (let ((__tmp149315
                                 (##structure-ref
                                  _%ctx140124%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp149315))
                          _%path140125%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp140112%_ ((_%ctx140114%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r140115%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx140114%_ 'gx#module-context::t))
              (_%lp140112%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx140114%_ '3 '#f '#f))
               (cons _%ctx140114%_ _%r140115%_))
              _%r140115%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self139875%_ _%stx139876%_)
        (letrec* ((_%context-chain139878%_ (gxc#current-context-chain))
                  (_%make-import-spec139879%_
                   (lambda (_%in140048%_)
                     (let* ((_%in140049140061%_ _%in140048%_)
                            (_%E140051140065%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in140049140061%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K140052140075%_
                             (lambda (_%phi140068%_
                                      _%name140069%_
                                      _%src-name140070%_
                                      _%src-phi140071%_
                                      _%src-key140072%_
                                      _%src-ctx140073%_)
                               (cons _%phi140068%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name140069%_)
                                           (cons _%src-phi140071%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name140070%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in140049140061%_
                              'gx#module-import::t))
                           (let ((_%e140053140078%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in140049140061%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e140053140078%_
                                    'gx#module-export::t))
                                 (let* ((_%e140056140081%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140053140078%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx140084%_ _%e140056140081%_)
                                        (_%e140057140086%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140053140078%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key140089%_ _%e140057140086%_)
                                        (_%e140058140091%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140053140078%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi140094%_ _%e140058140091%_)
                                        (_%e140059140096%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140053140078%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name140099%_ _%e140059140096%_)
                                        (_%e140054140101%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140049140061%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name140104%_ _%e140054140101%_)
                                        (_%e140055140106%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140049140061%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi140109%_ _%e140055140106%_))
                                   (_%K140052140075%_
                                    _%phi140109%_
                                    _%name140104%_
                                    _%src-name140099%_
                                    _%src-phi140094%_
                                    _%src-key140089%_
                                    _%src-ctx140084%_))
                                 (_%E140051140065%_)))
                           (_%E140051140065%_)))))
                  (_%make-import-path139880%_
                   (lambda (_%ctx140046%_)
                     (gxc#generate-meta-import-path
                      _%ctx140046%_
                      _%context-chain139878%_)))
                  (_%make-import-spec-in139881%_
                   (lambda (_%ctx140043%_ _%in140044%_)
                     (cons 'spec:
                           (cons (_%make-import-path139880%_ _%ctx140043%_)
                                 (reverse _%in140044%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self139875%_ 'state)))
          (let* ((_%g139883139893%_
                  (lambda (_%g139884139890%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139884139890%_))))
                 (_%g139882140040%_
                  (lambda (_%g139884139896%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139884139896%_))
                        (let ((_%e139886139898%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139884139896%_))))
                          (let ((_%hd139887139901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139886139898%_)))
                                (_%tl139888139903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139886139898%_))))
                            ((lambda (_%L139906%_)
                               (let _%lp139917%_ ((_%rest139919%_ _%L139906%_)
                                                  (_%current-src139920%_ '#f)
                                                  (_%current-in139921%_ '())
                                                  (_%r139922%_ '()))
                                 (let* ((_%rest139923139931%_ _%rest139919%_)
                                        (_%else139925139941%_
                                         (lambda ()
                                           (let ((_%r139939%_
                                                  (if _%current-src139920%_
                                                      (cons (_%make-import-spec-in139881%_
                                                             _%current-src139920%_
                                                             _%current-in139921%_)
                                                            _%r139922%_)
                                                      _%r139922%_)))
                                             (cons '%#import
                                                   (reverse _%r139939%_)))))
                                        (_%K139927140028%_
                                         (lambda (_%rest139944%_ _%in139945%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in139945%_
                                                  'gx#module-import::t))
                                               (let* ((_%in139947139954%_
                                                       _%in139945%_)
                                                      (_%E139949139958%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in139947139954%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K139950139966%_
               (lambda (_%src-ctx139961%_)
                 (if (eq? _%current-src139920%_ _%src-ctx139961%_)
                     (_%lp139917%_
                      _%rest139944%_
                      _%current-src139920%_
                      (cons (_%make-import-spec139879%_ _%in139945%_)
                            _%current-in139921%_)
                      _%r139922%_)
                     (if _%current-src139920%_
                         (_%lp139917%_
                          _%rest139944%_
                          _%src-ctx139961%_
                          (cons (_%make-import-spec139879%_ _%in139945%_) '())
                          (cons (_%make-import-spec-in139881%_
                                 _%current-src139920%_
                                 _%current-in139921%_)
                                _%r139922%_))
                         (_%lp139917%_
                          _%rest139944%_
                          _%src-ctx139961%_
                          (cons (_%make-import-spec139879%_ _%in139945%_) '())
                          _%r139922%_)))))
              (_%e139951139969%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in139947139954%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e139951139969%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139952139972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e139951139969%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx139975%_ _%e139952139972%_))
               (_%K139950139966%_ _%src-ctx139975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E139949139958%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in139945%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi139978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139945%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src139980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139945%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in140020%_
                                                           (let* ((_%g139981139990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path139880%_ _%src139980%_))
                          (_%E139984139994%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g139981139990%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K139986140010%_
                            (lambda (_%path140008%_) _%path140008%_))
                           (_%K139985140000%_
                            (lambda (_%path139998%_)
                              (cons 'in: _%path139998%_))))
                       (if (pair? _%g139981139990%_)
                           (let ((_%tl139988140015%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139981139990%_)))
                                 (_%hd139987140013%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139981139990%_))))
                             (if (null? _%tl139988140015%_)
                                 (let ((_%path140018%_ _%hd139987140013%_))
                                   (_%K139986140010%_ _%path140018%_))
                                 (let ((_%path140003%_ _%g139981139990%_))
                                   (_%K139985140000%_ _%path140003%_))))
                           (let ((_%path140003%_ _%g139981139990%_))
                             (_%K139985140000%_ _%path140003%_))))))
                  (_%r140022%_
                   (if _%current-src139920%_
                       (cons (_%make-import-spec-in139881%_
                              _%current-src139920%_
                              _%current-in139921%_)
                             _%r139922%_)
                       _%r139922%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp139917%_
                                                      _%rest139944%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi139978%_)
                                                                _%src-in140020%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi139978%_
                                    (cons _%src-in140020%_ '()))))
                    _%r140022%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in139945%_
                                                          'gx#module-context::t))
                                                       (let ((_%r140026%_
                                                              (if _%current-src139920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in139881%_
                                 _%current-src139920%_
                                 _%current-in139921%_)
                                _%r139922%_)
                          _%r139922%_)))
                 (_%lp139917%_
                  _%rest139944%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path139880%_ _%in139945%_))
                        _%r140026%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest139923139931%_)
                                       (let ((_%hd139928140031%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139923139931%_)))
                                             (_%tl139929140033%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139923139931%_))))
                                         (let* ((_%in140036%_
                                                 _%hd139928140031%_)
                                                (_%rest140038%_
                                                 _%tl139929140033%_))
                                           (_%K139927140028%_
                                            _%rest140038%_
                                            _%in140036%_)))
                                       (_%else139925139941%_)))))
                             _%tl139888139903%_)))
                        (_%g139883139893%_ _%g139884139896%_)))))
            (_%g139882140040%_ _%stx139876%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self139685%_ _%stx139686%_)
        (letrec* ((_%context-chain139688%_ (gxc#current-context-chain))
                  (_%make-import-path139689%_
                   (lambda (_%ctx139873%_)
                     (gxc#generate-meta-import-path
                      _%ctx139873%_
                      _%context-chain139688%_))))
          (let* ((_%g139691139701%_
                  (lambda (_%g139692139698%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139692139698%_))))
                 (_%g139690139870%_
                  (lambda (_%g139692139704%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139692139704%_))
                        (let ((_%e139694139706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139692139704%_))))
                          (let ((_%hd139695139709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139694139706%_)))
                                (_%tl139696139711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139694139706%_))))
                            ((lambda (_%L139714%_)
                               (let _%lp139725%_ ((_%rest139727%_ _%L139714%_)
                                                  (_%r139728%_ '()))
                                 (let* ((_%rest139729139737%_ _%rest139727%_)
                                        (_%else139731139745%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r139728%_))))
                                        (_%K139733139858%_
                                         (lambda (_%rest139748%_ _%out139749%_)
                                           (let* ((_%out139750139763%_
                                                   _%out139749%_)
                                                  (_%E139753139767%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out139750139763%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K139757139837%_
                                                    (lambda (_%name139833%_
                                                             _%phi139834%_
                                                             _%key139835%_)
                                                      (_%lp139725%_
                                                       _%rest139748%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi139834%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key139835%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name139833%_)
                                             '()))))
                     _%r139728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K139754139817%_
                                                    (lambda (_%phi139771%_
                                                             _%src139772%_)
                                                      (let* ((_%out139812%_
                                                              (if _%src139772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g139773139782%_
                                              (_%make-import-path139689%_
                                               _%src139772%_))
                                             (_%E139776139786%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g139773139782%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K139778139802%_
                                               (lambda (_%path139800%_)
                                                 _%path139800%_))
                                              (_%K139777139792%_
                                               (lambda (_%path139790%_)
                                                 (cons 'in: _%path139790%_))))
                                          (if (pair? _%g139773139782%_)
                                              (let ((_%tl139780139807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g139773139782%_)))
                                                    (_%hd139779139805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g139773139782%_))))
                                                (if (null? _%tl139780139807%_)
                                                    (let ((_%path139810%_
                                                           _%hd139779139805%_))
                                                      (_%K139778139802%_
                                                       _%path139810%_))
                                                    (let ((_%path139795%_
                                                           _%g139773139782%_))
                                                      (_%K139777139792%_
                                                       _%path139795%_))))
                                              (let ((_%path139795%_
                                                     _%g139773139782%_))
                                                (_%K139777139792%_
                                                 _%path139795%_)))))
                                      '()))
                          '#t))
                     (_%out139814%_
                      (if (fxzero? _%phi139771%_)
                          _%out139812%_
                          (cons 'phi:
                                (cons _%phi139771%_
                                      (cons _%out139812%_ '()))))))
                (_%lp139725%_
                 _%rest139748%_
                 (cons _%out139814%_ _%r139728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match139752139830%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out139750139763%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e139755139820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139750139763%_
                               '1
                               '#f
                               '#f)))
                           (_%e139756139825%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139750139763%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src139823%_ _%e139755139820%_)
                            (_%phi139828%_ _%e139756139825%_))
                        (_%K139754139817%_ _%phi139828%_ _%src139823%_)))
                    (_%E139753139767%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out139750139763%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139758139840%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out139750139763%_
                        '1
                        '#f
                        '#f)))
                    (_%e139759139843%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139750139763%_
                        '2
                        '#f
                        '#f)))
                    (_%e139760139848%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139750139763%_
                        '3
                        '#f
                        '#f)))
                    (_%e139761139853%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139750139763%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key139846%_ _%e139759139843%_)
                     (_%phi139851%_ _%e139760139848%_)
                     (_%name139856%_ _%e139761139853%_))
                 (_%K139757139837%_
                  _%name139856%_
                  _%phi139851%_
                  _%key139846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match139752139830%_))))))))
                                   (if (pair? _%rest139729139737%_)
                                       (let ((_%hd139734139861%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139729139737%_)))
                                             (_%tl139735139863%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139729139737%_))))
                                         (let* ((_%out139866%_
                                                 _%hd139734139861%_)
                                                (_%rest139868%_
                                                 _%tl139735139863%_))
                                           (_%K139733139858%_
                                            _%rest139868%_
                                            _%out139866%_)))
                                       (_%else139731139745%_)))))
                             _%tl139696139711%_)))
                        (_%g139691139701%_ _%g139692139704%_)))))
            (_%g139690139870%_ _%stx139686%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self139646%_ _%stx139647%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139646%_ 'state)))
        (let* ((_%g139649139659%_
                (lambda (_%g139650139656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139650139656%_))))
               (_%g139648139682%_
                (lambda (_%g139650139662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139650139662%_))
                      (let ((_%e139652139664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139650139662%_))))
                        (let ((_%hd139653139667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139652139664%_)))
                              (_%tl139654139669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139652139664%_))))
                          ((lambda (_%L139672%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L139672%_)))
                           _%tl139654139669%_)))
                      (_%g139649139659%_ _%g139650139662%_)))))
          (_%g139648139682%_ _%stx139647%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self139517%_ _%stx139518%_)
        (letrec ((_%generate1139520%_
                  (lambda (_%id139641%_ _%eid139642%_)
                    (let ((_%eid139644%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid139642%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid139644%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx139518%_
                             _%eid139644%_)))
                      (cons (gxc#generate-runtime-identifier _%id139641%_)
                            (cons _%eid139644%_ '()))))))
          (let* ((_%g139522139550%_
                  (lambda (_%g139523139547%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139523139547%_))))
                 (_%g139521139638%_
                  (lambda (_%g139523139553%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139523139553%_))
                        (let ((_%e139526139555%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139523139553%_))))
                          (let ((_%hd139527139558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139526139555%_)))
                                (_%tl139528139560%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139526139555%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl139528139560%_))
                                (let ((_g149316_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl139528139560%_
                                          '0))))
                                  (begin
                                    (let ((_g149317_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149316_)
                                                 (##values-length _g149316_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149317_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149317_)))
                                    (let ((_%target139529139563%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149316_ 0)))
                                          (_%tl139531139565%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g149316_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139531139565%_))
                                          (letrec ((_%loop139532139568%_
                                                    (lambda (_%hd139530139571%_
                                                             _%eid139536139573%_
                                                             _%id139537139575%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd139530139571%_))
                                                          (let ((_%e139533139578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd139530139571%_))))
                    (let ((_%lp-hd139534139581%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139533139578%_)))
                          (_%lp-tl139535139583%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139533139578%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd139534139581%_))
                          (let ((_%e139540139586%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd139534139581%_))))
                            (let ((_%hd139541139589%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139540139586%_)))
                                  (_%tl139542139591%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139540139586%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl139542139591%_))
                                  (let ((_%e139543139594%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl139542139591%_))))
                                    (let ((_%hd139544139597%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139543139594%_)))
                                          (_%tl139545139599%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139543139594%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139545139599%_))
                                          (_%loop139532139568%_
                                           _%lp-tl139535139583%_
                                           (cons _%hd139544139597%_
                                                 _%eid139536139573%_)
                                           (cons _%hd139541139589%_
                                                 _%id139537139575%_))
                                          (_%g139522139550%_
                                           _%g139523139553%_))))
                                  (_%g139522139550%_ _%g139523139553%_))))
                          (_%g139522139550%_ _%g139523139553%_))))
                  (let ((_%eid139538139602%_ (reverse _%eid139536139573%_))
                        (_%id139539139604%_ (reverse _%id139537139575%_)))
                    ((lambda (_%L139607%_ _%L139608%_)
                       (cons '%#extern
                             (map _%generate1139520%_
                                  (let ((__tmp149318
                                         (lambda (_%g139623139626%_
                                                  _%g139624139628%_)
                                           (cons _%g139623139626%_
                                                 _%g139624139628%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149318 '() _%L139608%_))
                                  (let ((__tmp149319
                                         (lambda (_%g139630139633%_
                                                  _%g139631139635%_)
                                           (cons _%g139630139633%_
                                                 _%g139631139635%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149319 '() _%L139607%_)))))
                     _%eid139538139602%_
                     _%id139539139604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop139532139568%_
                                             _%target139529139563%_
                                             '()
                                             '()))
                                          (_%g139522139550%_
                                           _%g139523139553%_)))))
                                (_%g139522139550%_ _%g139523139553%_))))
                        (_%g139522139550%_ _%g139523139553%_)))))
            (_%g139521139638%_ _%stx139518%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self139307%_ _%stx139308%_)
        (letrec ((_%generate1139310%_
                  (lambda (_%id139512%_)
                    (let ((_%eid139514%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id139512%_)))
                          (_%ident139515%_
                           (gxc#generate-runtime-identifier _%id139512%_)))
                      (cons '%#define-runtime
                            (cons _%ident139515%_ (cons _%eid139514%_ '()))))))
                 (_%generate*139311%_
                  (lambda (_%all139480%_)
                    (let* ((_%all139481139489%_ _%all139480%_)
                           (_%else139483139497%_
                            (lambda () (cons '%#begin _%all139480%_)))
                           (_%K139485139502%_
                            (lambda (_%one139500%_) _%one139500%_)))
                      (if (pair? _%all139481139489%_)
                          (let ((_%hd139486139505%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all139481139489%_)))
                                (_%tl139487139507%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all139481139489%_))))
                            (let ((_%one139510%_ _%hd139486139505%_))
                              (if (null? _%tl139487139507%_)
                                  (_%K139485139502%_ _%one139510%_)
                                  (_%else139483139497%_))))
                          (_%else139483139497%_))))))
          (let* ((_%g139313139330%_
                  (lambda (_%g139314139327%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139314139327%_))))
                 (_%g139312139477%_
                  (lambda (_%g139314139333%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139314139333%_))
                        (let ((_%e139317139335%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139314139333%_))))
                          (let ((_%hd139318139338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139317139335%_)))
                                (_%tl139319139340%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139317139335%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139319139340%_))
                                (let ((_%e139320139343%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139319139340%_))))
                                  (let ((_%hd139321139346%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139320139343%_)))
                                        (_%tl139322139348%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139320139343%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139322139348%_))
                                        (let ((_%e139323139351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139322139348%_))))
                                          (let ((_%hd139324139354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139323139351%_)))
                                                (_%tl139325139356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139323139351%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139325139356%_))
                                                ((lambda (_%L139359%_
                                                          _%L139360%_)
                                                   (let _%lp139376%_ ((_%rest139378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L139360%_)
                              (_%r139379%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx149055149056%_
                                                             _%rest139378%_)
                                                            (_%g139384139401%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx149055149056%_)))))
               (let ((_%__kont149057149058%_
                      (lambda (_%L139464%_)
                        (_%lp139376%_ _%L139464%_ _%r139379%_)))
                     (_%__kont149059149060%_
                      (lambda (_%L139437%_ _%L139438%_)
                        (_%lp139376%_
                         _%L139437%_
                         (cons (_%generate1139310%_ _%L139438%_)
                               _%r139379%_))))
                     (_%__kont149061149062%_
                      (lambda (_%L139413%_)
                        (_%generate*139311%_
                         (let ((__tmp149320
                                (cons (_%generate1139310%_ _%L139413%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp149320 _%r139379%_)))))
                     (_%__kont149063149064%_
                      (lambda () (_%generate*139311%_ (reverse _%r139379%_)))))
                 (let ((_%g139382139424%_
                        (lambda ()
                          (let ((_%L139413%_ _%__stx149055149056%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L139413%_))
                                (_%__kont149061149062%_ _%L139413%_)
                                (_%__kont149063149064%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx149055149056%_))
                       (let ((_%e139387139453%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx149055149056%_))))
                         (let ((_%tl139389139458%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e139387139453%_)))
                               (_%hd139388139456%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e139387139453%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd139388139456%_))
                               (let ((_%e139390139461%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd139388139456%_))))
                                 (if (equal? _%e139390139461%_ '#f)
                                     (_%__kont149057149058%_
                                      _%tl139389139458%_)
                                     (_%__kont149059149060%_
                                      _%tl139389139458%_
                                      _%hd139388139456%_)))
                               (_%__kont149059149060%_
                                _%tl139389139458%_
                                _%hd139388139456%_))))
                       (let () (declare (not safe)) (_%g139382139424%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd139324139354%_
                                                 _%hd139321139346%_)
                                                (_%g139313139330%_
                                                 _%g139314139333%_))))
                                        (_%g139313139330%_
                                         _%g139314139333%_))))
                                (_%g139313139330%_ _%g139314139333%_))))
                        (_%g139313139330%_ _%g139314139333%_)))))
            (_%g139312139477%_ _%stx139308%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self139204%_ _%stx139205%_)
        (let* ((_%g139207139224%_
                (lambda (_%g139208139221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139208139221%_))))
               (_%g139206139304%_
                (lambda (_%g139208139227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139208139227%_))
                      (let ((_%e139211139229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139208139227%_))))
                        (let ((_%hd139212139232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139211139229%_)))
                              (_%tl139213139234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139211139229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139213139234%_))
                              (let ((_%e139214139237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139213139234%_))))
                                (let ((_%hd139215139240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139214139237%_)))
                                      (_%tl139216139242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139214139237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139216139242%_))
                                      (let ((_%e139217139245%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139216139242%_))))
                                        (let ((_%hd139218139248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139217139245%_)))
                                              (_%tl139219139250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139217139245%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139219139250%_))
                                              ((lambda (_%L139253%_
                                                        _%L139254%_)
                                                 (let* ((_%eid139269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L139254%_)))
                                                        (_%phi139271%_
                                                         (let ((__tmp149321
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp149321 '1)))
                (_%block139273%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self139204%_ 'state))
                  _%phi139271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g139276139283%_
                                                           (lambda (_%g139277139280%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g139277139280%_))))
                  (_%g139275139301%_
                   (lambda (_%g139277139286%_)
                     ((lambda (_%L139288%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self139204%_ 'state))
                         _%phi139271%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L139288%_ (cons _%L139253%_ '())))))
                      _%g139277139286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g139275139301%_
                                                      _%eid139269%_))
                                                   (if _%block139273%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block139273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L139254%_)
                                             (cons _%eid139269%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L139254%_)
                           (cons _%eid139269%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139218139248%_
                                               _%hd139215139240%_)
                                              (_%g139207139224%_
                                               _%g139208139227%_))))
                                      (_%g139207139224%_ _%g139208139227%_))))
                              (_%g139207139224%_ _%g139208139227%_))))
                      (_%g139207139224%_ _%g139208139227%_)))))
          (_%g139206139304%_ _%stx139205%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self139136%_ _%stx139137%_)
        (let* ((_%g139139139156%_
                (lambda (_%g139140139153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139140139153%_))))
               (_%g139138139201%_
                (lambda (_%g139140139159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139140139159%_))
                      (let ((_%e139143139161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139140139159%_))))
                        (let ((_%hd139144139164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139143139161%_)))
                              (_%tl139145139166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139143139161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139145139166%_))
                              (let ((_%e139146139169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139145139166%_))))
                                (let ((_%hd139147139172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139146139169%_)))
                                      (_%tl139148139174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139146139169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139148139174%_))
                                      (let ((_%e139149139177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139148139174%_))))
                                        (let ((_%hd139150139180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139149139177%_)))
                                              (_%tl139151139182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139149139177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139151139182%_))
                                              ((lambda (_%L139185%_
                                                        _%L139186%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L139186%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L139185%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139150139180%_
                                               _%hd139147139172%_)
                                              (_%g139139139156%_
                                               _%g139140139159%_))))
                                      (_%g139139139156%_ _%g139140139159%_))))
                              (_%g139139139156%_ _%g139140139159%_))))
                      (_%g139139139156%_ _%g139140139159%_)))))
          (_%g139138139201%_ _%stx139137%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self139133%_ _%stx139134%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139133%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx139134%_)
        (gxc#generate-meta-define-values% _%self139133%_ _%stx139134%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self139130%_ _%stx139131%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139130%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx139131%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp149323 (list)) (__tmp149322 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp149323
         '(src n open blocks)
         __tmp149322
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args139127%_
        (apply make-instance gxc#meta-state::t _%$args139127%_)))
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
      (lambda (_%self138472139111%_ _%ctx139113%_)
        (let* ((_%self139115%_ _%self138472139111%_)
               (_%self139117%_ _%self139115%_))
          (if (let ((__tmp149324
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self139117%_))))
                (declare (not safe))
                (##fx< '4 __tmp149324))
              (begin
                (let ((__tmp149325
                       (let ((__tmp149326
                              (##structure-ref
                               _%ctx139113%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp149326))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self139117%_
                   __tmp149325
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self139117%_ '1 '2 '#f '#f))
                (let ((__tmp149327
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self139117%_
                   __tmp149327
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self139117%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp149328
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self139117%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self139117%_
                       '4
                       __tmp149328))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp149330 (list)) (__tmp149329 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp149330
         '(ctx phi n code)
         __tmp149329
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args138986%_
        (apply make-instance gxc#meta-state-block::t _%$args138986%_)))
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
      (lambda (_%state138945%_ _%phi138946%_)
        (let* ((_%state138947138955%_ _%state138945%_)
               (_%E138949138959%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state138947138955%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K138950138968%_
                (lambda (_%open138962%_ _%n138963%_ _%src138964%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open138962%_ _%phi138946%_))
                      '#f
                      (let ((_%block-ref138966%_
                             (let ((__tmp149331 (number->string _%n138963%_)))
                               (declare (not safe))
                               (##string-append
                                _%src138964%_
                                '"~"
                                __tmp149331))))
                        (##structure-set!
                         _%state138945%_
                         (let () (declare (not safe)) (##fx+ _%n138963%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp149332
                               (let ((__tmp149333
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp149333
                                  _%phi138946%_
                                  _%n138963%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open138962%_ _%phi138946%_ __tmp149332))
                        _%block-ref138966%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state138947138955%_
                 'gxc#meta-state::t))
              (let* ((_%e138951138971%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138947138955%_
                         '1
                         '#f
                         '#f)))
                     (_%src138974%_ _%e138951138971%_)
                     (_%e138952138976%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138947138955%_
                         '2
                         '#f
                         '#f)))
                     (_%n138979%_ _%e138952138976%_)
                     (_%e138953138981%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138947138955%_
                         '3
                         '#f
                         '#f)))
                     (_%open138984%_ _%e138953138981%_))
                (_%K138950138968%_ _%open138984%_ _%n138979%_ _%src138974%_))
              (_%E138949138959%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state138939%_ _%phi138940%_ _%stx138941%_)
        (let ((_%block138943%_
               (let ((__tmp149334
                      (##structure-ref
                       _%state138939%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp149334 _%phi138940%_))))
          (##structure-set!
           _%block138943%_
           (cons _%stx138941%_
                 (##structure-ref
                  _%block138943%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state138933%_)
        (##structure-set!
         _%state138933%_
         (let ((__tmp149337
                (lambda (_%_138935%_ _%block138936%_ _%r138937%_)
                  (cons _%block138936%_ _%r138937%_)))
               (__tmp149336
                (##structure-ref _%state138933%_ '4 gxc#meta-state::t '#f))
               (__tmp149335
                (##structure-ref _%state138933%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp149337 __tmp149336 __tmp149335))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state138933%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state138885%_)
        (gxc#meta-state-end-phi! _%state138885%_)
        (let ((__tmp149339
               (lambda (_%block138887%_ _%r138888%_)
                 (let* ((_%block138889138898%_ _%block138887%_)
                        (_%E138891138902%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block138889138898%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K138892138910%_
                         (lambda (_%code138905%_
                                  _%n138906%_
                                  _%phi138907%_
                                  _%ctx138908%_)
                           (if (null? _%code138905%_)
                               _%r138888%_
                               (cons (cons _%ctx138908%_
                                           (cons _%phi138907%_
                                                 (cons _%n138906%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code138905%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r138888%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block138889138898%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e138893138913%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138889138898%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx138916%_ _%e138893138913%_)
                              (_%e138894138918%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138889138898%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi138921%_ _%e138894138918%_)
                              (_%e138895138923%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138889138898%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n138926%_ _%e138895138923%_)
                              (_%e138896138928%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138889138898%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code138931%_ _%e138896138928%_))
                         (_%K138892138910%_
                          _%code138931%_
                          _%n138926%_
                          _%phi138921%_
                          _%ctx138916%_))
                       (_%E138891138902%_)))))
              (__tmp149338
               (##structure-ref _%state138885%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp149339 '() __tmp149338))))
    (define gxc#collect-expression-refs
      (lambda (_%stx138881%_)
        (let ((_%ht138883%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht138883%_ _%stx138881%_)
          _%ht138883%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self138824%_ _%stx138825%_)
        (let* ((_%g138827138840%_
                (lambda (_%g138828138837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138828138837%_))))
               (_%g138826138878%_
                (lambda (_%g138828138843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138828138843%_))
                      (let ((_%e138830138845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138828138843%_))))
                        (let ((_%hd138831138848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138830138845%_)))
                              (_%tl138832138850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138830138845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138832138850%_))
                              (let ((_%e138833138853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138832138850%_))))
                                (let ((_%hd138834138856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138833138853%_)))
                                      (_%tl138835138858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138833138853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138835138858%_))
                                      ((lambda (_%L138861%_)
                                         (let* ((_%bind138873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L138861%_)))
                                                (_%eid138875%_
                                                 (if _%bind138873%_
                                                     (##structure-ref
                                                      _%bind138873%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L138861%_))))
                                                (__tmp149340
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self138824%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp149340
                                            _%eid138875%_
                                            _%eid138875%_)))
                                       _%hd138834138856%_)
                                      (_%g138827138840%_ _%g138828138843%_))))
                              (_%g138827138840%_ _%g138828138843%_))))
                      (_%g138827138840%_ _%g138828138843%_)))))
          (_%g138826138878%_ _%stx138825%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self138751%_ _%stx138752%_)
        (let* ((_%g138754138771%_
                (lambda (_%g138755138768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138755138768%_))))
               (_%g138753138821%_
                (lambda (_%g138755138774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138755138774%_))
                      (let ((_%e138758138776%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138755138774%_))))
                        (let ((_%hd138759138779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138758138776%_)))
                              (_%tl138760138781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138758138776%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138760138781%_))
                              (let ((_%e138761138784%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138760138781%_))))
                                (let ((_%hd138762138787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138761138784%_)))
                                      (_%tl138763138789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138761138784%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138763138789%_))
                                      (let ((_%e138764138792%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138763138789%_))))
                                        (let ((_%hd138765138795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138764138792%_)))
                                              (_%tl138766138797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138764138792%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138766138797%_))
                                              ((lambda (_%L138800%_
                                                        _%L138801%_)
                                                 (let* ((_%bind138816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L138801%_)))
                                                        (_%eid138818%_
                                                         (if _%bind138816%_
                                                             (##structure-ref
                                                              _%bind138816%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp149341
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self138751%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp149341
                                                      _%eid138818%_
                                                      _%eid138818%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self138751%_
                                                      _%L138800%_))))
                                               _%hd138765138795%_
                                               _%hd138762138787%_)
                                              (_%g138754138771%_
                                               _%g138755138774%_))))
                                      (_%g138754138771%_ _%g138755138774%_))))
                              (_%g138754138771%_ _%g138755138774%_))))
                      (_%g138754138771%_ _%g138755138774%_)))))
          (_%g138753138821%_ _%stx138752%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self138708%_ _%stx138709%_)
        (let* ((_%g138711138721%_
                (lambda (_%g138712138718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138712138718%_))))
               (_%g138710138748%_
                (lambda (_%g138712138724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138712138724%_))
                      (let ((_%e138714138726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138712138724%_))))
                        (let ((_%hd138715138729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138714138726%_)))
                              (_%tl138716138731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138714138726%_))))
                          ((lambda (_%L138734%_)
                             (let ((__tmp149342
                                    (lambda (_%g138743138745%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self138708%_
                                         _%g138743138745%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp149342 _%L138734%_)))
                           _%tl138716138731%_)))
                      (_%g138711138721%_ _%g138712138724%_)))))
          (_%g138710138748%_ _%stx138709%_))))
    (define gxc#count-values-single%
      (lambda (_%self138705%_ _%stx138706%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self138571%_ _%stx138572%_)
        (let* ((_%__stx149085149086%_ _%stx138572%_)
               (_%g138575138604%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149085149086%_)))))
          (let ((_%__kont149087149088%_
                 (lambda (_%L138672%_ _%L138673%_)
                   (length (let ((__tmp149343
                                  (lambda (_%g138694138697%_ _%g138695138699%_)
                                    (cons _%g138694138697%_
                                          _%g138695138699%_))))
                             (declare (not safe))
                             (__foldr1 __tmp149343 '() _%L138672%_)))))
                (_%__kont149091149092%_ (lambda () '#f)))
            (let ((_%__match149130149131%_
                   (lambda (_%e138579138616%_
                            _%hd138580138619%_
                            _%tl138581138621%_
                            _%e138582138624%_
                            _%hd138583138627%_
                            _%tl138584138629%_
                            _%e138585138632%_
                            _%hd138586138635%_
                            _%tl138587138637%_
                            _%e138588138640%_
                            _%hd138589138643%_
                            _%tl138590138645%_
                            _%__splice149089149090%_
                            _%target138591138648%_
                            _%tl138593138650%_)
                     (letrec ((_%loop138594138653%_
                               (lambda (_%hd138592138656%_
                                        _%rand138598138658%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138592138656%_))
                                     (let ((_%e138595138661%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138592138656%_))))
                                       (let ((_%lp-tl138597138666%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138595138661%_)))
                                             (_%lp-hd138596138664%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138595138661%_))))
                                         (_%loop138594138653%_
                                          _%lp-tl138597138666%_
                                          (cons _%lp-hd138596138664%_
                                                _%rand138598138658%_))))
                                     (let ((_%rand138599138669%_
                                            (reverse _%rand138598138658%_)))
                                       (let ((_%L138672%_ _%rand138599138669%_)
                                             (_%L138673%_ _%hd138589138643%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L138673%_
                                                'values))
                                             (_%__kont149087149088%_
                                              _%L138672%_
                                              _%L138673%_)
                                             (_%__kont149091149092%_))))))))
                       (_%loop138594138653%_ _%target138591138648%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149085149086%_))
                  (let ((_%e138579138616%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149085149086%_))))
                    (let ((_%tl138581138621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138579138616%_)))
                          (_%hd138580138619%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138579138616%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138581138621%_))
                          (let ((_%e138582138624%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138581138621%_))))
                            (let ((_%tl138584138629%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138582138624%_)))
                                  (_%hd138583138627%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138582138624%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138583138627%_))
                                  (let ((_%e138585138632%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138583138627%_))))
                                    (let ((_%tl138587138637%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138585138632%_)))
                                          (_%hd138586138635%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138585138632%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138586138635%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138586138635%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138587138637%_))
                                                  (let ((_%e138588138640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138587138637%_))))
                                                    (let ((_%tl138590138645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138588138640%_)))
                                                          (_%hd138589138643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138588138640%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138590138645%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138584138629%_))
                      (let ((_%__splice149089149090%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138584138629%_
                                '0))))
                        (let ((_%tl138593138650%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149089149090%_ '1)))
                              (_%target138591138648%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149089149090%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138593138650%_))
                              (_%__match149130149131%_
                               _%e138579138616%_
                               _%hd138580138619%_
                               _%tl138581138621%_
                               _%e138582138624%_
                               _%hd138583138627%_
                               _%tl138584138629%_
                               _%e138585138632%_
                               _%hd138586138635%_
                               _%tl138587138637%_
                               _%e138588138640%_
                               _%hd138589138643%_
                               _%tl138590138645%_
                               _%__splice149089149090%_
                               _%target138591138648%_
                               _%tl138593138650%_)
                              (_%__kont149091149092%_))))
                      (_%__kont149091149092%_))
                  (_%__kont149091149092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149091149092%_))
                                              (_%__kont149091149092%_))
                                          (_%__kont149091149092%_))))
                                  (_%__kont149091149092%_))))
                          (_%__kont149091149092%_))))
                  (_%__kont149091149092%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self138474%_ _%stx138475%_)
        (let* ((_%g138477138498%_
                (lambda (_%g138478138495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138478138495%_))))
               (_%g138476138568%_
                (lambda (_%g138478138501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138478138501%_))
                      (let ((_%e138482138503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138478138501%_))))
                        (let ((_%hd138483138506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138482138503%_)))
                              (_%tl138484138508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138482138503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138484138508%_))
                              (let ((_%e138485138511%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138484138508%_))))
                                (let ((_%hd138486138514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138485138511%_)))
                                      (_%tl138487138516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138485138511%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138487138516%_))
                                      (let ((_%e138488138519%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138487138516%_))))
                                        (let ((_%hd138489138522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138488138519%_)))
                                              (_%tl138490138524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138488138519%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138490138524%_))
                                              (let ((_%e138491138527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138490138524%_))))
                                                (let ((_%hd138492138530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138491138527%_)))
                                                      (_%tl138493138532%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138491138527%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138493138532%_))
                                                      ((lambda (_%L138535%_
                                                                _%L138536%_
                                                                _%L138537%_)
                                                         (let ((_%c1138554138556%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self138474%_ _%L138536%_))))
                   (if _%c1138554138556%_
                       (let* ((_%c1138559%_ _%c1138554138556%_)
                              (_%c2138560138562%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self138474%_
                                  _%L138535%_))))
                         (if _%c2138560138562%_
                             (let ((_%c2138565%_ _%c2138560138562%_))
                               (if (fx= _%c1138559%_ _%c2138565%_)
                                   _%c1138559%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd138492138530%_
               _%hd138489138522%_
               _%hd138486138514%_)
              (_%g138477138498%_ _%g138478138501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138477138498%_
                                               _%g138478138501%_))))
                                      (_%g138477138498%_ _%g138478138501%_))))
                              (_%g138477138498%_ _%g138478138501%_))))
                      (_%g138477138498%_ _%g138478138501%_)))))
          (_%g138476138568%_ _%stx138475%_))))))
