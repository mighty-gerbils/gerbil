(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712155162)
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
        (letrec ((_%hash-e143734%_
                  (lambda (_%id143736%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143736%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e143734%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145127 (list gxc#::void::t))
            (__tmp145126 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145127
         '()
         __tmp145126
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143730%_
        (apply make-instance gxc#::collect-bindings::t _%$args143730%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145128
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
        (__make-promise __tmp145128)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143722%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143725%_
                (let ((__obj145102
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145102))
               (__tmp145129
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143725%_ _%stx143722%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145129
           gxc#current-compile-method
           _%self143725%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145131 (list gxc#::void::t))
            (__tmp145130 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145131
         '(modules)
         __tmp145130
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143719%_
        (apply make-instance gxc#::lift-modules::t _%$args143719%_)))
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
      (let ((__tmp145132
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
        (__make-promise __tmp145132)))
    (define gxc#apply-lift-modules__%
      (lambda (_%_143692%_ _%modules143689143694%_ _%stx143696%_)
        (let ((_%modules143699%_
               (if (eq? _%modules143689143694%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143689143694%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143701%_
                  (let ((__obj145104
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145104
                       _%modules143699%_
                       '1
                       '#f
                       '#f))
                    __obj145104))
                 (__tmp145133
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143701%_ _%stx143696%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145133
             gxc#current-compile-method
             _%self143701%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143708%_ . _%args143709%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143708%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143708%_
                  'modules:
                  absent-value))
               _%args143709%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143690143715%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143690143715%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145135 (list)) (__tmp145134 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145135
         '()
         __tmp145134
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143685%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143685%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145136
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
        (__make-promise __tmp145136)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143677%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143680%_
                (let ((__obj145106
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145106))
               (__tmp145137
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143680%_ _%stx143677%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145137
           gxc#current-compile-method
           _%self143680%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145139 (list gxc#::false::t))
            (__tmp145138 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145139
         '()
         __tmp145138
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143674%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143674%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145140
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
        (__make-promise __tmp145140)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143666%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143669%_
                (let ((__obj145108
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145108))
               (__tmp145141
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143669%_ _%stx143666%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145141
           gxc#current-compile-method
           _%self143669%_))))
    (define gxc#::count-values::t
      (let ((__tmp145143 (list gxc#::false-expression::t))
            (__tmp145142 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145143
         '()
         __tmp145142
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143663%_
        (apply make-instance gxc#::count-values::t _%$args143663%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145144
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
        (__make-promise __tmp145144)))
    (define gxc#apply-count-values
      (lambda (_%stx143655%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143658%_
                (let ((__obj145110
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145110))
               (__tmp145145
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143658%_ _%stx143655%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145145
           gxc#current-compile-method
           _%self143658%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145146 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145146
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143652%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143652%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145147
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
        (__make-promise __tmp145147)))
    (define gxc#::generate-loader::t
      (let ((__tmp145149 (list gxc#::generate-runtime-empty::t))
            (__tmp145148 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145149
         '()
         __tmp145148
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143648%_
        (apply make-instance gxc#::generate-loader::t _%$args143648%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145150
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
        (__make-promise __tmp145150)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143640%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143643%_
                (let ((__obj145113
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145113))
               (__tmp145151
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143643%_ _%stx143640%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145151
           gxc#current-compile-method
           _%self143643%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145152 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145152
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143637%_
        (apply make-instance gxc#::generate-runtime::t _%$args143637%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145153
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
        (__make-promise __tmp145153)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143629%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143632%_
                (let ((__obj145115
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145115))
               (__tmp145154
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143632%_ _%stx143629%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145154
           gxc#current-compile-method
           _%self143632%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145156 (list gxc#::generate-runtime::t))
            (__tmp145155 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145156
         '()
         __tmp145155
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143626%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143626%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145157
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
        (__make-promise __tmp145157)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143618%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143621%_
                (let ((__obj145117
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145117))
               (__tmp145158
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143621%_ _%stx143618%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145158
           gxc#current-compile-method
           _%self143621%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145159 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145159
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143615%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143615%_)))
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
      (let ((__tmp145160
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
        (__make-promise __tmp145160)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%_143588%_ _%table143585143590%_ _%stx143592%_)
        (let ((_%table143595%_
               (if (eq? _%table143585143590%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143585143590%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143597%_
                  (let ((__obj145119
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145119
                       _%table143595%_
                       '1
                       '#f
                       '#f))
                    __obj145119))
                 (__tmp145161
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143597%_ _%stx143592%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145161
             gxc#current-compile-method
             _%self143597%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143604%_ . _%args143605%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143604%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143604%_
                  'table:
                  absent-value))
               _%args143605%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143586143611%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143586143611%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145163 (list gxc#::void-expression::t))
            (__tmp145162 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145163
         '(state)
         __tmp145162
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143581%_
        (apply make-instance gxc#::generate-meta::t _%$args143581%_)))
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
      (let ((__tmp145164
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
        (__make-promise __tmp145164)))
    (define gxc#apply-generate-meta__%
      (lambda (_%_143554%_ _%state143551143556%_ _%stx143558%_)
        (let ((_%state143561%_
               (if (eq? _%state143551143556%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143551143556%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143563%_
                  (let ((__obj145121
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145121
                       _%state143561%_
                       '1
                       '#f
                       '#f))
                    __obj145121))
                 (__tmp145165
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143563%_ _%stx143558%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145165
             gxc#current-compile-method
             _%self143563%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143570%_ . _%args143571%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143570%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143570%_
                  'state:
                  absent-value))
               _%args143571%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143552143577%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143552143577%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145167 (list)) (__tmp145166 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145167
         '(state)
         __tmp145166
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143547%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143547%_)))
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
      (let ((__tmp145168
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
        (__make-promise __tmp145168)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%_143520%_ _%state143517143522%_ _%stx143524%_)
        (let ((_%state143527%_
               (if (eq? _%state143517143522%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143517143522%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143529%_
                  (let ((__obj145123
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145123
                       _%state143527%_
                       '1
                       '#f
                       '#f))
                    __obj145123))
                 (__tmp145169
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143529%_ _%stx143524%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145169
             gxc#current-compile-method
             _%self143529%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143536%_ . _%args143537%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143536%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143536%_
                  'state:
                  absent-value))
               _%args143537%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143518143543%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143518143543%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143446%_ _%stx143447%_)
        (let* ((_%g143449143466%_
                (lambda (_%g143450143463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143450143463%_))))
               (_%g143448143513%_
                (lambda (_%g143450143469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143450143469%_))
                      (let ((_%e143455143471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143450143469%_))))
                        (let ((_%hd143454143474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143455143471%_)))
                              (_%tl143453143476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143455143471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143453143476%_))
                              (let ((_%e143458143479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143453143476%_))))
                                (let ((_%hd143457143482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143458143479%_)))
                                      (_%tl143456143484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143458143479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143456143484%_))
                                      (let ((_%e143461143487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143456143484%_))))
                                        (let ((_%hd143460143490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143461143487%_)))
                                              (_%tl143459143492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143461143487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143459143492%_))
                                              ((lambda (_%L143495%_
                                                        _%L143496%_)
                                                 (let ((__tmp145170
                                                        (lambda (_%bind143511%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143511%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind143511%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145170
                                                    _%L143496%_)))
                                               _%hd143460143490%_
                                               _%hd143457143482%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143449143466%_
                                                 _%g143450143469%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143449143466%_
                                         _%g143450143469%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143449143466%_ _%g143450143469%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143449143466%_ _%g143450143469%_))))))
          (declare (not safe))
          (_%g143448143513%_ _%stx143447%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143378%_ _%stx143379%_)
        (let* ((_%g143381143398%_
                (lambda (_%g143382143395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143382143395%_))))
               (_%g143380143443%_
                (lambda (_%g143382143401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143382143401%_))
                      (let ((_%e143387143403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143382143401%_))))
                        (let ((_%hd143386143406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143387143403%_)))
                              (_%tl143385143408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143387143403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143385143408%_))
                              (let ((_%e143390143411%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143385143408%_))))
                                (let ((_%hd143389143414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143390143411%_)))
                                      (_%tl143388143416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143390143411%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143388143416%_))
                                      (let ((_%e143393143419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143388143416%_))))
                                        (let ((_%hd143392143422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143393143419%_)))
                                              (_%tl143391143424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143393143419%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143391143424%_))
                                              ((lambda (_%L143427%_
                                                        _%L143428%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L143428%_
                                                    '#t)))
                                               _%hd143392143422%_
                                               _%hd143389143414%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143381143398%_
                                                 _%g143382143401%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143381143398%_
                                         _%g143382143401%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143381143398%_ _%g143382143401%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143381143398%_ _%g143382143401%_))))))
          (declare (not safe))
          (_%g143380143443%_ _%stx143379%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143320%_ _%stx143321%_)
        (let* ((_%g143323143337%_
                (lambda (_%g143324143334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143324143334%_))))
               (_%g143322143375%_
                (lambda (_%g143324143340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143324143340%_))
                      (let ((_%e143329143342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143324143340%_))))
                        (let ((_%hd143328143345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143329143342%_)))
                              (_%tl143327143347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143329143342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143327143347%_))
                              (let ((_%e143332143350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143327143347%_))))
                                (let ((_%hd143331143353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143332143350%_)))
                                      (_%tl143330143355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143332143350%_))))
                                  ((lambda (_%L143358%_ _%L143359%_)
                                     (let ((_%ctx143372%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143359%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143320%_
                                           'modules))
                                        (cons _%ctx143372%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143320%_
                                                        'modules)))))
                                       (let ((__tmp145171
                                              (lambda ()
                                                (let ((__tmp145172
                                                       (##structure-ref
                                                        _%ctx143372%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143320%_
                                                   __tmp145172)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145171
                                          gx#current-expander-context
                                          _%ctx143372%_))))
                                   _%tl143330143355%_
                                   _%hd143331143353%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143323143337%_ _%g143324143340%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143323143337%_ _%g143324143340%_))))))
          (declare (not safe))
          (_%g143322143375%_ _%stx143321%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143273143275%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143273143275%_
              (let ((_%decls143278%_ _%decls143273143275%_))
                (let _%lp143280%_ ((_%rest143282%_ _%decls143278%_))
                  (let* ((_%rest143283143291%_ _%rest143282%_)
                         (_%else143285143299%_ (lambda () '#f))
                         (_%K143287143308%_
                          (lambda (_%decls143302%_ _%decl143303%_)
                            (if (equal? _%decl143303%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143303%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (declare (not safe))
                                      (_%lp143280%_ _%decls143302%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143283143291%_))
                        (let ((_%hd143288143311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143283143291%_)))
                              (_%tl143289143313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143283143291%_))))
                          (let* ((_%decl143316%_ _%hd143288143311%_)
                                 (_%decls143318%_ _%tl143289143313%_))
                            (declare (not safe))
                            (_%K143287143308%_
                             _%decls143318%_
                             _%decl143316%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143285143299%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143267%_ _%syntax?143268%_)
        (let ((_%eid143270%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143267%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143271%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143270%_))
              '#!void
              (let ((__tmp145173
                     (let ((__tmp145174
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143270%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145174 _%syntax?143268%_))))
                (declare (not safe))
                (hash-put! _%ht143271%_ _%eid143270%_ __tmp145173))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143265%_)
        (let ((__tmp145175
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143265%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145175))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143220%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143220%_))
            (let () _%key143220%_)
            (if (uninterned-symbol? _%key143220%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143220%_))
                (let ()
                  (let* ((_%key143224143231%_ _%key143220%_)
                         (_%E143226143235%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143224143231%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143227143253%_
                          (lambda (_%mark143238%_ _%eid143239%_)
                            (let ((_%$e143241%_
                                   (##structure-ref
                                    _%mark143238%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143241%_
                                  ((lambda (_%ht143244%_)
                                     (let ((_%$e143246%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143244%_
                                               _%eid143239%_))))
                                       (if _%$e143246%_
                                           ((lambda (_%id143249%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143249%_))
                                                  _%id143249%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143249%_))))
                                            _%$e143246%_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%eid143239%_)))))
                                   _%$e143241%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-identifier-key
                                     _%eid143239%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143224143231%_))
                        (let ((_%hd143228143256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143224143231%_)))
                              (_%tl143229143258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143224143231%_))))
                          (let* ((_%eid143261%_ _%hd143228143256%_)
                                 (_%mark143263%_ _%tl143229143258%_))
                            (declare (not safe))
                            (_%K143227143253%_ _%mark143263%_ _%eid143261%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143226143235%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143217%_ _%stx143218%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143064%_ _%stx143065%_)
        (letrec ((_%simplify143067%_
                  (lambda (_%body143115%_)
                    (let _%lp143117%_ ((_%rest143119%_ _%body143115%_)
                                       (_%r143120%_ '()))
                      (let* ((_%rest143121143129%_ _%rest143119%_)
                             (_%else143123143137%_
                              (lambda () (reverse _%r143120%_)))
                             (_%K143125143205%_
                              (lambda (_%rest143140%_ _%hd143141%_)
                                (let* ((_%hd143142143158%_ _%hd143141%_)
                                       (_%else143146143166%_
                                        (lambda ()
                                          (let ((__tmp145176
                                                 (cons _%hd143141%_
                                                       _%r143120%_)))
                                            (declare (not safe))
                                            (_%lp143117%_
                                             _%rest143140%_
                                             __tmp145176)))))
                                  (let ((_%K143154143195%_
                                         (lambda (_%exprs143193%_)
                                           (let ((__tmp145177
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143140%_
                                                     _%exprs143193%_))))
                                             (declare (not safe))
                                             (_%lp143117%_
                                              __tmp145177
                                              _%r143120%_))))
                                        (_%K143149143179%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143140%_))
                                               (let ((__tmp145178
                                                      (cons _%hd143141%_
                                                            _%r143120%_)))
                                                 (declare (not safe))
                                                 (_%lp143117%_
                                                  _%rest143140%_
                                                  __tmp145178))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143117%_
                                                  _%rest143140%_
                                                  _%r143120%_)))))
                                        (_%K143148143171%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143140%_))
                                               (let ((__tmp145179
                                                      (cons _%hd143141%_
                                                            _%r143120%_)))
                                                 (declare (not safe))
                                                 (_%lp143117%_
                                                  _%rest143140%_
                                                  __tmp145179))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143117%_
                                                  _%rest143140%_
                                                  _%r143120%_))))))
                                    (let ((_%try-match143145143174%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143142143158%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143148143171%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143146143166%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143142143158%_))
                                          (let ((_%tl143156143200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143142143158%_)))
                                                (_%hd143155143198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143142143158%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143155143198%_
                                                         'begin))
                                                (let ((_%exprs143203%_
                                                       _%tl143156143200%_))
                                                  (declare (not safe))
                                                  (_%K143154143195%_
                                                   _%exprs143203%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143155143198%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143156143200%_))
                                                        (let ((_%tl143153143187%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143156143200%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143153143187%_))
                      (let () (declare (not safe)) (_%K143149143179%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143145143174%_))))
                (let () (declare (not safe)) (_%try-match143145143174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143145143174%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143145143174%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143121143129%_))
                            (let ((_%hd143126143208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143121143129%_)))
                                  (_%tl143127143210%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143121143129%_))))
                              (let* ((_%hd143213%_ _%hd143126143208%_)
                                     (_%rest143215%_ _%tl143127143210%_))
                                (declare (not safe))
                                (_%K143125143205%_
                                 _%rest143215%_
                                 _%hd143213%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143123143137%_))))))))
          (let* ((_%g143069143079%_
                  (lambda (_%g143070143076%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143070143076%_))))
                 (_%g143068143112%_
                  (lambda (_%g143070143082%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143070143082%_))
                        (let ((_%e143074143084%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143070143082%_))))
                          (let ((_%hd143073143087%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143074143084%_)))
                                (_%tl143072143089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143074143084%_))))
                            ((lambda (_%L143092%_)
                               (let* ((_%body143107%_
                                       (map (lambda (_%g143102143104%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143064%_
                                                 _%g143102143104%_)))
                                            _%L143092%_))
                                      (_%body143109%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143067%_ _%body143107%_))))
                                 (if (let ((__tmp145180
                                            (length _%body143109%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145180 '1))
                                     (car _%body143109%_)
                                     (cons 'begin _%body143109%_))))
                             _%tl143072143089%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143069143079%_ _%g143070143082%_))))))
            (declare (not safe))
            (_%g143068143112%_ _%stx143065%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143025%_ _%stx143026%_)
        (let* ((_%g143028143038%_
                (lambda (_%g143029143035%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143029143035%_))))
               (_%g143027143061%_
                (lambda (_%g143029143041%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143029143041%_))
                      (let ((_%e143033143043%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143029143041%_))))
                        (let ((_%hd143032143046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143033143043%_)))
                              (_%tl143031143048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143033143043%_))))
                          ((lambda (_%L143051%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143051%_))))
                           _%tl143031143048%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143028143038%_ _%g143029143041%_))))))
          (declare (not safe))
          (_%g143027143061%_ _%stx143026%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142789%_ _%stx142790%_)
        (let* ((_%__stx143759143760%_ _%stx142790%_)
               (_%g142794142846%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143759143760%_)))))
          (let ((_%__kont143761143762%_
                 (lambda (_%L143007%_ _%L143008%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142789%_ _%L143007%_))))
                (_%__kont143763143764%_
                 (lambda (_%L142955%_ _%L142956%_ _%L142957%_)
                   (if (let ((__tmp145181
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142957%_))))
                         (declare (not safe))
                         (##memq __tmp145181 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142789%_ _%L142955%_)))))
                (_%__kont143767143768%_
                 (lambda (_%L142875%_ _%L142876%_)
                   (let ((_%decls142891%_ (map gx#syntax->datum _%L142876%_)))
                     (let ((__tmp145184
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142891%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142789%_
                                                   _%L142875%_))
                                                '())))))
                           (__tmp145182
                            (let ((__tmp145183
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145183 _%decls142891%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145184
                        gxc#current-compile-decls
                        __tmp145182))))))
            (let* ((_%__match143814143815%_
                    (lambda (_%e142812142899%_
                             _%hd142811142902%_
                             _%tl142810142904%_
                             _%e142815142907%_
                             _%hd142814142910%_
                             _%tl142813142912%_
                             _%e142818142915%_
                             _%hd142817142918%_
                             _%tl142816142920%_
                             _%__splice143765143766%_
                             _%target142819142923%_
                             _%tl142821142925%_)
                      (letrec ((_%loop142822142928%_
                                (lambda (_%hd142820142931%_
                                         _%param142826142933%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142820142931%_))
                                      (let ((_%e142823142936%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142820142931%_))))
                                        (let ((_%lp-tl142825142941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142823142936%_)))
                                              (_%lp-hd142824142939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142823142936%_))))
                                          (let ((__tmp145185
                                                 (cons _%lp-hd142824142939%_
                                                       _%param142826142933%_)))
                                            (declare (not safe))
                                            (_%loop142822142928%_
                                             _%lp-tl142825142941%_
                                             __tmp145185))))
                                      (let ((_%param142827142944%_
                                             (reverse _%param142826142933%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142813142912%_))
                                            (let ((_%e142830142947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142813142912%_))))
                                              (let ((_%tl142828142952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142830142947%_)))
                                                    (_%hd142829142950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142830142947%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142828142952%_))
                                                    (let ((_%L142955%_
                                                           _%hd142829142950%_)
                                                          (_%L142956%_
                                                           _%param142827142944%_)
                                                          (_%L142957%_
                                                           _%hd142817142918%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142957%_))
                       (let ((__tmp145186
                              (let ((__tmp145187
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L142957%_))))
                                (declare (not safe))
                                (##memq __tmp145187 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145186)))
                  (_%__kont143763143764%_ _%L142955%_ _%L142956%_ _%L142957%_)
                  (_%__kont143767143768%_
                   _%hd142829142950%_
                   _%hd142814142910%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142794142846%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142794142846%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop142822142928%_ _%target142819142923%_ '())))))
                   (_%__match143788143789%_
                    (lambda (_%e142800142983%_
                             _%hd142799142986%_
                             _%tl142798142988%_
                             _%e142803142991%_
                             _%hd142802142994%_
                             _%tl142801142996%_
                             _%e142806142999%_
                             _%hd142805143002%_
                             _%tl142804143004%_)
                      (let ((_%L143007%_ _%hd142805143002%_)
                            (_%L143008%_ _%hd142802142994%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143008%_))
                            (_%__kont143761143762%_ _%L143007%_ _%L143008%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142802142994%_))
                                (let ((_%e142818142915%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142802142994%_))))
                                  (let ((_%tl142816142920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142818142915%_)))
                                        (_%hd142817142918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142818142915%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142816142920%_))
                                        (let ((_%__splice143765143766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142816142920%_
                                                  '0))))
                                          (let ((_%tl142821142925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143765143766%_
                                                    '1)))
                                                (_%target142819142923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143765143766%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142821142925%_))
                                                (_%__match143814143815%_
                                                 _%e142800142983%_
                                                 _%hd142799142986%_
                                                 _%tl142798142988%_
                                                 _%e142803142991%_
                                                 _%hd142802142994%_
                                                 _%tl142801142996%_
                                                 _%e142818142915%_
                                                 _%hd142817142918%_
                                                 _%tl142816142920%_
                                                 _%__splice143765143766%_
                                                 _%target142819142923%_
                                                 _%tl142821142925%_)
                                                (_%__kont143767143768%_
                                                 _%hd142805143002%_
                                                 _%hd142802142994%_))))
                                        (_%__kont143767143768%_
                                         _%hd142805143002%_
                                         _%hd142802142994%_))))
                                (_%__kont143767143768%_
                                 _%hd142805143002%_
                                 _%hd142802142994%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143759143760%_))
                  (let ((_%e142800142983%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143759143760%_))))
                    (let ((_%tl142798142988%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142800142983%_)))
                          (_%hd142799142986%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142800142983%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142798142988%_))
                          (let ((_%e142803142991%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142798142988%_))))
                            (let ((_%tl142801142996%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142803142991%_)))
                                  (_%hd142802142994%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142803142991%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142801142996%_))
                                  (let ((_%e142806142999%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142801142996%_))))
                                    (let ((_%tl142804143004%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142806142999%_)))
                                          (_%hd142805143002%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142806142999%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142804143004%_))
                                          (_%__match143788143789%_
                                           _%e142800142983%_
                                           _%hd142799142986%_
                                           _%tl142798142988%_
                                           _%e142803142991%_
                                           _%hd142802142994%_
                                           _%tl142801142996%_
                                           _%e142806142999%_
                                           _%hd142805143002%_
                                           _%tl142804143004%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142802142994%_))
                                              (let ((_%e142818142915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142802142994%_))))
                                                (let ((_%tl142816142920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142818142915%_)))
                                                      (_%hd142817142918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142818142915%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142816142920%_))
                                                      (let ((_%__splice143765143766%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142816142920%_ '0))))
                (let ((_%tl142821142925%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143765143766%_ '1)))
                      (_%target142819142923%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143765143766%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142821142925%_))
                      (_%__match143814143815%_
                       _%e142800142983%_
                       _%hd142799142986%_
                       _%tl142798142988%_
                       _%e142803142991%_
                       _%hd142802142994%_
                       _%tl142801142996%_
                       _%e142818142915%_
                       _%hd142817142918%_
                       _%tl142816142920%_
                       _%__splice143765143766%_
                       _%target142819142923%_
                       _%tl142821142925%_)
                      (let () (declare (not safe)) (_%g142794142846%_)))))
              (let () (declare (not safe)) (_%g142794142846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142794142846%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142802142994%_))
                                      (let ((_%e142818142915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142802142994%_))))
                                        (let ((_%tl142816142920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142818142915%_)))
                                              (_%hd142817142918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142818142915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142816142920%_))
                                              (let ((_%__splice143765143766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142816142920%_
                                                        '0))))
                                                (let ((_%tl142821142925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143765143766%_
                                                          '1)))
                                                      (_%target142819142923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143765143766%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142821142925%_))
                                                      (_%__match143814143815%_
                                                       _%e142800142983%_
                                                       _%hd142799142986%_
                                                       _%tl142798142988%_
                                                       _%e142803142991%_
                                                       _%hd142802142994%_
                                                       _%tl142801142996%_
                                                       _%e142818142915%_
                                                       _%hd142817142918%_
                                                       _%tl142816142920%_
                                                       _%__splice143765143766%_
                                                       _%target142819142923%_
                                                       _%tl142821142925%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142794142846%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142794142846%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142794142846%_))))))
                          (let () (declare (not safe)) (_%g142794142846%_)))))
                  (let () (declare (not safe)) (_%g142794142846%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142748%_ _%stx142749%_)
        (let* ((_%g142751142761%_
                (lambda (_%g142752142758%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142752142758%_))))
               (_%g142750142786%_
                (lambda (_%g142752142764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142752142764%_))
                      (let ((_%e142756142766%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142752142764%_))))
                        (let ((_%hd142755142769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142756142766%_)))
                              (_%tl142754142771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142756142766%_))))
                          ((lambda (_%L142774%_)
                             (let ((_%decls142784%_
                                    (map gx#syntax->datum _%L142774%_)))
                               (let ((__tmp145188
                                      (let ((__tmp145189
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145189
                                         _%decls142784%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145188))
                               (cons 'declare _%decls142784%_)))
                           _%tl142754142771%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142751142761%_ _%g142752142764%_))))))
          (declare (not safe))
          (_%g142750142786%_ _%stx142749%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142494%_ _%stx142495%_)
        (let* ((_%g142497142514%_
                (lambda (_%g142498142511%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142498142511%_))))
               (_%g142496142745%_
                (lambda (_%g142498142517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142498142517%_))
                      (let ((_%e142503142519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142498142517%_))))
                        (let ((_%hd142502142522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142503142519%_)))
                              (_%tl142501142524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142503142519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142501142524%_))
                              (let ((_%e142506142527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142501142524%_))))
                                (let ((_%hd142505142530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142506142527%_)))
                                      (_%tl142504142532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142506142527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142504142532%_))
                                      (let ((_%e142509142535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142504142532%_))))
                                        (let ((_%hd142508142538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142509142535%_)))
                                              (_%tl142507142540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142509142535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142507142540%_))
                                              ((lambda (_%L142543%_
                                                        _%L142544%_)
                                                 (let* ((_%__stx143867143868%_
                                                         _%L142544%_)
                                                        (_%g142561142575%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143867143868%_)))))
                                                   (let ((_%__kont143869143870%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142494%_
                                                               _%L142543%_))))
                                                         (_%__kont143871143872%_
                                                          (lambda (_%L142707%_)
                                                            (let ((_%eid142716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142707%_))))
                      (let ((_%lambda-expr142717142719%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L142543%_))))
                        (if _%lambda-expr142717142719%_
                            (let* ((_%lambda-expr142722%_
                                    _%lambda-expr142717142719%_)
                                   (__tmp145190
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145190
                               _%lambda-expr142722%_
                               _%eid142716%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142716%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142494%_
                                           _%L142543%_))
                                        '()))))))
                 (_%__kont143873143874%_
                  (lambda ()
                    (let* ((_%tmp142582%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142691%_
                            (let _%lp142584%_ ((_%rest142586%_ _%L142544%_)
                                               (_%k142587%_ '0)
                                               (_%r142588%_ '()))
                              (let* ((_%__stx143837143838%_ _%rest142586%_)
                                     (_%g142593142610%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143837143838%_)))))
                                (let ((_%__kont143839143840%_
                                       (lambda (_%L142678%_)
                                         (let ((__tmp145191
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142587%_ '1))))
                                           (declare (not safe))
                                           (_%lp142584%_
                                            _%L142678%_
                                            __tmp145191
                                            _%r142588%_))))
                                      (_%__kont143841143842%_
                                       (lambda (_%L142651%_ _%L142652%_)
                                         (let ((__tmp145193
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142587%_ '1)))
                                               (__tmp145192
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142652%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp142582%_
                                   _%k142587%_
                                   _%L142651%_))
                                '())))
              _%r142588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp142584%_
                                            _%L142651%_
                                            __tmp145193
                                            __tmp145192))))
                                      (_%__kont143843143844%_
                                       (lambda (_%L142622%_)
                                         (let ((__tmp145194
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142622%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp142582%_
                                   _%k142587%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145194
                                            _%r142588%_))))
                                      (_%__kont143845143846%_
                                       (lambda () (reverse _%r142588%_))))
                                  (let ((_%g142591142638%_
                                         (lambda ()
                                           (let ((_%L142622%_
                                                  _%__stx143837143838%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142622%_))
                                                 (_%__kont143843143844%_
                                                  _%L142622%_)
                                                 (_%__kont143845143846%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143837143838%_))
                                        (let ((_%e142598142667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143837143838%_))))
                                          (let ((_%tl142596142672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142598142667%_)))
                                                (_%hd142597142670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142598142667%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142597142670%_))
                                                (let ((_%e142599142675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142597142670%_))))
                                                  (if (equal? _%e142599142675%_
                                                              '#f)
                                                      (_%__kont143839143840%_
                                                       _%tl142596142672%_)
                                                      (_%__kont143841143842%_
                                                       _%tl142596142672%_
                                                       _%hd142597142670%_)))
                                                (_%__kont143841143842%_
                                                 _%tl142596142672%_
                                                 _%hd142597142670%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142591142638%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142582%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142494%_
                                                       _%L142543%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp142582%_
                                           _%L142544%_
                                           _%L142543%_))
                                        _%body142691%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143867143868%_))
                                                         (let ((_%e142565142729%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143867143868%_))))
                   (let ((_%tl142563142734%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142565142729%_)))
                         (_%hd142564142732%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142565142729%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142564142732%_))
                         (let ((_%e142566142737%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142564142732%_))))
                           (if (equal? _%e142566142737%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142563142734%_))
                                   (_%__kont143869143870%_)
                                   (_%__kont143873143874%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142563142734%_))
                                   (_%__kont143871143872%_ _%hd142564142732%_)
                                   (_%__kont143873143874%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142563142734%_))
                             (_%__kont143871143872%_ _%hd142564142732%_)
                             (_%__kont143873143874%_)))))
                 (_%__kont143873143874%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142508142538%_
                                               _%hd142505142530%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142497142514%_
                                                 _%g142498142517%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142497142514%_
                                         _%g142498142517%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142497142514%_ _%g142498142517%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142497142514%_ _%g142498142517%_))))))
          (declare (not safe))
          (_%g142496142745%_ _%stx142495%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142469%_ _%hd142470%_ _%expr142471%_)
        (let ((_%$e142473%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr142471%_))))
          (if _%$e142473%_
              ((lambda (_%count142476%_)
                 (let ((_%len142478%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142470%_)))
                       (_%cmp142479%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142470%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142478%_ '0))
                           (_%cmp142479%_ _%count142476%_ _%len142478%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142471%_
                          _%hd142470%_)))))
               _%$e142473%_)
              (let ()
                (let* ((_%len142485%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142470%_)))
                       (_%cmp142487%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142470%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg142489%_
                        (let ((__tmp145196
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd142470%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145195 (number->string _%len142485%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145196
                           __tmp145195
                           '" values")))
                       (_%count142491%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145197
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd142470%_))))
                             (declare (not safe))
                             (not __tmp145197))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len142485%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count142491%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals142469%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp142487%_
                                  (cons _%count142491%_
                                        (cons _%len142485%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp142487%_
                                                          (cons _%count142491%_
                                                                (cons _%len142485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg142489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count142491%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142464%_)
        (letrec ((_%generate-inline142466%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142464%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142464%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142466%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142466%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142457%_ _%i142458%_ _%rest142459%_)
        (letrec ((_%generate-inline142461%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142458%_ '0))
                             (let ((__tmp145198
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest142459%_))))
                               (declare (not safe))
                               (not __tmp145198)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142457%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142457%_
                                                      (cons '0 '())))
                                          (cons _%var142457%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142457%_ (cons _%i142458%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142461%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142461%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142451%_ _%i142452%_)
        (if (let () (declare (not safe)) (##fx= _%i142452%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var142451%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var142451%_ '()))
                                    (cons (cons 'list (cons _%var142451%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var142451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var142451%_ '()))
                    (cons (cons 'list (cons _%var142451%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i142452%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var142451%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var142451%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var142451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var142451%_ '()))
                                    '()))
                        (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons '##list-tail
                            (cons (cons '##vector->list
                                        (cons _%var142451%_ '()))
                                  (cons _%i142452%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var142451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i142452%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142383%_ _%stx142384%_)
        (let* ((_%g142386142403%_
                (lambda (_%g142387142400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142387142400%_))))
               (_%g142385142448%_
                (lambda (_%g142387142406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142387142406%_))
                      (let ((_%e142392142408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142387142406%_))))
                        (let ((_%hd142391142411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142392142408%_)))
                              (_%tl142390142413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142392142408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142390142413%_))
                              (let ((_%e142395142416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142390142413%_))))
                                (let ((_%hd142394142419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142395142416%_)))
                                      (_%tl142393142421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142395142416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142393142421%_))
                                      (let ((_%e142398142424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142393142421%_))))
                                        (let ((_%hd142397142427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142398142424%_)))
                                              (_%tl142396142429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142398142424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142396142429%_))
                                              ((lambda (_%L142432%_
                                                        _%L142433%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142383%_
                                                    _%L142433%_
                                                    _%L142432%_)))
                                               _%hd142397142427%_
                                               _%hd142394142419%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142386142403%_
                                                 _%g142387142406%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142386142403%_
                                         _%g142387142406%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142386142403%_ _%g142387142406%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142386142403%_ _%g142387142406%_))))))
          (declare (not safe))
          (_%g142385142448%_ _%stx142384%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142342%_ _%hd142343%_ _%body142344%_)
        (let* ((_%hd142346%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142343%_)))
               (_%body142348%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142342%_ _%body142344%_)))
               (_%body142380%_
                (let* ((_%body142349142357%_ _%body142348%_)
                       (_%else142351142365%_
                        (lambda () (cons _%body142348%_ '())))
                       (_%K142353142370%_
                        (lambda (_%exprs142368%_) _%exprs142368%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142349142357%_))
                      (let ((_%hd142354142373%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142349142357%_)))
                            (_%tl142355142375%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142349142357%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142354142373%_ 'begin))
                            (let ((_%exprs142378%_ _%tl142355142375%_))
                              (declare (not safe))
                              (_%K142353142370%_ _%exprs142378%_))
                            (let ()
                              (declare (not safe))
                              (_%else142351142365%_))))
                      (let () (declare (not safe)) (_%else142351142365%_))))))
          (cons 'lambda (cons _%hd142346%_ _%body142380%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142340%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142340%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140879%_ _%stx140880%_)
        (letrec ((_%dispatch-case?140882%_
                  (lambda (_%hd141570%_ _%body141571%_)
                    (let* ((_%form141573%_
                            (cons _%hd141570%_ (cons _%body141571%_ '())))
                           (_%__stx143899143900%_ _%form141573%_)
                           (_%g141578141735%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143899143900%_)))))
                      (let ((_%__kont143901143902%_
                             (lambda (_%L142260%_ _%L142261%_ _%L142262%_)
                               '#t))
                            (_%__kont143907143908%_
                             (lambda (_%L142048%_
                                      _%L142049%_
                                      _%L142050%_
                                      _%L142051%_
                                      _%L142052%_
                                      _%L142053%_)
                               '#t))
                            (_%__kont143913143914%_
                             (lambda (_%L141843%_
                                      _%L141844%_
                                      _%L141845%_
                                      _%L141846%_)
                               '#t))
                            (_%__kont143915143916%_ (lambda () '#f)))
                        (let* ((_%__match144040144041%_
                                (lambda (_%e141697141747%_
                                         _%hd141696141750%_
                                         _%tl141695141752%_
                                         _%e141700141755%_
                                         _%hd141699141758%_
                                         _%tl141698141760%_
                                         _%e141703141763%_
                                         _%hd141702141766%_
                                         _%tl141701141768%_
                                         _%e141706141771%_
                                         _%hd141705141774%_
                                         _%tl141704141776%_
                                         _%e141709141779%_
                                         _%hd141708141782%_
                                         _%tl141707141784%_
                                         _%e141712141787%_
                                         _%hd141711141790%_
                                         _%tl141710141792%_
                                         _%e141715141795%_
                                         _%hd141714141798%_
                                         _%tl141713141800%_
                                         _%e141718141803%_
                                         _%hd141717141806%_
                                         _%tl141716141808%_
                                         _%e141721141811%_
                                         _%hd141720141814%_
                                         _%tl141719141816%_
                                         _%e141724141819%_
                                         _%hd141723141822%_
                                         _%tl141722141824%_
                                         _%e141727141827%_
                                         _%hd141726141830%_
                                         _%tl141725141832%_
                                         _%e141730141835%_
                                         _%hd141729141838%_
                                         _%tl141728141840%_)
                                  (let ((_%L141843%_ _%hd141729141838%_)
                                        (_%L141844%_ _%hd141720141814%_)
                                        (_%L141845%_ _%hd141711141790%_)
                                        (_%L141846%_ _%hd141696141750%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141846%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141845%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141846%_
                                                _%L141843%_))
                                             (let ((__tmp145199
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L141844%_
                                                       _%L141846%_))))
                                               (declare (not safe))
                                               (not __tmp145199)))
                                        (_%__kont143913143914%_
                                         _%L141843%_
                                         _%L141844%_
                                         _%L141845%_
                                         _%L141846%_)
                                        (_%__kont143915143916%_)))))
                               (_%__match144012144013%_
                                (lambda (_%e141697141747%_
                                         _%hd141696141750%_
                                         _%tl141695141752%_
                                         _%e141700141755%_
                                         _%hd141699141758%_
                                         _%tl141698141760%_
                                         _%e141703141763%_
                                         _%hd141702141766%_
                                         _%tl141701141768%_
                                         _%e141706141771%_
                                         _%hd141705141774%_
                                         _%tl141704141776%_
                                         _%e141709141779%_
                                         _%hd141708141782%_
                                         _%tl141707141784%_
                                         _%e141712141787%_
                                         _%hd141711141790%_
                                         _%tl141710141792%_
                                         _%e141715141795%_
                                         _%hd141714141798%_
                                         _%tl141713141800%_
                                         _%e141718141803%_
                                         _%hd141717141806%_
                                         _%tl141716141808%_
                                         _%e141721141811%_
                                         _%hd141720141814%_
                                         _%tl141719141816%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141713141800%_))
                                      (let ((_%e141724141819%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141713141800%_))))
                                        (let ((_%tl141722141824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141724141819%_)))
                                              (_%hd141723141822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141724141819%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141723141822%_))
                                              (let ((_%e141727141827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141723141822%_))))
                                                (let ((_%tl141725141832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141727141827%_)))
                                                      (_%hd141726141830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141727141827%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141726141830%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141726141830%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141725141832%_))
                      (let ((_%e141730141835%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141725141832%_))))
                        (let ((_%tl141728141840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141730141835%_)))
                              (_%hd141729141838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141730141835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141728141840%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141722141824%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141698141760%_))
                                      (_%__match144040144041%_
                                       _%e141697141747%_
                                       _%hd141696141750%_
                                       _%tl141695141752%_
                                       _%e141700141755%_
                                       _%hd141699141758%_
                                       _%tl141698141760%_
                                       _%e141703141763%_
                                       _%hd141702141766%_
                                       _%tl141701141768%_
                                       _%e141706141771%_
                                       _%hd141705141774%_
                                       _%tl141704141776%_
                                       _%e141709141779%_
                                       _%hd141708141782%_
                                       _%tl141707141784%_
                                       _%e141712141787%_
                                       _%hd141711141790%_
                                       _%tl141710141792%_
                                       _%e141715141795%_
                                       _%hd141714141798%_
                                       _%tl141713141800%_
                                       _%e141718141803%_
                                       _%hd141717141806%_
                                       _%tl141716141808%_
                                       _%e141721141811%_
                                       _%hd141720141814%_
                                       _%tl141719141816%_
                                       _%e141724141819%_
                                       _%hd141723141822%_
                                       _%tl141722141824%_
                                       _%e141727141827%_
                                       _%hd141726141830%_
                                       _%tl141725141832%_
                                       _%e141730141835%_
                                       _%hd141729141838%_
                                       _%tl141728141840%_)
                                      (_%__kont143915143916%_))
                                  (_%__kont143915143916%_))
                              (_%__kont143915143916%_))))
                      (_%__kont143915143916%_))
                  (_%__kont143915143916%_))
              (_%__kont143915143916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143915143916%_))))
                                      (_%__kont143915143916%_))))
                               (_%__match143942143943%_
                                (lambda (_%e141633141888%_
                                         _%hd141632141891%_
                                         _%tl141631141893%_
                                         _%__splice143909143910%_
                                         _%target141634141896%_
                                         _%tl141636141898%_)
                                  (letrec ((_%loop141637141901%_
                                            (lambda (_%hd141635141904%_
                                                     _%arg141641141906%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141635141904%_))
                                                  (let ((_%e141638141909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141635141904%_))))
                                                    (let ((_%lp-tl141640141914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141638141909%_)))
                                                          (_%lp-hd141639141912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141638141909%_))))
                                                      (let ((__tmp145200
                                                             (cons _%lp-hd141639141912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141641141906%_)))
                (declare (not safe))
                (_%loop141637141901%_ _%lp-tl141640141914%_ __tmp145200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141642141917%_
                                                         (reverse _%arg141641141906%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141631141893%_))
                                                        (let ((_%e141645141920%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141631141893%_))))
                  (let ((_%tl141643141925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141645141920%_)))
                        (_%hd141644141923%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141645141920%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141644141923%_))
                        (let ((_%e141648141928%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141644141923%_))))
                          (let ((_%tl141646141933%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141648141928%_)))
                                (_%hd141647141931%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141648141928%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141647141931%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141647141931%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141646141933%_))
                                        (let ((_%e141651141936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141646141933%_))))
                                          (let ((_%tl141649141941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141651141936%_)))
                                                (_%hd141650141939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141651141936%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141650141939%_))
                                                (let ((_%e141654141944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141650141939%_))))
                                                  (let ((_%tl141652141949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141654141944%_)))
                                                        (_%hd141653141947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141654141944%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141653141947%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141653141947%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141652141949%_))
                        (let ((_%e141657141952%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141652141949%_))))
                          (let ((_%tl141655141957%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141657141952%_)))
                                (_%hd141656141955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141657141952%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141655141957%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141649141941%_))
                                    (let ((_%e141660141960%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141649141941%_))))
                                      (let ((_%tl141658141965%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141660141960%_)))
                                            (_%hd141659141963%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141660141960%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141659141963%_))
                                            (let ((_%e141663141968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141659141963%_))))
                                              (let ((_%tl141661141973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141663141968%_)))
                                                    (_%hd141662141971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141663141968%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141662141971%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141662141971%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141661141973%_))
                                                            (let ((_%e141666141976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141661141973%_))))
                      (let ((_%tl141664141981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141666141976%_)))
                            (_%hd141665141979%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141666141976%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141664141981%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141658141965%_))
                                (if (let ((__tmp145201
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141658141965%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145201 '1))
                                    (let ((_%__splice143911143912%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141658141965%_
                                              '1))))
                                      (let ((_%tl141669141986%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143911143912%_
                                                '1)))
                                            (_%target141667141984%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143911143912%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141669141986%_))
                                            (let ((_%e141678141989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141669141986%_))))
                                              (let ((_%tl141676141994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141678141989%_)))
                                                    (_%hd141677141992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141678141989%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141677141992%_))
                                                    (let ((_%e141681141997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141677141992%_))))
                                                      (let ((_%tl141679142002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141681141997%_)))
                    (_%hd141680142000%_
                     (let () (declare (not safe)) (##car _%e141681141997%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141680142000%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141680142000%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141679142002%_))
                            (let ((_%e141684142005%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141679142002%_))))
                              (let ((_%tl141682142010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141684142005%_)))
                                    (_%hd141683142008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141684142005%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141682142010%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141676141994%_))
                                        (letrec ((_%loop141670142013%_
                                                  (lambda (_%hd141668142016%_
                                                           _%xarg141674142018%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141668142016%_))
                                                        (let ((_%e141671142021%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141668142016%_))))
                  (let ((_%lp-tl141673142026%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141671142021%_)))
                        (_%lp-hd141672142024%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141671142021%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141672142024%_))
                        (let ((_%e141687142029%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141672142024%_))))
                          (let ((_%tl141685142034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141687142029%_)))
                                (_%hd141686142032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141687142029%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141686142032%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141686142032%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141685142034%_))
                                        (let ((_%e141690142037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141685142034%_))))
                                          (let ((_%tl141688142042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141690142037%_)))
                                                (_%hd141689142040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141690142037%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141688142042%_))
                                                (let ((__tmp145202
                                                       (cons _%hd141689142040%_
                                                             _%xarg141674142018%_)))
                                                  (declare (not safe))
                                                  (_%loop141670142013%_
                                                   _%lp-tl141673142026%_
                                                   __tmp145202))
                                                (_%__match144012144013%_
                                                 _%e141633141888%_
                                                 _%hd141632141891%_
                                                 _%tl141631141893%_
                                                 _%e141645141920%_
                                                 _%hd141644141923%_
                                                 _%tl141643141925%_
                                                 _%e141648141928%_
                                                 _%hd141647141931%_
                                                 _%tl141646141933%_
                                                 _%e141651141936%_
                                                 _%hd141650141939%_
                                                 _%tl141649141941%_
                                                 _%e141654141944%_
                                                 _%hd141653141947%_
                                                 _%tl141652141949%_
                                                 _%e141657141952%_
                                                 _%hd141656141955%_
                                                 _%tl141655141957%_
                                                 _%e141660141960%_
                                                 _%hd141659141963%_
                                                 _%tl141658141965%_
                                                 _%e141663141968%_
                                                 _%hd141662141971%_
                                                 _%tl141661141973%_
                                                 _%e141666141976%_
                                                 _%hd141665141979%_
                                                 _%tl141664141981%_))))
                                        (_%__match144012144013%_
                                         _%e141633141888%_
                                         _%hd141632141891%_
                                         _%tl141631141893%_
                                         _%e141645141920%_
                                         _%hd141644141923%_
                                         _%tl141643141925%_
                                         _%e141648141928%_
                                         _%hd141647141931%_
                                         _%tl141646141933%_
                                         _%e141651141936%_
                                         _%hd141650141939%_
                                         _%tl141649141941%_
                                         _%e141654141944%_
                                         _%hd141653141947%_
                                         _%tl141652141949%_
                                         _%e141657141952%_
                                         _%hd141656141955%_
                                         _%tl141655141957%_
                                         _%e141660141960%_
                                         _%hd141659141963%_
                                         _%tl141658141965%_
                                         _%e141663141968%_
                                         _%hd141662141971%_
                                         _%tl141661141973%_
                                         _%e141666141976%_
                                         _%hd141665141979%_
                                         _%tl141664141981%_))
                                    (_%__match144012144013%_
                                     _%e141633141888%_
                                     _%hd141632141891%_
                                     _%tl141631141893%_
                                     _%e141645141920%_
                                     _%hd141644141923%_
                                     _%tl141643141925%_
                                     _%e141648141928%_
                                     _%hd141647141931%_
                                     _%tl141646141933%_
                                     _%e141651141936%_
                                     _%hd141650141939%_
                                     _%tl141649141941%_
                                     _%e141654141944%_
                                     _%hd141653141947%_
                                     _%tl141652141949%_
                                     _%e141657141952%_
                                     _%hd141656141955%_
                                     _%tl141655141957%_
                                     _%e141660141960%_
                                     _%hd141659141963%_
                                     _%tl141658141965%_
                                     _%e141663141968%_
                                     _%hd141662141971%_
                                     _%tl141661141973%_
                                     _%e141666141976%_
                                     _%hd141665141979%_
                                     _%tl141664141981%_))
                                (_%__match144012144013%_
                                 _%e141633141888%_
                                 _%hd141632141891%_
                                 _%tl141631141893%_
                                 _%e141645141920%_
                                 _%hd141644141923%_
                                 _%tl141643141925%_
                                 _%e141648141928%_
                                 _%hd141647141931%_
                                 _%tl141646141933%_
                                 _%e141651141936%_
                                 _%hd141650141939%_
                                 _%tl141649141941%_
                                 _%e141654141944%_
                                 _%hd141653141947%_
                                 _%tl141652141949%_
                                 _%e141657141952%_
                                 _%hd141656141955%_
                                 _%tl141655141957%_
                                 _%e141660141960%_
                                 _%hd141659141963%_
                                 _%tl141658141965%_
                                 _%e141663141968%_
                                 _%hd141662141971%_
                                 _%tl141661141973%_
                                 _%e141666141976%_
                                 _%hd141665141979%_
                                 _%tl141664141981%_))))
                        (_%__match144012144013%_
                         _%e141633141888%_
                         _%hd141632141891%_
                         _%tl141631141893%_
                         _%e141645141920%_
                         _%hd141644141923%_
                         _%tl141643141925%_
                         _%e141648141928%_
                         _%hd141647141931%_
                         _%tl141646141933%_
                         _%e141651141936%_
                         _%hd141650141939%_
                         _%tl141649141941%_
                         _%e141654141944%_
                         _%hd141653141947%_
                         _%tl141652141949%_
                         _%e141657141952%_
                         _%hd141656141955%_
                         _%tl141655141957%_
                         _%e141660141960%_
                         _%hd141659141963%_
                         _%tl141658141965%_
                         _%e141663141968%_
                         _%hd141662141971%_
                         _%tl141661141973%_
                         _%e141666141976%_
                         _%hd141665141979%_
                         _%tl141664141981%_))))
                (let ((_%xarg141675142045%_ (reverse _%xarg141674142018%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141643141925%_))
                      (let ((_%L142048%_ _%hd141683142008%_)
                            (_%L142049%_ _%xarg141675142045%_)
                            (_%L142050%_ _%hd141665141979%_)
                            (_%L142051%_ _%hd141656141955%_)
                            (_%L142052%_ _%tl141636141898%_)
                            (_%L142053%_ _%arg141642141917%_))
                        (if (and (let ((__tmp145203
                                        (let ((__tmp145204
                                               (lambda (_%g142096142099%_
                                                        _%g142097142101%_)
                                                 (cons _%g142096142099%_
                                                       _%g142097142101%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145204
                                           '()
                                           _%L142053%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145203))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142052%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142051%_
                                    'apply))
                                 (let ((__tmp145207
                                        (length (let ((__tmp145208
                                                       (lambda (_%g142103142106%_
                                                                _%g142104142108%_)
                                                         (cons _%g142103142106%_
                                                               _%g142104142108%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145208
                                                   '()
                                                   _%L142053%_))))
                                       (__tmp145205
                                        (length (let ((__tmp145206
                                                       (lambda (_%g142110142113%_
                                                                _%g142111142115%_)
                                                         (cons _%g142110142113%_
                                                               _%g142111142115%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145206
                                                   '()
                                                   _%L142049%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145207 __tmp145205))
                                 (let ((__tmp145211
                                        (let ((__tmp145212
                                               (lambda (_%g142117142120%_
                                                        _%g142118142122%_)
                                                 (cons _%g142117142120%_
                                                       _%g142118142122%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145212
                                           '()
                                           _%L142053%_)))
                                       (__tmp145209
                                        (let ((__tmp145210
                                               (lambda (_%g142124142127%_
                                                        _%g142125142129%_)
                                                 (cons _%g142124142127%_
                                                       _%g142125142129%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145210
                                           '()
                                           _%L142049%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145211
                                    __tmp145209))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142052%_
                                    _%L142048%_))
                                 (let ((__tmp145213
                                        (let ((__tmp145217
                                               (lambda (_%g142131142133%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142131142133%_
                                                    _%L142050%_))))
                                              (__tmp145214
                                               (let ((__tmp145216
                                                      (lambda (_%g142135142138%_
                                                               _%g142136142140%_)
                                                        (cons _%g142135142138%_
                                                              _%g142136142140%_)))
                                                     (__tmp145215
                                                      (cons _%L142052%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145216
                                                  __tmp145215
                                                  _%L142053%_))))
                                          (declare (not safe))
                                          (__find __tmp145217 __tmp145214))))
                                   (declare (not safe))
                                   (not __tmp145213)))
                            (_%__kont143907143908%_
                             _%L142048%_
                             _%L142049%_
                             _%L142050%_
                             _%L142051%_
                             _%L142052%_
                             _%L142053%_)
                            (_%__match144012144013%_
                             _%e141633141888%_
                             _%hd141632141891%_
                             _%tl141631141893%_
                             _%e141645141920%_
                             _%hd141644141923%_
                             _%tl141643141925%_
                             _%e141648141928%_
                             _%hd141647141931%_
                             _%tl141646141933%_
                             _%e141651141936%_
                             _%hd141650141939%_
                             _%tl141649141941%_
                             _%e141654141944%_
                             _%hd141653141947%_
                             _%tl141652141949%_
                             _%e141657141952%_
                             _%hd141656141955%_
                             _%tl141655141957%_
                             _%e141660141960%_
                             _%hd141659141963%_
                             _%tl141658141965%_
                             _%e141663141968%_
                             _%hd141662141971%_
                             _%tl141661141973%_
                             _%e141666141976%_
                             _%hd141665141979%_
                             _%tl141664141981%_)))
                      (_%__match144012144013%_
                       _%e141633141888%_
                       _%hd141632141891%_
                       _%tl141631141893%_
                       _%e141645141920%_
                       _%hd141644141923%_
                       _%tl141643141925%_
                       _%e141648141928%_
                       _%hd141647141931%_
                       _%tl141646141933%_
                       _%e141651141936%_
                       _%hd141650141939%_
                       _%tl141649141941%_
                       _%e141654141944%_
                       _%hd141653141947%_
                       _%tl141652141949%_
                       _%e141657141952%_
                       _%hd141656141955%_
                       _%tl141655141957%_
                       _%e141660141960%_
                       _%hd141659141963%_
                       _%tl141658141965%_
                       _%e141663141968%_
                       _%hd141662141971%_
                       _%tl141661141973%_
                       _%e141666141976%_
                       _%hd141665141979%_
                       _%tl141664141981%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop141670142013%_
                                             _%target141667141984%_
                                             '())))
                                        (_%__match144012144013%_
                                         _%e141633141888%_
                                         _%hd141632141891%_
                                         _%tl141631141893%_
                                         _%e141645141920%_
                                         _%hd141644141923%_
                                         _%tl141643141925%_
                                         _%e141648141928%_
                                         _%hd141647141931%_
                                         _%tl141646141933%_
                                         _%e141651141936%_
                                         _%hd141650141939%_
                                         _%tl141649141941%_
                                         _%e141654141944%_
                                         _%hd141653141947%_
                                         _%tl141652141949%_
                                         _%e141657141952%_
                                         _%hd141656141955%_
                                         _%tl141655141957%_
                                         _%e141660141960%_
                                         _%hd141659141963%_
                                         _%tl141658141965%_
                                         _%e141663141968%_
                                         _%hd141662141971%_
                                         _%tl141661141973%_
                                         _%e141666141976%_
                                         _%hd141665141979%_
                                         _%tl141664141981%_))
                                    (_%__match144012144013%_
                                     _%e141633141888%_
                                     _%hd141632141891%_
                                     _%tl141631141893%_
                                     _%e141645141920%_
                                     _%hd141644141923%_
                                     _%tl141643141925%_
                                     _%e141648141928%_
                                     _%hd141647141931%_
                                     _%tl141646141933%_
                                     _%e141651141936%_
                                     _%hd141650141939%_
                                     _%tl141649141941%_
                                     _%e141654141944%_
                                     _%hd141653141947%_
                                     _%tl141652141949%_
                                     _%e141657141952%_
                                     _%hd141656141955%_
                                     _%tl141655141957%_
                                     _%e141660141960%_
                                     _%hd141659141963%_
                                     _%tl141658141965%_
                                     _%e141663141968%_
                                     _%hd141662141971%_
                                     _%tl141661141973%_
                                     _%e141666141976%_
                                     _%hd141665141979%_
                                     _%tl141664141981%_))))
                            (_%__match144012144013%_
                             _%e141633141888%_
                             _%hd141632141891%_
                             _%tl141631141893%_
                             _%e141645141920%_
                             _%hd141644141923%_
                             _%tl141643141925%_
                             _%e141648141928%_
                             _%hd141647141931%_
                             _%tl141646141933%_
                             _%e141651141936%_
                             _%hd141650141939%_
                             _%tl141649141941%_
                             _%e141654141944%_
                             _%hd141653141947%_
                             _%tl141652141949%_
                             _%e141657141952%_
                             _%hd141656141955%_
                             _%tl141655141957%_
                             _%e141660141960%_
                             _%hd141659141963%_
                             _%tl141658141965%_
                             _%e141663141968%_
                             _%hd141662141971%_
                             _%tl141661141973%_
                             _%e141666141976%_
                             _%hd141665141979%_
                             _%tl141664141981%_))
                        (_%__match144012144013%_
                         _%e141633141888%_
                         _%hd141632141891%_
                         _%tl141631141893%_
                         _%e141645141920%_
                         _%hd141644141923%_
                         _%tl141643141925%_
                         _%e141648141928%_
                         _%hd141647141931%_
                         _%tl141646141933%_
                         _%e141651141936%_
                         _%hd141650141939%_
                         _%tl141649141941%_
                         _%e141654141944%_
                         _%hd141653141947%_
                         _%tl141652141949%_
                         _%e141657141952%_
                         _%hd141656141955%_
                         _%tl141655141957%_
                         _%e141660141960%_
                         _%hd141659141963%_
                         _%tl141658141965%_
                         _%e141663141968%_
                         _%hd141662141971%_
                         _%tl141661141973%_
                         _%e141666141976%_
                         _%hd141665141979%_
                         _%tl141664141981%_))
                    (_%__match144012144013%_
                     _%e141633141888%_
                     _%hd141632141891%_
                     _%tl141631141893%_
                     _%e141645141920%_
                     _%hd141644141923%_
                     _%tl141643141925%_
                     _%e141648141928%_
                     _%hd141647141931%_
                     _%tl141646141933%_
                     _%e141651141936%_
                     _%hd141650141939%_
                     _%tl141649141941%_
                     _%e141654141944%_
                     _%hd141653141947%_
                     _%tl141652141949%_
                     _%e141657141952%_
                     _%hd141656141955%_
                     _%tl141655141957%_
                     _%e141660141960%_
                     _%hd141659141963%_
                     _%tl141658141965%_
                     _%e141663141968%_
                     _%hd141662141971%_
                     _%tl141661141973%_
                     _%e141666141976%_
                     _%hd141665141979%_
                     _%tl141664141981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144012144013%_
                                                     _%e141633141888%_
                                                     _%hd141632141891%_
                                                     _%tl141631141893%_
                                                     _%e141645141920%_
                                                     _%hd141644141923%_
                                                     _%tl141643141925%_
                                                     _%e141648141928%_
                                                     _%hd141647141931%_
                                                     _%tl141646141933%_
                                                     _%e141651141936%_
                                                     _%hd141650141939%_
                                                     _%tl141649141941%_
                                                     _%e141654141944%_
                                                     _%hd141653141947%_
                                                     _%tl141652141949%_
                                                     _%e141657141952%_
                                                     _%hd141656141955%_
                                                     _%tl141655141957%_
                                                     _%e141660141960%_
                                                     _%hd141659141963%_
                                                     _%tl141658141965%_
                                                     _%e141663141968%_
                                                     _%hd141662141971%_
                                                     _%tl141661141973%_
                                                     _%e141666141976%_
                                                     _%hd141665141979%_
                                                     _%tl141664141981%_))))
                                            (_%__match144012144013%_
                                             _%e141633141888%_
                                             _%hd141632141891%_
                                             _%tl141631141893%_
                                             _%e141645141920%_
                                             _%hd141644141923%_
                                             _%tl141643141925%_
                                             _%e141648141928%_
                                             _%hd141647141931%_
                                             _%tl141646141933%_
                                             _%e141651141936%_
                                             _%hd141650141939%_
                                             _%tl141649141941%_
                                             _%e141654141944%_
                                             _%hd141653141947%_
                                             _%tl141652141949%_
                                             _%e141657141952%_
                                             _%hd141656141955%_
                                             _%tl141655141957%_
                                             _%e141660141960%_
                                             _%hd141659141963%_
                                             _%tl141658141965%_
                                             _%e141663141968%_
                                             _%hd141662141971%_
                                             _%tl141661141973%_
                                             _%e141666141976%_
                                             _%hd141665141979%_
                                             _%tl141664141981%_))))
                                    (_%__match144012144013%_
                                     _%e141633141888%_
                                     _%hd141632141891%_
                                     _%tl141631141893%_
                                     _%e141645141920%_
                                     _%hd141644141923%_
                                     _%tl141643141925%_
                                     _%e141648141928%_
                                     _%hd141647141931%_
                                     _%tl141646141933%_
                                     _%e141651141936%_
                                     _%hd141650141939%_
                                     _%tl141649141941%_
                                     _%e141654141944%_
                                     _%hd141653141947%_
                                     _%tl141652141949%_
                                     _%e141657141952%_
                                     _%hd141656141955%_
                                     _%tl141655141957%_
                                     _%e141660141960%_
                                     _%hd141659141963%_
                                     _%tl141658141965%_
                                     _%e141663141968%_
                                     _%hd141662141971%_
                                     _%tl141661141973%_
                                     _%e141666141976%_
                                     _%hd141665141979%_
                                     _%tl141664141981%_))
                                (_%__match144012144013%_
                                 _%e141633141888%_
                                 _%hd141632141891%_
                                 _%tl141631141893%_
                                 _%e141645141920%_
                                 _%hd141644141923%_
                                 _%tl141643141925%_
                                 _%e141648141928%_
                                 _%hd141647141931%_
                                 _%tl141646141933%_
                                 _%e141651141936%_
                                 _%hd141650141939%_
                                 _%tl141649141941%_
                                 _%e141654141944%_
                                 _%hd141653141947%_
                                 _%tl141652141949%_
                                 _%e141657141952%_
                                 _%hd141656141955%_
                                 _%tl141655141957%_
                                 _%e141660141960%_
                                 _%hd141659141963%_
                                 _%tl141658141965%_
                                 _%e141663141968%_
                                 _%hd141662141971%_
                                 _%tl141661141973%_
                                 _%e141666141976%_
                                 _%hd141665141979%_
                                 _%tl141664141981%_))
                            (_%__kont143915143916%_))))
                    (_%__kont143915143916%_))
                (_%__kont143915143916%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143915143916%_))))
                                            (_%__kont143915143916%_))))
                                    (_%__kont143915143916%_))
                                (_%__kont143915143916%_))))
                        (_%__kont143915143916%_))
                    (_%__kont143915143916%_))
                (_%__kont143915143916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143915143916%_))))
                                        (_%__kont143915143916%_))
                                    (_%__kont143915143916%_))
                                (_%__kont143915143916%_))))
                        (_%__kont143915143916%_))))
                (_%__kont143915143916%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141637141901%_
                                       _%target141634141896%_
                                       '())))))
                               (_%__match143930143931%_
                                (lambda (_%e141585142148%_
                                         _%hd141584142151%_
                                         _%tl141583142153%_
                                         _%__splice143903143904%_
                                         _%target141586142156%_
                                         _%tl141588142158%_)
                                  (letrec ((_%loop141589142161%_
                                            (lambda (_%hd141587142164%_
                                                     _%arg141593142166%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141587142164%_))
                                                  (let ((_%e141590142169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141587142164%_))))
                                                    (let ((_%lp-tl141592142174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141590142169%_)))
                                                          (_%lp-hd141591142172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141590142169%_))))
                                                      (let ((__tmp145218
                                                             (cons _%lp-hd141591142172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141593142166%_)))
                (declare (not safe))
                (_%loop141589142161%_ _%lp-tl141592142174%_ __tmp145218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141594142177%_
                                                         (reverse _%arg141593142166%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141583142153%_))
                                                        (let ((_%e141597142180%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141583142153%_))))
                  (let ((_%tl141595142185%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141597142180%_)))
                        (_%hd141596142183%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141597142180%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141596142183%_))
                        (let ((_%e141600142188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141596142183%_))))
                          (let ((_%tl141598142193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141600142188%_)))
                                (_%hd141599142191%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141600142188%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141599142191%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141599142191%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141598142193%_))
                                        (let ((_%e141603142196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141598142193%_))))
                                          (let ((_%tl141601142201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141603142196%_)))
                                                (_%hd141602142199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141603142196%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141602142199%_))
                                                (let ((_%e141606142204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141602142199%_))))
                                                  (let ((_%tl141604142209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141606142204%_)))
                                                        (_%hd141605142207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141606142204%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141605142207%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141605142207%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141604142209%_))
                        (let ((_%e141609142212%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141604142209%_))))
                          (let ((_%tl141607142217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141609142212%_)))
                                (_%hd141608142215%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141609142212%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141607142217%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141601142201%_))
                                    (let ((_%__splice143905143906%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141601142201%_
                                              '0))))
                                      (let ((_%tl141612142222%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143905143906%_
                                                '1)))
                                            (_%target141610142220%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143905143906%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141612142222%_))
                                            (letrec ((_%loop141613142225%_
                                                      (lambda (_%hd141611142228%_
                                                               _%xarg141617142230%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141611142228%_))
                                                            (let ((_%e141614142233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141611142228%_))))
                      (let ((_%lp-tl141616142238%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141614142233%_)))
                            (_%lp-hd141615142236%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141614142233%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141615142236%_))
                            (let ((_%e141621142241%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141615142236%_))))
                              (let ((_%tl141619142246%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141621142241%_)))
                                    (_%hd141620142244%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141621142241%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141620142244%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141620142244%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141619142246%_))
                                            (let ((_%e141624142249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141619142246%_))))
                                              (let ((_%tl141622142254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141624142249%_)))
                                                    (_%hd141623142252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141624142249%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141622142254%_))
                                                    (let ((__tmp145219
                                                           (cons _%hd141623142252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141617142230%_)))
              (declare (not safe))
              (_%loop141613142225%_ _%lp-tl141616142238%_ __tmp145219))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143942143943%_
                                                     _%e141585142148%_
                                                     _%hd141584142151%_
                                                     _%tl141583142153%_
                                                     _%__splice143903143904%_
                                                     _%target141586142156%_
                                                     _%tl141588142158%_))))
                                            (_%__match143942143943%_
                                             _%e141585142148%_
                                             _%hd141584142151%_
                                             _%tl141583142153%_
                                             _%__splice143903143904%_
                                             _%target141586142156%_
                                             _%tl141588142158%_))
                                        (_%__match143942143943%_
                                         _%e141585142148%_
                                         _%hd141584142151%_
                                         _%tl141583142153%_
                                         _%__splice143903143904%_
                                         _%target141586142156%_
                                         _%tl141588142158%_))
                                    (_%__match143942143943%_
                                     _%e141585142148%_
                                     _%hd141584142151%_
                                     _%tl141583142153%_
                                     _%__splice143903143904%_
                                     _%target141586142156%_
                                     _%tl141588142158%_))))
                            (_%__match143942143943%_
                             _%e141585142148%_
                             _%hd141584142151%_
                             _%tl141583142153%_
                             _%__splice143903143904%_
                             _%target141586142156%_
                             _%tl141588142158%_))))
                    (let ((_%xarg141618142257%_
                           (reverse _%xarg141617142230%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141595142185%_))
                          (let ((_%L142260%_ _%xarg141618142257%_)
                                (_%L142261%_ _%hd141608142215%_)
                                (_%L142262%_ _%arg141594142177%_))
                            (if (and (let ((__tmp145220
                                            (let ((__tmp145221
                                                   (lambda (_%g142290142293%_
                                                            _%g142291142295%_)
                                                     (cons _%g142290142293%_
                                                           _%g142291142295%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145221
                                               '()
                                               _%L142262%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145220))
                                     (let ((__tmp145224
                                            (length (let ((__tmp145225
                                                           (lambda (_%g142297142300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142298142302%_)
                     (cons _%g142297142300%_ _%g142298142302%_))))
              (declare (not safe))
              (__foldr1 __tmp145225 '() _%L142262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145222
                                            (length (let ((__tmp145223
                                                           (lambda (_%g142304142307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142305142309%_)
                     (cons _%g142304142307%_ _%g142305142309%_))))
              (declare (not safe))
              (__foldr1 __tmp145223 '() _%L142260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145224 __tmp145222))
                                     (let ((__tmp145228
                                            (let ((__tmp145229
                                                   (lambda (_%g142311142314%_
                                                            _%g142312142316%_)
                                                     (cons _%g142311142314%_
                                                           _%g142312142316%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145229
                                               '()
                                               _%L142262%_)))
                                           (__tmp145226
                                            (let ((__tmp145227
                                                   (lambda (_%g142318142321%_
                                                            _%g142319142323%_)
                                                     (cons _%g142318142321%_
                                                           _%g142319142323%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145227
                                               '()
                                               _%L142260%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145228
                                        __tmp145226))
                                     (let ((__tmp145230
                                            (let ((__tmp145233
                                                   (lambda (_%g142325142327%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142325142327%_
                                                        _%L142261%_))))
                                                  (__tmp145231
                                                   (let ((__tmp145232
                                                          (lambda (_%g142329142332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142330142334%_)
                    (cons _%g142329142332%_ _%g142330142334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145232
                                                      '()
                                                      _%L142262%_))))
                                              (declare (not safe))
                                              (__find __tmp145233
                                                      __tmp145231))))
                                       (declare (not safe))
                                       (not __tmp145230)))
                                (_%__kont143901143902%_
                                 _%L142260%_
                                 _%L142261%_
                                 _%L142262%_)
                                (_%__match143942143943%_
                                 _%e141585142148%_
                                 _%hd141584142151%_
                                 _%tl141583142153%_
                                 _%__splice143903143904%_
                                 _%target141586142156%_
                                 _%tl141588142158%_)))
                          (_%__match143942143943%_
                           _%e141585142148%_
                           _%hd141584142151%_
                           _%tl141583142153%_
                           _%__splice143903143904%_
                           _%target141586142156%_
                           _%tl141588142158%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141613142225%_
                                                 _%target141610142220%_
                                                 '())))
                                            (_%__match143942143943%_
                                             _%e141585142148%_
                                             _%hd141584142151%_
                                             _%tl141583142153%_
                                             _%__splice143903143904%_
                                             _%target141586142156%_
                                             _%tl141588142158%_))))
                                    (_%__match143942143943%_
                                     _%e141585142148%_
                                     _%hd141584142151%_
                                     _%tl141583142153%_
                                     _%__splice143903143904%_
                                     _%target141586142156%_
                                     _%tl141588142158%_))
                                (_%__match143942143943%_
                                 _%e141585142148%_
                                 _%hd141584142151%_
                                 _%tl141583142153%_
                                 _%__splice143903143904%_
                                 _%target141586142156%_
                                 _%tl141588142158%_))))
                        (_%__match143942143943%_
                         _%e141585142148%_
                         _%hd141584142151%_
                         _%tl141583142153%_
                         _%__splice143903143904%_
                         _%target141586142156%_
                         _%tl141588142158%_))
                    (_%__match143942143943%_
                     _%e141585142148%_
                     _%hd141584142151%_
                     _%tl141583142153%_
                     _%__splice143903143904%_
                     _%target141586142156%_
                     _%tl141588142158%_))
                (_%__match143942143943%_
                 _%e141585142148%_
                 _%hd141584142151%_
                 _%tl141583142153%_
                 _%__splice143903143904%_
                 _%target141586142156%_
                 _%tl141588142158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143942143943%_
                                                 _%e141585142148%_
                                                 _%hd141584142151%_
                                                 _%tl141583142153%_
                                                 _%__splice143903143904%_
                                                 _%target141586142156%_
                                                 _%tl141588142158%_))))
                                        (_%__match143942143943%_
                                         _%e141585142148%_
                                         _%hd141584142151%_
                                         _%tl141583142153%_
                                         _%__splice143903143904%_
                                         _%target141586142156%_
                                         _%tl141588142158%_))
                                    (_%__match143942143943%_
                                     _%e141585142148%_
                                     _%hd141584142151%_
                                     _%tl141583142153%_
                                     _%__splice143903143904%_
                                     _%target141586142156%_
                                     _%tl141588142158%_))
                                (_%__match143942143943%_
                                 _%e141585142148%_
                                 _%hd141584142151%_
                                 _%tl141583142153%_
                                 _%__splice143903143904%_
                                 _%target141586142156%_
                                 _%tl141588142158%_))))
                        (_%__match143942143943%_
                         _%e141585142148%_
                         _%hd141584142151%_
                         _%tl141583142153%_
                         _%__splice143903143904%_
                         _%target141586142156%_
                         _%tl141588142158%_))))
                (_%__match143942143943%_
                 _%e141585142148%_
                 _%hd141584142151%_
                 _%tl141583142153%_
                 _%__splice143903143904%_
                 _%target141586142156%_
                 _%tl141588142158%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141589142161%_
                                       _%target141586142156%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143899143900%_))
                              (let ((_%e141585142148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143899143900%_))))
                                (let ((_%tl141583142153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141585142148%_)))
                                      (_%hd141584142151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141585142148%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141584142151%_))
                                      (let ((_%__splice143903143904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141584142151%_
                                                '0))))
                                        (let ((_%tl141588142158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143903143904%_
                                                  '1)))
                                              (_%target141586142156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143903143904%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141588142158%_))
                                              (_%__match143930143931%_
                                               _%e141585142148%_
                                               _%hd141584142151%_
                                               _%tl141583142153%_
                                               _%__splice143903143904%_
                                               _%target141586142156%_
                                               _%tl141588142158%_)
                                              (_%__match143942143943%_
                                               _%e141585142148%_
                                               _%hd141584142151%_
                                               _%tl141583142153%_
                                               _%__splice143903143904%_
                                               _%target141586142156%_
                                               _%tl141588142158%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141583142153%_))
                                          (let ((_%e141700141755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141583142153%_))))
                                            (let ((_%tl141698141760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141700141755%_)))
                                                  (_%hd141699141758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141700141755%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141699141758%_))
                                                  (let ((_%e141703141763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141699141758%_))))
                                                    (let ((_%tl141701141768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141703141763%_)))
                                                          (_%hd141702141766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141703141763%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141702141766%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141702141766%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141701141768%_))
                          (let ((_%e141706141771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141701141768%_))))
                            (let ((_%tl141704141776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141706141771%_)))
                                  (_%hd141705141774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141706141771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141705141774%_))
                                  (let ((_%e141709141779%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141705141774%_))))
                                    (let ((_%tl141707141784%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141709141779%_)))
                                          (_%hd141708141782%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141709141779%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141708141782%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141708141782%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141707141784%_))
                                                  (let ((_%e141712141787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141707141784%_))))
                                                    (let ((_%tl141710141792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141712141787%_)))
                                                          (_%hd141711141790%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141712141787%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141710141792%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141704141776%_))
                      (let ((_%e141715141795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141704141776%_))))
                        (let ((_%tl141713141800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141715141795%_)))
                              (_%hd141714141798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141715141795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141714141798%_))
                              (let ((_%e141718141803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141714141798%_))))
                                (let ((_%tl141716141808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141718141803%_)))
                                      (_%hd141717141806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141718141803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141717141806%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141717141806%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141716141808%_))
                                              (let ((_%e141721141811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141716141808%_))))
                                                (let ((_%tl141719141816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141721141811%_)))
                                                      (_%hd141720141814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141721141811%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141719141816%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141713141800%_))
                                                          (let ((_%e141724141819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141713141800%_))))
                    (let ((_%tl141722141824%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141724141819%_)))
                          (_%hd141723141822%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141724141819%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141723141822%_))
                          (let ((_%e141727141827%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141723141822%_))))
                            (let ((_%tl141725141832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141727141827%_)))
                                  (_%hd141726141830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141727141827%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141726141830%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141726141830%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141725141832%_))
                                          (let ((_%e141730141835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141725141832%_))))
                                            (let ((_%tl141728141840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141730141835%_)))
                                                  (_%hd141729141838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141730141835%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141728141840%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141722141824%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141698141760%_))
                                                          (_%__match144040144041%_
                                                           _%e141585142148%_
                                                           _%hd141584142151%_
                                                           _%tl141583142153%_
                                                           _%e141700141755%_
                                                           _%hd141699141758%_
                                                           _%tl141698141760%_
                                                           _%e141703141763%_
                                                           _%hd141702141766%_
                                                           _%tl141701141768%_
                                                           _%e141706141771%_
                                                           _%hd141705141774%_
                                                           _%tl141704141776%_
                                                           _%e141709141779%_
                                                           _%hd141708141782%_
                                                           _%tl141707141784%_
                                                           _%e141712141787%_
                                                           _%hd141711141790%_
                                                           _%tl141710141792%_
                                                           _%e141715141795%_
                                                           _%hd141714141798%_
                                                           _%tl141713141800%_
                                                           _%e141718141803%_
                                                           _%hd141717141806%_
                                                           _%tl141716141808%_
                                                           _%e141721141811%_
                                                           _%hd141720141814%_
                                                           _%tl141719141816%_
                                                           _%e141724141819%_
                                                           _%hd141723141822%_
                                                           _%tl141722141824%_
                                                           _%e141727141827%_
                                                           _%hd141726141830%_
                                                           _%tl141725141832%_
                                                           _%e141730141835%_
                                                           _%hd141729141838%_
                                                           _%tl141728141840%_)
                                                          (_%__kont143915143916%_))
                                                      (_%__kont143915143916%_))
                                                  (_%__kont143915143916%_))))
                                          (_%__kont143915143916%_))
                                      (_%__kont143915143916%_))
                                  (_%__kont143915143916%_))))
                          (_%__kont143915143916%_))))
                  (_%__kont143915143916%_))
              (_%__kont143915143916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143915143916%_))
                                          (_%__kont143915143916%_))
                                      (_%__kont143915143916%_))))
                              (_%__kont143915143916%_))))
                      (_%__kont143915143916%_))
                  (_%__kont143915143916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143915143916%_))
                                              (_%__kont143915143916%_))
                                          (_%__kont143915143916%_))))
                                  (_%__kont143915143916%_))))
                          (_%__kont143915143916%_))
                      (_%__kont143915143916%_))
                  (_%__kont143915143916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143915143916%_))))
                                          (_%__kont143915143916%_)))))
                              (_%__kont143915143916%_)))))))
                 (_%dispatch-case-e140883%_
                  (lambda (_%hd141034%_ _%body141035%_)
                    (let* ((_%form141037%_
                            (cons _%hd141034%_ (cons _%body141035%_ '())))
                           (_%__stx144043144044%_ _%form141037%_)
                           (_%g141041141165%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144043144044%_)))))
                      (let ((_%__kont144045144046%_
                             (lambda (_%L141536%_ _%L141537%_ _%L141538%_)
                               (let ((__tmp145234
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141537%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140879%_
                                  __tmp145234))))
                            (_%__kont144051144052%_
                             (lambda (_%L141384%_
                                      _%L141385%_
                                      _%L141386%_
                                      _%L141387%_)
                               (let ((__tmp145235
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141384%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140879%_
                                  __tmp145235))))
                            (_%__kont144055144056%_
                             (lambda (_%L141250%_ _%L141251%_ _%L141252%_)
                               (let ((__tmp145236
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141250%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140879%_
                                  __tmp145236)))))
                        (let* ((_%__match144152144153%_
                                (lambda (_%e141133141170%_
                                         _%hd141132141173%_
                                         _%tl141131141175%_
                                         _%e141136141178%_
                                         _%hd141135141181%_
                                         _%tl141134141183%_
                                         _%e141139141186%_
                                         _%hd141138141189%_
                                         _%tl141137141191%_
                                         _%e141142141194%_
                                         _%hd141141141197%_
                                         _%tl141140141199%_
                                         _%e141145141202%_
                                         _%hd141144141205%_
                                         _%tl141143141207%_
                                         _%e141148141210%_
                                         _%hd141147141213%_
                                         _%tl141146141215%_
                                         _%e141151141218%_
                                         _%hd141150141221%_
                                         _%tl141149141223%_
                                         _%e141154141226%_
                                         _%hd141153141229%_
                                         _%tl141152141231%_
                                         _%e141157141234%_
                                         _%hd141156141237%_
                                         _%tl141155141239%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141149141223%_))
                                      (let ((_%e141160141242%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141149141223%_))))
                                        (let ((_%tl141158141247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141160141242%_)))
                                              (_%hd141159141245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141160141242%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141158141247%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141134141183%_))
                                                  (_%__kont144055144056%_
                                                   _%hd141156141237%_
                                                   _%hd141147141213%_
                                                   _%hd141132141173%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141041141165%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141041141165%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141041141165%_)))))
                               (_%__match144082144083%_
                                (lambda (_%e141094141288%_
                                         _%hd141093141291%_
                                         _%tl141092141293%_
                                         _%__splice144053144054%_
                                         _%target141095141296%_
                                         _%tl141097141298%_)
                                  (letrec ((_%loop141098141301%_
                                            (lambda (_%hd141096141304%_
                                                     _%arg141102141306%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141096141304%_))
                                                  (let ((_%e141099141309%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141096141304%_))))
                                                    (let ((_%lp-tl141101141314%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141099141309%_)))
                                                          (_%lp-hd141100141312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141099141309%_))))
                                                      (let ((__tmp145237
                                                             (cons _%lp-hd141100141312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141102141306%_)))
                (declare (not safe))
                (_%loop141098141301%_ _%lp-tl141101141314%_ __tmp145237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141103141317%_
                                                         (reverse _%arg141102141306%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141092141293%_))
                                                        (let ((_%e141106141320%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141092141293%_))))
                  (let ((_%tl141104141325%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141106141320%_)))
                        (_%hd141105141323%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141106141320%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141105141323%_))
                        (let ((_%e141109141328%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141105141323%_))))
                          (let ((_%tl141107141333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141109141328%_)))
                                (_%hd141108141331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141109141328%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141108141331%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141108141331%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141107141333%_))
                                        (let ((_%e141112141336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141107141333%_))))
                                          (let ((_%tl141110141341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141112141336%_)))
                                                (_%hd141111141339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141112141336%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141111141339%_))
                                                (let ((_%e141115141344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141111141339%_))))
                                                  (let ((_%tl141113141349%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141115141344%_)))
                                                        (_%hd141114141347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141115141344%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141114141347%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141114141347%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141113141349%_))
                        (let ((_%e141118141352%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141113141349%_))))
                          (let ((_%tl141116141357%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141118141352%_)))
                                (_%hd141117141355%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141118141352%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141116141357%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141110141341%_))
                                    (let ((_%e141121141360%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141110141341%_))))
                                      (let ((_%tl141119141365%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141121141360%_)))
                                            (_%hd141120141363%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141121141360%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141120141363%_))
                                            (let ((_%e141124141368%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141120141363%_))))
                                              (let ((_%tl141122141373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141124141368%_)))
                                                    (_%hd141123141371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141124141368%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141123141371%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141123141371%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141122141373%_))
                                                            (let ((_%e141127141376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141122141373%_))))
                      (let ((_%tl141125141381%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141127141376%_)))
                            (_%hd141126141379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141127141376%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141125141381%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141104141325%_))
                                (_%__kont144051144052%_
                                 _%hd141126141379%_
                                 _%hd141117141355%_
                                 _%tl141097141298%_
                                 _%arg141103141317%_)
                                (_%__match144152144153%_
                                 _%e141094141288%_
                                 _%hd141093141291%_
                                 _%tl141092141293%_
                                 _%e141106141320%_
                                 _%hd141105141323%_
                                 _%tl141104141325%_
                                 _%e141109141328%_
                                 _%hd141108141331%_
                                 _%tl141107141333%_
                                 _%e141112141336%_
                                 _%hd141111141339%_
                                 _%tl141110141341%_
                                 _%e141115141344%_
                                 _%hd141114141347%_
                                 _%tl141113141349%_
                                 _%e141118141352%_
                                 _%hd141117141355%_
                                 _%tl141116141357%_
                                 _%e141121141360%_
                                 _%hd141120141363%_
                                 _%tl141119141365%_
                                 _%e141124141368%_
                                 _%hd141123141371%_
                                 _%tl141122141373%_
                                 _%e141127141376%_
                                 _%hd141126141379%_
                                 _%tl141125141381%_))
                            (let ()
                              (declare (not safe))
                              (_%g141041141165%_)))))
                    (let () (declare (not safe)) (_%g141041141165%_)))
                (let () (declare (not safe)) (_%g141041141165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141041141165%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141041141165%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141041141165%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141041141165%_)))))
                        (let () (declare (not safe)) (_%g141041141165%_)))
                    (let () (declare (not safe)) (_%g141041141165%_)))
                (let () (declare (not safe)) (_%g141041141165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141041141165%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141041141165%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141041141165%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141041141165%_)))))
                        (let () (declare (not safe)) (_%g141041141165%_)))))
                (let () (declare (not safe)) (_%g141041141165%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141098141301%_
                                       _%target141095141296%_
                                       '())))))
                               (_%__match144070144071%_
                                (lambda (_%e141048141424%_
                                         _%hd141047141427%_
                                         _%tl141046141429%_
                                         _%__splice144047144048%_
                                         _%target141049141432%_
                                         _%tl141051141434%_)
                                  (letrec ((_%loop141052141437%_
                                            (lambda (_%hd141050141440%_
                                                     _%arg141056141442%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141050141440%_))
                                                  (let ((_%e141053141445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141050141440%_))))
                                                    (let ((_%lp-tl141055141450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141053141445%_)))
                                                          (_%lp-hd141054141448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141053141445%_))))
                                                      (let ((__tmp145238
                                                             (cons _%lp-hd141054141448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141056141442%_)))
                (declare (not safe))
                (_%loop141052141437%_ _%lp-tl141055141450%_ __tmp145238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141057141453%_
                                                         (reverse _%arg141056141442%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141046141429%_))
                                                        (let ((_%e141060141456%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141046141429%_))))
                  (let ((_%tl141058141461%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141060141456%_)))
                        (_%hd141059141459%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141060141456%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141059141459%_))
                        (let ((_%e141063141464%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141059141459%_))))
                          (let ((_%tl141061141469%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141063141464%_)))
                                (_%hd141062141467%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141063141464%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141062141467%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141062141467%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141061141469%_))
                                        (let ((_%e141066141472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141061141469%_))))
                                          (let ((_%tl141064141477%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141066141472%_)))
                                                (_%hd141065141475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141066141472%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141065141475%_))
                                                (let ((_%e141069141480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141065141475%_))))
                                                  (let ((_%tl141067141485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141069141480%_)))
                                                        (_%hd141068141483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141069141480%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141068141483%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141068141483%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141067141485%_))
                        (let ((_%e141072141488%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141067141485%_))))
                          (let ((_%tl141070141493%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141072141488%_)))
                                (_%hd141071141491%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141072141488%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141070141493%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141064141477%_))
                                    (let ((_%__splice144049144050%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141064141477%_
                                              '0))))
                                      (let ((_%tl141075141498%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144049144050%_
                                                '1)))
                                            (_%target141073141496%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144049144050%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141075141498%_))
                                            (letrec ((_%loop141076141501%_
                                                      (lambda (_%hd141074141504%_
                                                               _%xarg141080141506%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141074141504%_))
                                                            (let ((_%e141077141509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141074141504%_))))
                      (let ((_%lp-tl141079141514%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141077141509%_)))
                            (_%lp-hd141078141512%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141077141509%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141078141512%_))
                            (let ((_%e141084141517%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141078141512%_))))
                              (let ((_%tl141082141522%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141084141517%_)))
                                    (_%hd141083141520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141084141517%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141083141520%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141083141520%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141082141522%_))
                                            (let ((_%e141087141525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141082141522%_))))
                                              (let ((_%tl141085141530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141087141525%_)))
                                                    (_%hd141086141528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141087141525%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141085141530%_))
                                                    (let ((__tmp145239
                                                           (cons _%hd141086141528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141080141506%_)))
              (declare (not safe))
              (_%loop141076141501%_ _%lp-tl141079141514%_ __tmp145239))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144082144083%_
                                                     _%e141048141424%_
                                                     _%hd141047141427%_
                                                     _%tl141046141429%_
                                                     _%__splice144047144048%_
                                                     _%target141049141432%_
                                                     _%tl141051141434%_))))
                                            (_%__match144082144083%_
                                             _%e141048141424%_
                                             _%hd141047141427%_
                                             _%tl141046141429%_
                                             _%__splice144047144048%_
                                             _%target141049141432%_
                                             _%tl141051141434%_))
                                        (_%__match144082144083%_
                                         _%e141048141424%_
                                         _%hd141047141427%_
                                         _%tl141046141429%_
                                         _%__splice144047144048%_
                                         _%target141049141432%_
                                         _%tl141051141434%_))
                                    (_%__match144082144083%_
                                     _%e141048141424%_
                                     _%hd141047141427%_
                                     _%tl141046141429%_
                                     _%__splice144047144048%_
                                     _%target141049141432%_
                                     _%tl141051141434%_))))
                            (_%__match144082144083%_
                             _%e141048141424%_
                             _%hd141047141427%_
                             _%tl141046141429%_
                             _%__splice144047144048%_
                             _%target141049141432%_
                             _%tl141051141434%_))))
                    (let ((_%xarg141081141533%_
                           (reverse _%xarg141080141506%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141058141461%_))
                          (_%__kont144045144046%_
                           _%xarg141081141533%_
                           _%hd141071141491%_
                           _%arg141057141453%_)
                          (_%__match144082144083%_
                           _%e141048141424%_
                           _%hd141047141427%_
                           _%tl141046141429%_
                           _%__splice144047144048%_
                           _%target141049141432%_
                           _%tl141051141434%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141076141501%_
                                                 _%target141073141496%_
                                                 '())))
                                            (_%__match144082144083%_
                                             _%e141048141424%_
                                             _%hd141047141427%_
                                             _%tl141046141429%_
                                             _%__splice144047144048%_
                                             _%target141049141432%_
                                             _%tl141051141434%_))))
                                    (_%__match144082144083%_
                                     _%e141048141424%_
                                     _%hd141047141427%_
                                     _%tl141046141429%_
                                     _%__splice144047144048%_
                                     _%target141049141432%_
                                     _%tl141051141434%_))
                                (_%__match144082144083%_
                                 _%e141048141424%_
                                 _%hd141047141427%_
                                 _%tl141046141429%_
                                 _%__splice144047144048%_
                                 _%target141049141432%_
                                 _%tl141051141434%_))))
                        (_%__match144082144083%_
                         _%e141048141424%_
                         _%hd141047141427%_
                         _%tl141046141429%_
                         _%__splice144047144048%_
                         _%target141049141432%_
                         _%tl141051141434%_))
                    (_%__match144082144083%_
                     _%e141048141424%_
                     _%hd141047141427%_
                     _%tl141046141429%_
                     _%__splice144047144048%_
                     _%target141049141432%_
                     _%tl141051141434%_))
                (_%__match144082144083%_
                 _%e141048141424%_
                 _%hd141047141427%_
                 _%tl141046141429%_
                 _%__splice144047144048%_
                 _%target141049141432%_
                 _%tl141051141434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144082144083%_
                                                 _%e141048141424%_
                                                 _%hd141047141427%_
                                                 _%tl141046141429%_
                                                 _%__splice144047144048%_
                                                 _%target141049141432%_
                                                 _%tl141051141434%_))))
                                        (_%__match144082144083%_
                                         _%e141048141424%_
                                         _%hd141047141427%_
                                         _%tl141046141429%_
                                         _%__splice144047144048%_
                                         _%target141049141432%_
                                         _%tl141051141434%_))
                                    (_%__match144082144083%_
                                     _%e141048141424%_
                                     _%hd141047141427%_
                                     _%tl141046141429%_
                                     _%__splice144047144048%_
                                     _%target141049141432%_
                                     _%tl141051141434%_))
                                (_%__match144082144083%_
                                 _%e141048141424%_
                                 _%hd141047141427%_
                                 _%tl141046141429%_
                                 _%__splice144047144048%_
                                 _%target141049141432%_
                                 _%tl141051141434%_))))
                        (_%__match144082144083%_
                         _%e141048141424%_
                         _%hd141047141427%_
                         _%tl141046141429%_
                         _%__splice144047144048%_
                         _%target141049141432%_
                         _%tl141051141434%_))))
                (_%__match144082144083%_
                 _%e141048141424%_
                 _%hd141047141427%_
                 _%tl141046141429%_
                 _%__splice144047144048%_
                 _%target141049141432%_
                 _%tl141051141434%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141052141437%_
                                       _%target141049141432%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144043144044%_))
                              (let ((_%e141048141424%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144043144044%_))))
                                (let ((_%tl141046141429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141048141424%_)))
                                      (_%hd141047141427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141048141424%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141047141427%_))
                                      (let ((_%__splice144047144048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141047141427%_
                                                '0))))
                                        (let ((_%tl141051141434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144047144048%_
                                                  '1)))
                                              (_%target141049141432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144047144048%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141051141434%_))
                                              (_%__match144070144071%_
                                               _%e141048141424%_
                                               _%hd141047141427%_
                                               _%tl141046141429%_
                                               _%__splice144047144048%_
                                               _%target141049141432%_
                                               _%tl141051141434%_)
                                              (_%__match144082144083%_
                                               _%e141048141424%_
                                               _%hd141047141427%_
                                               _%tl141046141429%_
                                               _%__splice144047144048%_
                                               _%target141049141432%_
                                               _%tl141051141434%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141046141429%_))
                                          (let ((_%e141136141178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141046141429%_))))
                                            (let ((_%tl141134141183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141136141178%_)))
                                                  (_%hd141135141181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141136141178%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141135141181%_))
                                                  (let ((_%e141139141186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141135141181%_))))
                                                    (let ((_%tl141137141191%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141139141186%_)))
                                                          (_%hd141138141189%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141139141186%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141138141189%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141138141189%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141137141191%_))
                          (let ((_%e141142141194%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141137141191%_))))
                            (let ((_%tl141140141199%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141142141194%_)))
                                  (_%hd141141141197%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141142141194%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141141141197%_))
                                  (let ((_%e141145141202%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141141141197%_))))
                                    (let ((_%tl141143141207%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141145141202%_)))
                                          (_%hd141144141205%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141145141202%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141144141205%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141144141205%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141143141207%_))
                                                  (let ((_%e141148141210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141143141207%_))))
                                                    (let ((_%tl141146141215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141148141210%_)))
                                                          (_%hd141147141213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141148141210%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141146141215%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141140141199%_))
                      (let ((_%e141151141218%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141140141199%_))))
                        (let ((_%tl141149141223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141151141218%_)))
                              (_%hd141150141221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141151141218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141150141221%_))
                              (let ((_%e141154141226%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141150141221%_))))
                                (let ((_%tl141152141231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141154141226%_)))
                                      (_%hd141153141229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141154141226%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141153141229%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141153141229%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141152141231%_))
                                              (let ((_%e141157141234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141152141231%_))))
                                                (let ((_%tl141155141239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141157141234%_)))
                                                      (_%hd141156141237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141157141234%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141155141239%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141149141223%_))
                                                          (let ((_%e141160141242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141149141223%_))))
                    (let ((_%tl141158141247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141160141242%_)))
                          (_%hd141159141245%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141160141242%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141158141247%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141134141183%_))
                              (_%__kont144055144056%_
                               _%hd141156141237%_
                               _%hd141147141213%_
                               _%hd141047141427%_)
                              (let ()
                                (declare (not safe))
                                (_%g141041141165%_)))
                          (let () (declare (not safe)) (_%g141041141165%_)))))
                  (let () (declare (not safe)) (_%g141041141165%_)))
              (let () (declare (not safe)) (_%g141041141165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141041141165%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141041141165%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141041141165%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141041141165%_)))))
                      (let () (declare (not safe)) (_%g141041141165%_)))
                  (let () (declare (not safe)) (_%g141041141165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141041141165%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141041141165%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141041141165%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141041141165%_)))))
                          (let () (declare (not safe)) (_%g141041141165%_)))
                      (let () (declare (not safe)) (_%g141041141165%_)))
                  (let () (declare (not safe)) (_%g141041141165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141041141165%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141041141165%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141041141165%_))))))))
                 (_%generate1140884%_
                  (lambda (_%args141019%_
                           _%arglen141020%_
                           _%hd141021%_
                           _%body141022%_)
                    (let* ((_%len141024%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141021%_)))
                           (_%condition141029%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141021%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141020%_
                                                  (cons _%len141024%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141020%_ (cons _%len141024%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141024%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141020%_
                                                      (cons _%len141024%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141020%_
                                      (cons _%len141024%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141031%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?140882%_
                                   _%hd141021%_
                                   _%body141022%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e140883%_
                                   _%hd141021%_
                                   _%body141022%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self140879%_
                                   _%hd141021%_
                                   _%body141022%_)))))
                      (cons _%condition141029%_
                            (cons (cons 'apply
                                        (cons _%dispatch141031%_
                                              (cons _%args141019%_ '())))
                                  '()))))))
          (let* ((_%g140886140914%_
                  (lambda (_%g140887140911%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140887140911%_))))
                 (_%g140885141016%_
                  (lambda (_%g140887140917%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140887140917%_))
                        (let ((_%e140892140919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140887140917%_))))
                          (let ((_%hd140891140922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140892140919%_)))
                                (_%tl140890140924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140892140919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140890140924%_))
                                (let ((_g145240_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140890140924%_
                                          '0))))
                                  (begin
                                    (let ((_g145241_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145240_)
                                                 (##vector-length _g145240_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145241_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145241_)))
                                    (let ((_%target140893140927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145240_ 0)))
                                          (_%tl140895140929%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145240_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140895140929%_))
                                          (letrec ((_%loop140896140932%_
                                                    (lambda (_%hd140894140935%_
                                                             _%body140900140937%_
                                                             _%hd140901140939%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140894140935%_))
                                                          (let ((_%e140897140942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140894140935%_))))
                    (let ((_%lp-hd140898140945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140897140942%_)))
                          (_%lp-tl140899140947%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140897140942%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140898140945%_))
                          (let ((_%e140906140950%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140898140945%_))))
                            (let ((_%hd140905140953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140906140950%_)))
                                  (_%tl140904140955%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140906140950%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140904140955%_))
                                  (let ((_%e140909140958%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140904140955%_))))
                                    (let ((_%hd140908140961%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140909140958%_)))
                                          (_%tl140907140963%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140909140958%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140907140963%_))
                                          (let ((__tmp145243
                                                 (cons _%hd140908140961%_
                                                       _%body140900140937%_))
                                                (__tmp145242
                                                 (cons _%hd140905140953%_
                                                       _%hd140901140939%_)))
                                            (declare (not safe))
                                            (_%loop140896140932%_
                                             _%lp-tl140899140947%_
                                             __tmp145243
                                             __tmp145242))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140886140914%_
                                             _%g140887140917%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140886140914%_ _%g140887140917%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140886140914%_ _%g140887140917%_)))))
                  (let ((_%body140902140966%_ (reverse _%body140900140937%_))
                        (_%hd140903140968%_ (reverse _%hd140901140939%_)))
                    ((lambda (_%L140971%_ _%L140972%_)
                       (let ((_%args140991%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140992%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140993%_
                              (let ((_%$e140988%_
                                     (let ((__tmp145244
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145244 _%stx140880%_))))
                                (if _%$e140988%_
                                    _%$e140988%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140991%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args140991%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140991%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145248
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140993%_
                                                                (cons _%args140991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145245
                                  (map (lambda (_%g140994140997%_
                                                _%g140995140999%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1140884%_
                                            _%args140991%_
                                            _%arglen140992%_
                                            _%g140994140997%_
                                            _%g140995140999%_)))
                                       (let ((__tmp145246
                                              (lambda (_%g141001141004%_
                                                       _%g141002141006%_)
                                                (cons _%g141001141004%_
                                                      _%g141002141006%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145246
                                          '()
                                          _%L140972%_))
                                       (let ((__tmp145247
                                              (lambda (_%g141008141011%_
                                                       _%g141009141013%_)
                                                (cons _%g141008141011%_
                                                      _%g141009141013%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145247
                                          '()
                                          _%L140971%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145248 __tmp145245)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140902140966%_
                     _%hd140903140968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop140896140932%_
                                               _%target140893140927%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140886140914%_
                                             _%g140887140917%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140886140914%_ _%g140887140917%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140886140914%_ _%g140887140917%_))))))
            (declare (not safe))
            (_%g140885141016%_ _%stx140880%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140109%_ _%stx140110%_ _%compiled-body?140111%_)
        (letrec ((_%generate-simple140113%_
                  (lambda (_%hd140864%_ _%body140865%_)
                    (let ((__tmp145249
                           (let ((__tmp145250
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140109%_
                                     'let
                                     _%hd140864%_
                                     _%body140865%_
                                     _%compiled-body?140111%_))))
                             (declare (not safe))
                             (_%coalesce-let140115%_ __tmp145250))))
                      (declare (not safe))
                      (_%coalesce-boolean140114%_ __tmp145249))))
                 (_%coalesce-boolean140114%_
                  (lambda (_%code140725%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140726140752%_ _%code140725%_)
                               (_%else140728140760%_
                                (lambda () _%code140725%_))
                               (_%K140730140797%_
                                (lambda (_%expr2140763%_
                                         _%expr1140764%_
                                         _%id140765%_)
                                  (let* ((_%expr2140766140774%_
                                          _%expr2140763%_)
                                         (_%else140768140782%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140764%_
                                                        (cons _%expr2140763%_
                                                              '())))))
                                         (_%K140770140787%_
                                          (lambda (_%exprs140785%_)
                                            (cons 'or
                                                  (cons _%expr1140764%_
                                                        _%exprs140785%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140766140774%_))
                                        (let ((_%hd140771140790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140766140774%_)))
                                              (_%tl140772140792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140766140774%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140771140790%_ 'or))
                                              (let ((_%exprs140795%_
                                                     _%tl140772140792%_))
                                                (declare (not safe))
                                                (_%K140770140787%_
                                                 _%exprs140795%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140768140782%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140768140782%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140726140752%_))
                              (let ((_%hd140731140800%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140726140752%_)))
                                    (_%tl140732140802%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140726140752%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140731140800%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140732140802%_))
                                        (let ((_%hd140733140805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140732140802%_)))
                                              (_%tl140734140807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140732140802%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140733140805%_))
                                              (let ((_%hd140745140810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140733140805%_)))
                                                    (_%tl140746140812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140733140805%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140745140810%_))
                                                    (let ((_%hd140747140815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140745140810%_)))
                                                          (_%tl140748140817%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140745140810%_))))
                                                      (let ((_%id140820%_
                                                             _%hd140747140815%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140748140817%_))
                                                            (let ((_%hd140749140822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140748140817%_)))
                          (_%tl140750140824%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140748140817%_))))
                      (let ((_%expr1140827%_ _%hd140749140822%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140750140824%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140746140812%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140734140807%_))
                                    (let ((_%hd140735140829%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140734140807%_)))
                                          (_%tl140736140831%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140734140807%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140735140829%_))
                                          (let ((_%hd140737140834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140735140829%_)))
                                                (_%tl140738140836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140735140829%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140737140834%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140738140836%_))
                                                    (let ((_%hd140739140839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140738140836%_)))
                                                          (_%tl140740140841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140738140836%_))))
                                                      (if ((lambda (_%g140843140845%_)
                                                             (eq? _%g140843140845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140820%_))
                   _%hd140739140839%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140740140841%_))
                      (let ((_%hd140741140848%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140740140841%_)))
                            (_%tl140742140850%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140740140841%_))))
                        (if ((lambda (_%g140852140854%_)
                               (eq? _%g140852140854%_ _%id140820%_))
                             _%hd140741140848%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140742140850%_))
                                (let ((_%hd140743140857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140742140850%_)))
                                      (_%tl140744140859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140742140850%_))))
                                  (let ((_%expr2140862%_ _%hd140743140857%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140744140859%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140736140831%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140730140797%_
                                               _%expr2140862%_
                                               _%expr1140827%_
                                               _%id140820%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140728140760%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140728140760%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140728140760%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140728140760%_))))
                      (let () (declare (not safe)) (_%else140728140760%_)))
                  (let () (declare (not safe)) (_%else140728140760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140728140760%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140728140760%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140728140760%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140728140760%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else140728140760%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140728140760%_)))))
                    (let () (declare (not safe)) (_%else140728140760%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140728140760%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140728140760%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140728140760%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140728140760%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140728140760%_))))
                        _%code140725%_)))
                 (_%coalesce-let140115%_
                  (lambda (_%code140417%_)
                    (let* ((_%code140418140492%_ _%code140417%_)
                           (_%else140423140500%_ (lambda () _%code140417%_)))
                      (let ((_%K140482140700%_
                             (lambda (_%body140698%_)
                               (cons 'let _%body140698%_)))
                            (_%K140465140646%_
                             (lambda (_%body140642%_
                                      _%expr140643%_
                                      _%id140644%_)
                               (cons 'let
                                     (cons (cons (cons _%id140644%_
                                                       (cons _%expr140643%_
                                                             '()))
                                                 '())
                                           _%body140642%_))))
                            (_%K140442140570%_
                             (lambda (_%body140564%_
                                      _%expr2140565%_
                                      _%id2140566%_
                                      _%expr1140567%_
                                      _%id1140568%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140568%_
                                                       (cons _%expr1140567%_
                                                             '()))
                                                 (cons (cons _%id2140566%_
                                                             (cons _%expr2140565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140564%_))))
                            (_%K140425140509%_
                             (lambda (_%body140504%_
                                      _%bind140505%_
                                      _%expr1140506%_
                                      _%id1140507%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140507%_
                                                       (cons _%expr1140506%_
                                                             '()))
                                                 _%bind140505%_)
                                           _%body140504%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140418140492%_))
                            (let ((_%tl140484140705%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140418140492%_)))
                                  (_%hd140483140703%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140418140492%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140483140703%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140484140705%_))
                                      (let ((_%tl140486140710%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140484140705%_)))
                                            (_%hd140485140708%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140484140705%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140485140708%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl140486140710%_))
                                                (let ((_%tl140488140715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl140486140710%_)))
                                                      (_%hd140487140713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl140486140710%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140487140713%_))
                                                      (let ((_%tl140490140720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140487140713%_)))
                    (_%hd140489140718%_
                     (let () (declare (not safe)) (##car _%hd140487140713%_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _%hd140489140718%_ 'let))
                    (if (let ()
                          (declare (not safe))
                          (##null? _%tl140488140715%_))
                        (let ((_%body140723%_ _%tl140490140720%_))
                          (declare (not safe))
                          (_%K140482140700%_ _%body140723%_))
                        (let () (declare (not safe)) (_%else140423140500%_)))
                    (let () (declare (not safe)) (_%else140423140500%_))))
              (let () (declare (not safe)) (_%else140423140500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140423140500%_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140485140708%_))
                                                (let ((_%tl140477140661%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140485140708%_)))
                                                      (_%hd140476140659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140485140708%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140476140659%_))
                                                      (let ((_%tl140479140666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140476140659%_)))
                    (_%hd140478140664%_
                     (let () (declare (not safe)) (##car _%hd140476140659%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140479140666%_))
                    (let ((_%tl140481140673%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140479140666%_)))
                          (_%hd140480140671%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140479140666%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140481140673%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140477140661%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl140486140710%_))
                                  (let ((_%tl140471140680%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl140486140710%_)))
                                        (_%hd140470140678%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl140486140710%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140470140678%_))
                                        (let ((_%tl140473140685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140470140678%_)))
                                              (_%hd140472140683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140470140678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140472140683%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140473140685%_))
                                                  (let ((_%tl140475140690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140473140685%_)))
                                                        (_%hd140474140688%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140473140685%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140474140688%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140471140680%_))
                                                            (let ((_%id140669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140478140664%_)
                          (_%expr140676%_ _%hd140480140671%_)
                          (_%body140693%_ _%tl140475140690%_))
                      (let ()
                        (declare (not safe))
                        (_%K140465140646%_
                         _%body140693%_
                         _%expr140676%_
                         _%id140669%_)))
                    (let () (declare (not safe)) (_%else140423140500%_)))
                (if (let () (declare (not safe)) (##pair? _%hd140474140688%_))
                    (let ((_%tl140454140619%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140474140688%_)))
                          (_%hd140453140617%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140474140688%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140453140617%_))
                          (let ((_%tl140456140624%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140453140617%_)))
                                (_%hd140455140622%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140453140617%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140456140624%_))
                                (let ((_%tl140458140631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140456140624%_)))
                                      (_%hd140457140629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140456140624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140458140631%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140454140619%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140471140680%_))
                                              (let ((_%id1140593%_
                                                     _%hd140478140664%_)
                                                    (_%expr1140600%_
                                                     _%hd140480140671%_)
                                                    (_%id2140627%_
                                                     _%hd140455140622%_)
                                                    (_%expr2140634%_
                                                     _%hd140457140629%_)
                                                    (_%body140636%_
                                                     _%tl140475140690%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%K140442140570%_
                                                   _%body140636%_
                                                   _%expr2140634%_
                                                   _%id2140627%_
                                                   _%expr1140600%_
                                                   _%id1140593%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140423140500%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140423140500%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140423140500%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140423140500%_))))
                          (let ()
                            (declare (not safe))
                            (_%else140423140500%_))))
                    (let () (declare (not safe)) (_%else140423140500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140423140500%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140472140683%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140473140685%_))
                                                      (let ((_%tl140435140553%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140473140685%_)))
                    (_%hd140434140551%_
                     (let () (declare (not safe)) (##car _%tl140473140685%_))))
                (if (let () (declare (not safe)) (##null? _%tl140471140680%_))
                    (let ((_%id1140532%_ _%hd140478140664%_)
                          (_%expr1140539%_ _%hd140480140671%_)
                          (_%bind140556%_ _%hd140434140551%_)
                          (_%body140558%_ _%tl140435140553%_))
                      (let ()
                        (declare (not safe))
                        (_%K140425140509%_
                         _%body140558%_
                         _%bind140556%_
                         _%expr1140539%_
                         _%id1140532%_)))
                    (let () (declare (not safe)) (_%else140423140500%_))))
              (let () (declare (not safe)) (_%else140423140500%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140423140500%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140423140500%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140423140500%_)))
                              (let ()
                                (declare (not safe))
                                (_%else140423140500%_)))
                          (let ()
                            (declare (not safe))
                            (_%else140423140500%_))))
                    (let () (declare (not safe)) (_%else140423140500%_))))
              (let () (declare (not safe)) (_%else140423140500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140423140500%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140423140500%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140423140500%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140423140500%_)))))))
                 (_%generate-values140116%_
                  (lambda (_%hd140230%_ _%body140231%_)
                    (let _%lp140233%_ ((_%rest140235%_ _%hd140230%_)
                                       (_%bind140236%_ '())
                                       (_%check140237%_ '())
                                       (_%post140238%_ '()))
                      (let* ((_%__stx144378144379%_ _%rest140235%_)
                             (_%g140241140252%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144378144379%_)))))
                        (let ((_%__kont144380144381%_
                               (lambda (_%L140279%_ _%L140280%_)
                                 (let* ((_%__stx144334144335%_ _%L140280%_)
                                        (_%g140295140320%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144334144335%_)))))
                                   (let ((_%__kont144336144337%_
                                          (lambda (_%L140393%_ _%L140394%_)
                                            (let ((_%eid140408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140394%_)))
                                                  (_%expr140409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140109%_
                                                      _%L140393%_))))
                                              (let ((__tmp145251
                                                     (cons (cons _%eid140408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140409%_ '()))
                   _%bind140236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140233%_
                                                 _%L140279%_
                                                 __tmp145251
                                                 _%check140237%_
                                                 _%post140238%_)))))
                                         (_%__kont144338144339%_
                                          (lambda (_%L140341%_ _%L140342%_)
                                            (let* ((_%vals140355%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140357%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140355%_
                                                       _%L140342%_
                                                       _%L140341%_)))
                                                   (_%refs140359%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140355%_
                                                       _%L140342%_)))
                                                   (_%expr140361%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140109%_
                                                       _%L140341%_))))
                                              (let ((__tmp145254
                                                     (cons (cons _%vals140355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140361%_ '()))
                   _%bind140236%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145253
                                                     (cons _%check-values140357%_
                                                           _%check140237%_))
                                                    (__tmp145252
                                                     (cons _%refs140359%_
                                                           _%post140238%_)))
                                                (declare (not safe))
                                                (_%lp140233%_
                                                 _%L140279%_
                                                 __tmp145254
                                                 __tmp145253
                                                 __tmp145252))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144334144335%_))
                                         (let ((_%e140301140369%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144334144335%_))))
                                           (let ((_%tl140299140374%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140301140369%_)))
                                                 (_%hd140300140372%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140301140369%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140300140372%_))
                                                 (let ((_%e140304140377%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140300140372%_))))
                                                   (let ((_%tl140302140382%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140304140377%_)))
                                                         (_%hd140303140380%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140304140377%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140302140382%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140299140374%_))
                     (let ((_%e140307140385%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140299140374%_))))
                       (let ((_%tl140305140390%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140307140385%_)))
                             (_%hd140306140388%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140307140385%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140305140390%_))
                             (_%__kont144336144337%_
                              _%hd140306140388%_
                              _%hd140303140380%_)
                             (let ()
                               (declare (not safe))
                               (_%g140295140320%_)))))
                     (let () (declare (not safe)) (_%g140295140320%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140299140374%_))
                     (let ((_%e140315140333%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140299140374%_))))
                       (let ((_%tl140313140338%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140315140333%_)))
                             (_%hd140314140336%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140315140333%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140313140338%_))
                             (_%__kont144338144339%_
                              _%hd140314140336%_
                              _%hd140300140372%_)
                             (let ()
                               (declare (not safe))
                               (_%g140295140320%_)))))
                     (let () (declare (not safe)) (_%g140295140320%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140299140374%_))
                                                     (let ((_%e140315140333%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140299140374%_))))
                                                       (let ((_%tl140313140338%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140315140333%_)))
                     (_%hd140314140336%_
                      (let () (declare (not safe)) (##car _%e140315140333%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140313140338%_))
                     (_%__kont144338144339%_
                      _%hd140314140336%_
                      _%hd140300140372%_)
                     (let () (declare (not safe)) (_%g140295140320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140295140320%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140295140320%_)))))))
                              (_%__kont144382144383%_
                               (lambda ()
                                 (let* ((_%body140259%_
                                         (if _%compiled-body?140111%_
                                             _%body140231%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140109%_
                                                _%body140231%_))))
                                        (_%body140261%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140117%_
                                            _%post140238%_
                                            _%body140259%_)))
                                        (_%body140263%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140118%_
                                            _%check140237%_
                                            _%body140261%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140236%_)
                                               (cons _%body140263%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144378144379%_))
                              (let ((_%e140247140271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144378144379%_))))
                                (let ((_%tl140245140276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140247140271%_)))
                                      (_%hd140246140274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140247140271%_))))
                                  (_%__kont144380144381%_
                                   _%tl140245140276%_
                                   _%hd140246140274%_)))
                              (_%__kont144382144383%_)))))))
                 (_%generate-values-post140117%_
                  (lambda (_%post140189%_ _%body140190%_)
                    (let _%lp140192%_ ((_%rest140194%_ _%post140189%_)
                                       (_%body140195%_ _%body140190%_))
                      (let* ((_%rest140196140204%_ _%rest140194%_)
                             (_%else140198140212%_ (lambda () _%body140195%_))
                             (_%K140200140218%_
                              (lambda (_%rest140215%_ _%bind140216%_)
                                (let ((__tmp145255
                                       (cons 'let
                                             (cons _%bind140216%_
                                                   (cons _%body140195%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140192%_ _%rest140215%_ __tmp145255)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140196140204%_))
                            (let ((_%hd140201140221%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140196140204%_)))
                                  (_%tl140202140223%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140196140204%_))))
                              (let* ((_%bind140226%_ _%hd140201140221%_)
                                     (_%rest140228%_ _%tl140202140223%_))
                                (declare (not safe))
                                (_%K140200140218%_
                                 _%rest140228%_
                                 _%bind140226%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140198140212%_)))))))
                 (_%generate-values-check140118%_
                  (lambda (_%check140186%_ _%body140187%_)
                    (cons 'begin
                          (let ((__tmp145257 (cons _%body140187%_ '()))
                                (__tmp145256 (reverse _%check140186%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145257 __tmp145256))))))
          (let* ((_%g140120140137%_
                  (lambda (_%g140121140134%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140121140134%_))))
                 (_%g140119140183%_
                  (lambda (_%g140121140140%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140121140140%_))
                        (let ((_%e140126140142%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140121140140%_))))
                          (let ((_%hd140125140145%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140126140142%_)))
                                (_%tl140124140147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140126140142%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140124140147%_))
                                (let ((_%e140129140150%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140124140147%_))))
                                  (let ((_%hd140128140153%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140129140150%_)))
                                        (_%tl140127140155%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140129140150%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140127140155%_))
                                        (let ((_%e140132140158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140127140155%_))))
                                          (let ((_%hd140131140161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140132140158%_)))
                                                (_%tl140130140163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140132140158%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140130140163%_))
                                                ((lambda (_%L140166%_
                                                          _%L140167%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140167%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140113%_
                                                          _%L140167%_
                                                          _%L140166%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140116%_
                                                          _%L140167%_
                                                          _%L140166%_))))
                                                 _%hd140131140161%_
                                                 _%hd140128140153%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140120140137%_
                                                   _%g140121140140%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140120140137%_
                                           _%g140121140140%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140120140137%_ _%g140121140140%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140120140137%_ _%g140121140140%_))))))
            (declare (not safe))
            (_%g140119140183%_ _%stx140110%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140870%_ _%stx140871%_)
        (let ((_%compiled-body?140873%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self140870%_
           _%stx140871%_
           _%compiled-body?140873%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145259_
        (let ((_g145258_ (let () (declare (not safe)) (##length _g145259_))))
          (cond ((let () (declare (not safe)) (##fx= _g145258_ 2))
                 (apply (lambda (_%self140870%_ _%stx140871%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self140870%_
                             _%stx140871%_)))
                        _g145259_))
                ((let () (declare (not safe)) (##fx= _g145258_ 3))
                 (apply (lambda (_%self140875%_
                                 _%stx140876%_
                                 _%compiled-body?140877%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self140875%_
                             _%stx140876%_
                             _%compiled-body?140877%_)))
                        _g145259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145259_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140003%_ _%hd140004%_)
        (let _%lp140006%_ ((_%rest140008%_ _%hd140004%_)
                           (_%k140009%_ '0)
                           (_%r140010%_ '()))
          (let* ((_%__stx144392144393%_ _%rest140008%_)
                 (_%g140015140032%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144392144393%_)))))
            (let ((_%__kont144394144395%_
                   (lambda (_%L140095%_)
                     (let ((__tmp145260
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140009%_ '1))))
                       (declare (not safe))
                       (_%lp140006%_ _%L140095%_ __tmp145260 _%r140010%_))))
                  (_%__kont144396144397%_
                   (lambda (_%L140068%_ _%L140069%_)
                     (let ((__tmp145262
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140009%_ '1)))
                           (__tmp145261
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140069%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140003%_
                                                 _%k140009%_
                                                 _%L140068%_))
                                              '()))
                                  _%r140010%_)))
                       (declare (not safe))
                       (_%lp140006%_ _%L140068%_ __tmp145262 __tmp145261))))
                  (_%__kont144398144399%_
                   (lambda (_%L140044%_)
                     (let ((__tmp145263
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140044%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140003%_
                                                 _%k140009%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145263 _%r140010%_))))
                  (_%__kont144400144401%_ (lambda () (reverse _%r140010%_))))
              (let ((_%g140013140055%_
                     (lambda ()
                       (let ((_%L140044%_ _%__stx144392144393%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140044%_))
                             (_%__kont144398144399%_ _%L140044%_)
                             (_%__kont144400144401%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144392144393%_))
                    (let ((_%e140020140084%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144392144393%_))))
                      (let ((_%tl140018140089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140020140084%_)))
                            (_%hd140019140087%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140020140084%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140019140087%_))
                            (let ((_%e140021140092%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140019140087%_))))
                              (if (equal? _%e140021140092%_ '#f)
                                  (_%__kont144394144395%_ _%tl140018140089%_)
                                  (_%__kont144396144397%_
                                   _%tl140018140089%_
                                   _%hd140019140087%_)))
                            (_%__kont144396144397%_
                             _%tl140018140089%_
                             _%hd140019140087%_))))
                    (let () (declare (not safe)) (_%g140013140055%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139682%_ _%stx139683%_ _%compiled-body?139684%_)
        (letrec ((_%generate-simple139686%_
                  (lambda (_%hd139988%_ _%body139989%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self139682%_
                       'letrec
                       _%hd139988%_
                       _%body139989%_
                       _%compiled-body?139684%_))))
                 (_%generate-values139687%_
                  (lambda (_%hd139767%_ _%body139768%_)
                    (let _%lp139770%_ ((_%rest139772%_ _%hd139767%_)
                                       (_%bind139773%_ '())
                                       (_%check139774%_ '())
                                       (_%post139775%_ '()))
                      (let* ((_%__stx144466144467%_ _%rest139772%_)
                             (_%g139778139789%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144466144467%_)))))
                        (let ((_%__kont144468144469%_
                               (lambda (_%L139816%_ _%L139817%_)
                                 (let* ((_%__stx144422144423%_ _%L139817%_)
                                        (_%g139832139857%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144422144423%_)))))
                                   (let ((_%__kont144424144425%_
                                          (lambda (_%L139964%_ _%L139965%_)
                                            (let ((_%eid139979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139965%_)))
                                                  (_%expr139980%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139682%_
                                                      _%L139964%_))))
                                              (let ((__tmp145264
                                                     (cons (cons _%eid139979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr139980%_ '()))
                   _%bind139773%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp139770%_
                                                 _%L139816%_
                                                 __tmp145264
                                                 _%check139774%_
                                                 _%post139775%_)))))
                                         (_%__kont144426144427%_
                                          (lambda (_%L139878%_ _%L139879%_)
                                            (let* ((_%vals139892%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139894%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals139892%_
                                                       _%L139879%_
                                                       _%L139878%_)))
                                                   (_%refs139896%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals139892%_
                                                       _%L139879%_)))
                                                   (_%expr139898%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139682%_
                                                       _%L139878%_))))
                                              (let ((__tmp145267
                                                     (let ((__tmp145269
                                                            (cons (cons _%vals139892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr139898%_ '()))
                          _%bind139773%_))
                   (__tmp145268
                    (map (lambda (_%e139900139902%_)
                           (let* ((_%g139904139913%_ _%e139900139902%_)
                                  (_%E139906139917%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g139904139913%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K139907139922%_
                                   (lambda (_%eid139920%_)
                                     (cons _%eid139920%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g139904139913%_))
                                 (let ((_%hd139908139925%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g139904139913%_)))
                                       (_%tl139909139927%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g139904139913%_))))
                                   (let ((_%eid139930%_ _%hd139908139925%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl139909139927%_))
                                         (let ((_%tl139911139932%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl139909139927%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl139911139932%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K139907139922%_
                                                  _%eid139930%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E139906139917%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E139906139917%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E139906139917%_)))))
                         _%refs139896%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145269 __tmp145268)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145266
                                                     (cons _%check-values139894%_
                                                           _%check139774%_))
                                                    (__tmp145265
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs139896%_
                                                        _%post139775%_))))
                                                (declare (not safe))
                                                (_%lp139770%_
                                                 _%L139816%_
                                                 __tmp145267
                                                 __tmp145266
                                                 __tmp145265))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144422144423%_))
                                         (let ((_%e139838139940%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144422144423%_))))
                                           (let ((_%tl139836139945%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139838139940%_)))
                                                 (_%hd139837139943%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139838139940%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139837139943%_))
                                                 (let ((_%e139841139948%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139837139943%_))))
                                                   (let ((_%tl139839139953%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139841139948%_)))
                                                         (_%hd139840139951%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139841139948%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139839139953%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139836139945%_))
                     (let ((_%e139844139956%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139836139945%_))))
                       (let ((_%tl139842139961%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139844139956%_)))
                             (_%hd139843139959%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139844139956%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139842139961%_))
                             (_%__kont144424144425%_
                              _%hd139843139959%_
                              _%hd139840139951%_)
                             (let ()
                               (declare (not safe))
                               (_%g139832139857%_)))))
                     (let () (declare (not safe)) (_%g139832139857%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139836139945%_))
                     (let ((_%e139852139870%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139836139945%_))))
                       (let ((_%tl139850139875%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139852139870%_)))
                             (_%hd139851139873%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139852139870%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139850139875%_))
                             (_%__kont144426144427%_
                              _%hd139851139873%_
                              _%hd139837139943%_)
                             (let ()
                               (declare (not safe))
                               (_%g139832139857%_)))))
                     (let () (declare (not safe)) (_%g139832139857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139836139945%_))
                                                     (let ((_%e139852139870%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139836139945%_))))
                                                       (let ((_%tl139850139875%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139852139870%_)))
                     (_%hd139851139873%_
                      (let () (declare (not safe)) (##car _%e139852139870%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139850139875%_))
                     (_%__kont144426144427%_
                      _%hd139851139873%_
                      _%hd139837139943%_)
                     (let () (declare (not safe)) (_%g139832139857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139832139857%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139832139857%_)))))))
                              (_%__kont144470144471%_
                               (lambda ()
                                 (let* ((_%body139796%_
                                         (if _%compiled-body?139684%_
                                             _%body139768%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139682%_
                                                _%body139768%_))))
                                        (_%body139798%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post139689%_
                                            _%post139775%_
                                            _%body139796%_)))
                                        (_%body139800%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check139688%_
                                            _%check139774%_
                                            _%body139798%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind139773%_)
                                               (cons _%body139800%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144466144467%_))
                              (let ((_%e139784139808%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144466144467%_))))
                                (let ((_%tl139782139813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139784139808%_)))
                                      (_%hd139783139811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139784139808%_))))
                                  (_%__kont144468144469%_
                                   _%tl139782139813%_
                                   _%hd139783139811%_)))
                              (_%__kont144470144471%_)))))))
                 (_%generate-values-check139688%_
                  (lambda (_%check139764%_ _%body139765%_)
                    (cons 'begin
                          (let ((__tmp145271 (cons _%body139765%_ '()))
                                (__tmp145270 (reverse _%check139764%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145271 __tmp145270)))))
                 (_%generate-values-post139689%_
                  (lambda (_%post139757%_ _%body139758%_)
                    (cons 'begin
                          (let ((__tmp145275 (cons _%body139758%_ '()))
                                (__tmp145272
                                 (let ((__tmp145274
                                        (lambda (_%g139759139761%_)
                                          (cons 'set! _%g139759139761%_)))
                                       (__tmp145273 (reverse _%post139757%_)))
                                   (declare (not safe))
                                   (##map __tmp145274 __tmp145273))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145275 __tmp145272))))))
          (let* ((_%g139691139708%_
                  (lambda (_%g139692139705%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139692139705%_))))
                 (_%g139690139754%_
                  (lambda (_%g139692139711%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139692139711%_))
                        (let ((_%e139697139713%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139692139711%_))))
                          (let ((_%hd139696139716%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139697139713%_)))
                                (_%tl139695139718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139697139713%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139695139718%_))
                                (let ((_%e139700139721%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139695139718%_))))
                                  (let ((_%hd139699139724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139700139721%_)))
                                        (_%tl139698139726%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139700139721%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139698139726%_))
                                        (let ((_%e139703139729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139698139726%_))))
                                          (let ((_%hd139702139732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139703139729%_)))
                                                (_%tl139701139734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139703139729%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139701139734%_))
                                                ((lambda (_%L139737%_
                                                          _%L139738%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139738%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple139686%_
                                                          _%L139738%_
                                                          _%L139737%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139687%_
                                                          _%L139738%_
                                                          _%L139737%_))))
                                                 _%hd139702139732%_
                                                 _%hd139699139724%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139691139708%_
                                                   _%g139692139711%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139691139708%_
                                           _%g139692139711%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139691139708%_ _%g139692139711%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139691139708%_ _%g139692139711%_))))))
            (declare (not safe))
            (_%g139690139754%_ _%stx139683%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139994%_ _%stx139995%_)
        (let ((_%compiled-body?139997%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self139994%_
           _%stx139995%_
           _%compiled-body?139997%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145277_
        (let ((_g145276_ (let () (declare (not safe)) (##length _g145277_))))
          (cond ((let () (declare (not safe)) (##fx= _g145276_ 2))
                 (apply (lambda (_%self139994%_ _%stx139995%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self139994%_
                             _%stx139995%_)))
                        _g145277_))
                ((let () (declare (not safe)) (##fx= _g145276_ 3))
                 (apply (lambda (_%self139999%_
                                 _%stx140000%_
                                 _%compiled-body?140001%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self139999%_
                             _%stx140000%_
                             _%compiled-body?140001%_)))
                        _g145277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145277_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139263%_ _%stx139264%_)
        (letrec ((_%generate-values139266%_
                  (lambda (_%hd139509%_ _%body139510%_)
                    (let _%lp139512%_ ((_%rest139514%_ _%hd139509%_)
                                       (_%bind139515%_ '()))
                      (let* ((_%rest139516139524%_ _%rest139514%_)
                             (_%else139518139535%_
                              (lambda ()
                                (let ((_%bind139532%_ (reverse _%bind139515%_))
                                      (_%body139533%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139263%_
                                          _%body139510%_))))
                                  (cons 'letrec*
                                        (cons _%bind139532%_
                                              (cons _%body139533%_ '()))))))
                             (_%K139520139669%_
                              (lambda (_%rest139538%_ _%hd-bind139539%_)
                                (let* ((_%__stx144480144481%_
                                        _%hd-bind139539%_)
                                       (_%g139542139567%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144480144481%_)))))
                                  (let ((_%__kont144482144483%_
                                         (lambda (_%L139648%_ _%L139649%_)
                                           (let ((_%eid139663%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139649%_)))
                                                 (_%expr139664%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139263%_
                                                     _%L139648%_))))
                                             (let ((__tmp145278
                                                    (cons (cons _%eid139663%_
                                                                (cons _%expr139664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind139515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139512%_
                                                _%rest139538%_
                                                __tmp145278)))))
                                        (_%__kont144484144485%_
                                         (lambda (_%L139588%_ _%L139589%_)
                                           (let* ((_%vals139608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139612%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp139610%_
                                                      _%L139589%_
                                                      _%L139588%_)))
                                                  (_%refs139614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals139608%_
                                                      _%L139589%_)))
                                                  (_%expr139616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139263%_
                                                      _%L139588%_)))
                                                  (__tmp145279
                                                   (let ((__tmp145280
                                                          (cons (cons _%vals139608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'let
                                          (cons (cons (cons _%tmp139610%_
                                                            (cons _%expr139616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%check-values139612%_
                                                      (cons _%tmp139610%_
                                                            '()))))
                                    '()))
                        _%bind139515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldl1
                                                      cons
                                                      __tmp145280
                                                      _%refs139614%_))))
                                             (declare (not safe))
                                             (_%lp139512%_
                                              _%rest139538%_
                                              __tmp145279)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144480144481%_))
                                        (let ((_%e139548139624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144480144481%_))))
                                          (let ((_%tl139546139629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139548139624%_)))
                                                (_%hd139547139627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139548139624%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139547139627%_))
                                                (let ((_%e139551139632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139547139627%_))))
                                                  (let ((_%tl139549139637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139551139632%_)))
                                                        (_%hd139550139635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139551139632%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139549139637%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139546139629%_))
                                                            (let ((_%e139554139640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139546139629%_))))
                      (let ((_%tl139552139645%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139554139640%_)))
                            (_%hd139553139643%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139554139640%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139552139645%_))
                            (_%__kont144482144483%_
                             _%hd139553139643%_
                             _%hd139550139635%_)
                            (let ()
                              (declare (not safe))
                              (_%g139542139567%_)))))
                    (let () (declare (not safe)) (_%g139542139567%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139546139629%_))
                    (let ((_%e139562139580%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139546139629%_))))
                      (let ((_%tl139560139585%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139562139580%_)))
                            (_%hd139561139583%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139562139580%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139560139585%_))
                            (_%__kont144484144485%_
                             _%hd139561139583%_
                             _%hd139547139627%_)
                            (let ()
                              (declare (not safe))
                              (_%g139542139567%_)))))
                    (let () (declare (not safe)) (_%g139542139567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139546139629%_))
                                                    (let ((_%e139562139580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139546139629%_))))
                                                      (let ((_%tl139560139585%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139562139580%_)))
                    (_%hd139561139583%_
                     (let () (declare (not safe)) (##car _%e139562139580%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139560139585%_))
                    (_%__kont144484144485%_
                     _%hd139561139583%_
                     _%hd139547139627%_)
                    (let () (declare (not safe)) (_%g139542139567%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139542139567%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139542139567%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139516139524%_))
                            (let ((_%hd139521139672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139516139524%_)))
                                  (_%tl139522139674%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139516139524%_))))
                              (let* ((_%hd-bind139677%_ _%hd139521139672%_)
                                     (_%rest139679%_ _%tl139522139674%_))
                                (declare (not safe))
                                (_%K139520139669%_
                                 _%rest139679%_
                                 _%hd-bind139677%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139518139535%_)))))))
                 (_%generate-letrec?139267%_
                  (lambda (_%hd139399%_)
                    (let _%lp139401%_ ((_%rest139403%_ _%hd139399%_))
                      (let* ((_%rest139404139412%_ _%rest139403%_)
                             (_%else139406139420%_ (lambda () '#t))
                             (_%K139408139497%_
                              (lambda (_%rest139423%_ _%hd-bind139424%_)
                                (let* ((_%g139426139443%_
                                        (lambda (_%g139427139440%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139427139440%_))))
                                       (_%g139425139494%_
                                        (lambda (_%g139427139446%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139427139446%_))
                                              (let ((_%e139432139448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139427139446%_))))
                                                (let ((_%hd139431139451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139432139448%_)))
                                                      (_%tl139430139453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139432139448%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139431139451%_))
                                                      (let ((_%e139435139456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139431139451%_))))
                (let ((_%hd139434139459%_
                       (let () (declare (not safe)) (##car _%e139435139456%_)))
                      (_%tl139433139461%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139435139456%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139433139461%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139430139453%_))
                          (let ((_%e139438139464%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139430139453%_))))
                            (let ((_%hd139437139467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139438139464%_)))
                                  (_%tl139436139469%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139438139464%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139436139469%_))
                                  ((lambda (_%L139472%_ _%L139473%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139268%_
                                            _%L139472%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139401%_ _%rest139423%_))
                                         '#f))
                                   _%hd139437139467%_
                                   _%hd139434139459%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g139426139443%_ _%g139427139446%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g139426139443%_ _%g139427139446%_)))
                      (let ()
                        (declare (not safe))
                        (_%g139426139443%_ _%g139427139446%_)))))
              (let ()
                (declare (not safe))
                (_%g139426139443%_ _%g139427139446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g139426139443%_
                                                 _%g139427139446%_))))))
                                  (declare (not safe))
                                  (_%g139425139494%_ _%hd-bind139424%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139404139412%_))
                            (let ((_%hd139409139500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139404139412%_)))
                                  (_%tl139410139502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139404139412%_))))
                              (let* ((_%hd-bind139505%_ _%hd139409139500%_)
                                     (_%rest139507%_ _%tl139410139502%_))
                                (declare (not safe))
                                (_%K139408139497%_
                                 _%rest139507%_
                                 _%hd-bind139505%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139406139420%_)))))))
                 (_%is-lambda-expr?139268%_
                  (lambda (_%expr139336%_)
                    (let* ((_%__stx144524144525%_ _%expr139336%_)
                           (_%g139339139353%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144524144525%_)))))
                      (let ((_%__kont144526144527%_
                             (lambda (_%L139381%_ _%L139382%_) '#t))
                            (_%__kont144528144529%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144524144525%_))
                            (let ((_%e139345139365%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144524144525%_))))
                              (let ((_%tl139343139370%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139345139365%_)))
                                    (_%hd139344139368%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139345139365%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139344139368%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139344139368%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139343139370%_))
                                            (let ((_%e139348139373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139343139370%_))))
                                              (let ((_%tl139346139378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139348139373%_)))
                                                    (_%hd139347139376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139348139373%_))))
                                                (_%__kont144526144527%_
                                                 _%tl139346139378%_
                                                 _%hd139347139376%_)))
                                            (_%__kont144528144529%_))
                                        (_%__kont144528144529%_))
                                    (_%__kont144528144529%_))))
                            (_%__kont144528144529%_)))))))
          (let* ((_%g139270139287%_
                  (lambda (_%g139271139284%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139271139284%_))))
                 (_%g139269139333%_
                  (lambda (_%g139271139290%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139271139290%_))
                        (let ((_%e139276139292%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139271139290%_))))
                          (let ((_%hd139275139295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139276139292%_)))
                                (_%tl139274139297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139276139292%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139274139297%_))
                                (let ((_%e139279139300%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139274139297%_))))
                                  (let ((_%hd139278139303%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139279139300%_)))
                                        (_%tl139277139305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139279139300%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139277139305%_))
                                        (let ((_%e139282139308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139277139305%_))))
                                          (let ((_%hd139281139311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139282139308%_)))
                                                (_%tl139280139313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139282139308%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139280139313%_))
                                                ((lambda (_%L139316%_
                                                          _%L139317%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139317%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139267%_
                                                              _%L139317%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139263%_
                                                              'letrec
                                                              _%L139317%_
                                                              _%L139316%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139263%_
                                                              'letrec*
                                                              _%L139317%_
                                                              _%L139316%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139266%_
                                                          _%L139317%_
                                                          _%L139316%_))))
                                                 _%hd139281139311%_
                                                 _%hd139278139303%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139270139287%_
                                                   _%g139271139290%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139270139287%_
                                           _%g139271139290%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139270139287%_ _%g139271139290%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139270139287%_ _%g139271139290%_))))))
            (declare (not safe))
            (_%g139269139333%_ _%stx139264%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139200%_)
        (let _%lp139202%_ ((_%rest139204%_ _%hd139200%_))
          (let* ((_%rest139205139221%_ _%rest139204%_)
                 (_%else139208139229%_ (lambda () '#f)))
            (let ((_%K139211139242%_
                   (lambda (_%rest139240%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139202%_ _%rest139240%_))))
                  (_%K139210139234%_ (lambda () '#t)))
              (let ((_%try-match139207139237%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139205139221%_))
                           (let () (declare (not safe)) (_%K139210139234%_))
                           (let ()
                             (declare (not safe))
                             (_%else139208139229%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139205139221%_))
                    (let ((_%tl139213139247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139205139221%_)))
                          (_%hd139212139245%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139205139221%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139212139245%_))
                          (let ((_%tl139215139252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139212139245%_)))
                                (_%hd139214139250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139212139245%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139214139250%_))
                                (let ((_%tl139219139255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139214139250%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139219139255%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139215139252%_))
                                          (let ((_%tl139217139258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139215139252%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139217139258%_))
                                                (let ((_%rest139261%_
                                                       _%tl139213139247%_))
                                                  (declare (not safe))
                                                  (_%lp139202%_
                                                   _%rest139261%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139208139229%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139208139229%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139208139229%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139208139229%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139208139229%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139207139237%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139111%_
               _%form139112%_
               _%hd139113%_
               _%body139114%_
               _%compiled-body?139115%_)
        (letrec ((_%generate1139117%_
                  (lambda (_%bind139156%_)
                    (let* ((_%bind139157139168%_ _%bind139156%_)
                           (_%E139159139172%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139157139168%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139160139178%_
                            (lambda (_%expr139175%_ _%id139176%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139176%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139111%_
                                             _%expr139175%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139157139168%_))
                          (let ((_%hd139161139181%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139157139168%_)))
                                (_%tl139162139183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139157139168%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139161139181%_))
                                (let ((_%hd139165139186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139161139181%_)))
                                      (_%tl139166139188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139161139181%_))))
                                  (let ((_%id139191%_ _%hd139165139186%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139166139188%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139162139183%_))
                                            (let ((_%hd139163139193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139162139183%_)))
                                                  (_%tl139164139195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139162139183%_))))
                                              (let ((_%expr139198%_
                                                     _%hd139163139193%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139164139195%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139160139178%_
                                                       _%expr139198%_
                                                       _%id139191%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139159139172%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139159139172%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139159139172%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139159139172%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139159139172%_)))))))
          (let* ((_%bind139119%_ (map _%generate1139117%_ _%hd139113%_))
                 (_%body139121%_
                  (if _%compiled-body?139115%_
                      _%body139114%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139111%_ _%body139114%_))))
                 (_%body139153%_
                  (let* ((_%body139122139130%_ _%body139121%_)
                         (_%else139124139138%_
                          (lambda () (cons _%body139121%_ '())))
                         (_%K139126139143%_
                          (lambda (_%exprs139141%_) _%exprs139141%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139122139130%_))
                        (let ((_%hd139127139146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139122139130%_)))
                              (_%tl139128139148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139122139130%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139127139146%_ 'begin))
                              (let ((_%exprs139151%_ _%tl139128139148%_))
                                (declare (not safe))
                                (_%K139126139143%_ _%exprs139151%_))
                              (let ()
                                (declare (not safe))
                                (_%else139124139138%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139124139138%_))))))
            (cons _%form139112%_ (cons _%bind139119%_ _%body139153%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139011%_ _%stx139012%_)
        (letrec ((_%generate1139014%_
                  (lambda (_%datum139066%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139066%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139066%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139066%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139066%_)))
                        (let () _%datum139066%_)
                        (if (uninterned-symbol? _%datum139066%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139066%_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139066%_))
                                (let ()
                                  (cons (let ((__tmp145281
                                               (car _%datum139066%_)))
                                          (declare (not safe))
                                          (_%generate1139014%_ __tmp145281))
                                        (let ((__tmp145282
                                               (cdr _%datum139066%_)))
                                          (declare (not safe))
                                          (_%generate1139014%_ __tmp145282))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139066%_))
                                    (let ()
                                      (box (let ((__tmp145283
                                                  (unbox _%datum139066%_)))
                                             (declare (not safe))
                                             (_%generate1139014%_
                                              __tmp145283))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139066%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139014%_
                                           _%datum139066%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139066%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139066%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139066%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139066%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139066%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139066%_))
                                                (s64vector? _%datum139066%_)
                                                (u64vector? _%datum139066%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139066%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139066%_)))
                                            (let () _%datum139066%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139012%_)))))))))))
          (let* ((_%g139016139029%_
                  (lambda (_%g139017139026%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139017139026%_))))
                 (_%g139015139063%_
                  (lambda (_%g139017139032%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139017139032%_))
                        (let ((_%e139021139034%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139017139032%_))))
                          (let ((_%hd139020139037%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139021139034%_)))
                                (_%tl139019139039%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139021139034%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139019139039%_))
                                (let ((_%e139024139042%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139019139039%_))))
                                  (let ((_%hd139023139045%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139024139042%_)))
                                        (_%tl139022139047%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139024139042%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139022139047%_))
                                        ((lambda (_%L139050%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145284
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139050%_))))
                 (declare (not safe))
                 (_%generate1139014%_ __tmp145284))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139023139045%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139016139029%_
                                           _%g139017139032%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139016139029%_ _%g139017139032%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139016139029%_ _%g139017139032%_))))))
            (declare (not safe))
            (_%g139015139063%_ _%stx139012%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138452%_ _%stx138453%_)
        (letrec ((_%compile-call138455%_
                  (lambda (_%rator138744%_ _%rands138745%_)
                    (let ((_%rator138751%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138452%_
                              _%rator138744%_)))
                          (_%rands138752%_
                           (map (lambda (_%g138746138748%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138452%_
                                     _%g138746138748%_)))
                                _%rands138745%_)))
                      (let* ((_%__stx144571144572%_ _%rator138751%_)
                             (_%g138755138807%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144571144572%_)))))
                        (let ((_%__kont144573144574%_
                               (lambda (_%L138931%_
                                        _%L138932%_
                                        _%L138933%_
                                        _%L138934%_)
                                 (if (let ((__tmp145287
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138752%_)))
                                           (__tmp145285
                                            (length (let ((__tmp145286
                                                           (lambda (_%g138970138973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138971138975%_)
                     (cons _%g138970138973%_ _%g138971138975%_))))
              (declare (not safe))
              (__foldr1 __tmp145286 '() _%L138933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145287 __tmp145285))
                                     (let* ((_%id138978%_ _%L138934%_)
                                            (_%args138987%_
                                             (let ((__tmp145288
                                                    (lambda (_%g138979138982%_
                                                             _%g138980138984%_)
                                                      (cons _%g138979138982%_
                                                            _%g138980138984%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145288
                                                '()
                                                _%L138933%_)))
                                            (_%body138996%_
                                             (let ((__tmp145289
                                                    (lambda (_%g138988138991%_
                                                             _%g138989138993%_)
                                                      (cons _%g138988138991%_
                                                            _%g138989138993%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145289
                                                '()
                                                _%L138932%_)))
                                            (_%init138998%_
                                             (map list
                                                  _%args138987%_
                                                  _%rands138752%_)))
                                       (cons 'let
                                             (cons _%id138978%_
                                                   (cons _%init138998%_
                                                         _%body138996%_))))
                                     (let ((__tmp145290
                                            (let ((__tmp145291
                                                   (lambda (_%g139000139003%_
                                                            _%g139001139005%_)
                                                     (cons _%g139000139003%_
                                                           _%g139001139005%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145291
                                               '()
                                               _%L138933%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138453%_
                                        __tmp145290
                                        _%rands138752%_)))))
                              (_%__kont144579144580%_
                               (lambda ()
                                 (cons _%rator138751%_ _%rands138752%_))))
                          (let ((_%__match144638144639%_
                                 (lambda (_%e138763138819%_
                                          _%hd138762138822%_
                                          _%tl138761138824%_
                                          _%e138766138827%_
                                          _%hd138765138830%_
                                          _%tl138764138832%_
                                          _%e138769138835%_
                                          _%hd138768138838%_
                                          _%tl138767138840%_
                                          _%e138772138843%_
                                          _%hd138771138846%_
                                          _%tl138770138848%_
                                          _%e138775138851%_
                                          _%hd138774138854%_
                                          _%tl138773138856%_
                                          _%e138778138859%_
                                          _%hd138777138862%_
                                          _%tl138776138864%_
                                          _%e138781138867%_
                                          _%hd138780138870%_
                                          _%tl138779138872%_
                                          _%__splice144575144576%_
                                          _%target138782138875%_
                                          _%tl138784138877%_)
                                   (letrec ((_%loop138785138880%_
                                             (lambda (_%hd138783138883%_
                                                      _%arg138789138885%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138783138883%_))
                                                   (let ((_%e138786138888%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138783138883%_))))
                                                     (let ((_%lp-tl138788138893%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138786138888%_)))
                                                           (_%lp-hd138787138891%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138786138888%_))))
                                                       (let ((__tmp145292
                                                              (cons _%lp-hd138787138891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg138789138885%_)))
                 (declare (not safe))
                 (_%loop138785138880%_ _%lp-tl138788138893%_ __tmp145292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg138790138896%_
                                                          (reverse _%arg138789138885%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138779138872%_))
                                                         (let ((_%__splice144577144578%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138779138872%_ '0))))
                   (let ((_%tl138793138901%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144577144578%_ '1)))
                         (_%target138791138899%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144577144578%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138793138901%_))
                         (letrec ((_%loop138794138904%_
                                   (lambda (_%hd138792138907%_
                                            _%body138798138909%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138792138907%_))
                                         (let ((_%e138795138912%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138792138907%_))))
                                           (let ((_%lp-tl138797138917%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138795138912%_)))
                                                 (_%lp-hd138796138915%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138795138912%_))))
                                             (let ((__tmp145293
                                                    (cons _%lp-hd138796138915%_
                                                          _%body138798138909%_)))
                                               (declare (not safe))
                                               (_%loop138794138904%_
                                                _%lp-tl138797138917%_
                                                __tmp145293))))
                                         (let ((_%body138799138920%_
                                                (reverse _%body138798138909%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138773138856%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138767138840%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138764138832%_))
                                                       (let ((_%e138802138923%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138764138832%_))))
                 (let ((_%tl138800138928%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138802138923%_)))
                       (_%hd138801138926%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138802138923%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138800138928%_))
                       (let ((_%L138931%_ _%hd138801138926%_)
                             (_%L138932%_ _%body138799138920%_)
                             (_%L138933%_ _%arg138790138896%_)
                             (_%L138934%_ _%hd138771138846%_))
                         (if (eq? _%L138934%_ _%L138931%_)
                             (_%__kont144573144574%_
                              _%L138931%_
                              _%L138932%_
                              _%L138933%_
                              _%L138934%_)
                             (_%__kont144579144580%_)))
                       (_%__kont144579144580%_))))
               (_%__kont144579144580%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144579144580%_))
                                               (_%__kont144579144580%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop138794138904%_
                              _%target138791138899%_
                              '())))
                         (_%__kont144579144580%_))))
                 (_%__kont144579144580%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop138785138880%_
                                        _%target138782138875%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144571144572%_))
                                (let ((_%e138763138819%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144571144572%_))))
                                  (let ((_%tl138761138824%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138763138819%_)))
                                        (_%hd138762138822%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138763138819%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138762138822%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138762138822%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138761138824%_))
                                                (let ((_%e138766138827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138761138824%_))))
                                                  (let ((_%tl138764138832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138766138827%_)))
                                                        (_%hd138765138830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138766138827%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138765138830%_))
                                                        (let ((_%e138769138835%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138765138830%_))))
                  (let ((_%tl138767138840%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138769138835%_)))
                        (_%hd138768138838%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138769138835%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138768138838%_))
                        (let ((_%e138772138843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138768138838%_))))
                          (let ((_%tl138770138848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138772138843%_)))
                                (_%hd138771138846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138772138843%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138770138848%_))
                                (let ((_%e138775138851%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138770138848%_))))
                                  (let ((_%tl138773138856%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138775138851%_)))
                                        (_%hd138774138854%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138775138851%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138774138854%_))
                                        (let ((_%e138778138859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138774138854%_))))
                                          (let ((_%tl138776138864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138778138859%_)))
                                                (_%hd138777138862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138778138859%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138777138862%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138777138862%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138776138864%_))
                                                        (let ((_%e138781138867%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138776138864%_))))
                  (let ((_%tl138779138872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138781138867%_)))
                        (_%hd138780138870%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138781138867%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138780138870%_))
                        (let ((_%__splice144575144576%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138780138870%_
                                  '0))))
                          (let ((_%tl138784138877%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144575144576%_ '1)))
                                (_%target138782138875%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144575144576%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138784138877%_))
                                (_%__match144638144639%_
                                 _%e138763138819%_
                                 _%hd138762138822%_
                                 _%tl138761138824%_
                                 _%e138766138827%_
                                 _%hd138765138830%_
                                 _%tl138764138832%_
                                 _%e138769138835%_
                                 _%hd138768138838%_
                                 _%tl138767138840%_
                                 _%e138772138843%_
                                 _%hd138771138846%_
                                 _%tl138770138848%_
                                 _%e138775138851%_
                                 _%hd138774138854%_
                                 _%tl138773138856%_
                                 _%e138778138859%_
                                 _%hd138777138862%_
                                 _%tl138776138864%_
                                 _%e138781138867%_
                                 _%hd138780138870%_
                                 _%tl138779138872%_
                                 _%__splice144575144576%_
                                 _%target138782138875%_
                                 _%tl138784138877%_)
                                (_%__kont144579144580%_))))
                        (_%__kont144579144580%_))))
                (_%__kont144579144580%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144579144580%_))
                                                (_%__kont144579144580%_))))
                                        (_%__kont144579144580%_))))
                                (_%__kont144579144580%_))))
                        (_%__kont144579144580%_))))
                (_%__kont144579144580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144579144580%_))
                                            (_%__kont144579144580%_))
                                        (_%__kont144579144580%_))))
                                (_%__kont144579144580%_)))))))))
          (let* ((_%g138457138480%_
                  (lambda (_%g138458138477%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138458138477%_))))
                 (_%g138456138741%_
                  (lambda (_%g138458138483%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138458138483%_))
                        (let ((_%e138463138485%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138458138483%_))))
                          (let ((_%hd138462138488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138463138485%_)))
                                (_%tl138461138490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138463138485%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138461138490%_))
                                (let ((_%e138466138493%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138461138490%_))))
                                  (let ((_%hd138465138496%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138466138493%_)))
                                        (_%tl138464138498%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138466138493%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138464138498%_))
                                        (let ((_g145294_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138464138498%_
                                                  '0))))
                                          (begin
                                            (let ((_g145295_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145294_)
                                                         (##vector-length
                                                          _g145294_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145295_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145295_)))
                                            (let ((_%target138467138501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145294_
                                                      0)))
                                                  (_%tl138469138503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145294_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138469138503%_))
                                                  (letrec ((_%loop138470138506%_
                                                            (lambda (_%hd138468138509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138474138511%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138468138509%_))
                          (let ((_%e138471138514%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138468138509%_))))
                            (let ((_%lp-hd138472138517%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138471138514%_)))
                                  (_%lp-tl138473138519%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138471138514%_))))
                              (let ((__tmp145296
                                     (cons _%lp-hd138472138517%_
                                           _%rand138474138511%_)))
                                (declare (not safe))
                                (_%loop138470138506%_
                                 _%lp-tl138473138519%_
                                 __tmp145296))))
                          (let ((_%rand138475138522%_
                                 (reverse _%rand138474138511%_)))
                            ((lambda (_%L138525%_ _%L138526%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145297
                                          (let ((__tmp145298
                                                 (lambda (_%g138543138546%_
                                                          _%g138544138548%_)
                                                   (cons _%g138543138546%_
                                                         _%g138544138548%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145298
                                             '()
                                             _%L138525%_))))
                                     (declare (not safe))
                                     (_%compile-call138455%_
                                      _%L138526%_
                                      __tmp145297))
                                   (let* ((_%__stx144687144688%_ _%L138526%_)
                                          (_%g138552138564%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144687144688%_)))))
                                     (let ((_%__kont144689144690%_
                                            (lambda ()
                                              (let ((_%f138601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138452%_
                                                        _%L138526%_))))
                                                (if (and (let ((__tmp145299
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138601%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145299))
                 (let ((__tmp145300
                        (let ()
                          (declare (not safe))
                          (##memq _%f138601%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145300)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138603%_ ((_%rest138606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145306
                                                (lambda (_%g138723138726%_
                                                         _%g138724138728%_)
                                                  (cons _%g138723138726%_
                                                        _%g138724138728%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145306
                                            '()
                                            _%L138525%_))))
                               (_%bind138608%_ '())
                               (_%args138609%_ '()))
              (let* ((_%rest138610138618%_ _%rest138606%_)
                     (_%else138612138626%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138608%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138601%_
                                                      _%args138609%_)
                                                '()))))))
                     (_%K138614138712%_
                      (lambda (_%rest138629%_ _%e138630%_)
                        (let* ((_%__stx144641144642%_ _%e138630%_)
                               (_%g138635138653%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144641144642%_)))))
                          (let ((_%__kont144643144644%_
                                 (lambda ()
                                   (let ((__tmp145301
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138630%_))
                                                _%args138609%_)))
                                     (declare (not safe))
                                     (_%lp138603%_
                                      _%rest138629%_
                                      _%bind138608%_
                                      __tmp145301))))
                                (_%__kont144645144646%_
                                 (lambda ()
                                   (let ((__tmp145302
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138630%_))
                                                _%args138609%_)))
                                     (declare (not safe))
                                     (_%lp138603%_
                                      _%rest138629%_
                                      _%bind138608%_
                                      __tmp145302))))
                                (_%__kont144647144648%_
                                 (lambda ()
                                   (let ((_%tmp138660%_
                                          (let ((__tmp145303
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145303))))
                                     (let ((__tmp145305
                                            (cons (cons _%tmp138660%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e138630%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind138608%_))
                                           (__tmp145304
                                            (cons _%tmp138660%_
                                                  _%args138609%_)))
                                       (declare (not safe))
                                       (_%lp138603%_
                                        _%rest138629%_
                                        __tmp145305
                                        __tmp145304))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144641144642%_))
                                (let ((_%e138639138691%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144641144642%_))))
                                  (let ((_%tl138637138696%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138639138691%_)))
                                        (_%hd138638138694%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138639138691%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138638138694%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138638138694%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138637138696%_))
                                                (let ((_%e138642138699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138637138696%_))))
                                                  (let ((_%tl138640138704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138642138699%_)))
                                                        (_%hd138641138702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138642138699%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138640138704%_))
                                                        (_%__kont144643144644%_)
                                                        (_%__kont144647144648%_))))
                                                (_%__kont144647144648%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138638138694%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138637138696%_))
                                                    (let ((_%e138648138676%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138637138696%_))))
                                                      (let ((_%tl138646138681%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138648138676%_)))
                    (_%hd138647138679%_
                     (let () (declare (not safe)) (##car _%e138648138676%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138646138681%_))
                    (_%__kont144645144646%_)
                    (_%__kont144647144648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144647144648%_))
                                                (_%__kont144647144648%_)))
                                        (_%__kont144647144648%_))))
                                (_%__kont144647144648%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138610138618%_))
                    (let ((_%hd138615138715%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138610138618%_)))
                          (_%tl138616138717%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138610138618%_))))
                      (let* ((_%e138720%_ _%hd138615138715%_)
                             (_%rest138722%_ _%tl138616138717%_))
                        (declare (not safe))
                        (_%K138614138712%_ _%rest138722%_ _%e138720%_)))
                    (let () (declare (not safe)) (_%else138612138626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145307
                                                           (let ((__tmp145308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g138730138733%_ _%g138731138735%_)
                            (cons _%g138730138733%_ _%g138731138735%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145308 '() _%L138525%_))))
              (declare (not safe))
              (_%compile-call138455%_ _%L138526%_ __tmp145307))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144691144692%_
                                            (lambda ()
                                              (let ((__tmp145309
                                                     (let ((__tmp145310
                                                            (lambda (_%g138570138573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138571138575%_)
                      (cons _%g138570138573%_ _%g138571138575%_))))
               (declare (not safe))
               (__foldr1 __tmp145310 '() _%L138525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call138455%_
                                                 _%L138526%_
                                                 __tmp145309)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144687144688%_))
                                           (let ((_%e138556138583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144687144688%_))))
                                             (let ((_%tl138554138588%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138556138583%_)))
                                                   (_%hd138555138586%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138556138583%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138555138586%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138555138586%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138554138588%_))
                                                           (let ((_%e138559138591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138554138588%_))))
                     (let ((_%tl138557138596%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138559138591%_)))
                           (_%hd138558138594%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138559138591%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138557138596%_))
                           (_%__kont144689144690%_)
                           (_%__kont144691144692%_))))
                   (_%__kont144691144692%_))
               (_%__kont144691144692%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144691144692%_))))
                                           (_%__kont144691144692%_))))))
                             _%rand138475138522%_
                             _%hd138465138496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop138470138506%_
                                                       _%target138467138501%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g138457138480%_
                                                     _%g138458138483%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138457138480%_
                                           _%g138458138483%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138457138480%_ _%g138458138483%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138457138480%_ _%g138458138483%_))))))
            (declare (not safe))
            (_%g138456138741%_ _%stx138453%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138195%_ _%stx138196%_)
        (let* ((_%__stx144759144760%_ _%stx138196%_)
               (_%g138199138228%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144759144760%_)))))
          (let ((_%__kont144761144762%_
                 (lambda (_%L138296%_ _%L138297%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138195%_
                          _%stx138196%_))
                       (let ((_%f138319%_
                              (let ((__tmp145311
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138297%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138195%_
                                 __tmp145311))))
                         (let _%lp138321%_ ((_%rest138324%_
                                             (reverse (let ((__tmp145317
                                                             (lambda (_%g138441138444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138442138446%_)
                       (cons _%g138441138444%_ _%g138442138446%_))))
                (declare (not safe))
                (__foldr1 __tmp145317 '() _%L138296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138326%_ '())
                                            (_%args138327%_ '()))
                           (let* ((_%rest138328138336%_ _%rest138324%_)
                                  (_%else138330138344%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138326%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138327%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138332138430%_
                                   (lambda (_%rest138347%_ _%e138348%_)
                                     (let* ((_%__stx144713144714%_ _%e138348%_)
                                            (_%g138353138371%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144713144714%_)))))
                                       (let ((_%__kont144715144716%_
                                              (lambda ()
                                                (let ((__tmp145312
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138348%_))
                     _%args138327%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138321%_
                                                   _%rest138347%_
                                                   _%bind138326%_
                                                   __tmp145312))))
                                             (_%__kont144717144718%_
                                              (lambda ()
                                                (let ((__tmp145313
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138348%_))
                     _%args138327%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138321%_
                                                   _%rest138347%_
                                                   _%bind138326%_
                                                   __tmp145313))))
                                             (_%__kont144719144720%_
                                              (lambda ()
                                                (let ((_%tmp138378%_
                                                       (let ((__tmp145314
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145316
                                                         (cons (cons _%tmp138378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138348%_))
                                   '()))
                       _%bind138326%_))
                (__tmp145315 (cons _%tmp138378%_ _%args138327%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138321%_
                                                     _%rest138347%_
                                                     __tmp145316
                                                     __tmp145315))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144713144714%_))
                                             (let ((_%e138357138409%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144713144714%_))))
                                               (let ((_%tl138355138414%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138357138409%_)))
                                                     (_%hd138356138412%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138357138409%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138356138412%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138356138412%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138355138414%_))
                     (let ((_%e138360138417%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138355138414%_))))
                       (let ((_%tl138358138422%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138360138417%_)))
                             (_%hd138359138420%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138360138417%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138358138422%_))
                             (_%__kont144715144716%_)
                             (_%__kont144719144720%_))))
                     (_%__kont144719144720%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138356138412%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138355138414%_))
                         (let ((_%e138366138394%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138355138414%_))))
                           (let ((_%tl138364138399%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138366138394%_)))
                                 (_%hd138365138397%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138366138394%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138364138399%_))
                                 (_%__kont144717144718%_)
                                 (_%__kont144719144720%_))))
                         (_%__kont144719144720%_))
                     (_%__kont144719144720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144719144720%_))))
                                             (_%__kont144719144720%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138328138336%_))
                                 (let ((_%hd138333138433%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138328138336%_)))
                                       (_%tl138334138435%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138328138336%_))))
                                   (let* ((_%e138438%_ _%hd138333138433%_)
                                          (_%rest138440%_ _%tl138334138435%_))
                                     (declare (not safe))
                                     (_%K138332138430%_
                                      _%rest138440%_
                                      _%e138438%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138330138344%_)))))))))
                (_%__kont144765144766%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138195%_
                      _%stx138196%_)))))
            (let ((_%__match144804144805%_
                   (lambda (_%e138205138240%_
                            _%hd138204138243%_
                            _%tl138203138245%_
                            _%e138208138248%_
                            _%hd138207138251%_
                            _%tl138206138253%_
                            _%e138211138256%_
                            _%hd138210138259%_
                            _%tl138209138261%_
                            _%e138214138264%_
                            _%hd138213138267%_
                            _%tl138212138269%_
                            _%__splice144763144764%_
                            _%target138215138272%_
                            _%tl138217138274%_)
                     (letrec ((_%loop138218138277%_
                               (lambda (_%hd138216138280%_
                                        _%rand138222138282%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138216138280%_))
                                     (let ((_%e138219138285%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138216138280%_))))
                                       (let ((_%lp-tl138221138290%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138219138285%_)))
                                             (_%lp-hd138220138288%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138219138285%_))))
                                         (let ((__tmp145318
                                                (cons _%lp-hd138220138288%_
                                                      _%rand138222138282%_)))
                                           (declare (not safe))
                                           (_%loop138218138277%_
                                            _%lp-tl138221138290%_
                                            __tmp145318))))
                                     (let ((_%rand138223138293%_
                                            (reverse _%rand138222138282%_)))
                                       (_%__kont144761144762%_
                                        _%rand138223138293%_
                                        _%hd138213138267%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138218138277%_ _%target138215138272%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144759144760%_))
                  (let ((_%e138205138240%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144759144760%_))))
                    (let ((_%tl138203138245%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138205138240%_)))
                          (_%hd138204138243%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138205138240%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138203138245%_))
                          (let ((_%e138208138248%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138203138245%_))))
                            (let ((_%tl138206138253%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138208138248%_)))
                                  (_%hd138207138251%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138208138248%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138207138251%_))
                                  (let ((_%e138211138256%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138207138251%_))))
                                    (let ((_%tl138209138261%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138211138256%_)))
                                          (_%hd138210138259%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138211138256%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138210138259%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138210138259%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138209138261%_))
                                                  (let ((_%e138214138264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138209138261%_))))
                                                    (let ((_%tl138212138269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138214138264%_)))
                                                          (_%hd138213138267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138214138264%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138212138269%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138206138253%_))
                      (let ((_%__splice144763144764%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138206138253%_
                                '0))))
                        (let ((_%tl138217138274%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144763144764%_ '1)))
                              (_%target138215138272%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144763144764%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138217138274%_))
                              (_%__match144804144805%_
                               _%e138205138240%_
                               _%hd138204138243%_
                               _%tl138203138245%_
                               _%e138208138248%_
                               _%hd138207138251%_
                               _%tl138206138253%_
                               _%e138211138256%_
                               _%hd138210138259%_
                               _%tl138209138261%_
                               _%e138214138264%_
                               _%hd138213138267%_
                               _%tl138212138269%_
                               _%__splice144763144764%_
                               _%target138215138272%_
                               _%tl138217138274%_)
                              (_%__kont144765144766%_))))
                      (_%__kont144765144766%_))
                  (_%__kont144765144766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144765144766%_))
                                              (_%__kont144765144766%_))
                                          (_%__kont144765144766%_))))
                                  (_%__kont144765144766%_))))
                          (_%__kont144765144766%_))))
                  (_%__kont144765144766%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138007%_ _%stx138008%_)
        (letrec ((_%simplify138010%_
                  (lambda (_%code138095%_)
                    (let* ((_%code138096138114%_ _%code138095%_)
                           (_%else138098138122%_ (lambda () _%code138095%_))
                           (_%K138100138158%_
                            (lambda (_%expr138125%_ _%test138126%_)
                              (let* ((_%expr138127138135%_ _%expr138125%_)
                                     (_%else138129138143%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138126%_
                                                    (cons _%expr138125%_
                                                          '())))))
                                     (_%K138131138148%_
                                      (lambda (_%exprs138146%_)
                                        (cons 'and
                                              (cons _%test138126%_
                                                    _%exprs138146%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138127138135%_))
                                    (let ((_%hd138132138151%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138127138135%_)))
                                          (_%tl138133138153%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138127138135%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138132138151%_ 'and))
                                          (let ((_%exprs138156%_
                                                 _%tl138133138153%_))
                                            (declare (not safe))
                                            (_%K138131138148%_
                                             _%exprs138156%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138129138143%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138129138143%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138096138114%_))
                          (let ((_%hd138101138161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138096138114%_)))
                                (_%tl138102138163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138096138114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138101138161%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138102138163%_))
                                    (let ((_%hd138103138166%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138102138163%_)))
                                          (_%tl138104138168%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138102138163%_))))
                                      (let ((_%test138171%_
                                             _%hd138103138166%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138104138168%_))
                                            (let ((_%hd138105138173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138104138168%_)))
                                                  (_%tl138106138175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138104138168%_))))
                                              (let ((_%expr138178%_
                                                     _%hd138105138173%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138106138175%_))
                                                    (let ((_%hd138107138180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138106138175%_)))
                                                          (_%tl138108138182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138106138175%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138107138180%_))
                                                          (let ((_%hd138109138185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138107138180%_)))
                        (_%tl138110138187%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138107138180%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138109138185%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138110138187%_))
                            (let ((_%hd138111138190%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138110138187%_)))
                                  (_%tl138112138192%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138110138187%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138111138190%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138112138192%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138108138182%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138100138158%_
                                             _%expr138178%_
                                             _%test138171%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138098138122%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138098138122%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138098138122%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138098138122%_)))
                        (let () (declare (not safe)) (_%else138098138122%_))))
                  (let () (declare (not safe)) (_%else138098138122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138098138122%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138098138122%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138098138122%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138098138122%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138098138122%_)))))))
          (let* ((_%g138012138033%_
                  (lambda (_%g138013138030%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138013138030%_))))
                 (_%g138011138092%_
                  (lambda (_%g138013138036%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138013138036%_))
                        (let ((_%e138019138038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138013138036%_))))
                          (let ((_%hd138018138041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138019138038%_)))
                                (_%tl138017138043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138019138038%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138017138043%_))
                                (let ((_%e138022138046%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138017138043%_))))
                                  (let ((_%hd138021138049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138022138046%_)))
                                        (_%tl138020138051%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138022138046%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138020138051%_))
                                        (let ((_%e138025138054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138020138051%_))))
                                          (let ((_%hd138024138057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138025138054%_)))
                                                (_%tl138023138059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138025138054%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138023138059%_))
                                                (let ((_%e138028138062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138023138059%_))))
                                                  (let ((_%hd138027138065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138028138062%_)))
                                                        (_%tl138026138067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138028138062%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138026138067%_))
                                                        ((lambda (_%L138070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138071%_
                          _%L138072%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145319
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138007%_
                                             _%L138072%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138007%_
                                                   _%L138071%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138007%_
                                                         _%L138070%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138010%_ __tmp145319))
                       (cons 'if
                             (cons (let ((__tmp145320
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138007%_
                                               _%L138072%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145320
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138007%_
                                            _%L138071%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138007%_
                                                  _%L138070%_))
                                               '()))))))
                 _%hd138027138065%_
                 _%hd138024138057%_
                 _%hd138021138049%_)
                (let ()
                  (declare (not safe))
                  (_%g138012138033%_ _%g138013138036%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138012138033%_
                                                   _%g138013138036%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138012138033%_
                                           _%g138013138036%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138012138033%_ _%g138013138036%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138012138033%_ _%g138013138036%_))))))
            (declare (not safe))
            (_%g138011138092%_ _%stx138008%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137955%_ _%stx137956%_)
        (let* ((_%g137958137971%_
                (lambda (_%g137959137968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137959137968%_))))
               (_%g137957138004%_
                (lambda (_%g137959137974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137959137974%_))
                      (let ((_%e137963137976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137959137974%_))))
                        (let ((_%hd137962137979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137963137976%_)))
                              (_%tl137961137981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137963137976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137961137981%_))
                              (let ((_%e137966137984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137961137981%_))))
                                (let ((_%hd137965137987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137966137984%_)))
                                      (_%tl137964137989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137966137984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137964137989%_))
                                      ((lambda (_%L137992%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137992%_)))
                                       _%hd137965137987%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g137958137971%_
                                         _%g137959137974%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137958137971%_ _%g137959137974%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137958137971%_ _%g137959137974%_))))))
          (declare (not safe))
          (_%g137957138004%_ _%stx137956%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137887%_ _%stx137888%_)
        (let* ((_%g137890137907%_
                (lambda (_%g137891137904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137891137904%_))))
               (_%g137889137952%_
                (lambda (_%g137891137910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137891137910%_))
                      (let ((_%e137896137912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137891137910%_))))
                        (let ((_%hd137895137915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137896137912%_)))
                              (_%tl137894137917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137896137912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137894137917%_))
                              (let ((_%e137899137920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137894137917%_))))
                                (let ((_%hd137898137923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137899137920%_)))
                                      (_%tl137897137925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137899137920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137897137925%_))
                                      (let ((_%e137902137928%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137897137925%_))))
                                        (let ((_%hd137901137931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137902137928%_)))
                                              (_%tl137900137933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137902137928%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137900137933%_))
                                              ((lambda (_%L137936%_
                                                        _%L137937%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137937%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137887%_ _%L137936%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137901137931%_
                                               _%hd137898137923%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137890137907%_
                                                 _%g137891137910%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137890137907%_
                                         _%g137891137910%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137890137907%_ _%g137891137910%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137890137907%_ _%g137891137910%_))))))
          (declare (not safe))
          (_%g137889137952%_ _%stx137888%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137698%_ _%stx137699%_)
        (let* ((_%g137701137718%_
                (lambda (_%g137702137715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137702137715%_))))
               (_%g137700137884%_
                (lambda (_%g137702137721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137702137721%_))
                      (let ((_%e137707137723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137702137721%_))))
                        (let ((_%hd137706137726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137707137723%_)))
                              (_%tl137705137728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137707137723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137705137728%_))
                              (let ((_%e137710137731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137705137728%_))))
                                (let ((_%hd137709137734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137710137731%_)))
                                      (_%tl137708137736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137710137731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137708137736%_))
                                      (let ((_%e137713137739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137708137736%_))))
                                        (let ((_%hd137712137742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137713137739%_)))
                                              (_%tl137711137744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137713137739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137711137744%_))
                                              ((lambda (_%L137747%_
                                                        _%L137748%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137698%_ _%L137747%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137698%_ _%L137748%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137763%_ ((_%rest137766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137748%_ (cons _%L137747%_ '())))
                                (_%bind137768%_ '())
                                (_%args137769%_ '()))
               (let* ((_%rest137770137778%_ _%rest137766%_)
                      (_%else137772137786%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137768%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137769%_)
                                                 '()))))))
                      (_%K137774137872%_
                       (lambda (_%rest137789%_ _%e137790%_)
                         (let* ((_%__stx144807144808%_ _%e137790%_)
                                (_%g137795137813%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144807144808%_)))))
                           (let ((_%__kont144809144810%_
                                  (lambda ()
                                    (let ((__tmp145321
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137790%_))
                                                 _%args137769%_)))
                                      (declare (not safe))
                                      (_%lp137763%_
                                       _%rest137789%_
                                       _%bind137768%_
                                       __tmp145321))))
                                 (_%__kont144811144812%_
                                  (lambda ()
                                    (let ((__tmp145322
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137790%_))
                                                 _%args137769%_)))
                                      (declare (not safe))
                                      (_%lp137763%_
                                       _%rest137789%_
                                       _%bind137768%_
                                       __tmp145322))))
                                 (_%__kont144813144814%_
                                  (lambda ()
                                    (let ((_%tmp137820%_
                                           (let ((__tmp145323
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145323))))
                                      (let ((__tmp145325
                                             (cons (cons _%tmp137820%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137790%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137768%_))
                                            (__tmp145324
                                             (cons _%tmp137820%_
                                                   _%args137769%_)))
                                        (declare (not safe))
                                        (_%lp137763%_
                                         _%rest137789%_
                                         __tmp145325
                                         __tmp145324))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144807144808%_))
                                 (let ((_%e137799137851%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144807144808%_))))
                                   (let ((_%tl137797137856%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137799137851%_)))
                                         (_%hd137798137854%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137799137851%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137798137854%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137798137854%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137797137856%_))
                                                 (let ((_%e137802137859%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137797137856%_))))
                                                   (let ((_%tl137800137864%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137802137859%_)))
                                                         (_%hd137801137862%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137802137859%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137800137864%_))
                                                         (_%__kont144809144810%_)
                                                         (_%__kont144813144814%_))))
                                                 (_%__kont144813144814%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137798137854%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137797137856%_))
                                                     (let ((_%e137808137836%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137797137856%_))))
                                                       (let ((_%tl137806137841%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137808137836%_)))
                     (_%hd137807137839%_
                      (let () (declare (not safe)) (##car _%e137808137836%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137806137841%_))
                     (_%__kont144811144812%_)
                     (_%__kont144813144814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144813144814%_))
                                                 (_%__kont144813144814%_)))
                                         (_%__kont144813144814%_))))
                                 (_%__kont144813144814%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137770137778%_))
                     (let ((_%hd137775137875%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137770137778%_)))
                           (_%tl137776137877%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137770137778%_))))
                       (let* ((_%e137880%_ _%hd137775137875%_)
                              (_%rest137882%_ _%tl137776137877%_))
                         (declare (not safe))
                         (_%K137774137872%_ _%rest137882%_ _%e137880%_)))
                     (let () (declare (not safe)) (_%else137772137786%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137712137742%_
                                               _%hd137709137734%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137701137718%_
                                                 _%g137702137721%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137701137718%_
                                         _%g137702137721%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137701137718%_ _%g137702137721%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137701137718%_ _%g137702137721%_))))))
          (declare (not safe))
          (_%g137700137884%_ _%stx137699%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137509%_ _%stx137510%_)
        (let* ((_%g137512137529%_
                (lambda (_%g137513137526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137513137526%_))))
               (_%g137511137695%_
                (lambda (_%g137513137532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137513137532%_))
                      (let ((_%e137518137534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137513137532%_))))
                        (let ((_%hd137517137537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137518137534%_)))
                              (_%tl137516137539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137518137534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137516137539%_))
                              (let ((_%e137521137542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137516137539%_))))
                                (let ((_%hd137520137545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137521137542%_)))
                                      (_%tl137519137547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137521137542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137519137547%_))
                                      (let ((_%e137524137550%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137519137547%_))))
                                        (let ((_%hd137523137553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137524137550%_)))
                                              (_%tl137522137555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137524137550%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137522137555%_))
                                              ((lambda (_%L137558%_
                                                        _%L137559%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137509%_ _%L137558%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137509%_ _%L137559%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137574%_ ((_%rest137577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137559%_ (cons _%L137558%_ '())))
                                (_%bind137579%_ '())
                                (_%args137580%_ '()))
               (let* ((_%rest137581137589%_ _%rest137577%_)
                      (_%else137583137597%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137579%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137580%_)
                                                 '()))))))
                      (_%K137585137683%_
                       (lambda (_%rest137600%_ _%e137601%_)
                         (let* ((_%__stx144853144854%_ _%e137601%_)
                                (_%g137606137624%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144853144854%_)))))
                           (let ((_%__kont144855144856%_
                                  (lambda ()
                                    (let ((__tmp145326
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137601%_))
                                                 _%args137580%_)))
                                      (declare (not safe))
                                      (_%lp137574%_
                                       _%rest137600%_
                                       _%bind137579%_
                                       __tmp145326))))
                                 (_%__kont144857144858%_
                                  (lambda ()
                                    (let ((__tmp145327
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137601%_))
                                                 _%args137580%_)))
                                      (declare (not safe))
                                      (_%lp137574%_
                                       _%rest137600%_
                                       _%bind137579%_
                                       __tmp145327))))
                                 (_%__kont144859144860%_
                                  (lambda ()
                                    (let ((_%tmp137631%_
                                           (let ((__tmp145328
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145328))))
                                      (let ((__tmp145330
                                             (cons (cons _%tmp137631%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137601%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137579%_))
                                            (__tmp145329
                                             (cons _%tmp137631%_
                                                   _%args137580%_)))
                                        (declare (not safe))
                                        (_%lp137574%_
                                         _%rest137600%_
                                         __tmp145330
                                         __tmp145329))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144853144854%_))
                                 (let ((_%e137610137662%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144853144854%_))))
                                   (let ((_%tl137608137667%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137610137662%_)))
                                         (_%hd137609137665%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137610137662%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137609137665%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137609137665%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137608137667%_))
                                                 (let ((_%e137613137670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137608137667%_))))
                                                   (let ((_%tl137611137675%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137613137670%_)))
                                                         (_%hd137612137673%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137613137670%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137611137675%_))
                                                         (_%__kont144855144856%_)
                                                         (_%__kont144859144860%_))))
                                                 (_%__kont144859144860%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137609137665%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137608137667%_))
                                                     (let ((_%e137619137647%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137608137667%_))))
                                                       (let ((_%tl137617137652%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137619137647%_)))
                     (_%hd137618137650%_
                      (let () (declare (not safe)) (##car _%e137619137647%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137617137652%_))
                     (_%__kont144857144858%_)
                     (_%__kont144859144860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144859144860%_))
                                                 (_%__kont144859144860%_)))
                                         (_%__kont144859144860%_))))
                                 (_%__kont144859144860%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137581137589%_))
                     (let ((_%hd137586137686%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137581137589%_)))
                           (_%tl137587137688%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137581137589%_))))
                       (let* ((_%e137691%_ _%hd137586137686%_)
                              (_%rest137693%_ _%tl137587137688%_))
                         (declare (not safe))
                         (_%K137585137683%_ _%rest137693%_ _%e137691%_)))
                     (let () (declare (not safe)) (_%else137583137597%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137523137553%_
                                               _%hd137520137545%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137512137529%_
                                                 _%g137513137532%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137512137529%_
                                         _%g137513137532%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137512137529%_ _%g137513137532%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137512137529%_ _%g137513137532%_))))))
          (declare (not safe))
          (_%g137511137695%_ _%stx137510%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137425%_ _%stx137426%_)
        (let* ((_%g137428137449%_
                (lambda (_%g137429137446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137429137446%_))))
               (_%g137427137506%_
                (lambda (_%g137429137452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137429137452%_))
                      (let ((_%e137435137454%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137429137452%_))))
                        (let ((_%hd137434137457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137435137454%_)))
                              (_%tl137433137459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137435137454%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137433137459%_))
                              (let ((_%e137438137462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137433137459%_))))
                                (let ((_%hd137437137465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137438137462%_)))
                                      (_%tl137436137467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137438137462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137436137467%_))
                                      (let ((_%e137441137470%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137436137467%_))))
                                        (let ((_%hd137440137473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137441137470%_)))
                                              (_%tl137439137475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137441137470%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137439137475%_))
                                              (let ((_%e137444137478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137439137475%_))))
                                                (let ((_%hd137443137481%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137444137478%_)))
                                                      (_%tl137442137483%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137444137478%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137442137483%_))
                                                      ((lambda (_%L137486%_
                                                                _%L137487%_
                                                                _%L137488%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137425%_ _%L137486%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137425%_
                                      _%L137487%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137425%_
                                            _%L137488%_))
                                         (cons ''#f '()))))))
               _%hd137443137481%_
               _%hd137440137473%_
               _%hd137437137465%_)
              (let ()
                (declare (not safe))
                (_%g137428137449%_ _%g137429137452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137428137449%_
                                                 _%g137429137452%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137428137449%_
                                         _%g137429137452%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137428137449%_ _%g137429137452%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137428137449%_ _%g137429137452%_))))))
          (declare (not safe))
          (_%g137427137506%_ _%stx137426%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137325%_ _%stx137326%_)
        (let* ((_%g137328137353%_
                (lambda (_%g137329137350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137329137350%_))))
               (_%g137327137422%_
                (lambda (_%g137329137356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137329137356%_))
                      (let ((_%e137336137358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137329137356%_))))
                        (let ((_%hd137335137361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137336137358%_)))
                              (_%tl137334137363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137336137358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137334137363%_))
                              (let ((_%e137339137366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137334137363%_))))
                                (let ((_%hd137338137369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137339137366%_)))
                                      (_%tl137337137371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137339137366%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137337137371%_))
                                      (let ((_%e137342137374%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137337137371%_))))
                                        (let ((_%hd137341137377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137342137374%_)))
                                              (_%tl137340137379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137342137374%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137340137379%_))
                                              (let ((_%e137345137382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137340137379%_))))
                                                (let ((_%hd137344137385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137345137382%_)))
                                                      (_%tl137343137387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137345137382%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137343137387%_))
                                                      (let ((_%e137348137390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137343137387%_))))
                (let ((_%hd137347137393%_
                       (let () (declare (not safe)) (##car _%e137348137390%_)))
                      (_%tl137346137395%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137348137390%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137346137395%_))
                      ((lambda (_%L137398%_
                                _%L137399%_
                                _%L137400%_
                                _%L137401%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137325%_
                                        _%L137399%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137325%_
                                              _%L137398%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137325%_
                                                    _%L137400%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137325%_
                                                          _%L137401%_))
                                                       (cons ''#f '())))))))
                       _%hd137347137393%_
                       _%hd137344137385%_
                       _%hd137341137377%_
                       _%hd137338137369%_)
                      (let ()
                        (declare (not safe))
                        (_%g137328137353%_ _%g137329137356%_)))))
              (let ()
                (declare (not safe))
                (_%g137328137353%_ _%g137329137356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137328137353%_
                                                 _%g137329137356%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137328137353%_
                                         _%g137329137356%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137328137353%_ _%g137329137356%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137328137353%_ _%g137329137356%_))))))
          (declare (not safe))
          (_%g137327137422%_ _%stx137326%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137241%_ _%stx137242%_)
        (let* ((_%g137244137265%_
                (lambda (_%g137245137262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137245137262%_))))
               (_%g137243137322%_
                (lambda (_%g137245137268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137245137268%_))
                      (let ((_%e137251137270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137245137268%_))))
                        (let ((_%hd137250137273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137251137270%_)))
                              (_%tl137249137275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137251137270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137249137275%_))
                              (let ((_%e137254137278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137249137275%_))))
                                (let ((_%hd137253137281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137254137278%_)))
                                      (_%tl137252137283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137254137278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137252137283%_))
                                      (let ((_%e137257137286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137252137283%_))))
                                        (let ((_%hd137256137289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137257137286%_)))
                                              (_%tl137255137291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137257137286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137255137291%_))
                                              (let ((_%e137260137294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137255137291%_))))
                                                (let ((_%hd137259137297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137260137294%_)))
                                                      (_%tl137258137299%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137260137294%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137258137299%_))
                                                      ((lambda (_%L137302%_
                                                                _%L137303%_
                                                                _%L137304%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137241%_ _%L137302%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137241%_
                                      _%L137303%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137241%_
                                            _%L137304%_))
                                         (cons ''#f '()))))))
               _%hd137259137297%_
               _%hd137256137289%_
               _%hd137253137281%_)
              (let ()
                (declare (not safe))
                (_%g137244137265%_ _%g137245137268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137244137265%_
                                                 _%g137245137268%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137244137265%_
                                         _%g137245137268%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137244137265%_ _%g137245137268%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137244137265%_ _%g137245137268%_))))))
          (declare (not safe))
          (_%g137243137322%_ _%stx137242%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137141%_ _%stx137142%_)
        (let* ((_%g137144137169%_
                (lambda (_%g137145137166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137145137166%_))))
               (_%g137143137238%_
                (lambda (_%g137145137172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137145137172%_))
                      (let ((_%e137152137174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137145137172%_))))
                        (let ((_%hd137151137177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137152137174%_)))
                              (_%tl137150137179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137152137174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137150137179%_))
                              (let ((_%e137155137182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137150137179%_))))
                                (let ((_%hd137154137185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137155137182%_)))
                                      (_%tl137153137187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137155137182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137153137187%_))
                                      (let ((_%e137158137190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137153137187%_))))
                                        (let ((_%hd137157137193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137158137190%_)))
                                              (_%tl137156137195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137158137190%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137156137195%_))
                                              (let ((_%e137161137198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137156137195%_))))
                                                (let ((_%hd137160137201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137161137198%_)))
                                                      (_%tl137159137203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137161137198%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137159137203%_))
                                                      (let ((_%e137164137206%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137159137203%_))))
                (let ((_%hd137163137209%_
                       (let () (declare (not safe)) (##car _%e137164137206%_)))
                      (_%tl137162137211%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137164137206%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137162137211%_))
                      ((lambda (_%L137214%_
                                _%L137215%_
                                _%L137216%_
                                _%L137217%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137141%_
                                        _%L137215%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137141%_
                                              _%L137214%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137141%_
                                                    _%L137216%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137141%_
                                                          _%L137217%_))
                                                       (cons ''#f '())))))))
                       _%hd137163137209%_
                       _%hd137160137201%_
                       _%hd137157137193%_
                       _%hd137154137185%_)
                      (let ()
                        (declare (not safe))
                        (_%g137144137169%_ _%g137145137172%_)))))
              (let ()
                (declare (not safe))
                (_%g137144137169%_ _%g137145137172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137144137169%_
                                                 _%g137145137172%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137144137169%_
                                         _%g137145137172%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137144137169%_ _%g137145137172%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137144137169%_ _%g137145137172%_))))))
          (declare (not safe))
          (_%g137143137238%_ _%stx137142%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136936%_ _%stx136937%_)
        (let* ((_%g136939136960%_
                (lambda (_%g136940136957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136940136957%_))))
               (_%g136938137138%_
                (lambda (_%g136940136963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136940136963%_))
                      (let ((_%e136946136965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136940136963%_))))
                        (let ((_%hd136945136968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136946136965%_)))
                              (_%tl136944136970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136946136965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136944136970%_))
                              (let ((_%e136949136973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136944136970%_))))
                                (let ((_%hd136948136976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136949136973%_)))
                                      (_%tl136947136978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136949136973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136947136978%_))
                                      (let ((_%e136952136981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136947136978%_))))
                                        (let ((_%hd136951136984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136952136981%_)))
                                              (_%tl136950136986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136952136981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136950136986%_))
                                              (let ((_%e136955136989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136950136986%_))))
                                                (let ((_%hd136954136992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136955136989%_)))
                                                      (_%tl136953136994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136955136989%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136953136994%_))
                                                      ((lambda (_%L136997%_
                                                                _%L136998%_
                                                                _%L136999%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136936%_
                                    _%L136997%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136936%_
                                          _%L136998%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137017%_ ((_%rest137020%_
                                         (cons _%L136998%_
                                               (cons _%L136997%_ '())))
                                        (_%bind137022%_ '())
                                        (_%args137023%_ '()))
                       (let* ((_%rest137024137032%_ _%rest137020%_)
                              (_%else137026137040%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137022%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145331 _%args137023%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137028137126%_
                               (lambda (_%rest137043%_ _%e137044%_)
                                 (let* ((_%__stx144899144900%_ _%e137044%_)
                                        (_%g137049137067%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144899144900%_)))))
                                   (let ((_%__kont144901144902%_
                                          (lambda ()
                                            (let ((__tmp145332
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137044%_))
                                                         _%args137023%_)))
                                              (declare (not safe))
                                              (_%lp137017%_
                                               _%rest137043%_
                                               _%bind137022%_
                                               __tmp145332))))
                                         (_%__kont144903144904%_
                                          (lambda ()
                                            (let ((__tmp145333
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137044%_))
                                                         _%args137023%_)))
                                              (declare (not safe))
                                              (_%lp137017%_
                                               _%rest137043%_
                                               _%bind137022%_
                                               __tmp145333))))
                                         (_%__kont144905144906%_
                                          (lambda ()
                                            (let ((_%tmp137074%_
                                                   (let ((__tmp145334
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145334))))
                                              (let ((__tmp145336
                                                     (cons (cons _%tmp137074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137044%_))
                               '()))
                   _%bind137022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145335
                                                     (cons _%tmp137074%_
                                                           _%args137023%_)))
                                                (declare (not safe))
                                                (_%lp137017%_
                                                 _%rest137043%_
                                                 __tmp145336
                                                 __tmp145335))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144899144900%_))
                                         (let ((_%e137053137105%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144899144900%_))))
                                           (let ((_%tl137051137110%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137053137105%_)))
                                                 (_%hd137052137108%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137053137105%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137052137108%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137052137108%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137051137110%_))
                                                         (let ((_%e137056137113%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137051137110%_))))
                   (let ((_%tl137054137118%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137056137113%_)))
                         (_%hd137055137116%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137056137113%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137054137118%_))
                         (_%__kont144901144902%_)
                         (_%__kont144905144906%_))))
                 (_%__kont144905144906%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137052137108%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137051137110%_))
                     (let ((_%e137062137090%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137051137110%_))))
                       (let ((_%tl137060137095%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137062137090%_)))
                             (_%hd137061137093%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137062137090%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137060137095%_))
                             (_%__kont144903144904%_)
                             (_%__kont144905144906%_))))
                     (_%__kont144905144906%_))
                 (_%__kont144905144906%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144905144906%_))))
                                         (_%__kont144905144906%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137024137032%_))
                             (let ((_%hd137029137129%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137024137032%_)))
                                   (_%tl137030137131%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137024137032%_))))
                               (let* ((_%e137134%_ _%hd137029137129%_)
                                      (_%rest137136%_ _%tl137030137131%_))
                                 (declare (not safe))
                                 (_%K137028137126%_
                                  _%rest137136%_
                                  _%e137134%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137026137040%_)))))))
               _%hd136954136992%_
               _%hd136951136984%_
               _%hd136948136976%_)
              (let ()
                (declare (not safe))
                (_%g136939136960%_ _%g136940136963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136939136960%_
                                                 _%g136940136963%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136939136960%_
                                         _%g136940136963%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136939136960%_ _%g136940136963%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136939136960%_ _%g136940136963%_))))))
          (declare (not safe))
          (_%g136938137138%_ _%stx136937%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136715%_ _%stx136716%_)
        (let* ((_%g136718136743%_
                (lambda (_%g136719136740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136719136740%_))))
               (_%g136717136933%_
                (lambda (_%g136719136746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136719136746%_))
                      (let ((_%e136726136748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136719136746%_))))
                        (let ((_%hd136725136751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136726136748%_)))
                              (_%tl136724136753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136726136748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136724136753%_))
                              (let ((_%e136729136756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136724136753%_))))
                                (let ((_%hd136728136759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136729136756%_)))
                                      (_%tl136727136761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136729136756%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136727136761%_))
                                      (let ((_%e136732136764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136727136761%_))))
                                        (let ((_%hd136731136767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136732136764%_)))
                                              (_%tl136730136769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136732136764%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136730136769%_))
                                              (let ((_%e136735136772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136730136769%_))))
                                                (let ((_%hd136734136775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136735136772%_)))
                                                      (_%tl136733136777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136735136772%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136733136777%_))
                                                      (let ((_%e136738136780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136733136777%_))))
                (let ((_%hd136737136783%_
                       (let () (declare (not safe)) (##car _%e136738136780%_)))
                      (_%tl136736136785%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136738136780%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136736136785%_))
                      ((lambda (_%L136788%_
                                _%L136789%_
                                _%L136790%_
                                _%L136791%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136715%_
                                            _%L136789%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136715%_
                                                  _%L136788%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136715%_
                                                        _%L136790%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136812%_ ((_%rest136815%_
                                                 (cons _%L136790%_
                                                       (cons _%L136788%_
                                                             (cons _%L136789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136817%_ '())
                                                (_%args136818%_ '()))
                               (let* ((_%rest136819136827%_ _%rest136815%_)
                                      (_%else136821136835%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136817%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145337 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145337 _%args136818%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136823136921%_
                                       (lambda (_%rest136838%_ _%e136839%_)
                                         (let* ((_%__stx144945144946%_
                                                 _%e136839%_)
                                                (_%g136844136862%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144945144946%_)))))
                                           (let ((_%__kont144947144948%_
                                                  (lambda ()
                                                    (let ((__tmp145338
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136839%_))
                         _%args136818%_)))
              (declare (not safe))
              (_%lp136812%_ _%rest136838%_ _%bind136817%_ __tmp145338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144949144950%_
                                                  (lambda ()
                                                    (let ((__tmp145339
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136839%_))
                         _%args136818%_)))
              (declare (not safe))
              (_%lp136812%_ _%rest136838%_ _%bind136817%_ __tmp145339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144951144952%_
                                                  (lambda ()
                                                    (let ((_%tmp136869%_
                                                           (let ((__tmp145340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145340))))
              (let ((__tmp145342
                     (cons (cons _%tmp136869%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e136839%_))
                                       '()))
                           _%bind136817%_))
                    (__tmp145341 (cons _%tmp136869%_ _%args136818%_)))
                (declare (not safe))
                (_%lp136812%_ _%rest136838%_ __tmp145342 __tmp145341))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144945144946%_))
                                                 (let ((_%e136848136900%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144945144946%_))))
                                                   (let ((_%tl136846136905%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136848136900%_)))
                                                         (_%hd136847136903%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136848136900%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136847136903%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136847136903%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136846136905%_))
                         (let ((_%e136851136908%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136846136905%_))))
                           (let ((_%tl136849136913%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136851136908%_)))
                                 (_%hd136850136911%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136851136908%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136849136913%_))
                                 (_%__kont144947144948%_)
                                 (_%__kont144951144952%_))))
                         (_%__kont144951144952%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136847136903%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136846136905%_))
                             (let ((_%e136857136885%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136846136905%_))))
                               (let ((_%tl136855136890%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136857136885%_)))
                                     (_%hd136856136888%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136857136885%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136855136890%_))
                                     (_%__kont144949144950%_)
                                     (_%__kont144951144952%_))))
                             (_%__kont144951144952%_))
                         (_%__kont144951144952%_)))
                 (_%__kont144951144952%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144951144952%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136819136827%_))
                                     (let ((_%hd136824136924%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136819136827%_)))
                                           (_%tl136825136926%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136819136827%_))))
                                       (let* ((_%e136929%_ _%hd136824136924%_)
                                              (_%rest136931%_
                                               _%tl136825136926%_))
                                         (declare (not safe))
                                         (_%K136823136921%_
                                          _%rest136931%_
                                          _%e136929%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else136821136835%_)))))))
                       _%hd136737136783%_
                       _%hd136734136775%_
                       _%hd136731136767%_
                       _%hd136728136759%_)
                      (let ()
                        (declare (not safe))
                        (_%g136718136743%_ _%g136719136746%_)))))
              (let ()
                (declare (not safe))
                (_%g136718136743%_ _%g136719136746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136718136743%_
                                                 _%g136719136746%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136718136743%_
                                         _%g136719136746%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136718136743%_ _%g136719136746%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136718136743%_ _%g136719136746%_))))))
          (declare (not safe))
          (_%g136717136933%_ _%stx136716%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136554%_ _%stx136555%_)
        (letrec ((_%import-set-template136557%_
                  (lambda (_%in136660%_ _%phi136661%_)
                    (let ((_%iphi136663%_
                           (fx+ _%phi136661%_
                                (##direct-structure-ref
                                 _%in136660%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136664%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136660%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136666%_ ((_%rest136668%_ _%imports136664%_)
                                         (_%r136669%_ '()))
                        (let* ((_%rest136670136678%_ _%rest136668%_)
                               (_%else136672136686%_ (lambda () _%r136669%_))
                               (_%K136674136703%_
                                (lambda (_%rest136689%_ _%in136690%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136690%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi136663%_))
                                            (let ((__tmp145343
                                                   (cons _%in136690%_
                                                         _%r136669%_)))
                                              (declare (not safe))
                                              (_%lp136666%_
                                               _%rest136689%_
                                               __tmp145343))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp136666%_
                                               _%rest136689%_
                                               _%r136669%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136690%_
                                             'gx#module-import::t))
                                          (let ((_%iphi136694%_
                                                 (fx+ _%phi136661%_
                                                      (##direct-structure-ref
                                                       _%in136690%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi136694%_))
                                                (let ((__tmp145344
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _%in136690%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _%r136669%_)))
                                                  (declare (not safe))
                                                  (_%lp136666%_
                                                   _%rest136689%_
                                                   __tmp145344))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp136666%_
                                                   _%rest136689%_
                                                   _%r136669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136690%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi136697%_
                                                     (fx+ _%iphi136663%_
                                                          (##direct-structure-ref
                                                           _%in136690%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi136697%_))
                                                    (let ((__tmp145345
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in136690%_
                          '1
                          gx#import-set::t
                          '#f)
                         _%r136669%_)))
              (declare (not safe))
              (_%lp136666%_ _%rest136689%_ __tmp145345))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi136697%_))
                                                        (let ((__tmp145346
                                                               (let ((__tmp145347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_%import-set-template136557%_
                                 _%in136690%_
                                 _%iphi136663%_))))
                         (declare (not safe))
                         (__foldl1 cons _%r136669%_ __tmp145347))))
                  (declare (not safe))
                  (_%lp136666%_ _%rest136689%_ __tmp145346))
                (let ()
                  (declare (not safe))
                  (_%lp136666%_ _%rest136689%_ _%r136669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%lp136666%_
                                                 _%rest136689%_
                                                 _%r136669%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136670136678%_))
                              (let ((_%hd136675136706%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136670136678%_)))
                                    (_%tl136676136708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136670136678%_))))
                                (let* ((_%in136711%_ _%hd136675136706%_)
                                       (_%rest136713%_ _%tl136676136708%_))
                                  (declare (not safe))
                                  (_%K136674136703%_
                                   _%rest136713%_
                                   _%in136711%_)))
                              (let ()
                                (declare (not safe))
                                (_%else136672136686%_)))))))))
          (let* ((_%g136559136569%_
                  (lambda (_%g136560136566%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136560136566%_))))
                 (_%g136558136657%_
                  (lambda (_%g136560136572%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136560136572%_))
                        (let ((_%e136564136574%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136560136572%_))))
                          (let ((_%hd136563136577%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136564136574%_)))
                                (_%tl136562136579%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136564136574%_))))
                            ((lambda (_%L136582%_)
                               (let ((_%ht136593%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136595%_ ((_%rest136597%_
                                                     _%L136582%_)
                                                    (_%loads136598%_ '()))
                                   (letrec ((_%K136600%_
                                             (lambda (_%ctx136650%_
                                                      _%rest136651%_)
                                               (let ((_%id136653%_
                                                      (##structure-ref
                                                       _%ctx136650%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136593%_
                                                        _%id136653%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp136595%_
                                                        _%rest136651%_
                                                        _%loads136598%_))
                                                     (let ((_%rt136655%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136653%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136593%_
                                                          _%id136653%_
                                                          _%rt136655%_))
                                                       (let ((__tmp145348
                                                              (cons _%rt136655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads136598%_)))
                 (declare (not safe))
                 (_%lp136595%_ _%rest136651%_ __tmp145348))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest136601136609%_
                                             _%rest136597%_)
                                            (_%else136603136621%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145350
                                                            (lambda (_%g136616136618%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136616136618%_)))
                   (__tmp145349 (reverse _%loads136598%_)))
               (declare (not safe))
               (##map __tmp145350 __tmp145349)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136605136638%_
                                             (lambda (_%rest136624%_
                                                      _%in136625%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136625%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%K136600%_
                                                      _%in136625%_
                                                      _%rest136624%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136625%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in136625%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145351
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in136625%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K136600%_ __tmp145351 _%rest136624%_))
                     (let ()
                       (declare (not safe))
                       (_%lp136595%_ _%rest136624%_ _%loads136598%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136625%_
                      'gx#import-set::t))
                   (let ((_%phi136630%_
                          (##direct-structure-ref
                           _%in136625%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi136630%_)
                         (let ((__tmp145352
                                (##direct-structure-ref
                                 _%in136625%_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_%K136600%_ __tmp145352 _%rest136624%_))
                         (if (fxpositive? _%phi136630%_)
                             (let ()
                               (let* ((_%deps136634%_
                                       (let ()
                                         (declare (not safe))
                                         (_%import-set-template136557%_
                                          _%in136625%_
                                          '0)))
                                      (__tmp145353
                                       (let ()
                                         (declare (not safe))
                                         (__foldl1
                                          cons
                                          _%rest136624%_
                                          _%deps136634%_))))
                                 (declare (not safe))
                                 (_%lp136595%_ __tmp145353 _%loads136598%_)))
                             (let ()
                               (declare (not safe))
                               (_%lp136595%_
                                _%rest136624%_
                                _%loads136598%_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx136555%_
                      _%in136625%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136601136609%_))
                                           (let ((_%hd136606136641%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136601136609%_)))
                                                 (_%tl136607136643%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136601136609%_))))
                                             (let* ((_%in136646%_
                                                     _%hd136606136641%_)
                                                    (_%rest136648%_
                                                     _%tl136607136643%_))
                                               (declare (not safe))
                                               (_%K136605136638%_
                                                _%rest136648%_
                                                _%in136646%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else136603136621%_))))))))
                             _%tl136562136579%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136559136569%_ _%g136560136572%_))))))
            (declare (not safe))
            (_%g136558136657%_ _%stx136555%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136367%_ _%stx136368%_)
        (letrec ((_%add-lift!136370%_
                  (lambda (_%expr136552%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136552%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136371%_
                  (lambda (_%id136549%_ _%marks136550%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136549%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136550%_
                                                        '()))))))))
                 (_%generate-simple136372%_
                  (lambda (_%stxq136544%_)
                    (let ((_%gid136546%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136547%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq136544%_))))
                      (let ((__tmp145354
                             (cons 'define
                                   (cons _%gid136546%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136371%_
                                                  _%qid136547%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136370%_ __tmp145354))
                      (let ((__tmp145355
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145355 _%stxq136544%_ _%gid136546%_))
                      _%gid136546%_)))
                 (_%generate-serialized136373%_
                  (lambda (_%stxq136534%_ _%marks136535%_)
                    (let* ((_%mark-refs136537%_
                            (map _%generate-mark136374%_ _%marks136535%_))
                           (_%gid136539%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136541%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq136534%_))))
                      (let ((__tmp145356
                             (cons 'define
                                   (cons _%gid136539%_
                                         (cons (let ((__tmp145357
                                                      (cons 'list
                                                            _%mark-refs136537%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136371%_
                                                  _%qid136541%_
                                                  __tmp145357))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136370%_ __tmp145356))
                      (let ((__tmp145358
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145358 _%stxq136534%_ _%gid136539%_))
                      _%gid136539%_)))
                 (_%generate-mark136374%_
                  (lambda (_%mark136519%_)
                    (let ((_%$e136521%_
                           (let ((__tmp145359
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145359 _%mark136519%_))))
                      (if _%$e136521%_
                          (values _%$e136521%_)
                          (let ()
                            (let* ((_%gid136525%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr136527%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136375%_
                                       _%mark136519%_)))
                                   (_%ctx136529%_
                                    (let ((__tmp145360
                                           (##structure-ref
                                            _%mark136519%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145360)))
                                   (_%ctx-ref136531%_
                                    (if (eq? _%ctx136529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136376%_ _%ctx136529%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145361
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145361
                                 _%mark136519%_
                                 _%gid136525%_))
                              (let ((__tmp145362
                                     (cons 'define
                                           (cons _%gid136525%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr136527%_ '()))
                           (cons _%ctx-ref136531%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136370%_ __tmp145362))
                              _%gid136525%_))))))
                 (_%serialize-mark136375%_
                  (lambda (_%mark136466%_)
                    (letrec ((_%quote-e136468%_
                              (lambda (_%sym136517%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136517%_))
                                    _%sym136517%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136517%_))))))
                      (let* ((_%mark136469136478%_ _%mark136466%_)
                             (_%E136471136482%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136469136478%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136472136494%_
                              (lambda (_%trace136485%_
                                       _%phi136486%_
                                       _%ctx136487%_
                                       _%subst136488%_)
                                (let ((_%subs136490%_
                                       (if _%subst136488%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136488%_))
                                           '())))
                                  (cons _%phi136486%_
                                        (map (lambda (_%pair136492%_)
                                               (cons (let ((__tmp145363
                                                            (car _%pair136492%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136468%_
                                                        __tmp145363))
                                                     (let ((__tmp145364
                                                            (cdr _%pair136492%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136468%_
                                                        __tmp145364))))
                                             _%subs136490%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136469136478%_
                               'gx#expander-mark::t))
                            (let* ((_%e136473136497%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136469136478%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136500%_ _%e136473136497%_)
                                   (_%e136474136502%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136469136478%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136505%_ _%e136474136502%_)
                                   (_%e136475136507%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136469136478%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136510%_ _%e136475136507%_)
                                   (_%e136476136512%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136469136478%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136515%_ _%e136476136512%_))
                              (declare (not safe))
                              (_%K136472136494%_
                               _%trace136515%_
                               _%phi136510%_
                               _%ctx136505%_
                               _%subst136500%_))
                            (let ()
                              (declare (not safe))
                              (_%E136471136482%_)))))))
                 (_%context-ref136376%_
                  (lambda (_%ctx136453%_)
                    (if (let ((__tmp145365
                               (##structure-ref
                                _%ctx136453%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145365
                           'gx#module-context::t))
                        (let ((_%ctx-ref136455%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136378%_ _%ctx136453%_)))
                              (_%ctx-origin136456%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136377%_ _%ctx136453%_)))
                              (_%origin136457%_
                               (let ((__tmp145366
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136377%_ __tmp145366))))
                          (if (eq? _%origin136457%_ _%ctx-origin136456%_)
                              (let ((_%ref136459%_
                                     (let ((__tmp145367
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136378%_
                                        __tmp145367))))
                                (let _%lp136461%_ ((_%ref136463%_
                                                    (cdr _%ref136459%_))
                                                   (_%ctx-ref136464%_
                                                    (cdr _%ctx-ref136455%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref136463%_))
                                           (eq? (car _%ref136463%_)
                                                (car _%ctx-ref136464%_)))
                                      (let ((__tmp145369 (cdr _%ref136463%_))
                                            (__tmp145368
                                             (cdr _%ctx-ref136464%_)))
                                        (declare (not safe))
                                        (_%lp136461%_ __tmp145369 __tmp145368))
                                      (cons '#f _%ctx-ref136464%_))))
                              _%ctx-ref136455%_))
                        (let ((__tmp145370
                               (##structure-ref
                                _%ctx136453%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145370)))))
                 (_%context-ref-origin136377%_
                  (lambda (_%ctx136445%_)
                    (let _%lp136447%_ ((_%ctx136449%_ _%ctx136445%_))
                      (let ((_%super136451%_
                             (##structure-ref
                              _%ctx136449%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136451%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp136447%_ _%super136451%_))
                            _%ctx136449%_)))))
                 (_%context-ref-nested136378%_
                  (lambda (_%ctx136436%_)
                    (let _%lp136438%_ ((_%ctx136440%_ _%ctx136436%_)
                                       (_%r136441%_ '()))
                      (let ((_%super136443%_
                             (##structure-ref
                              _%ctx136440%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136443%_
                               'gx#module-context::t))
                            (let ((__tmp145371
                                   (cons (car (##structure-ref
                                               _%ctx136440%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r136441%_)))
                              (declare (not safe))
                              (_%lp136438%_ _%super136443%_ __tmp145371))
                            (cons (let ((__tmp145372
                                         (##structure-ref
                                          _%ctx136440%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145372))
                                  _%r136441%_)))))))
          (let* ((_%g136380136393%_
                  (lambda (_%g136381136390%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136381136390%_))))
                 (_%g136379136433%_
                  (lambda (_%g136381136396%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136381136396%_))
                        (let ((_%e136385136398%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136381136396%_))))
                          (let ((_%hd136384136401%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136385136398%_)))
                                (_%tl136383136403%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136385136398%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136383136403%_))
                                (let ((_%e136388136406%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136383136403%_))))
                                  (let ((_%hd136387136409%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136388136406%_)))
                                        (_%tl136386136411%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136388136406%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136386136411%_))
                                        ((lambda (_%L136414%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136414%_))
                                               (let ((_%$e136427%_
                                                      (let ((__tmp145373
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145373 _%L136414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136427%_
                                                     (values _%$e136427%_)
                                                     (let ((_%marks136431%_
                                                            (##direct-structure-ref
                                                             _%L136414%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%marks136431%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-simple136372%_
                                                              _%L136414%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-serialized136373%_
                                                              _%L136414%_
                                                              _%marks136431%_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136414%_))))
                                         _%hd136387136409%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136380136393%_
                                           _%g136381136396%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136380136393%_ _%g136381136396%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136380136393%_ _%g136381136396%_))))))
            (declare (not safe))
            (_%g136379136433%_ _%stx136368%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136299%_ _%stx136300%_)
        (let* ((_%g136302136319%_
                (lambda (_%g136303136316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136303136316%_))))
               (_%g136301136364%_
                (lambda (_%g136303136322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136303136322%_))
                      (let ((_%e136308136324%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136303136322%_))))
                        (let ((_%hd136307136327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136308136324%_)))
                              (_%tl136306136329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136308136324%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136306136329%_))
                              (let ((_%e136311136332%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136306136329%_))))
                                (let ((_%hd136310136335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136311136332%_)))
                                      (_%tl136309136337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136311136332%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136309136337%_))
                                      (let ((_%e136314136340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136309136337%_))))
                                        (let ((_%hd136313136343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136314136340%_)))
                                              (_%tl136312136345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136314136340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136312136345%_))
                                              ((lambda (_%L136348%_
                                                        _%L136349%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136349%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136299%_ _%L136348%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136313136343%_
                                               _%hd136310136335%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136302136319%_
                                                 _%g136303136322%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136302136319%_
                                         _%g136303136322%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136302136319%_ _%g136303136322%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136302136319%_ _%g136303136322%_))))))
          (declare (not safe))
          (_%g136301136364%_ _%stx136300%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136248%_ _%stx136249%_)
        (let* ((_%g136251136261%_
                (lambda (_%g136252136258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136252136258%_))))
               (_%g136250136296%_
                (lambda (_%g136252136264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136252136264%_))
                      (let ((_%e136256136266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136252136264%_))))
                        (let ((_%hd136255136269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136256136266%_)))
                              (_%tl136254136271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136256136266%_))))
                          ((lambda (_%L136274%_)
                             (let* ((_%c-body136288%_
                                     (map (lambda (_%g136283136285%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136248%_
                                               _%g136283136285%_)))
                                          _%L136274%_))
                                    (_%c-body136293%_
                                     (let ((__tmp145374
                                            (lambda (_%$obj136290%_)
                                              (let ((__tmp145375
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136290%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145375)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145374
                                        _%c-body136288%_))))
                               (cons '%#begin _%c-body136293%_)))
                           _%tl136254136271%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136251136261%_ _%g136252136264%_))))))
          (declare (not safe))
          (_%g136250136296%_ _%stx136249%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136153%_ _%stx136154%_)
        (let* ((_%g136156136166%_
                (lambda (_%g136157136163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136157136163%_))))
               (_%g136155136245%_
                (lambda (_%g136157136169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136157136169%_))
                      (let ((_%e136161136171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136157136169%_))))
                        (let ((_%hd136160136174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136161136171%_)))
                              (_%tl136159136176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136161136171%_))))
                          ((lambda (_%L136179%_)
                             (let* ((_%phi136189%_
                                     (let ((__tmp145376
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145376 '1)))
                                    (_%block136191%_
                                     (let ((__tmp145377
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136153%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145377
                                        _%phi136189%_)))
                                    (_%compiled136194%_
                                     (let ((__tmp145378
                                            (lambda ()
                                              (let ((__tmp145380
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136153%_
                                                        'state)))
                                                    (__tmp145379
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136179%_)))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi__%
                                                 '#f
                                                 __tmp145380
                                                 __tmp145379)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145378
                                        gx#current-expander-phi
                                        _%phi136189%_))))
                               (let* ((_%g136197136207%_
                                       (lambda (_%g136198136204%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136198136204%_))))
                                      (_%g136196136242%_
                                       (lambda (_%g136198136210%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136198136210%_))
                                             (let ((_%e136202136212%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136198136210%_))))
                                               (let ((_%hd136201136215%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136202136212%_)))
                                                     (_%tl136200136217%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136202136212%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136201136215%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136201136215%_))
                                                         ((lambda (_%L136220%_)
                                                            (let ((_%c-body136237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136234%_)
                                     (let ((__tmp145381
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136234%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145381)))
                                   _%L136220%_)))
                      (if _%block136191%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136237%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136237%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136237%_))))))
                  _%tl136200136217%_)
                 (let ()
                   (declare (not safe))
                   (_%g136197136207%_ _%g136198136210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136197136207%_
                                                        _%g136198136210%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136197136207%_
                                                _%g136198136210%_))))))
                                 (declare (not safe))
                                 (_%g136196136242%_ _%compiled136194%_))))
                           _%tl136159136176%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136156136166%_ _%g136157136169%_))))))
          (declare (not safe))
          (_%g136155136245%_ _%stx136154%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136084%_ _%stx136085%_)
        (let ((__tmp145382
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136084%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145382))
        (let* ((_%g136087136101%_
                (lambda (_%g136088136098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136088136098%_))))
               (_%g136086136150%_
                (lambda (_%g136088136104%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136088136104%_))
                      (let ((_%e136093136106%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136088136104%_))))
                        (let ((_%hd136092136109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136093136106%_)))
                              (_%tl136091136111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136093136106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136091136111%_))
                              (let ((_%e136096136114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136091136111%_))))
                                (let ((_%hd136095136117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136096136114%_)))
                                      (_%tl136094136119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136096136114%_))))
                                  ((lambda (_%L136122%_ _%L136123%_)
                                     (let ((_%key136136%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136123%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136136%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136085%_
                                              _%L136123%_
                                              _%key136136%_)))
                                       (let* ((_%ctx136138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136123%_)))
                                              (_%code136141%_
                                               (let ((__tmp145383
                                                      (lambda ()
                                                        (let ((__tmp145384
                                                               (##structure-ref
                                                                _%ctx136138%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136084%_
                                                           __tmp145384)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145383
                                                  gx#current-expander-context
                                                  _%ctx136138%_)))
                                              (_%rt136143%_
                                               (let ((__tmp145385
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145385
                                                  _%ctx136138%_)))
                                              (_%loader136145%_
                                               (if _%rt136143%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136143%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136123%_))))
                                         (let ((__tmp145386
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136084%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145386))
                                         (cons '%#module
                                               (cons _%modid136147%_
                                                     (cons _%code136141%_
                                                           _%loader136145%_))))))
                                   _%tl136094136119%_
                                   _%hd136095136117%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136087136101%_ _%g136088136104%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136087136101%_ _%g136088136104%_))))))
          (declare (not safe))
          (_%g136086136150%_ _%stx136085%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136071%_ _%context-chain136072%_)
        (let _%lp136074%_ ((_%ctx136076%_ _%ctx136071%_) (_%path136077%_ '()))
          (let ((_%super136079%_
                 (##structure-ref _%ctx136076%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136079%_ _%context-chain136072%_)
                (let ((__tmp145387
                       (let ((__tmp145388
                              (car (##structure-ref
                                    _%ctx136076%_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp145388 _%path136077%_))))
                  (declare (not safe))
                  (cons '#f __tmp145387))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136079%_
                       'gx#module-context::t))
                    (let ((__tmp145389
                           (cons (car (##structure-ref
                                       _%ctx136076%_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _%path136077%_)))
                      (declare (not safe))
                      (_%lp136074%_ _%super136079%_ __tmp145389))
                    (let ()
                      (cons (let ((__tmp145390
                                   (##structure-ref
                                    _%ctx136076%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145390))
                            _%path136077%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136064%_ ((_%ctx136066%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136067%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136066%_ 'gx#module-context::t))
              (let ((__tmp145392
                     (##structure-ref _%ctx136066%_ '3 gx#phi-context::t '#f))
                    (__tmp145391 (cons _%ctx136066%_ _%r136067%_)))
                (declare (not safe))
                (_%lp136064%_ __tmp145392 __tmp145391))
              (let () _%r136067%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self135827%_ _%stx135828%_)
        (letrec* ((_%context-chain135830%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec135831%_
                   (lambda (_%in136000%_)
                     (let* ((_%in136001136013%_ _%in136000%_)
                            (_%E136003136017%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136001136013%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136004136027%_
                             (lambda (_%phi136020%_
                                      _%name136021%_
                                      _%src-name136022%_
                                      _%src-phi136023%_
                                      _%src-key136024%_
                                      _%src-ctx136025%_)
                               (cons _%phi136020%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136021%_))
                                           (cons _%src-phi136023%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136022%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136001136013%_
                              'gx#module-import::t))
                           (let ((_%e136005136030%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136001136013%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136005136030%_
                                    'gx#module-export::t))
                                 (let* ((_%e136008136033%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136005136030%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136036%_ _%e136008136033%_)
                                        (_%e136009136038%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136005136030%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136041%_ _%e136009136038%_)
                                        (_%e136010136043%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136005136030%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136046%_ _%e136010136043%_)
                                        (_%e136011136048%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136005136030%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136051%_ _%e136011136048%_)
                                        (_%e136006136053%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136001136013%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136056%_ _%e136006136053%_)
                                        (_%e136007136058%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136001136013%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136061%_ _%e136007136058%_))
                                   (declare (not safe))
                                   (_%K136004136027%_
                                    _%phi136061%_
                                    _%name136056%_
                                    _%src-name136051%_
                                    _%src-phi136046%_
                                    _%src-key136041%_
                                    _%src-ctx136036%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136003136017%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136003136017%_))))))
                  (_%make-import-path135832%_
                   (lambda (_%ctx135998%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135998%_
                        _%context-chain135830%_))))
                  (_%make-import-spec-in135833%_
                   (lambda (_%ctx135995%_ _%in135996%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path135832%_ _%ctx135995%_))
                                 (reverse _%in135996%_))))))
          (let ((__tmp145393
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self135827%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145393))
          (let* ((_%g135835135845%_
                  (lambda (_%g135836135842%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135836135842%_))))
                 (_%g135834135992%_
                  (lambda (_%g135836135848%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135836135848%_))
                        (let ((_%e135840135850%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135836135848%_))))
                          (let ((_%hd135839135853%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135840135850%_)))
                                (_%tl135838135855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135840135850%_))))
                            ((lambda (_%L135858%_)
                               (let _%lp135869%_ ((_%rest135871%_ _%L135858%_)
                                                  (_%current-src135872%_ '#f)
                                                  (_%current-in135873%_ '())
                                                  (_%r135874%_ '()))
                                 (let* ((_%rest135875135883%_ _%rest135871%_)
                                        (_%else135877135893%_
                                         (lambda ()
                                           (let ((_%r135891%_
                                                  (if _%current-src135872%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in135833%_
                                                               _%current-src135872%_
                                                               _%current-in135873%_))
                                                            _%r135874%_)
                                                      _%r135874%_)))
                                             (cons '%#import
                                                   (reverse _%r135891%_)))))
                                        (_%K135879135980%_
                                         (lambda (_%rest135896%_ _%in135897%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135897%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in135899135906%_
                                                         _%in135897%_)
                                                        (_%E135901135910%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in135899135906%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K135902135918%_
                 (lambda (_%src-ctx135913%_)
                   (if (eq? _%current-src135872%_ _%src-ctx135913%_)
                       (let ((__tmp145394
                              (cons (let ()
                                      (declare (not safe))
                                      (_%make-import-spec135831%_
                                       _%in135897%_))
                                    _%current-in135873%_)))
                         (declare (not safe))
                         (_%lp135869%_
                          _%rest135896%_
                          _%current-src135872%_
                          __tmp145394
                          _%r135874%_))
                       (if _%current-src135872%_
                           (let ((__tmp145396
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec135831%_
                                           _%in135897%_))
                                        '()))
                                 (__tmp145395
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec-in135833%_
                                           _%current-src135872%_
                                           _%current-in135873%_))
                                        _%r135874%_)))
                             (declare (not safe))
                             (_%lp135869%_
                              _%rest135896%_
                              _%src-ctx135913%_
                              __tmp145396
                              __tmp145395))
                           (let ((__tmp145397
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%make-import-spec135831%_
                                           _%in135897%_))
                                        '())))
                             (declare (not safe))
                             (_%lp135869%_
                              _%rest135896%_
                              _%src-ctx135913%_
                              __tmp145397
                              _%r135874%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in135899135906%_
                                                          'gx#module-import::t))
                                                       (let ((_%e135903135921%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in135899135906%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e135903135921%_
                        'gx#module-export::t))
                     (let* ((_%e135904135924%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e135903135921%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx135927%_ _%e135904135924%_))
                       (declare (not safe))
                       (_%K135902135918%_ _%src-ctx135927%_))
                     (let () (declare (not safe)) (_%E135901135910%_))))
               (let () (declare (not safe)) (_%E135901135910%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135897%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi135930%_
                                                             (##direct-structure-ref
                                                              _%in135897%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src135932%_
                                                             (##direct-structure-ref
                                                              _%in135897%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in135972%_
                                                             (let* ((_%g135933135942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path135832%_ _%src135932%_)))
                            (_%E135936135946%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g135933135942%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K135938135962%_
                              (lambda (_%path135960%_) _%path135960%_))
                             (_%K135937135952%_
                              (lambda (_%path135950%_)
                                (cons 'in: _%path135950%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g135933135942%_))
                             (let ((_%tl135940135967%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g135933135942%_)))
                                   (_%hd135939135965%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g135933135942%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl135940135967%_))
                                   (let ((_%path135970%_ _%hd135939135965%_))
                                     (declare (not safe))
                                     (_%K135938135962%_ _%path135970%_))
                                   (let ((_%path135955%_ _%g135933135942%_))
                                     (declare (not safe))
                                     (_%K135937135952%_ _%path135955%_))))
                             (let ((_%path135955%_ _%g135933135942%_))
                               (declare (not safe))
                               (_%K135937135952%_ _%path135955%_))))))
                    (_%r135974%_
                     (if _%current-src135872%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in135833%_
                                  _%current-src135872%_
                                  _%current-in135873%_))
                               _%r135874%_)
                         _%r135874%_))
                    (__tmp145398
                     (cons (if (fxzero? _%phi135930%_)
                               _%src-in135972%_
                               (cons 'phi:
                                     (cons _%phi135930%_
                                           (cons _%src-in135972%_ '()))))
                           _%r135974%_)))
               (declare (not safe))
               (_%lp135869%_ _%rest135896%_ '#f '() __tmp145398)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135897%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r135978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src135872%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in135833%_
                                      _%current-src135872%_
                                      _%current-in135873%_))
                                   _%r135874%_)
                             _%r135874%_))
                        (__tmp145399
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path135832%_
                                        _%in135897%_)))
                               _%r135978%_)))
                   (declare (not safe))
                   (_%lp135869%_ _%rest135896%_ '#f '() __tmp145399)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135875135883%_))
                                       (let ((_%hd135880135983%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135875135883%_)))
                                             (_%tl135881135985%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135875135883%_))))
                                         (let* ((_%in135988%_
                                                 _%hd135880135983%_)
                                                (_%rest135990%_
                                                 _%tl135881135985%_))
                                           (declare (not safe))
                                           (_%K135879135980%_
                                            _%rest135990%_
                                            _%in135988%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135877135893%_))))))
                             _%tl135838135855%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135835135845%_ _%g135836135848%_))))))
            (declare (not safe))
            (_%g135834135992%_ _%stx135828%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135637%_ _%stx135638%_)
        (letrec* ((_%context-chain135640%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path135641%_
                   (lambda (_%ctx135825%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135825%_
                        _%context-chain135640%_)))))
          (let* ((_%g135643135653%_
                  (lambda (_%g135644135650%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135644135650%_))))
                 (_%g135642135822%_
                  (lambda (_%g135644135656%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135644135656%_))
                        (let ((_%e135648135658%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135644135656%_))))
                          (let ((_%hd135647135661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135648135658%_)))
                                (_%tl135646135663%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135648135658%_))))
                            ((lambda (_%L135666%_)
                               (let _%lp135677%_ ((_%rest135679%_ _%L135666%_)
                                                  (_%r135680%_ '()))
                                 (let* ((_%rest135681135689%_ _%rest135679%_)
                                        (_%else135683135697%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135680%_))))
                                        (_%K135685135810%_
                                         (lambda (_%rest135700%_ _%out135701%_)
                                           (let* ((_%out135702135715%_
                                                   _%out135701%_)
                                                  (_%E135705135719%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135702135715%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135709135789%_
                                                    (lambda (_%name135785%_
                                                             _%phi135786%_
                                                             _%key135787%_)
                                                      (let ((__tmp145400
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi135786%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key135787%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name135785%_))
                                                   '()))))
                           _%r135680%_)))
                (declare (not safe))
                (_%lp135677%_ _%rest135700%_ __tmp145400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135706135769%_
                                                    (lambda (_%phi135723%_
                                                             _%src135724%_)
                                                      (let* ((_%out135764%_
                                                              (if _%src135724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135725135734%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path135641%_
                                                 _%src135724%_)))
                                             (_%E135728135738%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135725135734%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135730135754%_
                                               (lambda (_%path135752%_)
                                                 _%path135752%_))
                                              (_%K135729135744%_
                                               (lambda (_%path135742%_)
                                                 (cons 'in: _%path135742%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135725135734%_))
                                              (let ((_%tl135732135759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135725135734%_)))
                                                    (_%hd135731135757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135725135734%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135732135759%_))
                                                    (let ((_%path135762%_
                                                           _%hd135731135757%_))
                                                      (declare (not safe))
                                                      (_%K135730135754%_
                                                       _%path135762%_))
                                                    (let ((_%path135747%_
                                                           _%g135725135734%_))
                                                      (declare (not safe))
                                                      (_%K135729135744%_
                                                       _%path135747%_))))
                                              (let ((_%path135747%_
                                                     _%g135725135734%_))
                                                (declare (not safe))
                                                (_%K135729135744%_
                                                 _%path135747%_)))))
                                      '()))
                          '#t))
                     (_%out135766%_
                      (if (fxzero? _%phi135723%_)
                          _%out135764%_
                          (cons 'phi:
                                (cons _%phi135723%_
                                      (cons _%out135764%_ '())))))
                     (__tmp145401 (cons _%out135766%_ _%r135680%_)))
                (declare (not safe))
                (_%lp135677%_ _%rest135700%_ __tmp145401)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135704135782%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135702135715%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135707135772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135702135715%_
                               '1
                               '#f
                               '#f)))
                           (_%e135708135777%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135702135715%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135775%_ _%e135707135772%_)
                            (_%phi135780%_ _%e135708135777%_))
                        (let ()
                          (declare (not safe))
                          (_%K135706135769%_ _%phi135780%_ _%src135775%_))))
                    (let () (declare (not safe)) (_%E135705135719%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135702135715%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135710135792%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135702135715%_
                        '1
                        '#f
                        '#f)))
                    (_%e135711135795%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135702135715%_
                        '2
                        '#f
                        '#f)))
                    (_%e135712135800%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135702135715%_
                        '3
                        '#f
                        '#f)))
                    (_%e135713135805%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135702135715%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135798%_ _%e135711135795%_)
                     (_%phi135803%_ _%e135712135800%_)
                     (_%name135808%_ _%e135713135805%_))
                 (let ()
                   (declare (not safe))
                   (_%K135709135789%_
                    _%name135808%_
                    _%phi135803%_
                    _%key135798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match135704135782%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135681135689%_))
                                       (let ((_%hd135686135813%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135681135689%_)))
                                             (_%tl135687135815%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135681135689%_))))
                                         (let* ((_%out135818%_
                                                 _%hd135686135813%_)
                                                (_%rest135820%_
                                                 _%tl135687135815%_))
                                           (declare (not safe))
                                           (_%K135685135810%_
                                            _%rest135820%_
                                            _%out135818%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135683135697%_))))))
                             _%tl135646135663%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135643135653%_ _%g135644135656%_))))))
            (declare (not safe))
            (_%g135642135822%_ _%stx135638%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135598%_ _%stx135599%_)
        (let ((__tmp145402
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135598%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145402))
        (let* ((_%g135601135611%_
                (lambda (_%g135602135608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135602135608%_))))
               (_%g135600135634%_
                (lambda (_%g135602135614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135602135614%_))
                      (let ((_%e135606135616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135602135614%_))))
                        (let ((_%hd135605135619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135606135616%_)))
                              (_%tl135604135621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135606135616%_))))
                          ((lambda (_%L135624%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135624%_)))
                           _%tl135604135621%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135601135611%_ _%g135602135614%_))))))
          (declare (not safe))
          (_%g135600135634%_ _%stx135599%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135469%_ _%stx135470%_)
        (letrec ((_%generate1135472%_
                  (lambda (_%id135593%_ _%eid135594%_)
                    (let ((_%eid135596%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135594%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135596%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135470%_
                             _%eid135596%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id135593%_))
                            (cons _%eid135596%_ '()))))))
          (let* ((_%g135474135502%_
                  (lambda (_%g135475135499%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135475135499%_))))
                 (_%g135473135590%_
                  (lambda (_%g135475135505%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135475135505%_))
                        (let ((_%e135480135507%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135475135505%_))))
                          (let ((_%hd135479135510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135480135507%_)))
                                (_%tl135478135512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135480135507%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135478135512%_))
                                (let ((_g145403_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135478135512%_
                                          '0))))
                                  (begin
                                    (let ((_g145404_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145403_)
                                                 (##vector-length _g145403_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145404_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145404_)))
                                    (let ((_%target135481135515%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145403_ 0)))
                                          (_%tl135483135517%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145403_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135483135517%_))
                                          (letrec ((_%loop135484135520%_
                                                    (lambda (_%hd135482135523%_
                                                             _%eid135488135525%_
                                                             _%id135489135527%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135482135523%_))
                                                          (let ((_%e135485135530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135482135523%_))))
                    (let ((_%lp-hd135486135533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135485135530%_)))
                          (_%lp-tl135487135535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135485135530%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135486135533%_))
                          (let ((_%e135494135538%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135486135533%_))))
                            (let ((_%hd135493135541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135494135538%_)))
                                  (_%tl135492135543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135494135538%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135492135543%_))
                                  (let ((_%e135497135546%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135492135543%_))))
                                    (let ((_%hd135496135549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135497135546%_)))
                                          (_%tl135495135551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135497135546%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135495135551%_))
                                          (let ((__tmp145406
                                                 (cons _%hd135496135549%_
                                                       _%eid135488135525%_))
                                                (__tmp145405
                                                 (cons _%hd135493135541%_
                                                       _%id135489135527%_)))
                                            (declare (not safe))
                                            (_%loop135484135520%_
                                             _%lp-tl135487135535%_
                                             __tmp145406
                                             __tmp145405))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135474135502%_
                                             _%g135475135505%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g135474135502%_ _%g135475135505%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g135474135502%_ _%g135475135505%_)))))
                  (let ((_%eid135490135554%_ (reverse _%eid135488135525%_))
                        (_%id135491135556%_ (reverse _%id135489135527%_)))
                    ((lambda (_%L135559%_ _%L135560%_)
                       (cons '%#extern
                             (map _%generate1135472%_
                                  (let ((__tmp145407
                                         (lambda (_%g135575135578%_
                                                  _%g135576135580%_)
                                           (cons _%g135575135578%_
                                                 _%g135576135580%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145407 '() _%L135560%_))
                                  (let ((__tmp145408
                                         (lambda (_%g135582135585%_
                                                  _%g135583135587%_)
                                           (cons _%g135582135585%_
                                                 _%g135583135587%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145408 '() _%L135559%_)))))
                     _%eid135490135554%_
                     _%id135491135556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop135484135520%_
                                               _%target135481135515%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135474135502%_
                                             _%g135475135505%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135474135502%_ _%g135475135505%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135474135502%_ _%g135475135505%_))))))
            (declare (not safe))
            (_%g135473135590%_ _%stx135470%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135259%_ _%stx135260%_)
        (letrec ((_%generate1135262%_
                  (lambda (_%id135464%_)
                    (let ((_%eid135466%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135464%_)))
                          (_%ident135467%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id135464%_))))
                      (cons '%#define-runtime
                            (cons _%ident135467%_ (cons _%eid135466%_ '()))))))
                 (_%generate*135263%_
                  (lambda (_%all135432%_)
                    (let* ((_%all135433135441%_ _%all135432%_)
                           (_%else135435135449%_
                            (lambda () (cons '%#begin _%all135432%_)))
                           (_%K135437135454%_
                            (lambda (_%one135452%_) _%one135452%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135433135441%_))
                          (let ((_%hd135438135457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135433135441%_)))
                                (_%tl135439135459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135433135441%_))))
                            (let ((_%one135462%_ _%hd135438135457%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135439135459%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K135437135454%_ _%one135462%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else135435135449%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else135435135449%_)))))))
          (let* ((_%g135265135282%_
                  (lambda (_%g135266135279%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135266135279%_))))
                 (_%g135264135429%_
                  (lambda (_%g135266135285%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135266135285%_))
                        (let ((_%e135271135287%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135266135285%_))))
                          (let ((_%hd135270135290%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135271135287%_)))
                                (_%tl135269135292%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135271135287%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135269135292%_))
                                (let ((_%e135274135295%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135269135292%_))))
                                  (let ((_%hd135273135298%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135274135295%_)))
                                        (_%tl135272135300%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135274135295%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135272135300%_))
                                        (let ((_%e135277135303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135272135300%_))))
                                          (let ((_%hd135276135306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135277135303%_)))
                                                (_%tl135275135308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135277135303%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135275135308%_))
                                                ((lambda (_%L135311%_
                                                          _%L135312%_)
                                                   (let _%lp135328%_ ((_%rest135330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135312%_)
                              (_%r135331%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145024145025%_
                                                             _%rest135330%_)
                                                            (_%g135336135353%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145024145025%_)))))
               (let ((_%__kont145026145027%_
                      (lambda (_%L135416%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135328%_ _%L135416%_ _%r135331%_))))
                     (_%__kont145028145029%_
                      (lambda (_%L135389%_ _%L135390%_)
                        (let ((__tmp145409
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135262%_ _%L135390%_))
                                     _%r135331%_)))
                          (declare (not safe))
                          (_%lp135328%_ _%L135389%_ __tmp145409))))
                     (_%__kont145030145031%_
                      (lambda (_%L135365%_)
                        (let ((__tmp145410
                               (let ((__tmp145411
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135262%_
                                               _%L135365%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145411 _%r135331%_))))
                          (declare (not safe))
                          (_%generate*135263%_ __tmp145410))))
                     (_%__kont145032145033%_
                      (lambda ()
                        (let ((__tmp145412 (reverse _%r135331%_)))
                          (declare (not safe))
                          (_%generate*135263%_ __tmp145412)))))
                 (let ((_%g135334135376%_
                        (lambda ()
                          (let ((_%L135365%_ _%__stx145024145025%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135365%_))
                                (_%__kont145030145031%_ _%L135365%_)
                                (_%__kont145032145033%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145024145025%_))
                       (let ((_%e135341135405%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145024145025%_))))
                         (let ((_%tl135339135410%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135341135405%_)))
                               (_%hd135340135408%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135341135405%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135340135408%_))
                               (let ((_%e135342135413%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135340135408%_))))
                                 (if (equal? _%e135342135413%_ '#f)
                                     (_%__kont145026145027%_
                                      _%tl135339135410%_)
                                     (_%__kont145028145029%_
                                      _%tl135339135410%_
                                      _%hd135340135408%_)))
                               (_%__kont145028145029%_
                                _%tl135339135410%_
                                _%hd135340135408%_))))
                       (let () (declare (not safe)) (_%g135334135376%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135276135306%_
                                                 _%hd135273135298%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135265135282%_
                                                   _%g135266135285%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135265135282%_
                                           _%g135266135285%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135265135282%_ _%g135266135285%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135265135282%_ _%g135266135285%_))))))
            (declare (not safe))
            (_%g135264135429%_ _%stx135260%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135156%_ _%stx135157%_)
        (let* ((_%g135159135176%_
                (lambda (_%g135160135173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135160135173%_))))
               (_%g135158135256%_
                (lambda (_%g135160135179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135160135179%_))
                      (let ((_%e135165135181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135160135179%_))))
                        (let ((_%hd135164135184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135165135181%_)))
                              (_%tl135163135186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135165135181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135163135186%_))
                              (let ((_%e135168135189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135163135186%_))))
                                (let ((_%hd135167135192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135168135189%_)))
                                      (_%tl135166135194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135168135189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135166135194%_))
                                      (let ((_%e135171135197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135166135194%_))))
                                        (let ((_%hd135170135200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135171135197%_)))
                                              (_%tl135169135202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135171135197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135169135202%_))
                                              ((lambda (_%L135205%_
                                                        _%L135206%_)
                                                 (let* ((_%eid135221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135206%_)))
                                                        (_%phi135223%_
                                                         (let ((__tmp145413
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145413 '1)))
                (_%block135225%_
                 (let ((__tmp145414
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135156%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145414 _%phi135223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135228135235%_
                                                           (lambda (_%g135229135232%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135229135232%_))))
                  (_%g135227135253%_
                   (lambda (_%g135229135238%_)
                     ((lambda (_%L135240%_)
                        (let ((__tmp145416
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self135156%_ 'state)))
                              (__tmp145415
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        '%#define-runtime))
                                     (cons _%L135240%_
                                           (cons _%L135205%_ '())))))
                          (declare (not safe))
                          (gxc#meta-state-add-phi!
                           __tmp145416
                           _%phi135223%_
                           __tmp145415)))
                      _%g135229135238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135227135253%_
                                                      _%eid135221%_))
                                                   (if _%block135225%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135206%_))
                                             (cons _%eid135221%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135206%_))
                           (cons _%eid135221%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135170135200%_
                                               _%hd135167135192%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135159135176%_
                                                 _%g135160135179%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135159135176%_
                                         _%g135160135179%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135159135176%_ _%g135160135179%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135159135176%_ _%g135160135179%_))))))
          (declare (not safe))
          (_%g135158135256%_ _%stx135157%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135088%_ _%stx135089%_)
        (let* ((_%g135091135108%_
                (lambda (_%g135092135105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135092135105%_))))
               (_%g135090135153%_
                (lambda (_%g135092135111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135092135111%_))
                      (let ((_%e135097135113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135092135111%_))))
                        (let ((_%hd135096135116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135097135113%_)))
                              (_%tl135095135118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135097135113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135095135118%_))
                              (let ((_%e135100135121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135095135118%_))))
                                (let ((_%hd135099135124%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135100135121%_)))
                                      (_%tl135098135126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135100135121%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135098135126%_))
                                      (let ((_%e135103135129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135098135126%_))))
                                        (let ((_%hd135102135132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135103135129%_)))
                                              (_%tl135101135134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135103135129%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135101135134%_))
                                              ((lambda (_%L135137%_
                                                        _%L135138%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135138%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135137%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135102135132%_
                                               _%hd135099135124%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135091135108%_
                                                 _%g135092135111%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135091135108%_
                                         _%g135092135111%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135091135108%_ _%g135092135111%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135091135108%_ _%g135092135111%_))))))
          (declare (not safe))
          (_%g135090135153%_ _%stx135089%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135085%_ _%stx135086%_)
        (let ((__tmp145418
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135085%_ 'state)))
              (__tmp145417
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145418 __tmp145417 _%stx135086%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135085%_ _%stx135086%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135082%_ _%stx135083%_)
        (let ((__tmp145420
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135082%_ 'state)))
              (__tmp145419
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145420 __tmp145419 _%stx135083%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145422 (list)) (__tmp145421 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145422
         '(src n open blocks)
         __tmp145421
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135079%_
        (apply make-instance gxc#meta-state::t _%$args135079%_)))
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
      (lambda (_%self135065%_ _%ctx135066%_)
        (let ((_%self135069%_ _%self135065%_))
          (if (let ((__tmp145423
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135069%_))))
                (declare (not safe))
                (##fx< '4 __tmp145423))
              (begin
                (let ((__tmp145424
                       (let ((__tmp145425
                              (##structure-ref
                               _%ctx135066%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145425))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135069%_
                   __tmp145424
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135069%_ '1 '2 '#f '#f))
                (let ((__tmp145426
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135069%_
                   __tmp145426
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135069%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145427
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135069%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135069%_
                       '4
                       __tmp145427))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145429 (list)) (__tmp145428 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145429
         '(ctx phi n code)
         __tmp145428
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134940%_
        (apply make-instance gxc#meta-state-block::t _%$args134940%_)))
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
      (lambda (_%state134899%_ _%phi134900%_)
        (let* ((_%state134901134909%_ _%state134899%_)
               (_%E134903134913%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134901134909%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134904134922%_
                (lambda (_%open134916%_ _%n134917%_ _%src134918%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134916%_ _%phi134900%_))
                      '#f
                      (let ((_%block-ref134920%_
                             (let ((__tmp145430 (number->string _%n134917%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134918%_
                                '"~"
                                __tmp145430))))
                        (##structure-set!
                         _%state134899%_
                         (let () (declare (not safe)) (##fx+ _%n134917%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145431
                               (let ((__tmp145432
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145432
                                  _%phi134900%_
                                  _%n134917%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134916%_ _%phi134900%_ __tmp145431))
                        _%block-ref134920%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134901134909%_
                 'gxc#meta-state::t))
              (let* ((_%e134905134925%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134901134909%_
                         '1
                         '#f
                         '#f)))
                     (_%src134928%_ _%e134905134925%_)
                     (_%e134906134930%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134901134909%_
                         '2
                         '#f
                         '#f)))
                     (_%n134933%_ _%e134906134930%_)
                     (_%e134907134935%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134901134909%_
                         '3
                         '#f
                         '#f)))
                     (_%open134938%_ _%e134907134935%_))
                (declare (not safe))
                (_%K134904134922%_ _%open134938%_ _%n134933%_ _%src134928%_))
              (let () (declare (not safe)) (_%E134903134913%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134893%_ _%phi134894%_ _%stx134895%_)
        (let ((_%block134897%_
               (let ((__tmp145433
                      (##structure-ref
                       _%state134893%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145433 _%phi134894%_))))
          (##structure-set!
           _%block134897%_
           (cons _%stx134895%_
                 (##structure-ref
                  _%block134897%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134887%_)
        (##structure-set!
         _%state134887%_
         (let ((__tmp145436
                (lambda (_%_134889%_ _%block134890%_ _%r134891%_)
                  (cons _%block134890%_ _%r134891%_)))
               (__tmp145435
                (##structure-ref _%state134887%_ '4 gxc#meta-state::t '#f))
               (__tmp145434
                (##structure-ref _%state134887%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145436 __tmp145435 __tmp145434))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134887%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134839%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state134839%_))
        (let ((__tmp145438
               (lambda (_%block134841%_ _%r134842%_)
                 (let* ((_%block134843134852%_ _%block134841%_)
                        (_%E134845134856%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134843134852%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134846134864%_
                         (lambda (_%code134859%_
                                  _%n134860%_
                                  _%phi134861%_
                                  _%ctx134862%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code134859%_))
                               _%r134842%_
                               (cons (cons _%ctx134862%_
                                           (cons _%phi134861%_
                                                 (cons _%n134860%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134859%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134842%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134843134852%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134847134867%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134843134852%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134870%_ _%e134847134867%_)
                              (_%e134848134872%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134843134852%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134875%_ _%e134848134872%_)
                              (_%e134849134877%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134843134852%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134880%_ _%e134849134877%_)
                              (_%e134850134882%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134843134852%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134885%_ _%e134850134882%_))
                         (declare (not safe))
                         (_%K134846134864%_
                          _%code134885%_
                          _%n134880%_
                          _%phi134875%_
                          _%ctx134870%_))
                       (let () (declare (not safe)) (_%E134845134856%_))))))
              (__tmp145437
               (##structure-ref _%state134839%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145438 '() __tmp145437))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134835%_)
        (let ((_%ht134837%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs__%
             '#f
             _%ht134837%_
             _%stx134835%_))
          _%ht134837%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134778%_ _%stx134779%_)
        (let* ((_%g134781134794%_
                (lambda (_%g134782134791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134782134791%_))))
               (_%g134780134832%_
                (lambda (_%g134782134797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134782134797%_))
                      (let ((_%e134786134799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134782134797%_))))
                        (let ((_%hd134785134802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134786134799%_)))
                              (_%tl134784134804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134786134799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134784134804%_))
                              (let ((_%e134789134807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134784134804%_))))
                                (let ((_%hd134788134810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134789134807%_)))
                                      (_%tl134787134812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134789134807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134787134812%_))
                                      ((lambda (_%L134815%_)
                                         (let* ((_%bind134827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134815%_)))
                                                (_%eid134829%_
                                                 (if _%bind134827%_
                                                     (##structure-ref
                                                      _%bind134827%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134815%_))))
                                                (__tmp145439
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self134778%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145439
                                            _%eid134829%_
                                            _%eid134829%_)))
                                       _%hd134788134810%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g134781134794%_
                                         _%g134782134797%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134781134794%_ _%g134782134797%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134781134794%_ _%g134782134797%_))))))
          (declare (not safe))
          (_%g134780134832%_ _%stx134779%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134705%_ _%stx134706%_)
        (let* ((_%g134708134725%_
                (lambda (_%g134709134722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134709134722%_))))
               (_%g134707134775%_
                (lambda (_%g134709134728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134709134728%_))
                      (let ((_%e134714134730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134709134728%_))))
                        (let ((_%hd134713134733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134714134730%_)))
                              (_%tl134712134735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134714134730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134712134735%_))
                              (let ((_%e134717134738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134712134735%_))))
                                (let ((_%hd134716134741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134717134738%_)))
                                      (_%tl134715134743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134717134738%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134715134743%_))
                                      (let ((_%e134720134746%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134715134743%_))))
                                        (let ((_%hd134719134749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134720134746%_)))
                                              (_%tl134718134751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134720134746%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134718134751%_))
                                              ((lambda (_%L134754%_
                                                        _%L134755%_)
                                                 (let* ((_%bind134770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134755%_)))
                                                        (_%eid134772%_
                                                         (if _%bind134770%_
                                                             (##structure-ref
                                                              _%bind134770%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145440
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134705%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145440
                                                      _%eid134772%_
                                                      _%eid134772%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134705%_
                                                      _%L134754%_))))
                                               _%hd134719134749%_
                                               _%hd134716134741%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134708134725%_
                                                 _%g134709134728%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134708134725%_
                                         _%g134709134728%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134708134725%_ _%g134709134728%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134708134725%_ _%g134709134728%_))))))
          (declare (not safe))
          (_%g134707134775%_ _%stx134706%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134662%_ _%stx134663%_)
        (let* ((_%g134665134675%_
                (lambda (_%g134666134672%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134666134672%_))))
               (_%g134664134702%_
                (lambda (_%g134666134678%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134666134678%_))
                      (let ((_%e134670134680%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134666134678%_))))
                        (let ((_%hd134669134683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134670134680%_)))
                              (_%tl134668134685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134670134680%_))))
                          ((lambda (_%L134688%_)
                             (let ((__tmp145441
                                    (lambda (_%g134697134699%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134662%_
                                         _%g134697134699%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145441 _%L134688%_)))
                           _%tl134668134685%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134665134675%_ _%g134666134678%_))))))
          (declare (not safe))
          (_%g134664134702%_ _%stx134663%_))))
    (define gxc#count-values-single%
      (lambda (_%self134659%_ _%stx134660%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134525%_ _%stx134526%_)
        (let* ((_%__stx145054145055%_ _%stx134526%_)
               (_%g134529134558%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145054145055%_)))))
          (let ((_%__kont145056145057%_
                 (lambda (_%L134626%_ _%L134627%_)
                   (length (let ((__tmp145442
                                  (lambda (_%g134648134651%_ _%g134649134653%_)
                                    (cons _%g134648134651%_
                                          _%g134649134653%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145442 '() _%L134626%_)))))
                (_%__kont145060145061%_ (lambda () '#f)))
            (let ((_%__match145099145100%_
                   (lambda (_%e134535134570%_
                            _%hd134534134573%_
                            _%tl134533134575%_
                            _%e134538134578%_
                            _%hd134537134581%_
                            _%tl134536134583%_
                            _%e134541134586%_
                            _%hd134540134589%_
                            _%tl134539134591%_
                            _%e134544134594%_
                            _%hd134543134597%_
                            _%tl134542134599%_
                            _%__splice145058145059%_
                            _%target134545134602%_
                            _%tl134547134604%_)
                     (letrec ((_%loop134548134607%_
                               (lambda (_%hd134546134610%_
                                        _%rand134552134612%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134546134610%_))
                                     (let ((_%e134549134615%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134546134610%_))))
                                       (let ((_%lp-tl134551134620%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134549134615%_)))
                                             (_%lp-hd134550134618%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134549134615%_))))
                                         (let ((__tmp145443
                                                (cons _%lp-hd134550134618%_
                                                      _%rand134552134612%_)))
                                           (declare (not safe))
                                           (_%loop134548134607%_
                                            _%lp-tl134551134620%_
                                            __tmp145443))))
                                     (let ((_%rand134553134623%_
                                            (reverse _%rand134552134612%_)))
                                       (let ((_%L134626%_ _%rand134553134623%_)
                                             (_%L134627%_ _%hd134543134597%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134627%_
                                                'values))
                                             (_%__kont145056145057%_
                                              _%L134626%_
                                              _%L134627%_)
                                             (_%__kont145060145061%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop134548134607%_ _%target134545134602%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145054145055%_))
                  (let ((_%e134535134570%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145054145055%_))))
                    (let ((_%tl134533134575%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134535134570%_)))
                          (_%hd134534134573%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134535134570%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134533134575%_))
                          (let ((_%e134538134578%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134533134575%_))))
                            (let ((_%tl134536134583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134538134578%_)))
                                  (_%hd134537134581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134538134578%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134537134581%_))
                                  (let ((_%e134541134586%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134537134581%_))))
                                    (let ((_%tl134539134591%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134541134586%_)))
                                          (_%hd134540134589%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134541134586%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134540134589%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134540134589%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134539134591%_))
                                                  (let ((_%e134544134594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134539134591%_))))
                                                    (let ((_%tl134542134599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134544134594%_)))
                                                          (_%hd134543134597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134544134594%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134542134599%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134536134583%_))
                      (let ((_%__splice145058145059%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134536134583%_
                                '0))))
                        (let ((_%tl134547134604%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145058145059%_ '1)))
                              (_%target134545134602%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145058145059%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134547134604%_))
                              (_%__match145099145100%_
                               _%e134535134570%_
                               _%hd134534134573%_
                               _%tl134533134575%_
                               _%e134538134578%_
                               _%hd134537134581%_
                               _%tl134536134583%_
                               _%e134541134586%_
                               _%hd134540134589%_
                               _%tl134539134591%_
                               _%e134544134594%_
                               _%hd134543134597%_
                               _%tl134542134599%_
                               _%__splice145058145059%_
                               _%target134545134602%_
                               _%tl134547134604%_)
                              (_%__kont145060145061%_))))
                      (_%__kont145060145061%_))
                  (_%__kont145060145061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145060145061%_))
                                              (_%__kont145060145061%_))
                                          (_%__kont145060145061%_))))
                                  (_%__kont145060145061%_))))
                          (_%__kont145060145061%_))))
                  (_%__kont145060145061%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134428%_ _%stx134429%_)
        (let* ((_%g134431134452%_
                (lambda (_%g134432134449%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134432134449%_))))
               (_%g134430134522%_
                (lambda (_%g134432134455%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134432134455%_))
                      (let ((_%e134438134457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134432134455%_))))
                        (let ((_%hd134437134460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134438134457%_)))
                              (_%tl134436134462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134438134457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134436134462%_))
                              (let ((_%e134441134465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134436134462%_))))
                                (let ((_%hd134440134468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134441134465%_)))
                                      (_%tl134439134470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134441134465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134439134470%_))
                                      (let ((_%e134444134473%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134439134470%_))))
                                        (let ((_%hd134443134476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134444134473%_)))
                                              (_%tl134442134478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134444134473%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134442134478%_))
                                              (let ((_%e134447134481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134442134478%_))))
                                                (let ((_%hd134446134484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134447134481%_)))
                                                      (_%tl134445134486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134447134481%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134445134486%_))
                                                      ((lambda (_%L134489%_
                                                                _%L134490%_
                                                                _%L134491%_)
                                                         (let ((_%c1134508134510%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134428%_ _%L134490%_))))
                   (if _%c1134508134510%_
                       (let* ((_%c1134513%_ _%c1134508134510%_)
                              (_%c2134514134516%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134428%_
                                  _%L134489%_))))
                         (if _%c2134514134516%_
                             (let ((_%c2134519%_ _%c2134514134516%_))
                               (if (fx= _%c1134513%_ _%c2134519%_)
                                   _%c1134513%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134446134484%_
               _%hd134443134476%_
               _%hd134440134468%_)
              (let ()
                (declare (not safe))
                (_%g134431134452%_ _%g134432134455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g134431134452%_
                                                 _%g134432134455%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134431134452%_
                                         _%g134432134455%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134431134452%_ _%g134432134455%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134431134452%_ _%g134432134455%_))))))
          (declare (not safe))
          (_%g134430134522%_ _%stx134429%_))))))
